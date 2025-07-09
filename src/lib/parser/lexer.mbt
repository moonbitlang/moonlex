

fn[T : @lexbuf.IStringLexbuf] token(lexbuf : T) -> (Token, Int, Int)  {
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
      _match_pattern = 2
      _match_end = lexbuf.curr_pos()
      break
    }
    2 => {
      _match_pattern = 0
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        9..=10 => 2
        13 => 2
        32 => 2
        _ => break
      }
    }
    3 => {
      _match_pattern = 33
      _match_end = lexbuf.curr_pos()
      break
    }
    4 => {
      continue match lexbuf.next_as_int() {
        0..=38 => 25
        40..=91 => 25
        92 => 26
        93..=1114111 => 25
        _ => break
      }
    }
    5 => {
      _match_pattern = 9
      _match_end = lexbuf.curr_pos()
      break
    }
    6 => {
      _match_pattern = 10
      _match_end = lexbuf.curr_pos()
      break
    }
    7 => {
      _match_pattern = 16
      _match_end = lexbuf.curr_pos()
      break
    }
    8 => {
      _match_pattern = 17
      _match_end = lexbuf.curr_pos()
      break
    }
    9 => {
      _match_pattern = 19
      _match_end = lexbuf.curr_pos()
      break
    }
    10 => {
      continue match lexbuf.next_as_int() {
        47 => 30
        _ => break
      }
    }
    11 => {
      _match_pattern = 14
      _match_end = lexbuf.curr_pos()
      break
    }
    12 => {
      _match_pattern = 13
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        62 => 27
        _ => break
      }
    }
    13 => {
      _match_pattern = 18
      _match_end = lexbuf.curr_pos()
      break
    }
    14 => {
      _match_pattern = 11
      _match_end = lexbuf.curr_pos()
      break
    }
    15 => {
      _match_pattern = 21
      _match_end = lexbuf.curr_pos()
      break
    }
    16 => {
      _match_pattern = 12
      _match_end = lexbuf.curr_pos()
      break
    }
    17 => {
      _match_pattern = 20
      _match_end = lexbuf.curr_pos()
      break
    }
    18 => {
      _match_pattern = 6
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97..=122 => 19
        _ => break
      }
    }
    19 => {
      _match_pattern = 34
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97..=122 => 19
        _ => break
      }
    }
    20 => {
      _match_pattern = 34
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97 => 28
        98..=122 => 19
        _ => break
      }
    }
    21 => {
      _match_pattern = 34
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97..=116 => 19
        117 => 29
        118..=122 => 19
        _ => break
      }
    }
    22 => {
      _match_pattern = 7
      _match_end = lexbuf.curr_pos()
      break
    }
    23 => {
      _match_pattern = 15
      _match_end = lexbuf.curr_pos()
      break
    }
    24 => {
      _match_pattern = 8
      _match_end = lexbuf.curr_pos()
      break
    }
    25 => {
      continue match lexbuf.next_as_int() {
        39 => 40
        _ => break
      }
    }
    26 => {
      continue match lexbuf.next_as_int() {
        39 => 31
        92 => 32
        98 => 33
        110 => 34
        114 => 35
        116 => 36
        117 => 37
        118 => 38
        120 => 39
        _ => break
      }
    }
    27 => {
      _match_pattern = 5
      _match_end = lexbuf.curr_pos()
      break
    }
    28 => {
      _match_pattern = 34
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97..=113 => 19
        114 => 41
        115..=122 => 19
        _ => break
      }
    }
    29 => {
      _match_pattern = 34
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97..=107 => 19
        108 => 42
        109..=122 => 19
        _ => break
      }
    }
    30 => {
      _match_pattern = 1
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        0..=9 => 30
        10 => 43
        11..=1114111 => 30
        _ => break
      }
    }
    31 => {
      continue match lexbuf.next_as_int() {
        39 => 47
        _ => break
      }
    }
    32 => {
      continue match lexbuf.next_as_int() {
        39 => 48
        _ => break
      }
    }
    33 => {
      continue match lexbuf.next_as_int() {
        39 => 53
        _ => break
      }
    }
    34 => {
      continue match lexbuf.next_as_int() {
        39 => 49
        _ => break
      }
    }
    35 => {
      continue match lexbuf.next_as_int() {
        39 => 50
        _ => break
      }
    }
    36 => {
      continue match lexbuf.next_as_int() {
        39 => 52
        _ => break
      }
    }
    37 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 44
        65..=70 => 44
        97..=102 => 44
        123 => 45
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
        48..=57 => 46
        65..=70 => 46
        97..=102 => 46
        _ => break
      }
    }
    40 => {
      _match_pattern = 22
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 1
      _capture_0_end = _match_start + 2
      break
    }
    41 => {
      _match_pattern = 34
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97..=114 => 19
        115 => 54
        116..=122 => 19
        _ => break
      }
    }
    42 => {
      _match_pattern = 34
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97..=100 => 19
        101 => 55
        102..=122 => 19
        _ => break
      }
    }
    43 => {
      _match_pattern = 1
      _match_end = lexbuf.curr_pos()
      break
    }
    44 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 57
        65..=70 => 57
        97..=102 => 57
        _ => break
      }
    }
    45 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 56
        65..=70 => 56
        97..=102 => 56
        _ => break
      }
    }
    46 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 58
        65..=70 => 58
        97..=102 => 58
        _ => break
      }
    }
    47 => {
      _match_pattern = 29
      _match_end = lexbuf.curr_pos()
      break
    }
    48 => {
      _match_pattern = 28
      _match_end = lexbuf.curr_pos()
      break
    }
    49 => {
      _match_pattern = 27
      _match_end = lexbuf.curr_pos()
      break
    }
    50 => {
      _match_pattern = 26
      _match_end = lexbuf.curr_pos()
      break
    }
    51 => {
      _match_pattern = 25
      _match_end = lexbuf.curr_pos()
      break
    }
    52 => {
      _match_pattern = 24
      _match_end = lexbuf.curr_pos()
      break
    }
    53 => {
      _match_pattern = 23
      _match_end = lexbuf.curr_pos()
      break
    }
    54 => {
      _match_pattern = 34
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97..=100 => 19
        101 => 59
        102..=122 => 19
        _ => break
      }
    }
    55 => {
      _match_pattern = 34
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        9..=10 => 60
        13 => 60
        32 => 60
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97..=122 => 19
        _ => break
      }
    }
    56 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 56
        65..=70 => 56
        97..=102 => 56
        125 => 61
        _ => break
      }
    }
    57 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 62
        65..=70 => 62
        97..=102 => 62
        _ => break
      }
    }
    58 => {
      continue match lexbuf.next_as_int() {
        39 => 63
        _ => break
      }
    }
    59 => {
      _match_pattern = 34
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        9..=10 => 64
        13 => 64
        32 => 64
        48..=57 => 19
        65..=90 => 19
        95 => 19
        97..=122 => 19
        123 => 65
        _ => break
      }
    }
    60 => {
      _tag_0 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        9..=10 => 60
        13 => 60
        32 => 60
        95 => 66
        97..=122 => 66
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
      continue match lexbuf.next_as_int() {
        48..=57 => 68
        65..=70 => 68
        97..=102 => 68
        _ => break
      }
    }
    63 => {
      _match_pattern = 30
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 3
      _capture_0_end = _match_start + 5
      break
    }
    64 => {
      continue match lexbuf.next_as_int() {
        9..=10 => 64
        13 => 64
        32 => 64
        123 => 65
        _ => break
      }
    }
    65 => {
      _match_pattern = 4
      _match_end = lexbuf.curr_pos()
      break
    }
    66 => {
      _tag_1 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        0..=47 => 69
        48..=57 => 70
        58..=64 => 69
        65..=90 => 70
        91..=94 => 69
        95 => 70
        96 => 69
        97..=122 => 70
        124..=1114111 => 69
        _ => break
      }
    }
    67 => {
      _match_pattern = 32
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 4
      _capture_0_end = _match_end + -2
      break
    }
    68 => {
      continue match lexbuf.next_as_int() {
        39 => 71
        _ => break
      }
    }
    69 => {
      _tag_2 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        0..=8 => 69
        9..=10 => 72
        11..=12 => 69
        13 => 72
        14..=31 => 69
        32 => 72
        33..=122 => 69
        123 => 73
        124..=1114111 => 69
        _ => break
      }
    }
    70 => {
      _tag_1_1 = _tag_1
      _tag_1 = lexbuf.curr_pos()
      _tag_2 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        0..=8 => 69
        9..=10 => 72
        11..=12 => 69
        13 => 72
        14..=31 => 69
        32 => 72
        33..=47 => 69
        48..=57 => 70
        58..=64 => 69
        65..=90 => 70
        91..=94 => 69
        95 => 70
        96 => 69
        97..=122 => 70
        123 => 74
        124..=1114111 => 69
        _ => break
      }
    }
    71 => {
      _match_pattern = 31
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 3
      _capture_0_end = _match_start + 7
      break
    }
    72 => {
      _tag_2_1 = _tag_2
      _tag_2 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        0..=8 => 69
        9..=10 => 72
        11..=12 => 69
        13 => 72
        14..=31 => 69
        32 => 72
        33..=122 => 69
        123 => 73
        124..=1114111 => 69
        _ => break
      }
    }
    73 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _tag_0
      _capture_0_end = _tag_1
      _capture_1_start = _tag_0
      _capture_1_end = _tag_2
      break
    }
    74 => {
      _tag_1 = _tag_1_1
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _tag_0
      _capture_0_end = _tag_1
      _capture_1_start = _tag_0
      _capture_1_end = _tag_2
      break
    }
    _ => panic()
  }

  guard _match_pattern <= 34 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_match_end)
  match _match_pattern {
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
 (EOI, _match_start, _match_end) 
    }
    3 => {
      ()
      let t1 = lexbuf.get_string(_capture_0_start, _capture_0_end)
      let t2 = lexbuf.get_string(_capture_1_start, _capture_1_end)

      (RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE((t1, t2)), _match_start, _match_end)
    
    }
    4 => {
      ()
 (PARSE_LBRACE, _match_start, _match_end) 
    }
    5 => {
      ()
 (FAT_ARROW, _match_start, _match_end) 
    }
    6 => {
      ()
 (UNDERSCORE, _match_start, _match_end) 
    }
    7 => {
      ()
 
      let buffer = StringBuilder::new()
      let end_pos = code_rbrace(buffer, lexbuf)
      (LBRACE_CODE_RBRACE(buffer.to_string()), _match_start, end_pos)
    
    }
    8 => {
      ()
 (RBRACE, _match_start, _match_end) 
    }
    9 => {
      ()
 (LPAREN, _match_start, _match_end) 
    }
    10 => {
      ()
 (RPAREN, _match_start, _match_end) 
    }
    11 => {
      ()
 (LBRACKET, _match_start, _match_end) 
    }
    12 => {
      ()
 (RBRACKET, _match_start, _match_end) 
    }
    13 => {
      ()
 (EQ, _match_start, _match_end) 
    }
    14 => {
      ()
 (SEMICOLON, _match_start, _match_end) 
    }
    15 => {
      ()
 (BAR, _match_start, _match_end) 
    }
    16 => {
      ()
 (STAR, _match_start, _match_end) 
    }
    17 => {
      ()
 (PLUS, _match_start, _match_end) 
    }
    18 => {
      ()
 (QUESTION, _match_start, _match_end) 
    }
    19 => {
      ()
 (MINUS, _match_start, _match_end) 
    }
    20 => {
      ()
 (CARET, _match_start, _match_end) 
    }
    21 => {
      ()
 (BACKSLASH, _match_start, _match_end) 
    }
    22 => {
      ()
      let t = lexbuf.get_char(_capture_0_start, _capture_0_end)
 (CHAR(t), _match_start, _match_end) 
    }
    23 => {
      ()
 (CHAR('\u{08}'), _match_start, _match_end) 
    }
    24 => {
      ()
 (CHAR('\t'), _match_start, _match_end) 
    }
    25 => {
      ()
 (CHAR('\u{0b}'), _match_start, _match_end) 
    }
    26 => {
      ()
 (CHAR('\r'), _match_start, _match_end) 
    }
    27 => {
      ()
 (CHAR('\n'), _match_start, _match_end) 
    }
    28 => {
      ()
 (CHAR('\\'), _match_start, _match_end) 
    }
    29 => {
      ()
 (CHAR('\''), _match_start, _match_end) 
    }
    30 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)

      let code = (try? @strconv.parse_int(t, base=16)).unwrap()
      (CHAR(code.unsafe_to_char()), _match_start, _match_end)
    
    }
    31 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)

      let code = (try? @strconv.parse_int(t, base=16)).unwrap()
      (CHAR(code.unsafe_to_char()), _match_start, _match_end)
    
    }
    32 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)

      let code = (try? @strconv.parse_int(t, base=16)).unwrap()
      (CHAR(code.unsafe_to_char()), _match_start, _match_end)
    
    }
    33 => {
      ()

      let buffer = StringBuilder::new()
      let end_pos = string_inner_rquote(buffer, lexbuf)
      (STRING(buffer.to_string()), _match_start, end_pos)
    
    }
    34 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)

      (match t {
        "eof" => EOF
        "regex" => REGEX
        "as" => AS
        _ => LC_IDENT(t)
      }, _match_start, _match_end)
    
    }
    _ => panic()
  }
}


