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
) -> @immut/sorted_map.SortedMap[
  (String, CaptureVarEndpoint),
  StaticKnownTagPosition,
] {
  let mut map = @immut/sorted_map.new()
  fn left_aux(re : Regex) {
    let queue = [(re, 0)]
    while queue.pop() is Some((re, offset)) {
      match re.desc {
        Epsilon | EOF => ()
        Character(_) => ()
        Capture(re, name) => {
          queue.push((re, offset))
          map = map.add((name, Start), RelativeToStart(offset))
          match re.len {
            Some(len) =>
              map = map.add((name, End), RelativeToStart(offset + len))
            None => ()
          }
        }
        Concat(re1, re2) => {
          queue.push((re1, offset))
          match re1.len {
            Some(len) => queue.push((re2, offset + len))
            None => ()
          }
        }
        Alter(re1, re2) => {
          queue.push((re1, offset))
          queue.push((re2, offset))
        }
        Repetition(_) => ()
      }
    }
  }

  fn right_aux(re : Regex) {
    let queue = [(re, 0)]
    while queue.pop() is Some((re, offset)) {
      match re.desc {
        Epsilon | EOF => ()
        Character(_) => ()
        Capture(re, name) => {
          queue.push((re, offset))
          map = map.add((name, End), RelativeToEnd(offset))
          match re.len {
            Some(len) =>
              map = map.add((name, Start), RelativeToEnd(offset - len))
            None => ()
          }
        }
        Concat(re1, re2) => {
          queue.push((re2, offset))
          match re2.len {
            Some(len) => queue.push((re1, offset - len))
            None => ()
          }
        }
        Alter(re1, re2) => {
          queue.push((re1, offset))
          queue.push((re2, offset))
        }
        Repetition(_) => ()
      }
    }
  }

  right_aux(re)
  left_aux(re)
  map
}

///|
pub fn get_regex_captures(
  re : Regex,
  lowered_re : Regex,
) -> Array[
  (String, (VarType, (StaticKnownTagPosition?, StaticKnownTagPosition?))),
] {
  let vars = @regex.get_capture_vars(re)
  let static_tag_positions = get_regex_static_known_tag_positions(lowered_re)
  let result = vars
    .iter()
    .map(fn(var_) {
      let (name, re_class) = var_
      let var_type = match re_class {
        Char => Char
        String => String
      }
      let start_pos = static_tag_positions.get((name, Start))
      let end_pos = static_tag_positions.get((name, End))
      (name, (var_type, (start_pos, end_pos)))
    })
    .to_array()
  result
}
