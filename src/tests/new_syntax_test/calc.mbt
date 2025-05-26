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
        -1 => 1
        32 => 2
        43 => 3
        45 => 4
        48..=57 => 5
        _ => break
      }
    }
    1 => {
      if _match_pattern >= 0 {
        _match_pattern = 0
        _match_end = lexbuf.curr_pos()
      }
      break
    }
    2 => {
      if _match_pattern >= 1 {
        _match_pattern = 1
        _match_end = lexbuf.curr_pos()
      }
      break
    }
    3 => {
      if _match_pattern >= 3 {
        _match_pattern = 3
        _match_end = lexbuf.curr_pos()
      }
      break
    }
    4 => {
      if _match_pattern >= 4 {
        _match_pattern = 4
        _match_end = lexbuf.curr_pos()
      }
      break
    }
    5 => {
      if _match_pattern >= 2 {
        _match_pattern = 2
        _match_end = lexbuf.curr_pos()
        _capture_0_start = _match_start
        _capture_0_end = _match_end
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 5
        _ => break
      }
    }
    _ => panic()
  }

  guard _match_pattern <= 4 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_match_end)
  match _match_pattern {
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
