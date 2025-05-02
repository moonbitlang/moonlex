

fn lex_unicode(lexbuf : @lexbuf.T) -> Int  {
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
        0..=127 => 1
        194..=223 => 2
        224..=226 => 3
        227 => 4
        228..=229 => 3
        230 => 5
        231..=239 => 3
        240 => 6
        241..=244 => 7
        _ => break
      }
    }
    1 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    2 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 1
        _ => break
      }
    }
    3 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 2
        _ => break
      }
    }
    4 => {
      continue match lexbuf.next_as_int() {
        128 => 2
        129..=130 => 9
        131..=191 => 2
        _ => break
      }
    }
    5 => {
      continue match lexbuf.next_as_int() {
        128..=135 => 2
        136 => 8
        137..=191 => 2
        _ => break
      }
    }
    6 => {
      continue match lexbuf.next_as_int() {
        144..=159 => 3
        160 => 10
        161..=191 => 3
        _ => break
      }
    }
    7 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 3
        _ => break
      }
    }
    8 => {
      continue match lexbuf.next_as_int() {
        128..=144 => 1
        145 => 11
        146..=191 => 1
        _ => break
      }
    }
    9 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 12
        _ => break
      }
    }
    10 => {
      continue match lexbuf.next_as_int() {
        128..=173 => 2
        174 => 13
        175..=191 => 2
        _ => break
      }
    }
    11 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
      }
      continue match lexbuf.next_as_int() {
        231 => 14
        _ => break
      }
    }
    12 => {
      if matched >= 2 {
        matched = 2
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 3
      }
      break
    }
    13 => {
      continue match lexbuf.next_as_int() {
        128..=182 => 1
        183 => 15
        184..=191 => 1
        _ => break
      }
    }
    14 => {
      continue match lexbuf.next_as_int() {
        136 => 16
        _ => break
      }
    }
    15 => {
      if matched >= 1 {
        matched = 1
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    16 => {
      continue match lexbuf.next_as_int() {
        177 => 17
        _ => break
      }
    }
    17 => {
      continue match lexbuf.next_as_int() {
        228 => 18
        _ => break
      }
    }
    18 => {
      continue match lexbuf.next_as_int() {
        184 => 19
        _ => break
      }
    }
    19 => {
      continue match lexbuf.next_as_int() {
        173 => 20
        _ => break
      }
    }
    20 => {
      continue match lexbuf.next_as_int() {
        229 => 21
        _ => break
      }
    }
    21 => {
      continue match lexbuf.next_as_int() {
        155 => 22
        _ => break
      }
    }
    22 => {
      continue match lexbuf.next_as_int() {
        189 => 23
        _ => break
      }
    }
    23 => {
      if matched >= 0 {
        matched = 0
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    _ => panic()
  }

  guard matched <= 3 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_end_pos)
  match matched {
    0 => {
      ()
 1 
    }
    1 => {
      ()
 2 
    }
    2 => {
      ()
      let c = lexbuf.get_char(_capture_0_start, _capture_0_end)

      if c == 'あ' {
        3
      } else {
        5
      }
    
    }
    3 => {
      ()
 4 
    }
    _ => panic()
  }
}




fn classify(bytes : Bytes) -> Int {
  let lexbuf = @lexbuf.from_bytes(bytes)
  lex_unicode(lexbuf)
}
