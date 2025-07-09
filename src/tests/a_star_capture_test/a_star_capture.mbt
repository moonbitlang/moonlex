

fn[T : @lexbuf.IStringLexbuf] test_func(lexbuf : T) -> String  {
  // The matched pattern id
  let mut _match_pattern = @int.max_value
  let mut _match_start = lexbuf.curr_pos()
  let mut _match_end = -1
  let mut _capture_0_start = -1
  let mut _capture_0_end = -1
  let mut _capture_1_start = -1
  let mut _capture_1_end = -1
  let mut _tag_0 = -1
  let mut _tag_0_1 = -1
  let mut _tag_0_2 = -1
  loop 0 {
    0 => {
      _tag_0 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        97 => 1
        _ => break
      }
    }
    1 => {
      _tag_0_1 = _tag_0
      _tag_0 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        97 => 2
        _ => break
      }
    }
    2 => {
      _tag_0_2 = _tag_0_1
      _tag_0_1 = _tag_0
      _tag_0 = lexbuf.curr_pos()
      _match_pattern = 0
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _tag_0_2
      _capture_0_end = _match_end + -1
      continue match lexbuf.next_as_int() {
        97 => 2
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
      let cap = lexbuf.get_string(_capture_0_start, _capture_0_end)

      cap
    
    }
    _ => panic()
  }
}




