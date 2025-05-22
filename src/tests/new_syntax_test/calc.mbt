fn parse_integer(input : @bytes.View) -> Int {
  loop 0, input {
    acc, [] => acc
    acc, ['0'..='9' as c, .. rest] =>
      continue acc * 10 + (c.to_int() - '0'), rest
    _, _ => panic()
  }
}

test {
  
  

  let lexbuf = BytesLexbuf::from_bytes("42")
  inspect!(
    {
  ()
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
        48..=57 => 1
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
        48..=57 => 1
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
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
{ parse_integer(t) }
    }
    _ => panic()
  }
}
  )
}
