
priv enum Token {
  PERCENT
  PERCENT_EOF
  NON_PERCENT
  EOF
} derive(ToJson(style="legacy"))


fn[T : @lexbuf.IStringLexbuf] token(lexbuf : T) -> Token  {
  // The matched pattern id
  let mut _match_pattern = @int.max_value
  let mut _match_start = lexbuf.curr_pos()
  let mut _match_end = -1
  let mut _capture_0_start = -1
  let mut _capture_0_end = -1
  loop 0 {
    0 => {
      continue match lexbuf.next_as_int() {
        -1 => 1
        0..=36 => 2
        37 => 3
        38..=1114111 => 2
        _ => break
      }
    }
    1 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      break
    }
    2 => {
      _match_pattern = 2
      _match_end = lexbuf.curr_pos()
      break
    }
    3 => {
      _match_pattern = 1
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        -1 => 4
        _ => break
      }
    }
    4 => {
      _match_pattern = 0
      _match_end = lexbuf.curr_pos()
      break
    }
    _ => panic()
  }

  guard _match_pattern <= 3 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_match_end)
  match _match_pattern {
    0 => {
      ()
 PERCENT_EOF 
    }
    1 => {
      ()
 PERCENT 
    }
    2 => {
      ()
 NON_PERCENT 
    }
    3 => {
      ()
 EOF 
    }
    _ => panic()
  }
}



