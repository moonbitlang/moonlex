
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


fn token[T](lexbuf : @lexbuf.T[T, Char, String, Int]) -> Token!LexError  {
  let mut matched = None
  let mut state = 0
  let mut _tag_0 = -1
  let mut _tag_1 = -1
  let mut _tag_2 = -1
  let mut _tag_3 = -1
  let mut _tag_4 = -1
  let mut _tag_5 = -1
  _tag_0 = lexbuf.curr_pos()
  _tag_2 = lexbuf.curr_pos()
  _tag_4 = lexbuf.curr_pos()
  while state != -1 {
    let mut tag_action = -1
    match state {
      0 => {
        if matched is Some((prev_pattern_id, _, _)) && 13 <= prev_pattern_id || matched is None {
          matched = Some((13, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=8 => {
            state = 13
            tag_action = 0
          }
          9..=10 => {
            state = 8
            tag_action = 0
          }
          11..=12 => {
            state = 13
            tag_action = 0
          }
          13 => {
            state = 8
            tag_action = 0
          }
          14..=31 => {
            state = 13
            tag_action = 0
          }
          32 => {
            state = 8
            tag_action = 0
          }
          33 => {
            state = 13
            tag_action = 0
          }
          34 => {
            state = 11
            tag_action = 3
          }
          35..=43 => {
            state = 13
            tag_action = 0
          }
          44 => {
            state = 12
            tag_action = 0
          }
          45 => {
            state = 3
            tag_action = 1
          }
          46..=47 => {
            state = 13
            tag_action = 0
          }
          48 => {
            state = 4
            tag_action = 2
          }
          49..=57 => {
            state = 15
            tag_action = 2
          }
          58 => {
            state = 5
            tag_action = 0
          }
          59..=90 => {
            state = 13
            tag_action = 0
          }
          91 => {
            state = 14
            tag_action = 0
          }
          92 => {
            state = 13
            tag_action = 0
          }
          93 => {
            state = 10
            tag_action = 0
          }
          94..=101 => {
            state = 13
            tag_action = 0
          }
          102 => {
            state = 9
            tag_action = 0
          }
          103..=109 => {
            state = 13
            tag_action = 0
          }
          110 => {
            state = 1
            tag_action = 0
          }
          111..=115 => {
            state = 13
            tag_action = 0
          }
          116 => {
            state = 7
            tag_action = 0
          }
          117..=122 => {
            state = 13
            tag_action = 0
          }
          123 => {
            state = 6
            tag_action = 0
          }
          124 => {
            state = 13
            tag_action = 0
          }
          125 => {
            state = 2
            tag_action = 0
          }
          126..=1114111 => {
            state = 13
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      1 => {
        if matched is Some((prev_pattern_id, _, _)) && 12 <= prev_pattern_id || matched is None {
          matched = Some((12, lexbuf.curr_pos(), [(_tag_4, _tag_5)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          117 => {
            state = 16
            tag_action = 4
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      2 => {
        if matched is Some((prev_pattern_id, _, _)) && 4 <= prev_pattern_id || matched is None {
          matched = Some((4, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      3 => {
        if matched is Some((prev_pattern_id, _, _)) && 12 <= prev_pattern_id || matched is None {
          matched = Some((12, lexbuf.curr_pos(), [(_tag_4, _tag_5)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48 => {
            state = 17
            tag_action = 5
          }
          49..=57 => {
            state = 18
            tag_action = 5
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      4 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), [(_tag_0, _tag_1)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          69 => {
            state = 19
            tag_action = 6
          }
          101 => {
            state = 19
            tag_action = 6
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      5 => {
        if matched is Some((prev_pattern_id, _, _)) && 8 <= prev_pattern_id || matched is None {
          matched = Some((8, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      6 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      7 => {
        if matched is Some((prev_pattern_id, _, _)) && 12 <= prev_pattern_id || matched is None {
          matched = Some((12, lexbuf.curr_pos(), [(_tag_4, _tag_5)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          114 => {
            state = 20
            tag_action = 4
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      8 => {
        if matched is Some((prev_pattern_id, _, _)) && 0 <= prev_pattern_id || matched is None {
          matched = Some((0, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      9 => {
        if matched is Some((prev_pattern_id, _, _)) && 12 <= prev_pattern_id || matched is None {
          matched = Some((12, lexbuf.curr_pos(), [(_tag_4, _tag_5)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          97 => {
            state = 21
            tag_action = 4
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      10 => {
        if matched is Some((prev_pattern_id, _, _)) && 6 <= prev_pattern_id || matched is None {
          matched = Some((6, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      11 => {
        if matched is Some((prev_pattern_id, _, _)) && 2 <= prev_pattern_id || matched is None {
          matched = Some((2, lexbuf.curr_pos(), [(_tag_2, _tag_3)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      12 => {
        if matched is Some((prev_pattern_id, _, _)) && 7 <= prev_pattern_id || matched is None {
          matched = Some((7, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      13 => {
        if matched is Some((prev_pattern_id, _, _)) && 12 <= prev_pattern_id || matched is None {
          matched = Some((12, lexbuf.curr_pos(), [(_tag_4, _tag_5)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      14 => {
        if matched is Some((prev_pattern_id, _, _)) && 5 <= prev_pattern_id || matched is None {
          matched = Some((5, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      15 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), [(_tag_0, _tag_1)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          46 => {
            state = 23
            tag_action = 6
          }
          48..=57 => {
            state = 22
            tag_action = 5
          }
          69 => {
            state = 19
            tag_action = 6
          }
          101 => {
            state = 19
            tag_action = 6
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      16 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          108 => {
            state = 24
            tag_action = 4
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      17 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), [(_tag_0, _tag_1)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          69 => {
            state = 19
            tag_action = 6
          }
          101 => {
            state = 19
            tag_action = 6
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      18 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), [(_tag_0, _tag_1)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          46 => {
            state = 23
            tag_action = 6
          }
          48..=57 => {
            state = 22
            tag_action = 5
          }
          69 => {
            state = 19
            tag_action = 6
          }
          101 => {
            state = 19
            tag_action = 6
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      19 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          43 => {
            state = 26
            tag_action = 6
          }
          45 => {
            state = 26
            tag_action = 6
          }
          48..=57 => {
            state = 25
            tag_action = 5
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      20 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          117 => {
            state = 27
            tag_action = 4
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      21 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          108 => {
            state = 28
            tag_action = 4
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      22 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), [(_tag_0, _tag_1)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          46 => {
            state = 23
            tag_action = 6
          }
          48..=57 => {
            state = 22
            tag_action = 5
          }
          69 => {
            state = 19
            tag_action = 6
          }
          101 => {
            state = 19
            tag_action = 6
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      23 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 29
            tag_action = 5
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      24 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          108 => {
            state = 30
            tag_action = 4
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      25 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), [(_tag_0, _tag_1)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 25
            tag_action = 5
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      26 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 25
            tag_action = 5
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      27 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          101 => {
            state = 31
            tag_action = 4
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      28 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          115 => {
            state = 32
            tag_action = 4
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      29 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), [(_tag_0, _tag_1)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 29
            tag_action = 5
          }
          69 => {
            state = 19
            tag_action = 6
          }
          101 => {
            state = 19
            tag_action = 6
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      30 => {
        if matched is Some((prev_pattern_id, _, _)) && 11 <= prev_pattern_id || matched is None {
          matched = Some((11, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      31 => {
        if matched is Some((prev_pattern_id, _, _)) && 9 <= prev_pattern_id || matched is None {
          matched = Some((9, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      32 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          101 => {
            state = 33
            tag_action = 4
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      33 => {
        if matched is Some((prev_pattern_id, _, _)) && 10 <= prev_pattern_id || matched is None {
          matched = Some((10, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      _ => panic()
    }
    match tag_action {
      0 => {
        _tag_5 = lexbuf.curr_pos()
      }
      1 => {
        _tag_5 = lexbuf.curr_pos()
      }
      2 => {
        _tag_1 = lexbuf.curr_pos()
        _tag_5 = lexbuf.curr_pos()
      }
      3 => {
        _tag_3 = lexbuf.curr_pos()
        _tag_5 = lexbuf.curr_pos()
      }
      5 => {
        _tag_1 = lexbuf.curr_pos()
      }
      6 => {
        ()
      }
      _ => ()
    }
  }

  guard matched is Some((pattern_id, marked_pos, _captures)) else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(marked_pos)
  match pattern_id {
    0 => {
 WHITESPACE 
    }
    1 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.sub_lexeme(_start_pos_of_t, _end_pos_of_t)
 NUMBER(t) 
    }
    2 => {
      let _start_pos_of_t = _captures[0].0
      let t = lexbuf.unsafe_get(_start_pos_of_t)

      let buf = StringBuilder::new()
      buf.write_char(t)
      lex_string!(buf, lexbuf)
      STRING(buf.to_string())
    
    }
    3 => {
 LBRACE 
    }
    4 => {
 RBRACE 
    }
    5 => {
 LBRACKET 
    }
    6 => {
 RBRACKET 
    }
    7 => {
 COMMA 
    }
    8 => {
 COLON 
    }
    9 => {
 TRUE 
    }
    10 => {
 FALSE 
    }
    11 => {
 NULL 
    }
    12 => {
      let _start_pos_of_t = _captures[0].0
      let t = lexbuf.unsafe_get(_start_pos_of_t)
 raise(Unrecognized(String::make(1, t))) 
    }
    13 => {
 raise(EndOfFile) 
    }
    _ => panic()
  }
}


fn lex_string[T](buf : StringBuilder, lexbuf : @lexbuf.T[T, Char, String, Int]) -> Unit!LexError  {
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
  _tag_0 = lexbuf.curr_pos()
  _tag_2 = lexbuf.curr_pos()
  _tag_4 = lexbuf.curr_pos()
  _tag_6 = lexbuf.curr_pos()
  while state != -1 {
    let mut tag_action = -1
    match state {
      0 => {
        if matched is Some((prev_pattern_id, _, _)) && 4 <= prev_pattern_id || matched is None {
          matched = Some((4, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=31 => {
            state = 2
            tag_action = 1
          }
          32..=33 => {
            state = 1
            tag_action = 0
          }
          34 => {
            state = 4
            tag_action = 3
          }
          35..=91 => {
            state = 1
            tag_action = 0
          }
          92 => {
            state = 3
            tag_action = 2
          }
          93..=126 => {
            state = 1
            tag_action = 0
          }
          127 => {
            state = 2
            tag_action = 1
          }
          128..=1114111 => {
            state = 1
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      1 => {
        if matched is Some((prev_pattern_id, _, _)) && 2 <= prev_pattern_id || matched is None {
          matched = Some((2, lexbuf.curr_pos(), [(_tag_4, _tag_5)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      2 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      3 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          34 => {
            state = 11
            tag_action = 4
          }
          47 => {
            state = 12
            tag_action = 4
          }
          92 => {
            state = 8
            tag_action = 4
          }
          98 => {
            state = 13
            tag_action = 4
          }
          102 => {
            state = 9
            tag_action = 4
          }
          110 => {
            state = 10
            tag_action = 4
          }
          114 => {
            state = 5
            tag_action = 4
          }
          116 => {
            state = 6
            tag_action = 4
          }
          117 => {
            state = 7
            tag_action = 5
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      4 => {
        if matched is Some((prev_pattern_id, _, _)) && 0 <= prev_pattern_id || matched is None {
          matched = Some((0, lexbuf.curr_pos(), [(_tag_0, _tag_1)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      5 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), [(_tag_2, _tag_3)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      6 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), [(_tag_2, _tag_3)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      7 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 14
            tag_action = 5
          }
          65..=70 => {
            state = 14
            tag_action = 5
          }
          97..=102 => {
            state = 14
            tag_action = 5
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      8 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), [(_tag_2, _tag_3)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      9 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), [(_tag_2, _tag_3)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      10 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), [(_tag_2, _tag_3)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      11 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), [(_tag_2, _tag_3)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      12 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), [(_tag_2, _tag_3)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      13 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), [(_tag_2, _tag_3)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      14 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 15
            tag_action = 5
          }
          65..=70 => {
            state = 15
            tag_action = 5
          }
          97..=102 => {
            state = 15
            tag_action = 5
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      15 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 16
            tag_action = 5
          }
          65..=70 => {
            state = 16
            tag_action = 5
          }
          97..=102 => {
            state = 16
            tag_action = 5
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      16 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 17
            tag_action = 4
          }
          65..=70 => {
            state = 17
            tag_action = 4
          }
          97..=102 => {
            state = 17
            tag_action = 4
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      17 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), [(_tag_2, _tag_3)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      _ => panic()
    }
    match tag_action {
      0 => {
        _tag_5 = lexbuf.curr_pos()
        _tag_7 = lexbuf.curr_pos()
      }
      1 => {
        _tag_7 = lexbuf.curr_pos()
      }
      2 => {
        _tag_7 = lexbuf.curr_pos()
      }
      3 => {
        _tag_1 = lexbuf.curr_pos()
        _tag_7 = lexbuf.curr_pos()
      }
      4 => {
        _tag_3 = lexbuf.curr_pos()
      }
      5 => {
        ()
      }
      _ => ()
    }
  }

  guard matched is Some((pattern_id, marked_pos, _captures)) else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(marked_pos)
  match pattern_id {
    0 => {
      let _start_pos_of_t = _captures[0].0
      let t = lexbuf.unsafe_get(_start_pos_of_t)
 buf.write_char(t) 
    }
    1 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.sub_lexeme(_start_pos_of_t, _end_pos_of_t)
 
      buf.write_string(t)
      lex_string!(buf, lexbuf)
    
    }
    2 => {
      let _start_pos_of_t = _captures[0].0
      let t = lexbuf.unsafe_get(_start_pos_of_t)
 
      buf.write_char(t)
      lex_string!(buf, lexbuf)
    
    }
    3 => {
      let _start_pos_of_t = _captures[0].0
      let t = lexbuf.unsafe_get(_start_pos_of_t)
 raise(Unrecognized(String::make(1, t))) 
    }
    4 => {
 raise(UnexpectedEndOfFile) 
    }
    _ => panic()
  }
}




