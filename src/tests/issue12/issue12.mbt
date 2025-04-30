

fn test_func[T : @lexbuf.IStringLexbuf](lexbuf : T) -> String  {
  // The matched pattern id
  let mut matched = @int.max_value
  let mut _end_pos = -1
  let mut _start_pos = lexbuf.curr_pos()
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
      if matched >= 0 {
        matched = 0
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
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
      if matched >= 0 {
        matched = 0
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        97 => 3
        98 => 2
        _ => break
      }
    }
    _ => panic()
  }

  guard matched <= 0 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_end_pos)
  match matched {
    0 => {
      ()
      let _start_pos_of_t2 = _capture_0_start
      let _end_pos_of_t2 = _capture_0_end
      let t2 = lexbuf.get_string(_start_pos_of_t2, _end_pos_of_t2)

      t2
    
    }
    _ => panic()
  }
}




