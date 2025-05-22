

fn token(lexbuf : StringLexbuf) -> Token  {
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
  let mut _tag_0 = -1
  let mut _tag_1 = -1
  loop 0 {
    0 => {
      continue match lexbuf.next_as_int() {
        -1 => 1
        0..=35 => 2
        36 => 3
        37..=39 => 2
        40 => 4
        41 => 5
        42 => 6
        43 => 7
        44 => 2
        45 => 8
        46 => 9
        47..=62 => 2
        63 => 10
        64..=90 => 2
        91 => 11
        92 => 12
        93 => 13
        94 => 14
        95..=122 => 2
        123 => 15
        124 => 16
        125..=1114111 => 2
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
      if matched >= 31 {
        matched = 31
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 1
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
      if matched >= 14 {
        matched = 14
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    5 => {
      if matched >= 15 {
        matched = 15
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    6 => {
      if matched >= 8 {
        matched = 8
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    7 => {
      if matched >= 9 {
        matched = 9
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    8 => {
      if matched >= 7 {
        matched = 7
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    9 => {
      if matched >= 2 {
        matched = 2
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    10 => {
      if matched >= 10 {
        matched = 10
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    11 => {
      if matched >= 4 {
        matched = 4
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    12 => {
      if matched >= 31 {
        matched = 31
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 1
      }
      continue match lexbuf.next_as_int() {
        36 => 17
        40 => 18
        41 => 19
        42 => 20
        43 => 21
        46 => 22
        63 => 23
        91 => 24
        92 => 25
        93 => 26
        94 => 27
        117 => 28
        124 => 29
        _ => break
      }
    }
    13 => {
      if matched >= 5 {
        matched = 5
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    14 => {
      if matched >= 6 {
        matched = 6
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    15 => {
      if matched >= 31 {
        matched = 31
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 1
      }
      continue match lexbuf.next_as_int() {
        48 => 30
        49..=57 => 31
        123 => 32
        _ => break
      }
    }
    16 => {
      if matched >= 16 {
        matched = 16
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    17 => {
      if matched >= 23 {
        matched = 23
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 2
      }
      break
    }
    18 => {
      if matched >= 18 {
        matched = 18
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 2
      }
      break
    }
    19 => {
      if matched >= 19 {
        matched = 19
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 2
      }
      break
    }
    20 => {
      if matched >= 26 {
        matched = 26
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 2
      }
      break
    }
    21 => {
      if matched >= 25 {
        matched = 25
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 2
      }
      break
    }
    22 => {
      if matched >= 22 {
        matched = 22
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 2
      }
      break
    }
    23 => {
      if matched >= 27 {
        matched = 27
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 2
      }
      break
    }
    24 => {
      if matched >= 20 {
        matched = 20
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 2
      }
      break
    }
    25 => {
      if matched >= 17 {
        matched = 17
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 2
      }
      break
    }
    26 => {
      if matched >= 21 {
        matched = 21
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 2
      }
      break
    }
    27 => {
      if matched >= 24 {
        matched = 24
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 2
      }
      break
    }
    28 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 33
        65..=70 => 33
        97..=102 => 33
        123 => 34
        _ => break
      }
    }
    29 => {
      if matched >= 28 {
        matched = 28
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 2
      }
      break
    }
    30 => {
      _tag_0 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        44 => 35
        125 => 36
        _ => break
      }
    }
    31 => {
      _tag_0 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        44 => 35
        48..=57 => 31
        125 => 36
        _ => break
      }
    }
    32 => {
      continue match lexbuf.next_as_int() {
        99 => 37
        _ => break
      }
    }
    33 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 38
        65..=70 => 38
        97..=102 => 38
        _ => break
      }
    }
    34 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 39
        65..=70 => 39
        97..=102 => 39
        _ => break
      }
    }
    35 => {
      _tag_1 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        48 => 40
        49..=57 => 41
        125 => 42
        _ => break
      }
    }
    36 => {
      if matched >= 13 {
        matched = 13
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 1
        _capture_0_end = _end_pos + -1
      }
      break
    }
    37 => {
      continue match lexbuf.next_as_int() {
        103 => 43
        _ => break
      }
    }
    38 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 44
        65..=70 => 44
        97..=102 => 44
        _ => break
      }
    }
    39 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 39
        65..=70 => 39
        97..=102 => 39
        125 => 45
        _ => break
      }
    }
    40 => {
      continue match lexbuf.next_as_int() {
        125 => 46
        _ => break
      }
    }
    41 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 41
        125 => 46
        _ => break
      }
    }
    42 => {
      if matched >= 12 {
        matched = 12
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 1
        _capture_0_end = _end_pos + -2
      }
      break
    }
    43 => {
      continue match lexbuf.next_as_int() {
        76 => 47
        _ => break
      }
    }
    44 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 48
        65..=70 => 48
        97..=102 => 48
        _ => break
      }
    }
    45 => {
      if matched >= 29 {
        matched = 29
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
        _capture_1_start = _start_pos + 3
        _capture_1_end = _end_pos + -1
      }
      break
    }
    46 => {
      if matched >= 11 {
        matched = 11
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 1
        _capture_0_end = _tag_0
        _capture_1_start = _tag_1
        _capture_1_end = _end_pos + -1
      }
      break
    }
    47 => {
      continue match lexbuf.next_as_int() {
        118 => 49
        _ => break
      }
    }
    48 => {
      if matched >= 30 {
        matched = 30
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 6
        _capture_1_start = _start_pos + 2
        _capture_1_end = _start_pos + 6
      }
      break
    }
    49 => {
      continue match lexbuf.next_as_int() {
        51 => 50
        _ => break
      }
    }
    50 => {
      continue match lexbuf.next_as_int() {
        112 => 51
        _ => break
      }
    }
    51 => {
      continue match lexbuf.next_as_int() {
        83 => 52
        _ => break
      }
    }
    52 => {
      continue match lexbuf.next_as_int() {
        95 => 53
        _ => break
      }
    }
    53 => {
      continue match lexbuf.next_as_int() {
        65..=90 => 54
        _ => break
      }
    }
    54 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 54
        65..=90 => 54
        95 => 54
        97..=122 => 54
        125 => 55
        _ => break
      }
    }
    55 => {
      continue match lexbuf.next_as_int() {
        125 => 56
        _ => break
      }
    }
    56 => {
      if matched >= 1 {
        matched = 1
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 10
        _capture_0_end = _end_pos + -2
      }
      break
    }
    _ => panic()
  }

  guard matched <= 31 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_end_pos)
  match matched {
    0 => {
      ()
 EOF 
    }
    1 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 TOKEN(t) 
    }
    2 => {
      ()
 DOT 
    }
    3 => {
      ()
 DOLLAR 
    }
    4 => {
      ()
 LBRACKET 
    }
    5 => {
      ()
 RBRACKET 
    }
    6 => {
      ()
 CARET 
    }
    7 => {
      ()
 MINUS 
    }
    8 => {
      ()
 STAR 
    }
    9 => {
      ()
 PLUS 
    }
    10 => {
      ()
 QUESTION 
    }
    11 => {
      ()
      let t1 = lexbuf.get_string(_capture_0_start, _capture_0_end)
      let t2 = lexbuf.get_string(_capture_1_start, _capture_1_end)
 REPEAT((parse_integer(t1), Some(parse_integer(t2)))) 
    }
    12 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 REPEAT((parse_integer(t), None)) 
    }
    13 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)

      let n = parse_integer(t)
      REPEAT((n, Some(n)))
    
    }
    14 => {
      ()
 LPAREN 
    }
    15 => {
      ()
 RPAREN 
    }
    16 => {
      ()
 BAR 
    }
    17 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 CHAR_ESCAPE(('\\', t)) 
    }
    18 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 CHAR_ESCAPE(('(', t)) 
    }
    19 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 CHAR_ESCAPE((')', t)) 
    }
    20 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 CHAR_ESCAPE(('[', t)) 
    }
    21 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 CHAR_ESCAPE((']', t)) 
    }
    22 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 CHAR_ESCAPE(('.', t)) 
    }
    23 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 CHAR_ESCAPE(('$', t)) 
    }
    24 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 CHAR_ESCAPE(('^', t)) 
    }
    25 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 CHAR_ESCAPE(('+', t)) 
    }
    26 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 CHAR_ESCAPE(('*', t)) 
    }
    27 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 CHAR_ESCAPE(('?', t)) 
    }
    28 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 CHAR_ESCAPE(('|', t)) 
    }
    29 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
      let t1 = lexbuf.get_string(_capture_1_start, _capture_1_end)
 CHAR_ESCAPE((parse_hex_integer(t1).unsafe_to_char(), t)) 
    }
    30 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
      let t1 = lexbuf.get_string(_capture_1_start, _capture_1_end)
 CHAR_ESCAPE((parse_hex_integer(t1).unsafe_to_char(), t)) 
    }
    31 => {
      ()
      let t = lexbuf.get_char(_capture_0_start, _capture_0_end)
 CHAR(t) 
    }
    _ => panic()
  }
}



