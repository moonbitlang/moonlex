


fn[T : @lexbuf.IStringLexbuf] _scan_newline(lexbuf : T) -> Int  {
  // The matched pattern id
  let mut _match_pattern = @int.max_value
  let mut _match_start = lexbuf.curr_pos()
  let mut _match_end = -1
  let mut _capture_0_start = -1
  let mut _capture_0_end = -1
  loop 0 {
    0 => {
      _match_pattern = 2
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        0..=9 => 1
        10 => 2
        11..=12 => 1
        13 => 3
        14..=1114111 => 1
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
        10 => 2
        _ => break
      }
    }
    _ => panic()
  }

  guard _match_pattern <= 2 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_match_end)
  match _match_pattern {
    0 => {
      ()

      _match_start
    
    }
    1 => {
      ()
 _scan_newline(lexbuf) 
    }
    2 => {
      ()
 -1 
    }
    _ => panic()
  }
}




