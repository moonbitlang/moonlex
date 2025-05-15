
pub type! MalformedUtf8Error


fn lex_utf8(lexbuf : @lexbuf.T, buf : StringBuilder) -> Unit!MalformedUtf8Error  {
  // The matched pattern id
  let mut matched = @int.max_value
  let mut _end_pos = -1
  let mut _start_pos = lexbuf.curr_pos()
  let mut _capture_0_start = -1
  let mut _capture_0_end = -1
  let mut _capture_1_start = -1
  let mut _capture_1_end = -1
  let mut _capture_2_start = -1
  let mut _capture_2_end = -1
  let mut _capture_3_start = -1
  let mut _capture_3_end = -1
  let mut _capture_4_start = -1
  let mut _capture_4_end = -1
  loop 0 {
    0 => {
      continue match lexbuf.next_as_int() {
        -1 => 1
        0..=127 => 2
        128..=193 => 3
        194..=223 => 4
        224..=239 => 5
        240..=244 => 6
        245..=1114111 => 3
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
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 1
      }
      break
    }
    3 => {
      if matched >= 5 {
        matched = 5
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    4 => {
      if matched >= 5 {
        matched = 5
        _end_pos = lexbuf.curr_pos()
      }
      continue match lexbuf.next_as_int() {
        128..=191 => 9
        _ => break
      }
    }
    5 => {
      if matched >= 5 {
        matched = 5
        _end_pos = lexbuf.curr_pos()
      }
      continue match lexbuf.next_as_int() {
        128..=191 => 8
        _ => break
      }
    }
    6 => {
      if matched >= 5 {
        matched = 5
        _end_pos = lexbuf.curr_pos()
      }
      continue match lexbuf.next_as_int() {
        128..=191 => 7
        _ => break
      }
    }
    7 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 10
        _ => break
      }
    }
    8 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 11
        _ => break
      }
    }
    9 => {
      if matched >= 2 {
        matched = 2
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 1
        _capture_1_start = _start_pos + 1
        _capture_1_end = _start_pos + 2
      }
      break
    }
    10 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 12
        _ => break
      }
    }
    11 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 1
        _capture_1_start = _start_pos + 1
        _capture_1_end = _start_pos + 2
        _capture_2_start = _start_pos + 2
        _capture_2_end = _start_pos + 3
      }
      break
    }
    12 => {
      if matched >= 4 {
        matched = 4
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 1
        _capture_1_start = _start_pos + 1
        _capture_1_end = _start_pos + 2
        _capture_2_start = _start_pos + 2
        _capture_2_end = _start_pos + 3
        _capture_3_start = _start_pos + 3
        _capture_3_end = _start_pos + 4
      }
      break
    }
    _ => panic()
  }

  guard matched <= 5 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_end_pos)
  match matched {
    0 => {
      ()
 () 
    }
    1 => {
      ()
      let t = lexbuf.get_char(_capture_0_start, _capture_0_end)
 
      let c = t.to_int().unsafe_to_char()
      buf.write_char(c)
      lex_utf8!(lexbuf, buf)
    
    }
    2 => {
      ()
      let t1 = lexbuf.get_char(_capture_0_start, _capture_0_end)
      let t2 = lexbuf.get_char(_capture_1_start, _capture_1_end)

      let c = ((t1.to_int() & 0x1f) << 6 | (t2.to_int() & 0x3f)).unsafe_to_char()
      buf.write_char(c)
      lex_utf8!(lexbuf, buf)
    
    }
    3 => {
      ()
      let t1 = lexbuf.get_char(_capture_0_start, _capture_0_end)
      let t2 = lexbuf.get_char(_capture_1_start, _capture_1_end)
      let t3 = lexbuf.get_char(_capture_2_start, _capture_2_end)

      let c = ((t1.to_int() & 0x0f) << 12 | (t2.to_int() & 0x3f) << 6 | (t3.to_int() & 0x3f)).unsafe_to_char()
      buf.write_char(c)
      lex_utf8!(lexbuf, buf)
    
    }
    4 => {
      ()
      let t1 = lexbuf.get_char(_capture_0_start, _capture_0_end)
      let t2 = lexbuf.get_char(_capture_1_start, _capture_1_end)
      let t3 = lexbuf.get_char(_capture_2_start, _capture_2_end)
      let t4 = lexbuf.get_char(_capture_3_start, _capture_3_end)

      let c = ((t1.to_int() & 0x07) << 18 | (t2.to_int() & 0x3f) << 12 | (t3.to_int() & 0x3f) << 6 | (t4.to_int() & 0x3f)).unsafe_to_char()
      buf.write_char(c)
      lex_utf8!(lexbuf, buf)
    
    }
    5 => {
      ()
 raise MalformedUtf8Error 
    }
    _ => panic()
  }
}




fn utf8_decode(bytes : Bytes) -> String!MalformedUtf8Error {
  let buf = StringBuilder::new()
  let lexbuf = @lexbuf.from_bytes(bytes)
  lex_utf8!(lexbuf, buf)
  buf.to_string()
}
