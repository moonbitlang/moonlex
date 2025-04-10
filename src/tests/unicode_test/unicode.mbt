

fn lex_unicode[T](lexbuf : @lexbuf.T[T, Char, String, Int]) -> Int  {
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
          0..=12352 => {
            state = 2
            tag_action = 0
          }
          12353..=12438 => {
            state = 1
            tag_action = 0
          }
          12439..=12440 => {
            state = 2
            tag_action = 0
          }
          12441..=12447 => {
            state = 1
            tag_action = 0
          }
          12448..=25104 => {
            state = 2
            tag_action = 0
          }
          25105 => {
            state = 4
            tag_action = 0
          }
          25106..=134070 => {
            state = 2
            tag_action = 0
          }
          134071 => {
            state = 3
            tag_action = 0
          }
          134072..=1114111 => {
            state = 2
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      1 => {
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
      2 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
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
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          29233 => {
            state = 5
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      5 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          20013 => {
            state = 6
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      6 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          22269 => {
            state = 7
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      7 => {
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
 1 
    }
    1 => {
 2 
    }
    2 => {
 3 
    }
    3 => {
 4 
    }
    _ => panic()
  }
}




fn classify(str : String) -> Int {
  let lexbuf = @lexbuf.from_string(str)
  lex_unicode(lexbuf)
}
