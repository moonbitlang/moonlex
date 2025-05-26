fn parse_integer(input : @bytes.View) -> Int {
  loop 0, input {
    acc, [] => acc
    acc, ['0'..='9' as c, .. rest] =>
      continue acc * 10 + (c.to_int() - '0'), rest
    _, _ => panic()
  }
}

fn eval(input : Bytes) -> Int {
  
  

  let lexbuf = BytesLexbuf::from_bytes(input)
  let stack : Array[Int] = []
  for {
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
        -1 => 1
        32 => 2
        43 => 3
        45 => 4
        48..=57 => 5
        _ => break
      }
    }
    1 => {
      if matched >= 0 {
        matched = 0
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    2 => {
      if matched >= 1 {
        matched = 1
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    3 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    4 => {
      if matched >= 4 {
        matched = 4
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    5 => {
      if matched >= 2 {
        matched = 2
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 5
        _ => break
      }
    }
    _ => panic()
  }

  guard matched <= 4 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_end_pos)
  match matched {
    0 => {
      ()
{ break }
    }
    1 => {
      ()
{ continue }
    }
    2 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
{ stack.push(parse_integer(t)) }
    }
    3 => {
      ()
{
        let arg2 = stack.unsafe_pop()
        let arg1 = stack.unsafe_pop()
        stack.push(arg1 + arg2)
      }
    }
    4 => {
      ()
{
        let arg2 = stack.unsafe_pop()
        let arg1 = stack.unsafe_pop()
        stack.push(arg1 - arg2)
      }
    }
    _ => panic()
  }
}
  }
  stack.unsafe_pop()
}