fn[T : @lexbuf.IStringLexbuf] string_inner_rquote(buffer : StringBuilder, lexbuf : T) -> Int  {
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
      _match_pattern = 12
      _match_end = lexbuf.curr_pos()
      break
    }
    2 => {
      _match_pattern = 11
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 1
      break
    }
    3 => {
      _match_pattern = 0
      _match_end = lexbuf.curr_pos()
      break
    }
    4 => {
      _match_pattern = 11
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 1
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
      _match_pattern = 7
      _match_end = lexbuf.curr_pos()
      break
    }
    6 => {
      _match_pattern = 6
      _match_end = lexbuf.curr_pos()
      break
    }
    7 => {
      _match_pattern = 1
      _match_end = lexbuf.curr_pos()
      break
    }
    8 => {
      _match_pattern = 5
      _match_end = lexbuf.curr_pos()
      break
    }
    9 => {
      _match_pattern = 4
      _match_end = lexbuf.curr_pos()
      break
    }
    10 => {
      _match_pattern = 2
      _match_end = lexbuf.curr_pos()
      break
    }
    11 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 14
        65..=70 => 14
        97..=102 => 14
        123 => 15
        _ => break
      }
    }
    12 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      break
    }
    13 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 16
        65..=70 => 16
        97..=102 => 16
        _ => break
      }
    }
    14 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 18
        65..=70 => 18
        97..=102 => 18
        _ => break
      }
    }
    15 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 17
        65..=70 => 17
        97..=102 => 17
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
        48..=57 => 17
        65..=70 => 17
        97..=102 => 17
        125 => 20
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
        39 => 22
        _ => break
      }
    }
    20 => {
      continue match lexbuf.next_as_int() {
        39 => 23
        _ => break
      }
    }
    21 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 24
        65..=70 => 24
        97..=102 => 24
        _ => break
      }
    }
    22 => {
      _match_pattern = 8
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 2
      _capture_0_end = _match_start + 4
      break
    }
    23 => {
      _match_pattern = 10
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 3
      _capture_0_end = _match_end + -2
      break
    }
    24 => {
      continue match lexbuf.next_as_int() {
        39 => 25
        _ => break
      }
    }
    25 => {
      _match_pattern = 9
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 2
      _capture_0_end = _match_start + 6
      break
    }
    _ => panic()
  }

  guard _match_pattern <= 12 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_match_end)
  match _match_pattern {
    0 => {
      ()
 _match_end 
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

      let code = (try? @strconv.parse_int(t, base=16)).unwrap()
      buffer.write_char(code.unsafe_to_char())
      string_inner_rquote(buffer, lexbuf)
    
    }
    9 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)

      let code = (try? @strconv.parse_int(t, base=16)).unwrap()
      buffer.write_char(code.unsafe_to_char())
      string_inner_rquote(buffer, lexbuf)
    
    }
    10 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)

      let code = (try? @strconv.parse_int(t, base=16)).unwrap()
      buffer.write_char(code.unsafe_to_char())
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


