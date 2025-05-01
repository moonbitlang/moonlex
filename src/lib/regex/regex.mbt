///|
pub typealias T = Regex

///|
pub struct Regex {
  desc : RegexDesc
  len : Int?
} derive(Show, ToJson)

///|
pub enum RegexDesc {
  EOF
  Epsilon
  Character(@char_set.T)
  Repetition(Regex) // repeat at least once
  Alter(Regex, Regex)
  Concat(Regex, Regex)
  Capture(Regex, String)
} derive(Show, ToJson)

///|
pub(all) enum Encoding {
  Utf8
}

///|
pub let eof : Regex = { desc: EOF, len: Some(0) }

///|
pub let epsilon : Regex = { desc: Epsilon, len: Some(0) }

///|
pub fn char_class(cset : @char_set.T, as_bytes? : Encoding) -> Regex {
  match as_bytes {
    None => { desc: Character(cset), len: Some(1) }
    Some(encoding) => lower_unicode_charclass(cset, encoding~)
  }
}

///|
pub fn plus(re : Regex) -> Regex {
  { desc: Repetition(re), len: if re.len is Some(0) { Some(1) } else { None } }
}

///|
pub fn star(re : Regex) -> Regex {
  alt(plus(re), epsilon)
}

///|
pub fn opt(re : Regex) -> Regex {
  alt(re, epsilon)
}

///|
pub fn alt(re1 : Regex, re2 : Regex) -> Regex {
  {
    desc: match (re1.desc, re2.desc) {
      (Character(cset1), Character(cset2)) => Character(cset1 + cset2)
      (Concat({ desc: Character(cset1), .. }, re), Character(cset2))
      | (Character(cset2), Concat({ desc: Character(cset1), .. }, re)) =>
        Concat(char_class(cset1 + cset2), alt(re, epsilon))
      (
        Concat({ desc: Character(cset1), .. }, re1),
        Concat({ desc: Character(cset2), .. }, re2),
      ) => Concat(char_class(cset1 + cset2), alt(re1, re2))
      _ => Alter(re1, re2)
    },
    len: if re1.len is Some(len1) && re2.len is Some(len2) && len1 == len2 {
      Some(len1)
    } else {
      None
    },
  }
}

///|
pub fn concat(re1 : Regex, re2 : Regex) -> Regex {
  {
    desc: match (re1.desc, re2.desc) {
      (Epsilon, re) | (re, Epsilon) => re
      _ => Concat(re1, re2)
    },
    len: if re1.len is Some(len1) && re2.len is Some(len2) {
      Some(len1 + len2)
    } else {
      None
    },
  }
}

///|
pub fn bind(re : Regex, name : String) -> Regex {
  { desc: Capture(re, name), len: re.len }
}
