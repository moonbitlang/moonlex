

fn[T : @lexbuf.IStringLexbuf] lex_is_number(lexbuf : T) -> Bool  {
  // The matched pattern id
  let mut _match_pattern = @int.max_value
  let mut _match_start = lexbuf.curr_pos()
  let mut _match_end = -1
  let mut _capture_0_start = -1
  let mut _capture_0_end = -1
  loop 0 {
    0 => {
      continue match lexbuf.next_as_int() {
        0..=47 => 1
        48 => 2
        49..=57 => 3
        58..=1114111 => 1
        _ => break
      }
    }
    1 => {
      _match_pattern = 1
      _match_end = lexbuf.curr_pos()
      break
    }
    2 => {
      _match_pattern = 0
      _match_end = lexbuf.curr_pos()
      break
    }
    3 => {
      _match_pattern = 0
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        48..=57 => 3
        _ => break
      }
    }
    _ => panic()
  }

  guard _match_pattern <= 1 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_match_end)
  match _match_pattern {
    0 => {
      ()
 true 
    }
    1 => {
      ()
 false 
    }
    _ => panic()
  }
}




pub fn is_number(str : String) -> Bool {
    let lexbuf = @lexbuf.StringLexbuf::from_string(str)
    lex_is_number(lexbuf)
}
