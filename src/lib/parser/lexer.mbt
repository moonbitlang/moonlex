

fn token[T](lexbuf : @lexbuf.T[T, Char, String, Int]) -> Token  {
  let mut matched = None
  let mut state = 0
  let mut _tag_0 = -1
  let mut _tag_1 = -1
  let mut _tag_1_1 = -1
  let mut _tag_2 = -1
  let mut _tag_3 = -1
  let mut _tag_3_1 = -1
  let mut _tag_4 = -1
  let mut _tag_5 = -1
  let mut _tag_6 = -1
  let mut _tag_7 = -1
  let mut _tag_8 = -1
  let mut _tag_9 = -1
  let mut _tag_10 = -1
  let mut _tag_11 = -1
  let mut _tag_12 = -1
  let mut _tag_13 = -1
  while true {
    match state {
      0 => {
        _tag_12 = lexbuf.curr_pos()
        state = match lexbuf.next_as_int() {
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
        if matched is (None | Some((2..<_, _, _))) {
          matched = Some((2, lexbuf.curr_pos(), []))
        }
        break
      }
      2 => {
        if matched is (None | Some((0..<_, _, _))) {
          matched = Some((0, lexbuf.curr_pos(), []))
        }
        state = match lexbuf.next_as_int() {
          9..=10 => 2
          13 => 2
          32 => 2
          _ => break
        }
      }
      3 => {
        if matched is (None | Some((33..<_, _, _))) {
          matched = Some((33, lexbuf.curr_pos(), []))
        }
        break
      }
      4 => {
        _tag_4 = lexbuf.curr_pos()
        state = match lexbuf.next_as_int() {
          0..=38 => 28
          40..=91 => 28
          92 => 29
          93..=1114111 => 28
          _ => break
        }
      }
      5 => {
        if matched is (None | Some((9..<_, _, _))) {
          matched = Some((9, lexbuf.curr_pos(), []))
        }
        break
      }
      6 => {
        if matched is (None | Some((10..<_, _, _))) {
          matched = Some((10, lexbuf.curr_pos(), []))
        }
        break
      }
      7 => {
        if matched is (None | Some((17..<_, _, _))) {
          matched = Some((17, lexbuf.curr_pos(), []))
        }
        break
      }
      8 => {
        if matched is (None | Some((18..<_, _, _))) {
          matched = Some((18, lexbuf.curr_pos(), []))
        }
        break
      }
      9 => {
        if matched is (None | Some((20..<_, _, _))) {
          matched = Some((20, lexbuf.curr_pos(), []))
        }
        break
      }
      10 => {
        state = match lexbuf.next_as_int() {
          47 => 30
          _ => break
        }
      }
      11 => {
        if matched is (None | Some((14..<_, _, _))) {
          matched = Some((14, lexbuf.curr_pos(), []))
        }
        break
      }
      12 => {
        if matched is (None | Some((15..<_, _, _))) {
          matched = Some((15, lexbuf.curr_pos(), []))
        }
        break
      }
      13 => {
        if matched is (None | Some((13..<_, _, _))) {
          matched = Some((13, lexbuf.curr_pos(), []))
        }
        state = match lexbuf.next_as_int() {
          62 => 26
          _ => break
        }
      }
      14 => {
        if matched is (None | Some((19..<_, _, _))) {
          matched = Some((19, lexbuf.curr_pos(), []))
        }
        break
      }
      15 => {
        if matched is (None | Some((11..<_, _, _))) {
          matched = Some((11, lexbuf.curr_pos(), []))
        }
        break
      }
      16 => {
        if matched is (None | Some((12..<_, _, _))) {
          matched = Some((12, lexbuf.curr_pos(), []))
        }
        break
      }
      17 => {
        if matched is (None | Some((21..<_, _, _))) {
          matched = Some((21, lexbuf.curr_pos(), []))
        }
        break
      }
      18 => {
        _tag_13 = lexbuf.curr_pos()
        if matched is (None | Some((6..<_, _, _))) {
          matched = Some((6, lexbuf.curr_pos(), []))
        }
        state = match lexbuf.next_as_int() {
          48..=57 => 19
          65..=90 => 19
          95 => 19
          97..=122 => 19
          _ => break
        }
      }
      19 => {
        _tag_13 = lexbuf.curr_pos()
        if matched is (None | Some((34..<_, _, _))) {
          matched = Some((34, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        state = match lexbuf.next_as_int() {
          48..=57 => 19
          65..=90 => 19
          95 => 19
          97..=122 => 19
          _ => break
        }
      }
      20 => {
        _tag_13 = lexbuf.curr_pos()
        if matched is (None | Some((34..<_, _, _))) {
          matched = Some((34, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        state = match lexbuf.next_as_int() {
          48..=57 => 19
          65..=90 => 19
          95 => 19
          97 => 27
          98..=122 => 19
          _ => break
        }
      }
      21 => {
        _tag_13 = lexbuf.curr_pos()
        if matched is (None | Some((34..<_, _, _))) {
          matched = Some((34, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        state = match lexbuf.next_as_int() {
          48..=57 => 19
          65..=90 => 19
          95 => 19
          97..=116 => 19
          117 => 25
          118..=122 => 19
          _ => break
        }
      }
      22 => {
        if matched is (None | Some((7..<_, _, _))) {
          matched = Some((7, lexbuf.curr_pos(), []))
        }
        break
      }
      23 => {
        if matched is (None | Some((16..<_, _, _))) {
          matched = Some((16, lexbuf.curr_pos(), []))
        }
        break
      }
      24 => {
        if matched is (None | Some((8..<_, _, _))) {
          matched = Some((8, lexbuf.curr_pos(), []))
        }
        break
      }
      25 => {
        _tag_13 = lexbuf.curr_pos()
        if matched is (None | Some((34..<_, _, _))) {
          matched = Some((34, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        state = match lexbuf.next_as_int() {
          48..=57 => 19
          65..=90 => 19
          95 => 19
          97..=107 => 19
          108 => 31
          109..=122 => 19
          _ => break
        }
      }
      26 => {
        if matched is (None | Some((5..<_, _, _))) {
          matched = Some((5, lexbuf.curr_pos(), []))
        }
        break
      }
      27 => {
        _tag_13 = lexbuf.curr_pos()
        if matched is (None | Some((34..<_, _, _))) {
          matched = Some((34, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        state = match lexbuf.next_as_int() {
          48..=57 => 19
          65..=90 => 19
          95 => 19
          97..=113 => 19
          114 => 32
          115..=122 => 19
          _ => break
        }
      }
      28 => {
        _tag_5 = lexbuf.curr_pos()
        state = match lexbuf.next_as_int() {
          39 => 33
          _ => break
        }
      }
      29 => {
        state = match lexbuf.next_as_int() {
          39 => 34
          92 => 35
          98 => 36
          110 => 37
          114 => 38
          116 => 39
          117 => 40
          118 => 41
          120 => 42
          _ => break
        }
      }
      30 => {
        if matched is (None | Some((1..<_, _, _))) {
          matched = Some((1, lexbuf.curr_pos(), []))
        }
        state = match lexbuf.next_as_int() {
          0..=9 => 30
          10 => 43
          11..=1114111 => 30
          _ => break
        }
      }
      31 => {
        _tag_13 = lexbuf.curr_pos()
        if matched is (None | Some((34..<_, _, _))) {
          matched = Some((34, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        state = match lexbuf.next_as_int() {
          48..=57 => 19
          65..=90 => 19
          95 => 19
          97..=100 => 19
          101 => 44
          102..=122 => 19
          _ => break
        }
      }
      32 => {
        _tag_13 = lexbuf.curr_pos()
        if matched is (None | Some((34..<_, _, _))) {
          matched = Some((34, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        state = match lexbuf.next_as_int() {
          48..=57 => 19
          65..=90 => 19
          95 => 19
          97..=114 => 19
          115 => 45
          116..=122 => 19
          _ => break
        }
      }
      33 => {
        if matched is (None | Some((22..<_, _, _))) {
          matched = Some((22, lexbuf.curr_pos(), [(_tag_4, _tag_5)]))
        }
        break
      }
      34 => {
        state = match lexbuf.next_as_int() {
          39 => 52
          _ => break
        }
      }
      35 => {
        state = match lexbuf.next_as_int() {
          39 => 55
          _ => break
        }
      }
      36 => {
        state = match lexbuf.next_as_int() {
          39 => 48
          _ => break
        }
      }
      37 => {
        state = match lexbuf.next_as_int() {
          39 => 51
          _ => break
        }
      }
      38 => {
        state = match lexbuf.next_as_int() {
          39 => 54
          _ => break
        }
      }
      39 => {
        state = match lexbuf.next_as_int() {
          39 => 53
          _ => break
        }
      }
      40 => {
        _tag_8 = lexbuf.curr_pos()
        state = match lexbuf.next_as_int() {
          48..=57 => 49
          65..=70 => 49
          97..=102 => 49
          123 => 50
          _ => break
        }
      }
      41 => {
        state = match lexbuf.next_as_int() {
          39 => 47
          _ => break
        }
      }
      42 => {
        _tag_6 = lexbuf.curr_pos()
        state = match lexbuf.next_as_int() {
          48..=57 => 46
          65..=70 => 46
          97..=102 => 46
          _ => break
        }
      }
      43 => {
        if matched is (None | Some((1..<_, _, _))) {
          matched = Some((1, lexbuf.curr_pos(), []))
        }
        break
      }
      44 => {
        _tag_13 = lexbuf.curr_pos()
        if matched is (None | Some((34..<_, _, _))) {
          matched = Some((34, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        state = match lexbuf.next_as_int() {
          9..=10 => 56
          13 => 56
          32 => 56
          48..=57 => 19
          65..=90 => 19
          95 => 19
          97..=122 => 19
          _ => break
        }
      }
      45 => {
        _tag_13 = lexbuf.curr_pos()
        if matched is (None | Some((34..<_, _, _))) {
          matched = Some((34, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        state = match lexbuf.next_as_int() {
          48..=57 => 19
          65..=90 => 19
          95 => 19
          97..=100 => 19
          101 => 57
          102..=122 => 19
          _ => break
        }
      }
      46 => {
        state = match lexbuf.next_as_int() {
          48..=57 => 58
          65..=70 => 58
          97..=102 => 58
          _ => break
        }
      }
      47 => {
        if matched is (None | Some((25..<_, _, _))) {
          matched = Some((25, lexbuf.curr_pos(), []))
        }
        break
      }
      48 => {
        if matched is (None | Some((23..<_, _, _))) {
          matched = Some((23, lexbuf.curr_pos(), []))
        }
        break
      }
      49 => {
        state = match lexbuf.next_as_int() {
          48..=57 => 59
          65..=70 => 59
          97..=102 => 59
          _ => break
        }
      }
      50 => {
        _tag_10 = lexbuf.curr_pos()
        state = match lexbuf.next_as_int() {
          48..=57 => 60
          65..=70 => 60
          97..=102 => 60
          _ => break
        }
      }
      51 => {
        if matched is (None | Some((27..<_, _, _))) {
          matched = Some((27, lexbuf.curr_pos(), []))
        }
        break
      }
      52 => {
        if matched is (None | Some((29..<_, _, _))) {
          matched = Some((29, lexbuf.curr_pos(), []))
        }
        break
      }
      53 => {
        if matched is (None | Some((24..<_, _, _))) {
          matched = Some((24, lexbuf.curr_pos(), []))
        }
        break
      }
      54 => {
        if matched is (None | Some((26..<_, _, _))) {
          matched = Some((26, lexbuf.curr_pos(), []))
        }
        break
      }
      55 => {
        if matched is (None | Some((28..<_, _, _))) {
          matched = Some((28, lexbuf.curr_pos(), []))
        }
        break
      }
      56 => {
        _tag_0 = lexbuf.curr_pos()
        _tag_2 = lexbuf.curr_pos()
        state = match lexbuf.next_as_int() {
          9..=10 => 56
          13 => 56
          32 => 56
          95 => 61
          97..=122 => 61
          _ => break
        }
      }
      57 => {
        _tag_13 = lexbuf.curr_pos()
        if matched is (None | Some((34..<_, _, _))) {
          matched = Some((34, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        state = match lexbuf.next_as_int() {
          9..=10 => 62
          13 => 62
          32 => 62
          48..=57 => 19
          65..=90 => 19
          95 => 19
          97..=122 => 19
          123 => 63
          _ => break
        }
      }
      58 => {
        _tag_7 = lexbuf.curr_pos()
        state = match lexbuf.next_as_int() {
          39 => 64
          _ => break
        }
      }
      59 => {
        state = match lexbuf.next_as_int() {
          48..=57 => 65
          65..=70 => 65
          97..=102 => 65
          _ => break
        }
      }
      60 => {
        _tag_11 = lexbuf.curr_pos()
        state = match lexbuf.next_as_int() {
          48..=57 => 60
          65..=70 => 60
          97..=102 => 60
          125 => 66
          _ => break
        }
      }
      61 => {
        _tag_1 = lexbuf.curr_pos()
        state = match lexbuf.next_as_int() {
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
      62 => {
        state = match lexbuf.next_as_int() {
          9..=10 => 62
          13 => 62
          32 => 62
          123 => 63
          _ => break
        }
      }
      63 => {
        if matched is (None | Some((4..<_, _, _))) {
          matched = Some((4, lexbuf.curr_pos(), []))
        }
        break
      }
      64 => {
        if matched is (None | Some((30..<_, _, _))) {
          matched = Some((30, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
        }
        break
      }
      65 => {
        state = match lexbuf.next_as_int() {
          48..=57 => 69
          65..=70 => 69
          97..=102 => 69
          _ => break
        }
      }
      66 => {
        state = match lexbuf.next_as_int() {
          39 => 70
          _ => break
        }
      }
      67 => {
        _tag_3 = lexbuf.curr_pos()
        state = match lexbuf.next_as_int() {
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
        _tag_3 = lexbuf.curr_pos()
        _tag_1_1 = _tag_1
        state = match lexbuf.next_as_int() {
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
        _tag_9 = lexbuf.curr_pos()
        state = match lexbuf.next_as_int() {
          39 => 73
          _ => break
        }
      }
      70 => {
        if matched is (None | Some((32..<_, _, _))) {
          matched = Some((32, lexbuf.curr_pos(), [(_tag_10, _tag_11)]))
        }
        break
      }
      71 => {
        _tag_3 = lexbuf.curr_pos()
        _tag_3_1 = _tag_3
        state = match lexbuf.next_as_int() {
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
        if matched is (None | Some((3..<_, _, _))) {
          matched = Some((3, lexbuf.curr_pos(), [(_tag_0, _tag_1), (_tag_2, _tag_3)]))
        }
        break
      }
      73 => {
        if matched is (None | Some((31..<_, _, _))) {
          matched = Some((31, lexbuf.curr_pos(), [(_tag_8, _tag_9)]))
        }
        break
      }
      _ => panic()
    }
  }

  guard matched is Some((pattern_id, marked_pos, _captures)) else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(marked_pos)
  match pattern_id {
    0 => {
 token(lexbuf) 
    }
    1 => {
 token(lexbuf) 
    }
    2 => {
 EOI 
    }
    3 => {
      let (_start_pos_of_t1, _end_pos_of_t1) = _captures[0]
      let t1 = lexbuf.get_string(_start_pos_of_t1, _end_pos_of_t1)
      let (_start_pos_of_t2, _end_pos_of_t2) = _captures[1]
      let t2 = lexbuf.get_string(_start_pos_of_t2, _end_pos_of_t2)

      RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE((t1, t2))
    
    }
    4 => {
 PARSE_LBRACE 
    }
    5 => {
 FAT_ARROW 
    }
    6 => {
 UNDERSCORE 
    }
    7 => {
 
      let buffer = StringBuilder::new()
      code_rbrace(buffer, lexbuf)
      LBRACE_CODE_RBRACE(buffer.to_string())
    
    }
    8 => {
 RBRACE 
    }
    9 => {
 LPAREN 
    }
    10 => {
 RPAREN 
    }
    11 => {
 LBRACKET 
    }
    12 => {
 RBRACKET 
    }
    13 => {
 EQ 
    }
    14 => {
 COLON 
    }
    15 => {
 SEMICOLON 
    }
    16 => {
 BAR 
    }
    17 => {
 STAR 
    }
    18 => {
 PLUS 
    }
    19 => {
 QUESTION 
    }
    20 => {
 MINUS 
    }
    21 => {
 CARET 
    }
    22 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.get_char(_start_pos_of_t, _end_pos_of_t)
 CHAR(t) 
    }
    23 => {
 CHAR('\u{08}') 
    }
    24 => {
 CHAR('\t') 
    }
    25 => {
 CHAR('\u{0b}') 
    }
    26 => {
 CHAR('\r') 
    }
    27 => {
 CHAR('\n') 
    }
    28 => {
 CHAR('\\') 
    }
    29 => {
 CHAR('\'') 
    }
    30 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.get_string(_start_pos_of_t, _end_pos_of_t)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      CHAR(Char::from_int(code))
    
    }
    31 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.get_string(_start_pos_of_t, _end_pos_of_t)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      CHAR(Char::from_int(code))
    
    }
    32 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.get_string(_start_pos_of_t, _end_pos_of_t)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      CHAR(Char::from_int(code))
    
    }
    33 => {

      let buffer = StringBuilder::new()
      string_inner_rquote(buffer, lexbuf)
      STRING(buffer.to_string())
    
    }
    34 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.get_string(_start_pos_of_t, _end_pos_of_t)

      match t {
        "eof" => EOF
        "let" => LET
        "as" => AS
        _ => LC_IDENT(t)
      }
    
    }
    _ => panic()
  }
}


fn string_inner_rquote[T](buffer : StringBuilder, lexbuf : @lexbuf.T[T, Char, String, Int]) -> Unit  {
  let mut matched = None
  let mut state = 0
  let mut _tag_0 = -1
  let mut _tag_1 = -1
  let mut _tag_2 = -1
  let mut _tag_3 = -1
  let mut _tag_4 = -1
  let mut _tag_5 = -1
  let mut _tag_6 = -1
  let mut _tag_7 = -1
  while true {
    match state {
      0 => {
        _tag_6 = lexbuf.curr_pos()
        state = match lexbuf.next_as_int() {
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
        if matched is (None | Some((12..<_, _, _))) {
          matched = Some((12, lexbuf.curr_pos(), []))
        }
        break
      }
      2 => {
        _tag_7 = lexbuf.curr_pos()
        if matched is (None | Some((11..<_, _, _))) {
          matched = Some((11, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
        }
        break
      }
      3 => {
        _tag_7 = lexbuf.curr_pos()
        if matched is (None | Some((0..<_, _, _))) {
          matched = Some((0, lexbuf.curr_pos(), []))
        }
        break
      }
      4 => {
        _tag_7 = lexbuf.curr_pos()
        if matched is (None | Some((11..<_, _, _))) {
          matched = Some((11, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
        }
        state = match lexbuf.next_as_int() {
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
        if matched is (None | Some((7..<_, _, _))) {
          matched = Some((7, lexbuf.curr_pos(), []))
        }
        break
      }
      6 => {
        if matched is (None | Some((6..<_, _, _))) {
          matched = Some((6, lexbuf.curr_pos(), []))
        }
        break
      }
      7 => {
        if matched is (None | Some((1..<_, _, _))) {
          matched = Some((1, lexbuf.curr_pos(), []))
        }
        break
      }
      8 => {
        if matched is (None | Some((5..<_, _, _))) {
          matched = Some((5, lexbuf.curr_pos(), []))
        }
        break
      }
      9 => {
        if matched is (None | Some((4..<_, _, _))) {
          matched = Some((4, lexbuf.curr_pos(), []))
        }
        break
      }
      10 => {
        if matched is (None | Some((2..<_, _, _))) {
          matched = Some((2, lexbuf.curr_pos(), []))
        }
        break
      }
      11 => {
        _tag_2 = lexbuf.curr_pos()
        state = match lexbuf.next_as_int() {
          48..=57 => 15
          65..=70 => 15
          97..=102 => 15
          123 => 16
          _ => break
        }
      }
      12 => {
        if matched is (None | Some((3..<_, _, _))) {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        break
      }
      13 => {
        _tag_0 = lexbuf.curr_pos()
        state = match lexbuf.next_as_int() {
          48..=57 => 14
          65..=70 => 14
          97..=102 => 14
          _ => break
        }
      }
      14 => {
        state = match lexbuf.next_as_int() {
          48..=57 => 17
          65..=70 => 17
          97..=102 => 17
          _ => break
        }
      }
      15 => {
        state = match lexbuf.next_as_int() {
          48..=57 => 19
          65..=70 => 19
          97..=102 => 19
          _ => break
        }
      }
      16 => {
        _tag_4 = lexbuf.curr_pos()
        state = match lexbuf.next_as_int() {
          48..=57 => 18
          65..=70 => 18
          97..=102 => 18
          _ => break
        }
      }
      17 => {
        _tag_1 = lexbuf.curr_pos()
        state = match lexbuf.next_as_int() {
          39 => 20
          _ => break
        }
      }
      18 => {
        _tag_5 = lexbuf.curr_pos()
        state = match lexbuf.next_as_int() {
          48..=57 => 18
          65..=70 => 18
          97..=102 => 18
          125 => 21
          _ => break
        }
      }
      19 => {
        state = match lexbuf.next_as_int() {
          48..=57 => 22
          65..=70 => 22
          97..=102 => 22
          _ => break
        }
      }
      20 => {
        if matched is (None | Some((8..<_, _, _))) {
          matched = Some((8, lexbuf.curr_pos(), [(_tag_0, _tag_1)]))
        }
        break
      }
      21 => {
        state = match lexbuf.next_as_int() {
          39 => 23
          _ => break
        }
      }
      22 => {
        state = match lexbuf.next_as_int() {
          48..=57 => 24
          65..=70 => 24
          97..=102 => 24
          _ => break
        }
      }
      23 => {
        if matched is (None | Some((10..<_, _, _))) {
          matched = Some((10, lexbuf.curr_pos(), [(_tag_4, _tag_5)]))
        }
        break
      }
      24 => {
        _tag_3 = lexbuf.curr_pos()
        state = match lexbuf.next_as_int() {
          39 => 25
          _ => break
        }
      }
      25 => {
        if matched is (None | Some((9..<_, _, _))) {
          matched = Some((9, lexbuf.curr_pos(), [(_tag_2, _tag_3)]))
        }
        break
      }
      _ => panic()
    }
  }

  guard matched is Some((pattern_id, marked_pos, _captures)) else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(marked_pos)
  match pattern_id {
    0 => {
 () 
    }
    1 => {

      buffer.write_char('\u{08}')
      string_inner_rquote(buffer, lexbuf)
    
    }
    2 => {

      buffer.write_char('\t')
      string_inner_rquote(buffer, lexbuf)
    
    }
    3 => {

      buffer.write_char('\u{0b}')
      string_inner_rquote(buffer, lexbuf)
    
    }
    4 => {

      buffer.write_char('\r')
      string_inner_rquote(buffer, lexbuf)
    
    }
    5 => {

      buffer.write_char('\n')
      string_inner_rquote(buffer, lexbuf)
    
    }
    6 => {

      buffer.write_char('\\')
      string_inner_rquote(buffer, lexbuf)
    
    }
    7 => {

      buffer.write_char('"')
      string_inner_rquote(buffer, lexbuf)
    
    }
    8 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.get_string(_start_pos_of_t, _end_pos_of_t)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      buffer.write_char(Char::from_int(code))
    
    }
    9 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.get_string(_start_pos_of_t, _end_pos_of_t)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      buffer.write_char(Char::from_int(code))
    
    }
    10 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.get_string(_start_pos_of_t, _end_pos_of_t)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      buffer.write_char(Char::from_int(code))
    
    }
    11 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.get_char(_start_pos_of_t, _end_pos_of_t)

      buffer.write_char(t)
      string_inner_rquote(buffer, lexbuf)
    
    }
    12 => {
 abort("Unexpected end of input") 
    }
    _ => panic()
  }
}


fn code_rbrace[T](buffer : StringBuilder, lexbuf : @lexbuf.T[T, Char, String, Int]) -> Unit  {
  let mut matched = None
  let mut state = 0
  let mut _tag_0 = -1
  let mut _tag_1 = -1
  let mut _tag_2 = -1
  let mut _tag_3 = -1
  let mut _tag_4 = -1
  let mut _tag_5 = -1
  let mut _tag_6 = -1
  let mut _tag_7 = -1
  while true {
    match state {
      0 => {
        _tag_0 = lexbuf.curr_pos()
        _tag_2 = lexbuf.curr_pos()
        _tag_4 = lexbuf.curr_pos()
        _tag_6 = lexbuf.curr_pos()
        state = match lexbuf.next_as_int() {
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
        if matched is (None | Some((6..<_, _, _))) {
          matched = Some((6, lexbuf.curr_pos(), []))
        }
        break
      }
      2 => {
        _tag_7 = lexbuf.curr_pos()
        if matched is (None | Some((5..<_, _, _))) {
          matched = Some((5, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
        }
        break
      }
      3 => {
        _tag_7 = lexbuf.curr_pos()
        if matched is (None | Some((5..<_, _, _))) {
          matched = Some((5, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
        }
        state = match lexbuf.next_as_int() {
          0..=33 => 10
          34 => 11
          35..=91 => 10
          92 => 12
          93..=1114111 => 10
          _ => break
        }
      }
      4 => {
        _tag_7 = lexbuf.curr_pos()
        if matched is (None | Some((5..<_, _, _))) {
          matched = Some((5, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
        }
        state = match lexbuf.next_as_int() {
          0..=38 => 9
          40..=91 => 9
          93..=1114111 => 9
          _ => break
        }
      }
      5 => {
        _tag_7 = lexbuf.curr_pos()
        if matched is (None | Some((5..<_, _, _))) {
          matched = Some((5, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
        }
        state = match lexbuf.next_as_int() {
          47 => 8
          _ => break
        }
      }
      6 => {
        _tag_7 = lexbuf.curr_pos()
        if matched is (None | Some((3..<_, _, _))) {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        break
      }
      7 => {
        _tag_7 = lexbuf.curr_pos()
        if matched is (None | Some((4..<_, _, _))) {
          matched = Some((4, lexbuf.curr_pos(), []))
        }
        break
      }
      8 => {
        state = match lexbuf.next_as_int() {
          0..=9 => 13
          11..=1114111 => 13
          _ => break
        }
      }
      9 => {
        state = match lexbuf.next_as_int() {
          39 => 14
          _ => break
        }
      }
      10 => {
        state = match lexbuf.next_as_int() {
          0..=33 => 10
          34 => 11
          35..=91 => 10
          92 => 12
          93..=1114111 => 10
          _ => break
        }
      }
      11 => {
        _tag_3 = lexbuf.curr_pos()
        if matched is (None | Some((1..<_, _, _))) {
          matched = Some((1, lexbuf.curr_pos(), [(_tag_2, _tag_3)]))
        }
        break
      }
      12 => {
        state = match lexbuf.next_as_int() {
          0..=1114111 => 10
          _ => break
        }
      }
      13 => {
        state = match lexbuf.next_as_int() {
          0..=9 => 13
          10 => 15
          11..=1114111 => 13
          _ => break
        }
      }
      14 => {
        _tag_5 = lexbuf.curr_pos()
        if matched is (None | Some((2..<_, _, _))) {
          matched = Some((2, lexbuf.curr_pos(), [(_tag_4, _tag_5)]))
        }
        break
      }
      15 => {
        _tag_1 = lexbuf.curr_pos()
        if matched is (None | Some((0..<_, _, _))) {
          matched = Some((0, lexbuf.curr_pos(), [(_tag_0, _tag_1)]))
        }
        break
      }
      _ => panic()
    }
  }

  guard matched is Some((pattern_id, marked_pos, _captures)) else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(marked_pos)
  match pattern_id {
    0 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.get_string(_start_pos_of_t, _end_pos_of_t)

      buffer.write_string(t)
      code_rbrace(buffer, lexbuf)
    
    }
    1 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.get_string(_start_pos_of_t, _end_pos_of_t)

      buffer.write_string(t)
      code_rbrace(buffer, lexbuf)
    
    }
    2 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.get_string(_start_pos_of_t, _end_pos_of_t)

      buffer.write_string(t)
      code_rbrace(buffer, lexbuf)
    
    }
    3 => {

      buffer.write_string("{")
      code_rbrace(buffer, lexbuf)
      buffer.write_string("}")
      code_rbrace(buffer, lexbuf)
    
    }
    4 => {
 () 
    }
    5 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.get_char(_start_pos_of_t, _end_pos_of_t)

      buffer.write_char(t)
      code_rbrace(buffer, lexbuf)
    
    }
    6 => {
 abort("Unexpected end of input") 
    }
    _ => panic()
  }
}



