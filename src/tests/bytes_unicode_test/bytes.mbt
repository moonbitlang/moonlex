

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
        224 => 3
        225..=226 => 4
        227 => 5
        228..=229 => 4
        230 => 6
        231..=239 => 4
        240 => 7
        241..=243 => 8
        244 => 9
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
        160 => 2
        161..=191 => 12
        _ => break
      }
    }
    4 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 2
        _ => break
      }
    }
    5 => {
      continue match lexbuf.next_as_int() {
        128 => 2
        129 => 10
        130 => 11
        131..=191 => 2
        _ => break
      }
    }
    6 => {
      continue match lexbuf.next_as_int() {
        128..=135 => 2
        136 => 16
        137..=191 => 2
        _ => break
      }
    }
    7 => {
      continue match lexbuf.next_as_int() {
        144 => 13
        145..=159 => 14
        160 => 15
        161..=191 => 14
        _ => break
      }
    }
    8 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 4
        _ => break
      }
    }
    9 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 4
        _ => break
      }
    }
    10 => {
      continue match lexbuf.next_as_int() {
        128 => 1
        129..=191 => 17
        _ => break
      }
    }
    11 => {
      continue match lexbuf.next_as_int() {
        128..=150 => 17
        151..=152 => 1
        153..=159 => 17
        160..=191 => 1
        _ => break
      }
    }
    12 => {
      continue match lexbuf.next_as_int() {
        128 => 1
        _ => break
      }
    }
    13 => {
      continue match lexbuf.next_as_int() {
        128 => 2
        129..=191 => 12
        _ => break
      }
    }
    14 => {
      continue match lexbuf.next_as_int() {
        128 => 12
        _ => break
      }
    }
    15 => {
      continue match lexbuf.next_as_int() {
        128 => 12
        174 => 18
        _ => break
      }
    }
    16 => {
      continue match lexbuf.next_as_int() {
        128..=144 => 1
        145 => 19
        146..=191 => 1
        _ => break
      }
    }
    17 => {
      _match_pattern = 2
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 3
      break
    }
    18 => {
      continue match lexbuf.next_as_int() {
        183 => 20
        _ => break
      }
    }
    19 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        231 => 21
        _ => break
      }
    }
    20 => {
      _match_pattern = 1
      _match_end = lexbuf.curr_pos()
      break
    }
    21 => {
      continue match lexbuf.next_as_int() {
        136 => 22
        _ => break
      }
    }
    22 => {
      continue match lexbuf.next_as_int() {
        177 => 23
        _ => break
      }
    }
    23 => {
      continue match lexbuf.next_as_int() {
        228 => 24
        _ => break
      }
    }
    24 => {
      continue match lexbuf.next_as_int() {
        184 => 25
        _ => break
      }
    }
    25 => {
      continue match lexbuf.next_as_int() {
        173 => 26
        _ => break
      }
    }
    26 => {
      continue match lexbuf.next_as_int() {
        229 => 27
        _ => break
      }
    }
    27 => {
      continue match lexbuf.next_as_int() {
        155 => 28
        _ => break
      }
    }
    28 => {
      continue match lexbuf.next_as_int() {
        189 => 29
        _ => break
      }
    }
    29 => {
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
