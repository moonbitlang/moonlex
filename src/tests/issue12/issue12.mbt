

fn[T : @lexbuf.IStringLexbuf] test_func(lexbuf : T) -> String  {
  // The matched pattern id
  let mut _match_pattern = @int.max_value
  let mut _match_start = lexbuf.curr_pos()
  let mut _match_end = -1
  let mut _capture_0_start = -1
  let mut _capture_0_end = -1
  let mut _capture_1_start = -1
  let mut _capture_1_end = -1
  loop 0 {
    0 => {
      continue match lexbuf.next_as_int() {
        97 => 1
        _ => break
      }
    }
    1 => {
      _match_pattern = 0
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        97..=98 => 2
        _ => break
      }
    }
    2 => {
      continue match lexbuf.next_as_int() {
        97 => 3
        98 => 2
        _ => break
      }
    }
    3 => {
      _match_pattern = 0
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        97 => 3
        98 => 2
        _ => break
      }
    }
    _ => panic()
  }

  guard _match_pattern <= 0 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_match_end)
  match _match_pattern {
    0 => {
      ()
      let t2 = lexbuf.get_string(_capture_0_start, _capture_0_end)

      t2
    
    }
    _ => panic()
  }
}