fn[T : @lexbuf.IStringLexbuf] code_rbrace(buffer : StringBuilder, lexbuf : T) -> Int  {
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
      _match_pattern = 6
      _match_end = lexbuf.curr_pos()
      break
    }
    2 => {
      _match_pattern = 5
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 1
      break
    }
    3 => {
      _match_pattern = 5
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 1
      continue match lexbuf.next_as_int() {
        0..=33 => 9
        34 => 10
        35..=91 => 9
        92 => 11
        93..=1114111 => 9
        _ => break
      }
    }
    4 => {
      _match_pattern = 5
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 1
      continue match lexbuf.next_as_int() {
        0..=38 => 8
        40..=91 => 8
        93..=1114111 => 8
        _ => break
      }
    }
    5 => {
      _match_pattern = 5
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 1
      continue match lexbuf.next_as_int() {
        47 => 12
        _ => break
      }
    }
    6 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      break
    }
    7 => {
      _match_pattern = 4
      _match_end = lexbuf.curr_pos()
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
        0..=33 => 9
        34 => 10
        35..=91 => 9
        92 => 11
        93..=1114111 => 9
        _ => break
      }
    }
    10 => {
      _match_pattern = 1
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      break
    }
    11 => {
      continue match lexbuf.next_as_int() {
        0..=1114111 => 9
        _ => break
      }
    }
    12 => {
      continue match lexbuf.next_as_int() {
        0..=9 => 14
        11..=1114111 => 14
        _ => break
      }
    }
    13 => {
      _match_pattern = 2
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 3
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
      _match_pattern = 0
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      break
    }
    _ => panic()
  }

  guard _match_pattern <= 6 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_match_end)
  match _match_pattern {
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
 _match_end 
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



