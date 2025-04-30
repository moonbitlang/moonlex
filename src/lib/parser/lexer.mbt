

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
  let mut _tag_2 = -1
  let mut _tag_3 = -1
  let mut _tag_4 = -1
  let mut _tag_5 = -1
  let mut _tag_5_1 = -1
  let mut _tag_6 = -1
  let mut _tag_6_1 = -1
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
        58 => 11
        59 => 12
        61 => 13
        63 => 14
        91 => 15
        92 => 16
        93 => 17
        94 => 18
        95 => 19
        97..=111 => 20
        112 => 21
        113 => 20
        114 => 22
        115..=122 => 20
        123 => 23
        124 => 24
        125 => 25
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
      if matched >= 34 {
        matched = 34
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    4 => {
      continue match lexbuf.next_as_int() {
        0..=38 => 30
        40..=91 => 30
        92 => 31
        93..=1114111 => 30
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
      if matched >= 17 {
        matched = 17
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    8 => {
      if matched >= 18 {
        matched = 18
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    9 => {
      if matched >= 20 {
        matched = 20
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    10 => {
      continue match lexbuf.next_as_int() {
        47 => 29
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
      if matched >= 15 {
        matched = 15
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    13 => {
      if matched >= 13 {
        matched = 13
        _end_pos = lexbuf.curr_pos()
      }
      continue match lexbuf.next_as_int() {
        62 => 27
        _ => break
      }
    }
    14 => {
      if matched >= 19 {
        matched = 19
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    15 => {
      if matched >= 11 {
        matched = 11
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    16 => {
      if matched >= 22 {
        matched = 22
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    17 => {
      if matched >= 12 {
        matched = 12
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    18 => {
      if matched >= 21 {
        matched = 21
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    19 => {
      if matched >= 6 {
        matched = 6
        _end_pos = lexbuf.curr_pos()
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 20
        65..=90 => 20
        95 => 20
        97..=122 => 20
        _ => break
      }
    }
    20 => {
      if matched >= 35 {
        matched = 35
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 20
        65..=90 => 20
        95 => 20
        97..=122 => 20
        _ => break
      }
    }
    21 => {
      if matched >= 35 {
        matched = 35
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 20
        65..=90 => 20
        95 => 20
        97 => 28
        98..=122 => 20
        _ => break
      }
    }
    22 => {
      if matched >= 35 {
        matched = 35
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 20
        65..=90 => 20
        95 => 20
        97..=116 => 20
        117 => 26
        118..=122 => 20
        _ => break
      }
    }
    23 => {
      if matched >= 7 {
        matched = 7
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    24 => {
      if matched >= 16 {
        matched = 16
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    25 => {
      if matched >= 8 {
        matched = 8
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    26 => {
      if matched >= 35 {
        matched = 35
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 20
        65..=90 => 20
        95 => 20
        97..=107 => 20
        108 => 32
        109..=122 => 20
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
      if matched >= 35 {
        matched = 35
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 20
        65..=90 => 20
        95 => 20
        97..=113 => 20
        114 => 33
        115..=122 => 20
        _ => break
      }
    }
    29 => {
      if matched >= 1 {
        matched = 1
        _end_pos = lexbuf.curr_pos()
      }
      continue match lexbuf.next_as_int() {
        0..=9 => 29
        10 => 34
        11..=1114111 => 29
        _ => break
      }
    }
    30 => {
      continue match lexbuf.next_as_int() {
        39 => 35
        _ => break
      }
    }
    31 => {
      continue match lexbuf.next_as_int() {
        39 => 36
        92 => 37
        98 => 38
        110 => 39
        114 => 40
        116 => 41
        117 => 42
        118 => 43
        120 => 44
        _ => break
      }
    }
    32 => {
      if matched >= 35 {
        matched = 35
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 20
        65..=90 => 20
        95 => 20
        97..=100 => 20
        101 => 45
        102..=122 => 20
        _ => break
      }
    }
    33 => {
      if matched >= 35 {
        matched = 35
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 20
        65..=90 => 20
        95 => 20
        97..=114 => 20
        115 => 46
        116..=122 => 20
        _ => break
      }
    }
    34 => {
      if matched >= 1 {
        matched = 1
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    35 => {
      if matched >= 23 {
        matched = 23
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 1
        _capture_0_end = _start_pos + 2
      }
      break
    }
    36 => {
      continue match lexbuf.next_as_int() {
        39 => 47
        _ => break
      }
    }
    37 => {
      continue match lexbuf.next_as_int() {
        39 => 50
        _ => break
      }
    }
    38 => {
      continue match lexbuf.next_as_int() {
        39 => 55
        _ => break
      }
    }
    39 => {
      continue match lexbuf.next_as_int() {
        39 => 53
        _ => break
      }
    }
    40 => {
      continue match lexbuf.next_as_int() {
        39 => 48
        _ => break
      }
    }
    41 => {
      continue match lexbuf.next_as_int() {
        39 => 56
        _ => break
      }
    }
    42 => {
      _tag_0 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        48..=57 => 51
        65..=70 => 51
        97..=102 => 51
        123 => 52
        _ => break
      }
    }
    43 => {
      continue match lexbuf.next_as_int() {
        39 => 49
        _ => break
      }
    }
    44 => {
      _tag_1 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        48..=57 => 54
        65..=70 => 54
        97..=102 => 54
        _ => break
      }
    }
    45 => {
      if matched >= 35 {
        matched = 35
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        9..=10 => 57
        13 => 57
        32 => 57
        48..=57 => 20
        65..=90 => 20
        95 => 20
        97..=122 => 20
        _ => break
      }
    }
    46 => {
      if matched >= 35 {
        matched = 35
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 20
        65..=90 => 20
        95 => 20
        97..=100 => 20
        101 => 58
        102..=122 => 20
        _ => break
      }
    }
    47 => {
      if matched >= 30 {
        matched = 30
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    48 => {
      if matched >= 27 {
        matched = 27
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    49 => {
      if matched >= 26 {
        matched = 26
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    50 => {
      if matched >= 29 {
        matched = 29
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    51 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 60
        65..=70 => 60
        97..=102 => 60
        _ => break
      }
    }
    52 => {
      _tag_2 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        48..=57 => 59
        65..=70 => 59
        97..=102 => 59
        _ => break
      }
    }
    53 => {
      if matched >= 28 {
        matched = 28
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    54 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 61
        65..=70 => 61
        97..=102 => 61
        _ => break
      }
    }
    55 => {
      if matched >= 24 {
        matched = 24
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    56 => {
      if matched >= 25 {
        matched = 25
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    57 => {
      _tag_3 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        9..=10 => 57
        13 => 57
        32 => 57
        95 => 62
        97..=122 => 62
        _ => break
      }
    }
    58 => {
      if matched >= 35 {
        matched = 35
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        9..=10 => 63
        13 => 63
        32 => 63
        48..=57 => 20
        65..=90 => 20
        95 => 20
        97..=122 => 20
        123 => 64
        _ => break
      }
    }
    59 => {
      _tag_4 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        48..=57 => 59
        65..=70 => 59
        97..=102 => 59
        125 => 65
        _ => break
      }
    }
    60 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 66
        65..=70 => 66
        97..=102 => 66
        _ => break
      }
    }
    61 => {
      continue match lexbuf.next_as_int() {
        39 => 67
        _ => break
      }
    }
    62 => {
      _tag_5 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        0..=47 => 68
        48..=57 => 69
        58..=64 => 68
        65..=90 => 69
        91..=94 => 68
        95 => 69
        96 => 68
        97..=122 => 69
        124..=1114111 => 68
        _ => break
      }
    }
    63 => {
      continue match lexbuf.next_as_int() {
        9..=10 => 63
        13 => 63
        32 => 63
        123 => 64
        _ => break
      }
    }
    64 => {
      if matched >= 4 {
        matched = 4
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    65 => {
      continue match lexbuf.next_as_int() {
        39 => 70
        _ => break
      }
    }
    66 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 71
        65..=70 => 71
        97..=102 => 71
        _ => break
      }
    }
    67 => {
      if matched >= 31 {
        matched = 31
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _tag_1
        _capture_0_end = _end_pos + -1
      }
      break
    }
    68 => {
      _tag_6 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        0..=8 => 68
        9..=10 => 72
        11..=12 => 68
        13 => 72
        14..=31 => 68
        32 => 72
        33..=122 => 68
        123 => 73
        124..=1114111 => 68
        _ => break
      }
    }
    69 => {
      _tag_5 = lexbuf.curr_pos()
      _tag_6 = lexbuf.curr_pos()
      _tag_5_1 = _tag_5
      continue match lexbuf.next_as_int() {
        0..=8 => 68
        9..=10 => 72
        11..=12 => 68
        13 => 72
        14..=31 => 68
        32 => 72
        33..=47 => 68
        48..=57 => 69
        58..=64 => 68
        65..=90 => 69
        91..=94 => 68
        95 => 69
        96 => 68
        97..=122 => 69
        123 => 73
        124..=1114111 => 68
        _ => break
      }
    }
    70 => {
      if matched >= 33 {
        matched = 33
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _tag_2
        _capture_0_end = _tag_4
      }
      break
    }
    71 => {
      continue match lexbuf.next_as_int() {
        39 => 74
        _ => break
      }
    }
    72 => {
      _tag_6 = lexbuf.curr_pos()
      _tag_6_1 = _tag_6
      continue match lexbuf.next_as_int() {
        0..=8 => 68
        9..=10 => 72
        11..=12 => 68
        13 => 72
        14..=31 => 68
        32 => 72
        33..=122 => 68
        123 => 73
        124..=1114111 => 68
        _ => break
      }
    }
    73 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _tag_3
        _capture_0_end = _tag_5
        _capture_1_start = _tag_3
        _capture_1_end = _tag_6
      }
      break
    }
    74 => {
      if matched >= 32 {
        matched = 32
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _tag_0
        _capture_0_end = _end_pos + -1
      }
      break
    }
    _ => panic()
  }

  guard matched <= 35 else {
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
      let _start_pos_of_t1 = _capture_0_start
      let _end_pos_of_t1 = _capture_0_end
      let t1 = lexbuf.get_string(_start_pos_of_t1, _end_pos_of_t1)
      let _start_pos_of_t2 = _capture_1_start
      let _end_pos_of_t2 = _capture_1_end
      let t2 = lexbuf.get_string(_start_pos_of_t2, _end_pos_of_t2)

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
 (COLON, _start_pos, _end_pos) 
    }
    15 => {
      ()
 (SEMICOLON, _start_pos, _end_pos) 
    }
    16 => {
      ()
 (BAR, _start_pos, _end_pos) 
    }
    17 => {
      ()
 (STAR, _start_pos, _end_pos) 
    }
    18 => {
      ()
 (PLUS, _start_pos, _end_pos) 
    }
    19 => {
      ()
 (QUESTION, _start_pos, _end_pos) 
    }
    20 => {
      ()
 (MINUS, _start_pos, _end_pos) 
    }
    21 => {
      ()
 (CARET, _start_pos, _end_pos) 
    }
    22 => {
      ()
 (BACKSLASH, _start_pos, _end_pos) 
    }
    23 => {
      ()
      let _start_pos_of_t = _capture_0_start
      let _end_pos_of_t = _capture_0_end
      let t = lexbuf.get_char(_start_pos_of_t, _end_pos_of_t)
 (CHAR(t), _start_pos, _end_pos) 
    }
    24 => {
      ()
 (CHAR('\u{08}'), _start_pos, _end_pos) 
    }
    25 => {
      ()
 (CHAR('\t'), _start_pos, _end_pos) 
    }
    26 => {
      ()
 (CHAR('\u{0b}'), _start_pos, _end_pos) 
    }
    27 => {
      ()
 (CHAR('\r'), _start_pos, _end_pos) 
    }
    28 => {
      ()
 (CHAR('\n'), _start_pos, _end_pos) 
    }
    29 => {
      ()
 (CHAR('\\'), _start_pos, _end_pos) 
    }
    30 => {
      ()
 (CHAR('\''), _start_pos, _end_pos) 
    }
    31 => {
      ()
      let _start_pos_of_t = _capture_0_start
      let _end_pos_of_t = _capture_0_end
      let t = lexbuf.get_string(_start_pos_of_t, _end_pos_of_t)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      (CHAR(Char::from_int(code)), _start_pos, _end_pos)
    
    }
    32 => {
      ()
      let _start_pos_of_t = _capture_0_start
      let _end_pos_of_t = _capture_0_end
      let t = lexbuf.get_string(_start_pos_of_t, _end_pos_of_t)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      (CHAR(Char::from_int(code)), _start_pos, _end_pos)
    
    }
    33 => {
      ()
      let _start_pos_of_t = _capture_0_start
      let _end_pos_of_t = _capture_0_end
      let t = lexbuf.get_string(_start_pos_of_t, _end_pos_of_t)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      (CHAR(Char::from_int(code)), _start_pos, _end_pos)
    
    }
    34 => {
      ()

      let buffer = StringBuilder::new()
      let end_pos = string_inner_rquote(buffer, lexbuf)
      (STRING(buffer.to_string()), _start_pos, end_pos)
    
    }
    35 => {
      ()
      let _start_pos_of_t = _capture_0_start
      let _end_pos_of_t = _capture_0_end
      let t = lexbuf.get_string(_start_pos_of_t, _end_pos_of_t)

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
  let mut _tag_0 = -1
  let mut _tag_1 = -1
  let mut _tag_2 = -1
  let mut _tag_3 = -1
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
      _tag_0 = lexbuf.curr_pos()
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
      _tag_1 = lexbuf.curr_pos()
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
        48..=57 => 19
        65..=70 => 19
        97..=102 => 19
        _ => break
      }
    }
    16 => {
      _tag_2 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        48..=57 => 18
        65..=70 => 18
        97..=102 => 18
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
      _tag_3 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        48..=57 => 18
        65..=70 => 18
        97..=102 => 18
        125 => 21
        _ => break
      }
    }
    19 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 22
        65..=70 => 22
        97..=102 => 22
        _ => break
      }
    }
    20 => {
      if matched >= 8 {
        matched = 8
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _tag_1
        _capture_0_end = _end_pos + -1
      }
      break
    }
    21 => {
      continue match lexbuf.next_as_int() {
        39 => 23
        _ => break
      }
    }
    22 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 24
        65..=70 => 24
        97..=102 => 24
        _ => break
      }
    }
    23 => {
      if matched >= 10 {
        matched = 10
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _tag_2
        _capture_0_end = _tag_3
      }
      break
    }
    24 => {
      continue match lexbuf.next_as_int() {
        39 => 25
        _ => break
      }
    }
    25 => {
      if matched >= 9 {
        matched = 9
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _tag_0
        _capture_0_end = _end_pos + -1
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
      let _start_pos_of_t = _capture_0_start
      let _end_pos_of_t = _capture_0_end
      let t = lexbuf.get_string(_start_pos_of_t, _end_pos_of_t)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      buffer.write_char(Char::from_int(code))
      string_inner_rquote(buffer, lexbuf)
    
    }
    9 => {
      ()
      let _start_pos_of_t = _capture_0_start
      let _end_pos_of_t = _capture_0_end
      let t = lexbuf.get_string(_start_pos_of_t, _end_pos_of_t)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      buffer.write_char(Char::from_int(code))
      string_inner_rquote(buffer, lexbuf)
    
    }
    10 => {
      ()
      let _start_pos_of_t = _capture_0_start
      let _end_pos_of_t = _capture_0_end
      let t = lexbuf.get_string(_start_pos_of_t, _end_pos_of_t)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      buffer.write_char(Char::from_int(code))
      string_inner_rquote(buffer, lexbuf)
    
    }
    11 => {
      ()
      let _start_pos_of_t = _capture_0_start
      let _end_pos_of_t = _capture_0_end
      let t = lexbuf.get_char(_start_pos_of_t, _end_pos_of_t)

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
        0..=38 => 9
        40..=91 => 9
        93..=1114111 => 9
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
        47 => 8
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
        0..=9 => 13
        11..=1114111 => 13
        _ => break
      }
    }
    9 => {
      continue match lexbuf.next_as_int() {
        39 => 14
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
      continue match lexbuf.next_as_int() {
        0..=9 => 13
        10 => 15
        11..=1114111 => 13
        _ => break
      }
    }
    14 => {
      if matched >= 2 {
        matched = 2
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      break
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
      let _start_pos_of_t = _capture_0_start
      let _end_pos_of_t = _capture_0_end
      let t = lexbuf.get_string(_start_pos_of_t, _end_pos_of_t)

      buffer.write_string(t)
      code_rbrace(buffer, lexbuf)
    
    }
    1 => {
      ()
      let _start_pos_of_t = _capture_0_start
      let _end_pos_of_t = _capture_0_end
      let t = lexbuf.get_string(_start_pos_of_t, _end_pos_of_t)

      buffer.write_string(t)
      code_rbrace(buffer, lexbuf)
    
    }
    2 => {
      ()
      let _start_pos_of_t = _capture_0_start
      let _end_pos_of_t = _capture_0_end
      let t = lexbuf.get_string(_start_pos_of_t, _end_pos_of_t)

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
      let _start_pos_of_t = _capture_0_start
      let _end_pos_of_t = _capture_0_end
      let t = lexbuf.get_char(_start_pos_of_t, _end_pos_of_t)

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



