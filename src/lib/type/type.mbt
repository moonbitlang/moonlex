///|
pub(all) enum CodeUnit {
  CodeUnit1
  CodeUnit2
  CodeUnit4
}

///|
pub(all) enum Regex {
  EOF
  Character(@eof_char_set.T)
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
pub(all) enum VarType {
  Char
  String
} derive(Show)

///|
pub(all) enum StaticKnownTagPosition {
  RelativeToStart(Int)
  RelativeToEnd(Int)
} derive(Show, Eq)

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
pub fn get_char_vars(re : Regex) -> @immut/sorted_set.T[String] {
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

  let (char_vars, str_vars, _len) = analyze(re)
  char_vars.difference(str_vars)
}

///|
priv enum CaptureVarEndpoint {
  Start
  End
} derive(Compare, Eq)

///|
fn get_static_known_tag_positions(
  self : Regex,
  encoding~ : Encoding?
) -> @immut/sorted_map.T[(String, CaptureVarEndpoint), StaticKnownTagPosition] {
  fn len_of(re : Regex) {
    // TODO: dynamic programming
    match re {
      Epsilon | EOF => Some(0)
      Character(_) => Some(1)
      Repetition(re) => if len_of(re) is Some(0) { Some(0) } else { None }
      Concat(re1, re2) =>
        if len_of(re1) is Some(len1) && len_of(re2) is Some(len2) {
          Some(len1 + len2)
        } else {
          None
        }
      Alter(re1, re2) =>
        if len_of(re1) is Some(len1) &&
          len_of(re2) is Some(len2) &&
          len1 == len2 {
          Some(len1)
        } else {
          None
        }
      Capture(regex, _) => len_of(regex)
      Bytes(_, re) => len_of(re)
    }
  }

  let mut map = @immut/sorted_map.new()
  fn left_aux(re : Regex) {
    let queue = [(re, 0)]
    while queue.pop() is Some((re, offset)) {
      match re {
        Epsilon | EOF => ()
        Character(_) => ()
        Capture(regex, name) => {
          queue.push((regex, offset))
          map = map.add((name, Start), RelativeToStart(offset))
          match len_of(regex) {
            Some(len) =>
              map = map.add((name, End), RelativeToStart(offset + len))
            None => ()
          }
        }
        Concat(re1, re2) => {
          queue.push((re1, offset))
          match len_of(re1) {
            Some(len) => queue.push((re2, offset + len))
            None => ()
          }
        }
        Alter(re1, re2) => {
          queue.push((re1, offset))
          queue.push((re2, offset))
        }
        Repetition(_) => ()
        Bytes(_enc, re) =>
          // FIXME: this variant should be eliminated before call `get_static_known_tag_positions`
          queue.push((re, offset))
      }
    }
  }

  fn right_aux(re : Regex) {
    let queue = [(re, 0)]
    while queue.pop() is Some((re, offset)) {
      match re {
        Epsilon | EOF => ()
        Character(_) => ()
        Capture(regex, name) => {
          queue.push((regex, offset))
          map = map.add((name, End), RelativeToEnd(offset))
          match len_of(regex) {
            Some(len) =>
              map = map.add((name, Start), RelativeToEnd(offset - len))
            None => ()
          }
        }
        Concat(re1, re2) => {
          queue.push((re2, offset))
          match len_of(re2) {
            Some(len) => queue.push((re1, offset - len))
            None => ()
          }
        }
        Alter(re1, re2) => {
          queue.push((re1, offset))
          queue.push((re2, offset))
        }
        Repetition(_) => ()
        Bytes(_enc, re) =>
          // FIXME: this variant should be eliminated before call `get_static_known_tag_positions`
          queue.push((re, offset))
      }
    }
  }

  // TODO: relax the restriction
  if encoding is None {
    right_aux(self)
    left_aux(self)
  }
  map
}

///|
pub fn get_capture_names(
  self : Regex,
  encoding~ : Encoding?
) ->
     Array[
       (String, (VarType, (StaticKnownTagPosition?, StaticKnownTagPosition?))),
     ] {
  let char_vars = get_char_vars(self)
  let static_tag_positions = get_static_known_tag_positions(self, encoding~)
  let result = self
    .get_capture_names_rec()
    .map(fn(var) {
      let var_type = if char_vars.contains(var) { Char } else { String }
      let start_pos = static_tag_positions.get((var, Start))
      let end_pos = static_tag_positions.get((var, End))
      (var, (var_type, (start_pos, end_pos)))
    })
    .to_array()
  if Map::from_array(result).size() != result.length() {
    abort("Duplicate capture names")
  }
  result
}

///|
fn get_capture_names_rec(self : Regex) -> Iter[String] {
  match self {
    Capture(re, name) => re.get_capture_names_rec().append(name)
    Repetition(re) | Bytes(_, re) => re.get_capture_names_rec()
    Alter(re1, re2) | Concat(re1, re2) =>
      re1.get_capture_names_rec().concat(re2.get_capture_names_rec())
    EOF | Character(_) | Epsilon => Iter::empty()
  }
}

///|
pub typealias CodeBlock = String

///|
pub(all) struct Rule {
  name : String
  signature : String
  patterns : Array[(Regex, CodeBlock)]
} derive(Show, ToJson)

///|
pub(all) struct Lex {
  header : CodeBlock
  rules : Array[Rule]
  trailer : CodeBlock
} derive(Show, ToJson)
