

fn[T : @lexbuf.IStringLexbuf] token(lexbuf : T) -> String  {
  // The matched pattern id
  let mut _match_pattern = @int.max_value
  let mut _match_start = lexbuf.curr_pos()
  let mut _match_end = -1
  let mut _capture_0_start = -1
  let mut _capture_0_end = -1
  loop 0 {
    0 => {
      continue match lexbuf.next_as_int() {
        65..=90 => 1
        95 => 1
        97..=107 => 1
        108 => 2
        109..=122 => 1
        _ => break
      }
    }
    1 => {
      _match_pattern = 1
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        48..=57 => 1
        65..=90 => 1
        95 => 1
        97..=122 => 1
        _ => break
      }
    }
    2 => {
      _match_pattern = 1
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        48..=57 => 1
        65..=90 => 1
        95 => 1
        97..=100 => 1
        101 => 3
        102..=122 => 1
        _ => break
      }
    }
    3 => {
      _match_pattern = 1
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        48..=57 => 1
        65..=90 => 1
        95 => 1
        97..=115 => 1
        116 => 4
        117..=122 => 1
        _ => break
      }
    }
    4 => {
      _match_pattern = 0
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        48..=57 => 1
        65..=90 => 1
        95 => 1
        97..=122 => 1
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
 "keyword" 
    }
    1 => {
      ()
 "ident" 
    }
    _ => panic()
  }
}



