

fn token[T : @lexbuf.IStringLexbuf](lexbuf : T) -> (Token, Int, Int)  {
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
  let mut _tag_1_1 = -1
  let mut _tag_2 = -1
  let mut _tag_2_1 = -1
  loop 0 {
    0 => {
      continue match lexbuf.next_as_int() {
        -1 => 1
        9..=10 => 2
        13 => 2
        32 => 2
        34 => 3
        39 => 4
        40 => 5
        41 => 6
        42 => 7
        43 => 8
        45 => 9
        47 => 10
        59 => 11
        61 => 12
        63 => 13
        91 => 14
        92 => 15
        93 => 16
        94 => 17
        95 => 18
        97..=111 => 19
        112 => 20
        113 => 19
        114 => 21
        115..=122 => 19
        123 => 22
        124 => 23
        125 => 24
        _ => break
      }
    }
    1 => {
      if matched >= 2 {
        matched = 2
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    2 => {
      if matched >= 0 {
        matched = 0
        _end_pos = lexbuf.curr_pos()
      }
      continue match lexbuf.next_as_int() {
        9..=10 => 2
        13 => 2
        32 => 2
        _ => break
      }
    }
    3 => {
      if matched >= 33 {
        matched = 33
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    4 => {
      continue match lexbuf.next_as_int() {
        0..=38 => 29
        40..=91 => 29
        92 => 30
        93..=1114111 => 29
        _ => break
      }
    }
    5 => {
      if matched >= 9 {
        matched = 9
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    6 => {
      if matched >= 10 {
        matched = 10
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    7 => {
      if matched >= 16 {
        matched = 16
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    8 => {
      if matched >= 17 {
        matched = 17
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    9 => {
      if matched >= 19 {
        matched = 19
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    10 => {
      continue match lexbuf.next_as_int() {
        47 => 25
        _ => break
      }
    }
    11 => {
      if matched >= 14 {
        matched = 14
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    12 => {
      if matched >= 13 {
        matched = 13
        _end_pos = lexbuf.curr_pos()
      }
      continue match lexbuf.next_as_int() {
        62 => 27
        _ => break
      }
    }
    13 => {
      if matched >= 18 {
        matched = 18
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    14 => {
      if matched >= 11 {
        matched = 11
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    15 => {
      if matched >= 21 {
        matched = 21
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    16 => {
      if matched >= 12 {
        matched = 12
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    17 => {
      if matched >= 20 {
        matched = 20
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    18 => {
      if matched >= 6 {
        matched = 6
        _end_pos = lexbuf.curr_pos()
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97..=122 => 19
        _ => break
      }
    }
    19 => {
      if matched >= 34 {
        matched = 34
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97..=122 => 19
        _ => break
      }
    }
    20 => {
      if matched >= 34 {
        matched = 34
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97 => 26
        98..=122 => 19
        _ => break
      }
    }
    21 => {
      if matched >= 34 {
        matched = 34
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97..=116 => 19
        117 => 28
        118..=122 => 19
        _ => break
      }
    }
    22 => {
      if matched >= 7 {
        matched = 7
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    23 => {
      if matched >= 15 {
        matched = 15
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    24 => {
      if matched >= 8 {
        matched = 8
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    25 => {
      if matched >= 1 {
        matched = 1
        _end_pos = lexbuf.curr_pos()
      }
      continue match lexbuf.next_as_int() {
        0..=9 => 25
        10 => 31
        11..=1114111 => 25
        _ => break
      }
    }
    26 => {
      if matched >= 34 {
        matched = 34
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97..=113 => 19
        114 => 32
        115..=122 => 19
        _ => break
      }
    }
    27 => {
      if matched >= 5 {
        matched = 5
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    28 => {
      if matched >= 34 {
        matched = 34
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97..=107 => 19
        108 => 33
        109..=122 => 19
        _ => break
      }
    }
    29 => {
      continue match lexbuf.next_as_int() {
        39 => 34
        _ => break
      }
    }
    30 => {
      continue match lexbuf.next_as_int() {
        39 => 35
        92 => 36
        98 => 37
        110 => 38
        114 => 39
        116 => 40
        117 => 41
        118 => 42
        120 => 43
        _ => break
      }
    }
    31 => {
      if matched >= 1 {
        matched = 1
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    32 => {
      if matched >= 34 {
        matched = 34
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97..=114 => 19
        115 => 44
        116..=122 => 19
        _ => break
      }
    }
    33 => {
      if matched >= 34 {
        matched = 34
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97..=100 => 19
        101 => 45
        102..=122 => 19
        _ => break
      }
    }
    34 => {
      if matched >= 22 {
        matched = 22
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 1
        _capture_0_end = _start_pos + 2
      }
      break
    }
    35 => {
      continue match lexbuf.next_as_int() {
        39 => 55
        _ => break
      }
    }
    36 => {
      continue match lexbuf.next_as_int() {
        39 => 46
        _ => break
      }
    }
    37 => {
      continue match lexbuf.next_as_int() {
        39 => 47
        _ => break
      }
    }
    38 => {
      continue match lexbuf.next_as_int() {
        39 => 51
        _ => break
      }
    }
    39 => {
      continue match lexbuf.next_as_int() {
        39 => 48
        _ => break
      }
    }
    40 => {
      continue match lexbuf.next_as_int() {
        39 => 49
        _ => break
      }
    }
    41 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 53
        65..=70 => 53
        97..=102 => 53
        123 => 54
        _ => break
      }
    }
    42 => {
      continue match lexbuf.next_as_int() {
        39 => 50
        _ => break
      }
    }
    43 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 52
        65..=70 => 52
        97..=102 => 52
        _ => break
      }
    }
    44 => {
      if matched >= 34 {
        matched = 34
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97..=100 => 19
        101 => 56
        102..=122 => 19
        _ => break
      }
    }
    45 => {
      if matched >= 34 {
        matched = 34
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        9..=10 => 57
        13 => 57
        32 => 57
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97..=122 => 19
        _ => break
      }
    }
    46 => {
      if matched >= 28 {
        matched = 28
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    47 => {
      if matched >= 23 {
        matched = 23
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    48 => {
      if matched >= 26 {
        matched = 26
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    49 => {
      if matched >= 24 {
        matched = 24
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    50 => {
      if matched >= 25 {
        matched = 25
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    51 => {
      if matched >= 27 {
        matched = 27
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    52 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 58
        65..=70 => 58
        97..=102 => 58
        _ => break
      }
    }
    53 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 59
        65..=70 => 59
        97..=102 => 59
        _ => break
      }
    }
    54 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 60
        65..=70 => 60
        97..=102 => 60
        _ => break
      }
    }
    55 => {
      if matched >= 29 {
        matched = 29
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    56 => {
      if matched >= 34 {
        matched = 34
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        9..=10 => 61
        13 => 61
        32 => 61
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97..=122 => 19
        123 => 62
        _ => break
      }
    }
    57 => {
      _tag_0 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        9..=10 => 57
        13 => 57
        32 => 57
        95 => 63
        97..=122 => 63
        _ => break
      }
    }
    58 => {
      continue match lexbuf.next_as_int() {
        39 => 64
        _ => break
      }
    }
    59 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 65
        65..=70 => 65
        97..=102 => 65
        _ => break
      }
    }
    60 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 60
        65..=70 => 60
        97..=102 => 60
        125 => 66
        _ => break
      }
    }
    61 => {
      continue match lexbuf.next_as_int() {
        9..=10 => 61
        13 => 61
        32 => 61
        123 => 62
        _ => break
      }
    }
    62 => {
      if matched >= 4 {
        matched = 4
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    63 => {
      _tag_1 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        0..=47 => 67
        48..=57 => 68
        58..=64 => 67
        65..=90 => 68
        91..=94 => 67
        95 => 68
        96 => 67
        97..=122 => 68
        124..=1114111 => 67
        _ => break
      }
    }
    64 => {
      if matched >= 30 {
        matched = 30
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 3
        _capture_0_end = _start_pos + 5
      }
      break
    }
    65 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 69
        65..=70 => 69
        97..=102 => 69
        _ => break
      }
    }
    66 => {
      continue match lexbuf.next_as_int() {
        39 => 70
        _ => break
      }
    }
    67 => {
      _tag_2 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        0..=8 => 67
        9..=10 => 71
        11..=12 => 67
        13 => 71
        14..=31 => 67
        32 => 71
        33..=122 => 67
        123 => 72
        124..=1114111 => 67
        _ => break
      }
    }
    68 => {
      _tag_1 = lexbuf.curr_pos()
      _tag_2 = lexbuf.curr_pos()
      _tag_1_1 = _tag_1
      continue match lexbuf.next_as_int() {
        0..=8 => 67
        9..=10 => 71
        11..=12 => 67
        13 => 71
        14..=31 => 67
        32 => 71
        33..=47 => 67
        48..=57 => 68
        58..=64 => 67
        65..=90 => 68
        91..=94 => 67
        95 => 68
        96 => 67
        97..=122 => 68
        123 => 72
        124..=1114111 => 67
        _ => break
      }
    }
    69 => {
      continue match lexbuf.next_as_int() {
        39 => 73
        _ => break
      }
    }
    70 => {
      if matched >= 32 {
        matched = 32
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 4
        _capture_0_end = _end_pos + -2
      }
      break
    }
    71 => {
      _tag_2 = lexbuf.curr_pos()
      _tag_2_1 = _tag_2
      continue match lexbuf.next_as_int() {
        0..=8 => 67
        9..=10 => 71
        11..=12 => 67
        13 => 71
        14..=31 => 67
        32 => 71
        33..=122 => 67
        123 => 72
        124..=1114111 => 67
        _ => break
      }
    }
    72 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _tag_0
        _capture_0_end = _tag_1
        _capture_1_start = _tag_0
        _capture_1_end = _tag_2
      }
      break
    }
    73 => {
      if matched >= 31 {
        matched = 31
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 3
        _capture_0_end = _start_pos + 7
      }
      break
    }
    _ => panic()
  }

  guard matched <= 34 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_end_pos)
  match matched {
    0 => {
      ()
 token(lexbuf) 
    }
    1 => {
      ()
 token(lexbuf) 
    }
    2 => {
      ()
 (EOI, _start_pos, _end_pos) 
    }
    3 => {
      ()
      let t1 = lexbuf.get_string(_capture_0_start, _capture_0_end)
      let t2 = lexbuf.get_string(_capture_1_start, _capture_1_end)

      (RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE((t1, t2)), _start_pos, _end_pos)
    
    }
    4 => {
      ()
 (PARSE_LBRACE, _start_pos, _end_pos) 
    }
    5 => {
      ()
 (FAT_ARROW, _start_pos, _end_pos) 
    }
    6 => {
      ()
 (UNDERSCORE, _start_pos, _end_pos) 
    }
    7 => {
      ()
 
      let buffer = StringBuilder::new()
      let end_pos = code_rbrace(buffer, lexbuf)
      (LBRACE_CODE_RBRACE(buffer.to_string()), _start_pos, end_pos)
    
    }
    8 => {
      ()
 (RBRACE, _start_pos, _end_pos) 
    }
    9 => {
      ()
 (LPAREN, _start_pos, _end_pos) 
    }
    10 => {
      ()
 (RPAREN, _start_pos, _end_pos) 
    }
    11 => {
      ()
 (LBRACKET, _start_pos, _end_pos) 
    }
    12 => {
      ()
 (RBRACKET, _start_pos, _end_pos) 
    }
    13 => {
      ()
 (EQ, _start_pos, _end_pos) 
    }
    14 => {
      ()
 (SEMICOLON, _start_pos, _end_pos) 
    }
    15 => {
      ()
 (BAR, _start_pos, _end_pos) 
    }
    16 => {
      ()
 (STAR, _start_pos, _end_pos) 
    }
    17 => {
      ()
 (PLUS, _start_pos, _end_pos) 
    }
    18 => {
      ()
 (QUESTION, _start_pos, _end_pos) 
    }
    19 => {
      ()
 (MINUS, _start_pos, _end_pos) 
    }
    20 => {
      ()
 (CARET, _start_pos, _end_pos) 
    }
    21 => {
      ()
 (BACKSLASH, _start_pos, _end_pos) 
    }
    22 => {
      ()
      let t = lexbuf.get_char(_capture_0_start, _capture_0_end)
 (CHAR(t), _start_pos, _end_pos) 
    }
    23 => {
      ()
 (CHAR('\u{08}'), _start_pos, _end_pos) 
    }
    24 => {
      ()
 (CHAR('\t'), _start_pos, _end_pos) 
    }
    25 => {
      ()
 (CHAR('\u{0b}'), _start_pos, _end_pos) 
    }
    26 => {
      ()
 (CHAR('\r'), _start_pos, _end_pos) 
    }
    27 => {
      ()
 (CHAR('\n'), _start_pos, _end_pos) 
    }
    28 => {
      ()
 (CHAR('\\'), _start_pos, _end_pos) 
    }
    29 => {
      ()
 (CHAR('\''), _start_pos, _end_pos) 
    }
    30 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      (CHAR(Char::from_int(code)), _start_pos, _end_pos)
    
    }
    31 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      (CHAR(Char::from_int(code)), _start_pos, _end_pos)
    
    }
    32 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      (CHAR(Char::from_int(code)), _start_pos, _end_pos)
    
    }
    33 => {
      ()

      let buffer = StringBuilder::new()
      let end_pos = string_inner_rquote(buffer, lexbuf)
      (STRING(buffer.to_string()), _start_pos, end_pos)
    
    }
    34 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)

      (match t {
        "eof" => EOF
        "regex" => REGEX
        "as" => AS
        _ => LC_IDENT(t)
      }, _start_pos, _end_pos)
    
    }
    _ => panic()
  }
}


fn string_inner_rquote[T : @lexbuf.IStringLexbuf](buffer : StringBuilder, lexbuf : T) -> Int  {
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
        0..=33 => 2
        34 => 3
        35..=91 => 2
        92 => 4
        93..=1114111 => 2
        _ => break
      }
    }
    1 => {
      if matched >= 12 {
        matched = 12
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    2 => {
      if matched >= 11 {
        matched = 11
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 1
      }
      break
    }
    3 => {
      if matched >= 0 {
        matched = 0
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    4 => {
      if matched >= 11 {
        matched = 11
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 1
      }
      continue match lexbuf.next_as_int() {
        34 => 5
        92 => 6
        98 => 7
        110 => 8
        114 => 9
        116 => 10
        117 => 11
        118 => 12
        120 => 13
        _ => break
      }
    }
    5 => {
      if matched >= 7 {
        matched = 7
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    6 => {
      if matched >= 6 {
        matched = 6
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    7 => {
      if matched >= 1 {
        matched = 1
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    8 => {
      if matched >= 5 {
        matched = 5
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    9 => {
      if matched >= 4 {
        matched = 4
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    10 => {
      if matched >= 2 {
        matched = 2
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    11 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 15
        65..=70 => 15
        97..=102 => 15
        123 => 16
        _ => break
      }
    }
    12 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    13 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 14
        65..=70 => 14
        97..=102 => 14
        _ => break
      }
    }
    14 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 17
        65..=70 => 17
        97..=102 => 17
        _ => break
      }
    }
    15 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 18
        65..=70 => 18
        97..=102 => 18
        _ => break
      }
    }
    16 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 19
        65..=70 => 19
        97..=102 => 19
        _ => break
      }
    }
    17 => {
      continue match lexbuf.next_as_int() {
        39 => 20
        _ => break
      }
    }
    18 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 21
        65..=70 => 21
        97..=102 => 21
        _ => break
      }
    }
    19 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 19
        65..=70 => 19
        97..=102 => 19
        125 => 22
        _ => break
      }
    }
    20 => {
      if matched >= 8 {
        matched = 8
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 2
        _capture_0_end = _start_pos + 4
      }
      break
    }
    21 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 23
        65..=70 => 23
        97..=102 => 23
        _ => break
      }
    }
    22 => {
      continue match lexbuf.next_as_int() {
        39 => 24
        _ => break
      }
    }
    23 => {
      continue match lexbuf.next_as_int() {
        39 => 25
        _ => break
      }
    }
    24 => {
      if matched >= 10 {
        matched = 10
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 3
        _capture_0_end = _end_pos + -2
      }
      break
    }
    25 => {
      if matched >= 9 {
        matched = 9
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 2
        _capture_0_end = _start_pos + 6
      }
      break
    }
    _ => panic()
  }

  guard matched <= 12 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_end_pos)
  match matched {
    0 => {
      ()
 _end_pos 
    }
    1 => {
      ()

      buffer.write_char('\u{08}')
      string_inner_rquote(buffer, lexbuf)
    
    }
    2 => {
      ()

      buffer.write_char('\t')
      string_inner_rquote(buffer, lexbuf)
    
    }
    3 => {
      ()

      buffer.write_char('\u{0b}')
      string_inner_rquote(buffer, lexbuf)
    
    }
    4 => {
      ()

      buffer.write_char('\r')
      string_inner_rquote(buffer, lexbuf)
    
    }
    5 => {
      ()

      buffer.write_char('\n')
      string_inner_rquote(buffer, lexbuf)
    
    }
    6 => {
      ()

      buffer.write_char('\\')
      string_inner_rquote(buffer, lexbuf)
    
    }
    7 => {
      ()

      buffer.write_char('"')
      string_inner_rquote(buffer, lexbuf)
    
    }
    8 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      buffer.write_char(Char::from_int(code))
      string_inner_rquote(buffer, lexbuf)
    
    }
    9 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      buffer.write_char(Char::from_int(code))
      string_inner_rquote(buffer, lexbuf)
    
    }
    10 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      buffer.write_char(Char::from_int(code))
      string_inner_rquote(buffer, lexbuf)
    
    }
    11 => {
      ()
      let t = lexbuf.get_char(_capture_0_start, _capture_0_end)

      buffer.write_char(t)
      string_inner_rquote(buffer, lexbuf)
    
    }
    12 => {
      ()
 abort("Unexpected end of input") 
    }
    _ => panic()
  }
}


fn code_rbrace[T : @lexbuf.IStringLexbuf](buffer : StringBuilder, lexbuf : T) -> Int  {
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
        0..=33 => 2
        34 => 3
        35..=38 => 2
        39 => 4
        40..=46 => 2
        47 => 5
        48..=122 => 2
        123 => 6
        124 => 2
        125 => 7
        126..=1114111 => 2
        _ => break
      }
    }
    1 => {
      if matched >= 6 {
        matched = 6
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    2 => {
      if matched >= 5 {
        matched = 5
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
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 1
      }
      continue match lexbuf.next_as_int() {
        0..=33 => 10
        34 => 11
        35..=91 => 10
        92 => 12
        93..=1114111 => 10
        _ => break
      }
    }
    4 => {
      if matched >= 5 {
        matched = 5
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 1
      }
      continue match lexbuf.next_as_int() {
        0..=38 => 8
        40..=91 => 8
        93..=1114111 => 8
        _ => break
      }
    }
    5 => {
      if matched >= 5 {
        matched = 5
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 1
      }
      continue match lexbuf.next_as_int() {
        47 => 9
        _ => break
      }
    }
    6 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    7 => {
      if matched >= 4 {
        matched = 4
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    8 => {
      continue match lexbuf.next_as_int() {
        39 => 13
        _ => break
      }
    }
    9 => {
      continue match lexbuf.next_as_int() {
        0..=9 => 14
        11..=1114111 => 14
        _ => break
      }
    }
    10 => {
      continue match lexbuf.next_as_int() {
        0..=33 => 10
        34 => 11
        35..=91 => 10
        92 => 12
        93..=1114111 => 10
        _ => break
      }
    }
    11 => {
      if matched >= 1 {
        matched = 1
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      break
    }
    12 => {
      continue match lexbuf.next_as_int() {
        0..=1114111 => 10
        _ => break
      }
    }
    13 => {
      if matched >= 2 {
        matched = 2
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 3
      }
      break
    }
    14 => {
      continue match lexbuf.next_as_int() {
        0..=9 => 14
        10 => 15
        11..=1114111 => 14
        _ => break
      }
    }
    15 => {
      if matched >= 0 {
        matched = 0
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      break
    }
    _ => panic()
  }

  guard matched <= 6 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_end_pos)
  match matched {
    0 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)

      buffer.write_string(t)
      code_rbrace(buffer, lexbuf)
    
    }
    1 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)

      buffer.write_string(t)
      code_rbrace(buffer, lexbuf)
    
    }
    2 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)

      buffer.write_string(t)
      code_rbrace(buffer, lexbuf)
    
    }
    3 => {
      ()

      buffer.write_string("{")
      let _ = code_rbrace(buffer, lexbuf)
      buffer.write_string("}")
      code_rbrace(buffer, lexbuf)
    
    }
    4 => {
      ()
 _end_pos 
    }
    5 => {
      ()
      let t = lexbuf.get_char(_capture_0_start, _capture_0_end)

      buffer.write_char(t)
      code_rbrace(buffer, lexbuf)
    
    }
    6 => {
      ()
 abort("Unexpected end of input") 
    }
    _ => panic()
  }
}



