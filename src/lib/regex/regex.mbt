///|
pub typealias T = Regex

///|
pub enum Regex {
  EOF
  Character(@char_set.T)
  Repetition(Regex) // repeat at least once
  Epsilon
  Alter(Regex, Regex)
  Concat(Regex, Regex)
  Capture(Regex, String)
  // Embedded bytes, Only valid in bytes mode
  Bytes(Encoding, Regex)
} derive(Show, Eq, ToJson)

///|
pub(all) enum Encoding {
  Ascii
  Latin1
  Utf8
  Utf16
} derive(Show, Eq, ToJson)

///|
pub let eof : Regex = EOF

///|
pub let epsilon : Regex = Epsilon

///|
pub fn char_class(cset : @char_set.T) -> Regex {
  Character(cset)
}

///|
pub fn star(re : Regex) -> Regex {
  Alter(Repetition(re), epsilon)
}

///|
pub fn plus(re : Regex) -> Regex {
  Repetition(re)
}

///|
pub fn opt(re : Regex) -> Regex {
  Alter(re, epsilon)
}

///|
pub fn seq(re1 : Regex, re2 : Regex) -> Regex {
  match (re1, re2) {
    (Concat(re1, re2), re3) => seq(re1, seq(re2, re3))
    (Epsilon, re) | (re, Epsilon) => re
    _ => Concat(re1, re2)
  }
}

///|
pub fn alt(re1 : Regex, re2 : Regex) -> Regex {
  match (re1, re2) {
    (Alter(re1, re2), re3) => alt(re1, alt(re2, re3))
    (Character(cset1), Character(cset2)) => Character(cset1 + cset2)
    _ => Alter(re1, re2)
  }
}

///|
pub fn bind(re : Regex, name : String) -> Regex {
  Capture(re, name)
}

///|
pub fn embed(re : Regex, encoding~ : Encoding) -> Regex {
  Bytes(encoding, re)
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
  ban_capture : Bool
) -> Bool {
  match self {
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
    Bytes(_, re) => re.check_legal_rec(names, ban_capture)
  }
}

///|
pub fn get_capture_vars(self : Regex) -> @immut/sorted_set.T[String] {
  match self {
    Capture(re, name) => get_capture_vars(re).add(name)
    Repetition(re) | Bytes(_, re) => get_capture_vars(re)
    Alter(re1, re2) | Concat(re1, re2) =>
      get_capture_vars(re1).union(get_capture_vars(re2))
    EOF | Character(_) | Epsilon => @immut/sorted_set.new()
  }
}

///|
pub fn get_char_capture_vars(self : Regex) -> @immut/sorted_set.T[String] {
  fn analyze(
    re : Regex
  ) -> (@immut/sorted_set.T[String], @immut/sorted_set.T[String], Int?) {
    match re {
      Epsilon | EOF =>
        (@immut/sorted_set.new(), @immut/sorted_set.new(), Some(0))
      Character(_) =>
        (@immut/sorted_set.new(), @immut/sorted_set.new(), Some(1))
      Repetition(re) => {
        let (char_vars, str_vars, len) = analyze(re)
        if len is Some(0) {
          (char_vars, str_vars, Some(0))
        } else {
          (char_vars, str_vars, None)
        }
      }
      Concat(re1, re2) => {
        let (char_vars1, str_vars1, len1) = analyze(re1)
        let (char_vars2, str_vars2, len2) = analyze(re2)
        (
          char_vars1.union(char_vars2),
          str_vars1.union(str_vars2),
          if len1 is Some(len1) && len2 is Some(len2) {
            Some(len1 + len2)
          } else {
            None
          },
        )
      }
      Alter(re1, re2) => {
        let (char_vars1, str_vars1, len1) = analyze(re1)
        let (char_vars2, str_vars2, len2) = analyze(re2)
        (
          char_vars1.union(char_vars2),
          str_vars1.union(str_vars2),
          if len1 is Some(len1) && len2 is Some(len2) && len1 == len2 {
            Some(len1)
          } else {
            None
          },
        )
      }
      Capture(re, var) => {
        let (char_vars, str_vars, len) = analyze(re)
        match len {
          Some(1) => (char_vars.add(var), str_vars, Some(1))
          len => (char_vars, str_vars.add(var), len)
        }
      }
      Bytes(_, re) => analyze(re)
    }
  }

  let (char_vars, str_vars, _len) = analyze(self)
  char_vars.difference(str_vars)
}
