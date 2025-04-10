
// translate from https://ohama.github.io/ocaml/ocamllex-tutorial/examples/wordcount/


fn count[T](lines : Int, words : Int, chars : Int, lexbuf : @lexbuf.T[T, Char, String, Int]) -> (Int, Int, Int)  {
  let mut matched = None
  let mut state = 0
  let mut _tag_0 = -1
  let mut _tag_1 = -1
  _tag_0 = lexbuf.curr_pos()
  while state != -1 {
    let mut tag_action = -1
    match state {
      0 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=8 => {
            state = 3
            tag_action = 1
          }
          9 => {
            state = 2
            tag_action = 0
          }
          10 => {
            state = 1
            tag_action = 0
          }
          11..=31 => {
            state = 3
            tag_action = 1
          }
          32 => {
            state = 2
            tag_action = 0
          }
          33..=1114111 => {
            state = 3
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      1 => {
        if matched is Some((prev_pattern_id, _, _)) && 0 <= prev_pattern_id || matched is None {
          matched = Some((0, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      2 => {
        if matched is Some((prev_pattern_id, _, _)) && 2 <= prev_pattern_id || matched is None {
          matched = Some((2, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      3 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), [(_tag_0, _tag_1)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=8 => {
            state = 4
            tag_action = 1
          }
          11..=31 => {
            state = 4
            tag_action = 1
          }
          33..=1114111 => {
            state = 4
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      4 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), [(_tag_0, _tag_1)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=8 => {
            state = 4
            tag_action = 1
          }
          11..=31 => {
            state = 4
            tag_action = 1
          }
          33..=1114111 => {
            state = 4
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      _ => panic()
    }
    match tag_action {
      1 => {
        _tag_1 = lexbuf.curr_pos()
      }
      _ => ()
    }
  }

  guard matched is Some((pattern_id, marked_pos, _captures)) else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(marked_pos)
  match pattern_id {
    0 => {
 count(lines + 1, words, chars + 1, lexbuf) 
    }
    1 => {
      let (_start_pos_of_word, _end_pos_of_word) = _captures[0]
      let word = lexbuf.sub_lexeme(_start_pos_of_word, _end_pos_of_word)

      let new_chars = chars + word.length()
      count(lines, words + 1, new_chars, lexbuf)
    
    }
    2 => {
 count(lines, words, chars + 1, lexbuf) 
    }
    3 => {
 (lines, words, chars) 
    }
    _ => panic()
  }
}




