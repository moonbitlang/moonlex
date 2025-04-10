

fn lex_is_number[T, C, S, P](lexbuf : @lexbuf.T[T, C, S, P]) -> Bool  {
  let mut matched = None
  let mut state = 0
  while state != -1 {
    let mut tag_action = -1
    match state {
      0 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=47 => {
            state = 3
            tag_action = 0
          }
          48 => {
            state = 2
            tag_action = 0
          }
          49..=57 => {
            state = 1
            tag_action = 0
          }
          58..=1114111 => {
            state = 3
            tag_action = 0
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
          48..=57 => {
            state = 4
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      2 => {
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
      3 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), []))
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
      4 => {
        if matched is Some((prev_pattern_id, _, _)) && 0 <= prev_pattern_id || matched is None {
          matched = Some((0, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 4
            tag_action = 0
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
 true 
    }
    1 => {
 false 
    }
    _ => panic()
  }
}




pub fn is_number(str : String) -> Bool {
    let lexbuf = @lexbuf.from_string(str)
    lex_is_number(lexbuf)
}
