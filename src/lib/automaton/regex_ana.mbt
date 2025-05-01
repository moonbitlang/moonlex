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
priv enum CaptureVarEndpoint {
  Start
  End
} derive(Compare, Eq)

///|
fn get_regex_static_known_tag_positions(
  re : Regex,
  encoding~ : @type.Encoding?
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
    right_aux(re)
    left_aux(re)
  }
  map
}

///|
pub fn get_regex_captures(
  re : Regex,
  encoding~ : @type.Encoding?
) ->
     Array[
       (String, (VarType, (StaticKnownTagPosition?, StaticKnownTagPosition?))),
     ] {
  let char_vars = re.get_char_capture_vars()
  let vars = re.get_capture_vars()
  let static_tag_positions = get_regex_static_known_tag_positions(re, encoding~)
  let result = vars
    .iter()
    .map(fn(var) {
      let var_type = if char_vars.contains(var) { Char } else { String }
      let start_pos = static_tag_positions.get((var, Start))
      let end_pos = static_tag_positions.get((var, End))
      (var, (var_type, (start_pos, end_pos)))
    })
    .to_array()
  result
}
