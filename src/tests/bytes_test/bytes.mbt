
pub suberror MalformedUtf8Error


fn lex_utf8(lexbuf : @lexbuf.T, buf : StringBuilder) -> Unit raise MalformedUtf8Error  {
  // The matched pattern id
  let mut _match_pattern = @int.max_value
  let mut _match_start = lexbuf.curr_pos()
  let mut _match_end = -1
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
      _match_pattern = 0
      _match_end = lexbuf.curr_pos()
      break
    }
    2 => {
      _match_pattern = 1
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 1
      break
    }
    3 => {
      _match_pattern = 5
      _match_end = lexbuf.curr_pos()
      break
    }
    4 => {
      _match_pattern = 5
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        128..=191 => 9
        _ => break
      }
    }
    5 => {
      _match_pattern = 5
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        128..=191 => 8
        _ => break
      }
    }
    6 => {
      _match_pattern = 5
      _match_end = lexbuf.curr_pos()
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
      _match_pattern = 2
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 1
      _capture_1_start = _match_start + 1
      _capture_1_end = _match_start + 2
      break
    }
    10 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 12
        _ => break
      }
    }
    11 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 1
      _capture_1_start = _match_start + 1
      _capture_1_end = _match_start + 2
      _capture_2_start = _match_start + 2
      _capture_2_end = _match_start + 3
      break
    }
    12 => {
      _match_pattern = 4
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 1
      _capture_1_start = _match_start + 1
      _capture_1_end = _match_start + 2
      _capture_2_start = _match_start + 2
      _capture_2_end = _match_start + 3
      _capture_3_start = _match_start + 3
      _capture_3_end = _match_start + 4
      break
    }
    _ => panic()
  }

  guard _match_pattern <= 5 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_match_end)
  match _match_pattern {
    0 => {
      ()
 () 
    }
    1 => {
      ()
      let t = lexbuf.get_char(_capture_0_start, _capture_0_end)
 
      let c = t.to_int().unsafe_to_char()
      buf.write_char(c)
      lex_utf8(lexbuf, buf)
    
    }
    2 => {
      ()
      let t1 = lexbuf.get_char(_capture_0_start, _capture_0_end)
      let t2 = lexbuf.get_char(_capture_1_start, _capture_1_end)

      let c = (((t1.to_int() & 0x1f) << 6) | ((t2.to_int() & 0x3f))).unsafe_to_char()
      buf.write_char(c)
      lex_utf8(lexbuf, buf)
    
    }
    3 => {
      ()
      let t1 = lexbuf.get_char(_capture_0_start, _capture_0_end)
      let t2 = lexbuf.get_char(_capture_1_start, _capture_1_end)
      let t3 = lexbuf.get_char(_capture_2_start, _capture_2_end)

      let c = (((t1.to_int() & 0x0f) << 12) | ((t2.to_int() & 0x3f) << 6) | (t3.to_int() & 0x3f)).unsafe_to_char()
      buf.write_char(c)
      lex_utf8(lexbuf, buf)
    
    }
    4 => {
      ()
      let t1 = lexbuf.get_char(_capture_0_start, _capture_0_end)
      let t2 = lexbuf.get_char(_capture_1_start, _capture_1_end)
      let t3 = lexbuf.get_char(_capture_2_start, _capture_2_end)
      let t4 = lexbuf.get_char(_capture_3_start, _capture_3_end)

      let c = (((t1.to_int() & 0x07) << 18) | ((t2.to_int() & 0x3f) << 12) | ((t3.to_int() & 0x3f) << 6) | (t4.to_int() & 0x3f)).unsafe_to_char()
      buf.write_char(c)
      lex_utf8(lexbuf, buf)
    
    }
    5 => {
      ()
 raise MalformedUtf8Error 
    }
    _ => panic()
  }
}




fn utf8_decode(bytes : Bytes) -> String raise MalformedUtf8Error {
  let buf = StringBuilder::new()
  let lexbuf = @lexbuf.from_bytes(bytes)
  lex_utf8(lexbuf, buf)
  buf.to_string()
}
