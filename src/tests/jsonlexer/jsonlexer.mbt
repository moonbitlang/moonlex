
priv enum Token {
  WHITESPACE
  NUMBER(String)
  STRING(String)
  LBRACE
  RBRACE
  LBRACKET
  RBRACKET
  COMMA
  COLON
  TRUE
  FALSE
  NULL
} derive(ToJson)

pub type! LexError {
  EndOfFile
  UnexpectedEndOfFile
  Unrecognized(String)
}


fn token[T : @lexbuf.IStringLexbuf](lexbuf : T) -> Token!LexError  {
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
      if matched >= 13 {
        matched = 13
        _end_pos = lexbuf.curr_pos()
      }
      continue match lexbuf.next_as_int() {
        0..=8 => 1
        9..=10 => 2
        11..=12 => 1
        13 => 2
        14..=31 => 1
        32 => 2
        33 => 1
        34 => 3
        35..=43 => 1
        44 => 4
        45 => 5
        46..=47 => 1
        48 => 6
        49..=57 => 7
        58 => 8
        59..=90 => 1
        91 => 9
        92 => 1
        93 => 10
        94..=101 => 1
        102 => 11
        103..=109 => 1
        110 => 12
        111..=115 => 1
        116 => 13
        117..=122 => 1
        123 => 14
        124 => 1
        125 => 15
        126..=1114111 => 1
        _ => break
      }
    }
    1 => {
      if matched >= 12 {
        matched = 12
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 1
      }
      break
    }
    2 => {
      if matched >= 0 {
        matched = 0
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    3 => {
      if matched >= 2 {
        matched = 2
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 1
      }
      break
    }
    4 => {
      if matched >= 7 {
        matched = 7
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    5 => {
      if matched >= 12 {
        matched = 12
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 1
      }
      continue match lexbuf.next_as_int() {
        48 => 6
        49..=57 => 7
        _ => break
      }
    }
    6 => {
      if matched >= 1 {
        matched = 1
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        69 => 16
        101 => 16
        _ => break
      }
    }
    7 => {
      if matched >= 1 {
        matched = 1
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        46 => 20
        48..=57 => 7
        69 => 16
        101 => 16
        _ => break
      }
    }
    8 => {
      if matched >= 8 {
        matched = 8
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    9 => {
      if matched >= 5 {
        matched = 5
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    10 => {
      if matched >= 6 {
        matched = 6
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    11 => {
      if matched >= 12 {
        matched = 12
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 1
      }
      continue match lexbuf.next_as_int() {
        97 => 17
        _ => break
      }
    }
    12 => {
      if matched >= 12 {
        matched = 12
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 1
      }
      continue match lexbuf.next_as_int() {
        117 => 19
        _ => break
      }
    }
    13 => {
      if matched >= 12 {
        matched = 12
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 1
      }
      continue match lexbuf.next_as_int() {
        114 => 18
        _ => break
      }
    }
    14 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    15 => {
      if matched >= 4 {
        matched = 4
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    16 => {
      continue match lexbuf.next_as_int() {
        43 => 21
        45 => 21
        48..=57 => 22
        _ => break
      }
    }
    17 => {
      continue match lexbuf.next_as_int() {
        108 => 23
        _ => break
      }
    }
    18 => {
      continue match lexbuf.next_as_int() {
        117 => 24
        _ => break
      }
    }
    19 => {
      continue match lexbuf.next_as_int() {
        108 => 25
        _ => break
      }
    }
    20 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 26
        _ => break
      }
    }
    21 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 22
        _ => break
      }
    }
    22 => {
      if matched >= 1 {
        matched = 1
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 22
        _ => break
      }
    }
    23 => {
      continue match lexbuf.next_as_int() {
        115 => 27
        _ => break
      }
    }
    24 => {
      continue match lexbuf.next_as_int() {
        101 => 28
        _ => break
      }
    }
    25 => {
      continue match lexbuf.next_as_int() {
        108 => 29
        _ => break
      }
    }
    26 => {
      if matched >= 1 {
        matched = 1
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 26
        69 => 16
        101 => 16
        _ => break
      }
    }
    27 => {
      continue match lexbuf.next_as_int() {
        101 => 30
        _ => break
      }
    }
    28 => {
      if matched >= 9 {
        matched = 9
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    29 => {
      if matched >= 11 {
        matched = 11
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    30 => {
      if matched >= 10 {
        matched = 10
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    _ => panic()
  }

  guard matched <= 13 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_end_pos)
  match matched {
    0 => {
      ()
 WHITESPACE 
    }
    1 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 NUMBER(t) 
    }
    2 => {
      ()
      let t = lexbuf.get_char(_capture_0_start, _capture_0_end)

      let buf = StringBuilder::new()
      buf.write_char(t)
      lex_string!(buf, lexbuf)
      STRING(buf.to_string())
    
    }
    3 => {
      ()
 LBRACE 
    }
    4 => {
      ()
 RBRACE 
    }
    5 => {
      ()
 LBRACKET 
    }
    6 => {
      ()
 RBRACKET 
    }
    7 => {
      ()
 COMMA 
    }
    8 => {
      ()
 COLON 
    }
    9 => {
      ()
 TRUE 
    }
    10 => {
      ()
 FALSE 
    }
    11 => {
      ()
 NULL 
    }
    12 => {
      ()
      let t = lexbuf.get_char(_capture_0_start, _capture_0_end)
 raise(Unrecognized(String::make(1, t))) 
    }
    13 => {
      ()
 raise(EndOfFile) 
    }
    _ => panic()
  }
}


fn lex_string[T : @lexbuf.IStringLexbuf](buf : StringBuilder, lexbuf : T) -> Unit!LexError  {
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
      if matched >= 4 {
        matched = 4
        _end_pos = lexbuf.curr_pos()
      }
      continue match lexbuf.next_as_int() {
        0..=31 => 1
        32..=33 => 2
        34 => 3
        35..=91 => 2
        92 => 4
        93..=126 => 2
        127 => 1
        128..=1114111 => 2
        _ => break
      }
    }
    1 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 1
      }
      break
    }
    2 => {
      if matched >= 2 {
        matched = 2
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
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 1
      }
      break
    }
    4 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _start_pos + 1
      }
      continue match lexbuf.next_as_int() {
        34 => 5
        47 => 5
        92 => 5
        98 => 5
        102 => 5
        110 => 5
        114 => 5
        116 => 5
        117 => 6
        _ => break
      }
    }
    5 => {
      if matched >= 1 {
        matched = 1
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      break
    }
    6 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 7
        65..=70 => 7
        97..=102 => 7
        _ => break
      }
    }
    7 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 8
        65..=70 => 8
        97..=102 => 8
        _ => break
      }
    }
    8 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 9
        65..=70 => 9
        97..=102 => 9
        _ => break
      }
    }
    9 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 5
        65..=70 => 5
        97..=102 => 5
        _ => break
      }
    }
    _ => panic()
  }

  guard matched <= 4 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_end_pos)
  match matched {
    0 => {
      ()
      let t = lexbuf.get_char(_capture_0_start, _capture_0_end)
 buf.write_char(t) 
    }
    1 => {
      ()
      let t = lexbuf.get_string(_capture_0_start, _capture_0_end)
 
      buf.write_string(t)
      lex_string!(buf, lexbuf)
    
    }
    2 => {
      ()
      let t = lexbuf.get_char(_capture_0_start, _capture_0_end)
 
      buf.write_char(t)
      lex_string!(buf, lexbuf)
    
    }
    3 => {
      ()
      let t = lexbuf.get_char(_capture_0_start, _capture_0_end)
 raise(Unrecognized(String::make(1, t))) 
    }
    4 => {
      ()
 raise(UnexpectedEndOfFile) 
    }
    _ => panic()
  }
}




