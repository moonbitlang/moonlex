fn parse_integer(input : @bytes.View) -> Int {
  loop 0, input {
    acc, [] => acc
    acc, ['0'..='9' as c, .. rest] =>
      continue acc * 10 + (c.to_int() - '0'), rest
    _, _ => panic()
  }
}

fn eval(input : Bytes) -> Int {
  
  

  let stack : Array[Int] = []
  loop input[:] { _lexee => {
  let _data = _lexee.data()
  let mut _cursor = _lexee.start_offset()
  let _end = _cursor + _lexee.length()
  let mut _match_pattern = @int.max_value
  let mut _match_start = _cursor
  let mut _match_end = -1
  let mut _capture_0_start = -1
  let mut _capture_0_end = -1
  let mut _capture_1_start = -1
  let mut _capture_1_end = -1
  loop 0 {
    0 => {
      continue match (
        if _cursor < _end {
          let c = _data[_cursor]
          _cursor += 1
          c.to_int()
        } else {
          -1 // EOF
        }
      ) {
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
        _match_end = _cursor
      }
      break
    }
    2 => {
      if _match_pattern >= 1 {
        _match_pattern = 1
        _match_end = _cursor
      }
      break
    }
    3 => {
      if _match_pattern >= 3 {
        _match_pattern = 3
        _match_end = _cursor
      }
      break
    }
    4 => {
      if _match_pattern >= 4 {
        _match_pattern = 4
        _match_end = _cursor
      }
      break
    }
    5 => {
      if _match_pattern >= 2 {
        _match_pattern = 2
        _match_end = _cursor
        _capture_0_start = _match_start
        _capture_0_end = _match_end
      }
      continue match (
        if _cursor < _end {
          let c = _data[_cursor]
          _cursor += 1
          c.to_int()
        } else {
          -1 // EOF
        }
      ) {
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

  match _match_pattern {
    0 => {
      ()
{ break }
    }
    1 => {
      ()
      let rest = _data[_match_end:]
{ continue rest }
    }
    2 => {
      ()
      let t = _data[_capture_0_start:_capture_0_end]
      let rest = _data[_match_end:]
{ 
      stack.push(parse_integer(t))
      continue rest
    }
    }
    3 => {
      ()
      let rest = _data[_match_end:]
{
      let arg2 = stack.unsafe_pop()
      let arg1 = stack.unsafe_pop()
      stack.push(arg1 + arg2)
      continue rest
    }
    }
    4 => {
      ()
      let rest = _data[_match_end:]
{
      let arg2 = stack.unsafe_pop()
      let arg1 = stack.unsafe_pop()
      stack.push(arg1 - arg2)
      continue rest
    }
    }
    _ => panic()
  }
} }
  stack.unsafe_pop()
}
