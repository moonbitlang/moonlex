///|
pub(all) enum Regex {
  Underscore
  EOF
  ReStr(String)
  ReChar(Char)
  CharSet(@char_set.T)
  RevCharSet(@char_set.T)
  Repetition(Regex) // repeat at least once
  Option(Regex)
  Alter(Regex, Regex)
  Concat(Regex, Regex)
  Capture(Regex, String)
  Named(String)
} derive(Show, Eq, ToJson)

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
    ReChar(_) | ReStr(_) | CharSet(_) | RevCharSet(_) | EOF | Underscore => true
    Concat(re1, re2) =>
      re1.check_legal_rec(names, ban_capture) &&
      re2.check_legal_rec(names, ban_capture)
    Alter(re1, re2) =>
      re1.check_legal_rec(names, true) && re2.check_legal_rec(names, true)
    Repetition(re) => re.check_legal_rec(names, true)
    Option(re) => re.check_legal_rec(names, true)
    Named(_) => true
  }
}

///|
pub fn get_capture_names(self : Regex) -> Array[String] {
  let result = self.get_capture_names_rec().collect()
  result.sort()
  for i = 1; i < result.length(); i = i + 1 {
    if result[i - 1] == result[i] {
      // TODO: use Result to collect error message
      abort("duplicated capture var")
      // duplicated var is forbidded, if you want to capture var like
      // `(42 as a | 21 as a)`, use `(42 | 21) as a`
    }
  }
  result
}

///|
fn get_capture_names_rec(self : Regex) -> Iter[String] {
  match self {
    Capture(re, name) => re.get_capture_names_rec().append(name)
    Repetition(re) | Option(re) => re.get_capture_names_rec()
    Alter(re1, re2) | Concat(re1, re2) =>
      re1.get_capture_names_rec().concat(re2.get_capture_names_rec())
    _ => Iter::empty()
  }
}

///|
pub(all) struct VarDefinition {
  identifier : String
  ty : String
} derive(Show, Eq)

///|
pub typealias CodeBlock = String

///|
pub(all) struct Rule {
  name : String
  return_type : String
  vars : Array[VarDefinition]
  patterns : Array[(Regex, CodeBlock)]
} derive(Show)

///|
pub(all) struct Lex {
  header : CodeBlock
  named_regexes : Array[(String, Regex)]
  rules : Array[Rule]
  trailer : CodeBlock
} derive(Show)

///|
pub fn eliminate_named(self : Lex) -> Lex {
  guard not(self.named_regexes.is_empty()) else { return self }
  let named_regexes = Map::from_array(self.named_regexes)
  fn eliminate_named_regex(re : Regex) -> Regex {
    match re {
      Underscore | EOF | ReStr(_) | ReChar(_) | CharSet(_) | RevCharSet(_) => re
      Repetition(re) => Repetition(eliminate_named_regex(re))
      Option(re) => Option(eliminate_named_regex(re))
      Alter(re1, re2) =>
        Alter(eliminate_named_regex(re1), eliminate_named_regex(re2))
      Concat(re1, re2) =>
        Concat(eliminate_named_regex(re1), eliminate_named_regex(re2))
      Capture(re, name) => Capture(eliminate_named_regex(re), name)
      Named(name) =>
        match named_regexes.get(name) {
          Some(re) => eliminate_named_regex(re)
          None => abort("Named regex not found")
        }
    }
  }

  Lex::{
    header: self.header,
    named_regexes: [],
    rules: self.rules.map(fn(rule) {
      Rule::{
        name: rule.name,
        return_type: rule.return_type,
        vars: rule.vars,
        patterns: rule.patterns.map(fn(pattern) {
          let (re, code) = pattern
          (eliminate_named_regex(re), code)
        }),
      }
    }),
    trailer: self.trailer,
  }
}
