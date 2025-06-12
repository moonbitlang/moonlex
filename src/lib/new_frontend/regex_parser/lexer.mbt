

fn token(lexbuf : Lexbuf) -> (Token, Int, Int)  {
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
      _match_pattern = 0
      _match_end = lexbuf.curr_pos()
      break
    }
    2 => {
      _match_pattern = 30
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 1
      break
    }
    3 => {
      _match_pattern = 2
      _match_end = lexbuf.curr_pos()
      break
    }
    4 => {
      _match_pattern = 13
      _match_end = lexbuf.curr_pos()
      break
    }
    5 => {
      _match_pattern = 14
      _match_end = lexbuf.curr_pos()
      break
    }
    6 => {
      _match_pattern = 7
      _match_end = lexbuf.curr_pos()
      break
    }
    7 => {
      _match_pattern = 8
      _match_end = lexbuf.curr_pos()
      break
    }
    8 => {
      _match_pattern = 6
      _match_end = lexbuf.curr_pos()
      break
    }
    9 => {
      _match_pattern = 1
      _match_end = lexbuf.curr_pos()
      break
    }
    10 => {
      _match_pattern = 9
      _match_end = lexbuf.curr_pos()
      break
    }
    11 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      break
    }
    12 => {
      _match_pattern = 30
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 1
      continue match lexbuf.next_as_int() {
        92 => 17
        _ => break
      }
    }
    13 => {
      _match_pattern = 4
      _match_end = lexbuf.curr_pos()
      break
    }
    14 => {
      _match_pattern = 5
      _match_end = lexbuf.curr_pos()
      break
    }
    15 => {
      _match_pattern = 30
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 1
      continue match lexbuf.next_as_int() {
        48 => 18
        49..=57 => 19
        _ => break
      }
    }
    16 => {
      _match_pattern = 15
      _match_end = lexbuf.curr_pos()
      break
    }
    17 => {
      continue match lexbuf.next_as_int() {
        36 => 20
        40 => 21
        41 => 22
        42 => 23
        43 => 24
        46 => 25
        63 => 26
        91 => 27
        92 => 28
        93 => 29
        94 => 30
        117 => 31
        124 => 32
        _ => break
      }
    }
    18 => {
      _tag_0 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        44 => 33
        125 => 34
        _ => break
      }
    }
    19 => {
      _tag_0 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        44 => 33
        48..=57 => 19
        125 => 34
        _ => break
      }
    }
    20 => {
      _match_pattern = 22
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 3
      break
    }
    21 => {
      _match_pattern = 17
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 3
      break
    }
    22 => {
      _match_pattern = 18
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 3
      break
    }
    23 => {
      _match_pattern = 25
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 3
      break
    }
    24 => {
      _match_pattern = 24
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 3
      break
    }
    25 => {
      _match_pattern = 21
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 3
      break
    }
    26 => {
      _match_pattern = 26
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 3
      break
    }
    27 => {
      _match_pattern = 19
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 3
      break
    }
    28 => {
      continue match lexbuf.next_as_int() {
        92 => 37
        _ => break
      }
    }
    29 => {
      _match_pattern = 20
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 3
      break
    }
    30 => {
      _match_pattern = 23
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 3
      break
    }
    31 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 35
        65..=70 => 35
        97..=102 => 35
        123 => 36
        _ => break
      }
    }
    32 => {
      _match_pattern = 27
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 3
      break
    }
    33 => {
      _tag_1 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        48 => 38
        49..=57 => 39
        125 => 40
        _ => break
      }
    }
    34 => {
      _match_pattern = 12
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 1
      _capture_0_end = _match_end + -1
      break
    }
    35 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 41
        65..=70 => 41
        97..=102 => 41
        _ => break
      }
    }
    36 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 42
        65..=70 => 42
        97..=102 => 42
        _ => break
      }
    }
    37 => {
      _match_pattern = 16
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 4
      break
    }
    38 => {
      continue match lexbuf.next_as_int() {
        125 => 43
        _ => break
      }
    }
    39 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 39
        125 => 43
        _ => break
      }
    }
    40 => {
      _match_pattern = 11
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 1
      _capture_0_end = _match_end + -2
      break
    }
    41 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 44
        65..=70 => 44
        97..=102 => 44
        _ => break
      }
    }
    42 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 42
        65..=70 => 42
        97..=102 => 42
        125 => 45
        _ => break
      }
    }
    43 => {
      _match_pattern = 10
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 1
      _capture_0_end = _tag_0
      _capture_1_start = _tag_1
      _capture_1_end = _match_end + -1
      break
    }
    44 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 46
        65..=70 => 46
        97..=102 => 46
        _ => break
      }
    }
    45 => {
      _match_pattern = 28
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      _capture_1_start = _match_start + 4
      _capture_1_end = _match_end + -1
      break
    }
    46 => {
      _match_pattern = 29
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 7
      _capture_1_start = _match_start + 3
      _capture_1_end = _match_start + 7
      break
    }
    _ => panic()
  }

  guard _match_pattern <= 30 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_match_end)
  match _match_pattern {
    0 => {
      ()
 (EOF, _match_start, _match_end) 
    }
    1 => {
      ()
 (DOT, _match_start, _match_end) 
    }
    2 => {
      ()
 (DOLLAR, _match_start, _match_end) 
    }
    3 => {
      ()
 (LBRACKET, _match_start, _match_end) 
    }
    4 => {
      ()
 (RBRACKET, _match_start, _match_end) 
    }
    5 => {
      ()
 (CARET, _match_start, _match_end) 
    }
    6 => {
      ()
 (MINUS, _match_start, _match_end) 
    }
    7 => {
      ()
 (STAR, _match_start, _match_end) 
    }
    8 => {
      ()
 (PLUS, _match_start, _match_end) 
    }
    9 => {
      ()
 (QUESTION, _match_start, _match_end) 
    }
    10 => {
      ()
      let t1 = lexbuf.get_string(_capture_0_start, _capture_0_end)
      let t2 = lexbuf.get_string(_capture_1_start, _capture_1_end)
 (REPEAT((parse_integer(t1), Some(parse_integer(t2)))), _match_start, _match_end) 
    }
    11 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 (REPEAT((parse_integer(t), None)), _match_start, _match_end) 
    }
    12 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)

      let n = parse_integer(t)
      (REPEAT((n, Some(n))), _match_start, _match_end)
    
    }
    13 => {
      ()
 (LPAREN, _match_start, _match_end) 
    }
    14 => {
      ()
 (RPAREN, _match_start, _match_end) 
    }
    15 => {
      ()
 (BAR, _match_start, _match_end) 
    }
    16 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 (CHAR_ESCAPE(('\\', t)), _match_start, _match_end) 
    }
    17 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 (CHAR_ESCAPE(('(', t)), _match_start, _match_end) 
    }
    18 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 (CHAR_ESCAPE((')', t)), _match_start, _match_end) 
    }
    19 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 (CHAR_ESCAPE(('[', t)), _match_start, _match_end) 
    }
    20 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 (CHAR_ESCAPE((']', t)), _match_start, _match_end) 
    }
    21 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 (CHAR_ESCAPE(('.', t)), _match_start, _match_end) 
    }
    22 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 (CHAR_ESCAPE(('$', t)), _match_start, _match_end) 
    }
    23 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 (CHAR_ESCAPE(('^', t)), _match_start, _match_end) 
    }
    24 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 (CHAR_ESCAPE(('+', t)), _match_start, _match_end) 
    }
    25 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 (CHAR_ESCAPE(('*', t)), _match_start, _match_end) 
    }
    26 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 (CHAR_ESCAPE(('?', t)), _match_start, _match_end) 
    }
    27 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 (CHAR_ESCAPE(('|', t)), _match_start, _match_end) 
    }
    28 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
      let t1 = lexbuf.get_string(_capture_1_start, _capture_1_end)
 (CHAR_ESCAPE((parse_hex_integer(t1).unsafe_to_char(), t)), _match_start, _match_end) 
    }
    29 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
      let t1 = lexbuf.get_string(_capture_1_start, _capture_1_end)
 (CHAR_ESCAPE((parse_hex_integer(t1).unsafe_to_char(), t)), _match_start, _match_end) 
    }
    30 => {
      ()
      let t = lexbuf.get_char(_capture_0_start, _capture_0_end)
 (CHAR(t), _match_start, _match_end) 
    }
    _ => panic()
  }
}



