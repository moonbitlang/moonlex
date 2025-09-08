///|
pub typealias Regex as T

///|
pub struct Regex {
  desc : RegexDesc
  class_ : RegexClass
  len : Int?
} derive(Show, Eq, ToJson)

///|
pub enum RegexDesc {
  EOF
  Character(@char_set.T)
  Repetition(Regex) // repeat at least once
  Epsilon
  Alter(Regex, Regex)
  Concat(Regex, Regex)
  Capture(Regex, String)
} derive(Show, Eq, ToJson(style="legacy"))

///|
pub enum RegexClass {
  Char
  String
} derive(Show, Eq, ToJson(style="legacy"))

///|
pub(all) enum Encoding {
  Ascii
  Latin1
  Utf8
  Utf16
} derive(Show, Eq, ToJson(style="legacy"))

///|
pub let eof : Regex = { desc: EOF, class_: String, len: None }

///|
pub let epsilon : Regex = { desc: Epsilon, class_: String, len: Some(0) }

///|
pub fn char_class(cset : @char_set.T, as_bytes? : Encoding) -> Regex {
  match as_bytes {
    None => { desc: Character(cset), class_: Char, len: Some(1) }
    Some(encoding) => lower_unicode_charclass(cset, encoding~)
  }
}

///|
pub fn star(re : Regex) -> Regex {
  opt(plus(re))
}

///|
pub fn plus(re : Regex) -> Regex {
  {
    desc: Repetition(re),
    class_: String,
    len: if re.len is Some(0) {
      Some(0)
    } else {
      None
    },
  }
}

///|
pub fn opt(re : Regex) -> Regex {
  alt(re, epsilon)
}

///|
pub fn repeat(re : Regex, min_times~ : Int, max_times? : Int) -> Regex {
  let mut re2 = re
  for _ in 0..<min_times {
    re2 = seq(re2, re)
  }
  if max_times is Some(max_times) {
    for _ in 0..<(max_times - min_times) {
      re2 = seq(re2, opt(re))
    }
    re2
  } else {
    star(re2)
  }
}

///|
pub fn seq(re1 : Regex, re2 : Regex) -> Regex {
  match (re1, re2) {
    ({ desc: Concat(re1, re2), .. }, re3) => seq(re1, seq(re2, re3))
    ({ desc: Epsilon, .. }, re) | (re, { desc: Epsilon, .. }) =>
      { ..re, class_: String }
    _ =>
      {
        desc: Concat(re1, re2),
        class_: String,
        len: if re1.len is Some(len1) && re2.len is Some(len2) {
          Some(len1 + len2)
        } else {
          None
        },
      }
  }
}

///|
pub fn alt(re1 : Regex, re2 : Regex) -> Regex {
  let class_ = if re1.class_ is Char && re2.class_ is Char {
    Char
  } else {
    String
  }
  match (re1, re2) {
    ({ desc: Alter(re1, re2), .. }, re3) => alt(re1, alt(re2, re3))
    ({ desc: Character(cset1), .. }, { desc: Character(cset2), .. }) =>
      { desc: Character(cset1 + cset2), class_, len: Some(1) }
    _ =>
      {
        desc: Alter(re1, re2),
        class_,
        len: if re1.len is Some(len1) && re2.len is Some(len2) && len1 == len2 {
          Some(len1)
        } else {
          None
        },
      }
  }
}

///|
pub fn bind(re : Regex, name : String) -> Regex {
  { desc: Capture(re, name), class_: re.class_, len: re.len }
}

///|
pub fn check_legal(self : Regex) -> Bool {
  // there're two special rules for our regex
  // 1. Capture can't be inside of Option/Repetition/Alter
  // 2. Capture names can't duplicate

  self.check_legal_rec(Set::from_array([]), false)
}

///|
fn check_legal_rec(
  self : Regex,
  names : Set[String],
  ban_capture : Bool,
) -> Bool {
  match self.desc {
    Capture(re, name) =>
      if ban_capture {
        false
      } else if names.contains(name) {
        false
      } else {
        names.add(name)
        re.check_legal_rec(names, ban_capture)
      }
    Character(_) | EOF => true
    Concat(re1, re2) =>
      re1.check_legal_rec(names, ban_capture) &&
      re2.check_legal_rec(names, ban_capture)
    Alter(re1, re2) =>
      re1.check_legal_rec(names, true) && re2.check_legal_rec(names, true)
    Repetition(re) => re.check_legal_rec(names, true)
    Epsilon => true
  }
}

///|
pub fn get_capture_vars(
  re : Regex,
) -> @immut/sorted_map.SortedMap[String, RegexClass] {
  match re.desc {
    Capture(re, name) => get_capture_vars(re).add(name, re.class_)
    Repetition(re) => get_capture_vars(re)
    Alter(re1, re2) | Concat(re1, re2) =>
      @immut/sorted_map.from_iter(
        get_capture_vars(re1).iter().concat(get_capture_vars(re2).iter()),
      )
    EOF | Character(_) | Epsilon => @immut/sorted_map.new()
  }
}
