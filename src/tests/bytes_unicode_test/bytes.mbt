

fn lex_unicode(lexbuf : @lexbuf.T) -> Int  {
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
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
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
        129..=130 => 8
        131..=191 => 2
        _ => break
      }
    }
    5 => {
      continue match lexbuf.next_as_int() {
        128..=135 => 2
        136 => 10
        137..=191 => 2
        _ => break
      }
    }
    6 => {
      continue match lexbuf.next_as_int() {
        144..=159 => 3
        160 => 9
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
        128..=191 => 11
        _ => break
      }
    }
    9 => {
      continue match lexbuf.next_as_int() {
        128..=173 => 2
        174 => 12
        175..=191 => 2
        _ => break
      }
    }
    10 => {
      continue match lexbuf.next_as_int() {
        128..=144 => 1
        145 => 13
        146..=191 => 1
        _ => break
      }
    }
    11 => {
      _match_pattern = 2
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 3
      break
    }
    12 => {
      continue match lexbuf.next_as_int() {
        128..=182 => 1
        183 => 14
        184..=191 => 1
        _ => break
      }
    }
    13 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        231 => 15
        _ => break
      }
    }
    14 => {
      _match_pattern = 1
      _match_end = lexbuf.curr_pos()
      break
    }
    15 => {
      continue match lexbuf.next_as_int() {
        136 => 16
        _ => break
      }
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
      _match_pattern = 0
      _match_end = lexbuf.curr_pos()
      break
    }
    _ => panic()
  }

  guard _match_pattern <= 3 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_match_end)
  match _match_pattern {
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
