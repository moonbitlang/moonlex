
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


let token_tag_action_row_0 : Array[Int] = []
let token_tag_action_row_2 : Array[Int] = [-1]
let token_tag_action_row_1 : Array[Int] = [0]

let token_tag_action_4 : Array[Array[Int]] = [token_tag_action_row_0, token_tag_action_row_0, token_tag_action_row_0, token_tag_action_row_0, token_tag_action_row_0, token_tag_action_row_0]
let token_tag_action_0 : Array[Array[Int]] = [token_tag_action_row_0, token_tag_action_row_0, token_tag_action_row_0, token_tag_action_row_0, token_tag_action_row_1, token_tag_action_row_2]
let token_tag_action_1 : Array[Array[Int]] = [token_tag_action_row_0, token_tag_action_row_0, token_tag_action_row_1, token_tag_action_row_2, token_tag_action_row_1, token_tag_action_row_2]
let token_tag_action_6 : Array[Array[Int]] = [token_tag_action_row_1, token_tag_action_row_0, token_tag_action_row_0, token_tag_action_row_0, token_tag_action_row_0, token_tag_action_row_0]
let token_tag_action_2 : Array[Array[Int]] = [token_tag_action_row_1, token_tag_action_row_0, token_tag_action_row_0, token_tag_action_row_0, token_tag_action_row_1, token_tag_action_row_2]
let token_tag_action_5 : Array[Array[Int]] = [token_tag_action_row_1, token_tag_action_row_2, token_tag_action_row_0, token_tag_action_row_0, token_tag_action_row_0, token_tag_action_row_0]
let token_tag_action_3 : Array[Array[Int]] = [token_tag_action_row_1, token_tag_action_row_2, token_tag_action_row_0, token_tag_action_row_0, token_tag_action_row_1, token_tag_action_row_2]

fn token_state_0(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    0..=8 => (13, token_tag_action_0)
    9..=10 => (8, token_tag_action_0)
    11..=12 => (13, token_tag_action_0)
    13 => (8, token_tag_action_0)
    14..=31 => (13, token_tag_action_0)
    32 => (8, token_tag_action_0)
    33 => (13, token_tag_action_0)
    34 => (11, token_tag_action_1)
    35..=43 => (13, token_tag_action_0)
    44 => (12, token_tag_action_0)
    45 => (3, token_tag_action_2)
    46..=47 => (13, token_tag_action_0)
    48 => (4, token_tag_action_3)
    49..=57 => (15, token_tag_action_3)
    58 => (5, token_tag_action_0)
    59..=90 => (13, token_tag_action_0)
    91 => (14, token_tag_action_0)
    92 => (13, token_tag_action_0)
    93 => (10, token_tag_action_0)
    94..=101 => (13, token_tag_action_0)
    102 => (9, token_tag_action_0)
    103..=109 => (13, token_tag_action_0)
    110 => (1, token_tag_action_0)
    111..=115 => (13, token_tag_action_0)
    116 => (7, token_tag_action_0)
    117..=122 => (13, token_tag_action_0)
    123 => (6, token_tag_action_0)
    124 => (13, token_tag_action_0)
    125 => (2, token_tag_action_0)
    126..=1114111 => (13, token_tag_action_0)
    _ => (-1, [])
  }
}
fn token_state_1(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    117 => (16, token_tag_action_4)
    _ => (-1, [])
  }
}
fn token_state_2(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn token_state_3(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48 => (17, token_tag_action_5)
    49..=57 => (18, token_tag_action_5)
    _ => (-1, [])
  }
}
fn token_state_4(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    69 => (19, token_tag_action_6)
    101 => (19, token_tag_action_6)
    _ => (-1, [])
  }
}
fn token_state_5(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn token_state_6(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn token_state_7(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    114 => (20, token_tag_action_4)
    _ => (-1, [])
  }
}
fn token_state_8(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn token_state_9(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    97 => (21, token_tag_action_4)
    _ => (-1, [])
  }
}
fn token_state_10(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn token_state_11(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn token_state_12(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn token_state_13(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn token_state_14(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn token_state_15(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    46 => (23, token_tag_action_6)
    48..=57 => (22, token_tag_action_5)
    69 => (19, token_tag_action_6)
    101 => (19, token_tag_action_6)
    _ => (-1, [])
  }
}
fn token_state_16(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    108 => (24, token_tag_action_4)
    _ => (-1, [])
  }
}
fn token_state_17(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    69 => (19, token_tag_action_6)
    101 => (19, token_tag_action_6)
    _ => (-1, [])
  }
}
fn token_state_18(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    46 => (23, token_tag_action_6)
    48..=57 => (22, token_tag_action_5)
    69 => (19, token_tag_action_6)
    101 => (19, token_tag_action_6)
    _ => (-1, [])
  }
}
fn token_state_19(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    43 => (26, token_tag_action_6)
    45 => (26, token_tag_action_6)
    48..=57 => (25, token_tag_action_5)
    _ => (-1, [])
  }
}
fn token_state_20(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    117 => (27, token_tag_action_4)
    _ => (-1, [])
  }
}
fn token_state_21(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    108 => (28, token_tag_action_4)
    _ => (-1, [])
  }
}
fn token_state_22(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    46 => (23, token_tag_action_6)
    48..=57 => (22, token_tag_action_5)
    69 => (19, token_tag_action_6)
    101 => (19, token_tag_action_6)
    _ => (-1, [])
  }
}
fn token_state_23(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (29, token_tag_action_5)
    _ => (-1, [])
  }
}
fn token_state_24(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    108 => (30, token_tag_action_4)
    _ => (-1, [])
  }
}
fn token_state_25(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (25, token_tag_action_5)
    _ => (-1, [])
  }
}
fn token_state_26(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (25, token_tag_action_5)
    _ => (-1, [])
  }
}
fn token_state_27(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    101 => (31, token_tag_action_4)
    _ => (-1, [])
  }
}
fn token_state_28(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    115 => (32, token_tag_action_4)
    _ => (-1, [])
  }
}
fn token_state_29(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (29, token_tag_action_5)
    69 => (19, token_tag_action_6)
    101 => (19, token_tag_action_6)
    _ => (-1, [])
  }
}
fn token_state_30(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn token_state_31(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn token_state_32(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    101 => (33, token_tag_action_4)
    _ => (-1, [])
  }
}
fn token_state_33(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}

let __mbtlex_engine_token: @lexengine.T = { graph: [token_state_0, token_state_1, token_state_2, token_state_3, token_state_4, token_state_5, token_state_6, token_state_7, token_state_8, token_state_9, token_state_10, token_state_11, token_state_12, token_state_13, token_state_14, token_state_15, token_state_16, token_state_17, token_state_18, token_state_19, token_state_20, token_state_21, token_state_22, token_state_23, token_state_24, token_state_25, token_state_26, token_state_27, token_state_28, token_state_29, token_state_30, token_state_31, token_state_32, token_state_33, ], end_nodes: [Some((13, [])), Some((12, [((4, 0), (5, 0))])), Some((4, [])), Some((12, [((4, 0), (5, 0))])), Some((1, [((0, 0), (1, 0))])), Some((8, [])), Some((3, [])), Some((12, [((4, 0), (5, 0))])), Some((0, [])), Some((12, [((4, 0), (5, 0))])), Some((6, [])), Some((2, [((2, 0), (3, 0))])), Some((7, [])), Some((12, [((4, 0), (5, 0))])), Some((5, [])), Some((1, [((0, 0), (1, 0))])), None, Some((1, [((0, 0), (1, 0))])), Some((1, [((0, 0), (1, 0))])), None, None, None, Some((1, [((0, 0), (1, 0))])), None, None, Some((1, [((0, 0), (1, 0))])), None, None, None, Some((1, [((0, 0), (1, 0))])), Some((11, [])), Some((9, [])), None, Some((10, []))], start_tags: [0, 2, 4], code_blocks_n: 14 }
fn token[T](lexbuf : @lexbuf.T[T, Char, String, Int]) -> Token!LexError  {
  match __mbtlex_engine_token.run(lexbuf) {
    (0, __mbtlex_captures) => {
 WHITESPACE 
    }
    (1, __mbtlex_captures) => {
  let (_start_pos_of_t, _end_pos_of_t) = __mbtlex_captures[0]
  let t = lexbuf.sub_lexeme(_start_pos_of_t, _end_pos_of_t)
  
 NUMBER(t) 
    }
    (2, __mbtlex_captures) => {
  let (_start_pos_of_t, _end_pos_of_t) = __mbtlex_captures[0]
  let t = lexbuf.unsafe_get(_start_pos_of_t)
  

      let buf = StringBuilder::new()
      buf.write_char(t)
      lex_string!(buf, lexbuf)
      STRING(buf.to_string())
    
    }
    (3, __mbtlex_captures) => {
 LBRACE 
    }
    (4, __mbtlex_captures) => {
 RBRACE 
    }
    (5, __mbtlex_captures) => {
 LBRACKET 
    }
    (6, __mbtlex_captures) => {
 RBRACKET 
    }
    (7, __mbtlex_captures) => {
 COMMA 
    }
    (8, __mbtlex_captures) => {
 COLON 
    }
    (9, __mbtlex_captures) => {
 TRUE 
    }
    (10, __mbtlex_captures) => {
 FALSE 
    }
    (11, __mbtlex_captures) => {
 NULL 
    }
    (12, __mbtlex_captures) => {
  let (_start_pos_of_t, _end_pos_of_t) = __mbtlex_captures[0]
  let t = lexbuf.unsafe_get(_start_pos_of_t)
  
 raise(Unrecognized(String::make(1, t))) 
    }
    (13, __mbtlex_captures) => {
 raise(EndOfFile) 
    }
    _ => abort("lex: fail to match")
  }
}
let lex_string_tag_action_row_0 : Array[Int] = []
let lex_string_tag_action_row_2 : Array[Int] = [-1]
let lex_string_tag_action_row_1 : Array[Int] = [0]

let lex_string_tag_action_0 : Array[Array[Int]] = [lex_string_tag_action_row_0, lex_string_tag_action_row_0, lex_string_tag_action_row_0, lex_string_tag_action_row_0, lex_string_tag_action_row_0, lex_string_tag_action_row_0, lex_string_tag_action_row_1, lex_string_tag_action_row_2]
let lex_string_tag_action_1 : Array[Array[Int]] = [lex_string_tag_action_row_0, lex_string_tag_action_row_0, lex_string_tag_action_row_0, lex_string_tag_action_row_0, lex_string_tag_action_row_1, lex_string_tag_action_row_2, lex_string_tag_action_row_1, lex_string_tag_action_row_2]
let lex_string_tag_action_5 : Array[Array[Int]] = [lex_string_tag_action_row_0, lex_string_tag_action_row_0, lex_string_tag_action_row_1, lex_string_tag_action_row_0, lex_string_tag_action_row_0, lex_string_tag_action_row_0, lex_string_tag_action_row_0, lex_string_tag_action_row_0]
let lex_string_tag_action_3 : Array[Array[Int]] = [lex_string_tag_action_row_0, lex_string_tag_action_row_0, lex_string_tag_action_row_1, lex_string_tag_action_row_0, lex_string_tag_action_row_0, lex_string_tag_action_row_0, lex_string_tag_action_row_1, lex_string_tag_action_row_2]
let lex_string_tag_action_4 : Array[Array[Int]] = [lex_string_tag_action_row_0, lex_string_tag_action_row_0, lex_string_tag_action_row_1, lex_string_tag_action_row_2, lex_string_tag_action_row_0, lex_string_tag_action_row_0, lex_string_tag_action_row_0, lex_string_tag_action_row_0]
let lex_string_tag_action_2 : Array[Array[Int]] = [lex_string_tag_action_row_1, lex_string_tag_action_row_2, lex_string_tag_action_row_0, lex_string_tag_action_row_0, lex_string_tag_action_row_0, lex_string_tag_action_row_0, lex_string_tag_action_row_1, lex_string_tag_action_row_2]

fn lex_string_state_0(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    0..=31 => (2, lex_string_tag_action_0)
    32..=33 => (1, lex_string_tag_action_1)
    34 => (4, lex_string_tag_action_2)
    35..=91 => (1, lex_string_tag_action_1)
    92 => (3, lex_string_tag_action_3)
    93..=126 => (1, lex_string_tag_action_1)
    127 => (2, lex_string_tag_action_0)
    128..=1114111 => (1, lex_string_tag_action_1)
    _ => (-1, [])
  }
}
fn lex_string_state_1(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn lex_string_state_2(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn lex_string_state_3(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    34 => (11, lex_string_tag_action_4)
    47 => (12, lex_string_tag_action_4)
    92 => (8, lex_string_tag_action_4)
    98 => (13, lex_string_tag_action_4)
    102 => (9, lex_string_tag_action_4)
    110 => (10, lex_string_tag_action_4)
    114 => (5, lex_string_tag_action_4)
    116 => (6, lex_string_tag_action_4)
    117 => (7, lex_string_tag_action_5)
    _ => (-1, [])
  }
}
fn lex_string_state_4(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn lex_string_state_5(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn lex_string_state_6(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn lex_string_state_7(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (14, lex_string_tag_action_5)
    65..=70 => (14, lex_string_tag_action_5)
    97..=102 => (14, lex_string_tag_action_5)
    _ => (-1, [])
  }
}
fn lex_string_state_8(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn lex_string_state_9(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn lex_string_state_10(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn lex_string_state_11(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn lex_string_state_12(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn lex_string_state_13(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn lex_string_state_14(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (15, lex_string_tag_action_5)
    65..=70 => (15, lex_string_tag_action_5)
    97..=102 => (15, lex_string_tag_action_5)
    _ => (-1, [])
  }
}
fn lex_string_state_15(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (16, lex_string_tag_action_5)
    65..=70 => (16, lex_string_tag_action_5)
    97..=102 => (16, lex_string_tag_action_5)
    _ => (-1, [])
  }
}
fn lex_string_state_16(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (17, lex_string_tag_action_4)
    65..=70 => (17, lex_string_tag_action_4)
    97..=102 => (17, lex_string_tag_action_4)
    _ => (-1, [])
  }
}
fn lex_string_state_17(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}

let __mbtlex_engine_lex_string: @lexengine.T = { graph: [lex_string_state_0, lex_string_state_1, lex_string_state_2, lex_string_state_3, lex_string_state_4, lex_string_state_5, lex_string_state_6, lex_string_state_7, lex_string_state_8, lex_string_state_9, lex_string_state_10, lex_string_state_11, lex_string_state_12, lex_string_state_13, lex_string_state_14, lex_string_state_15, lex_string_state_16, lex_string_state_17, ], end_nodes: [Some((4, [])), Some((2, [((4, 0), (5, 0))])), Some((3, [((6, 0), (7, 0))])), Some((3, [((6, 0), (7, 0))])), Some((0, [((0, 0), (1, 0))])), Some((1, [((2, 0), (3, 0))])), Some((1, [((2, 0), (3, 0))])), None, Some((1, [((2, 0), (3, 0))])), Some((1, [((2, 0), (3, 0))])), Some((1, [((2, 0), (3, 0))])), Some((1, [((2, 0), (3, 0))])), Some((1, [((2, 0), (3, 0))])), Some((1, [((2, 0), (3, 0))])), None, None, None, Some((1, [((2, 0), (3, 0))]))], start_tags: [0, 2, 4, 6], code_blocks_n: 5 }
fn lex_string[T](buf : StringBuilder, lexbuf : @lexbuf.T[T, Char, String, Int]) -> Unit!LexError  {
  match __mbtlex_engine_lex_string.run(lexbuf) {
    (0, __mbtlex_captures) => {
  let (_start_pos_of_t, _end_pos_of_t) = __mbtlex_captures[0]
  let t = lexbuf.unsafe_get(_start_pos_of_t)
  
 buf.write_char(t) 
    }
    (1, __mbtlex_captures) => {
  let (_start_pos_of_t, _end_pos_of_t) = __mbtlex_captures[0]
  let t = lexbuf.sub_lexeme(_start_pos_of_t, _end_pos_of_t)
  
 
      buf.write_string(t)
      lex_string!(buf, lexbuf)
    
    }
    (2, __mbtlex_captures) => {
  let (_start_pos_of_t, _end_pos_of_t) = __mbtlex_captures[0]
  let t = lexbuf.unsafe_get(_start_pos_of_t)
  
 
      buf.write_char(t)
      lex_string!(buf, lexbuf)
    
    }
    (3, __mbtlex_captures) => {
  let (_start_pos_of_t, _end_pos_of_t) = __mbtlex_captures[0]
  let t = lexbuf.unsafe_get(_start_pos_of_t)
  
 raise(Unrecognized(String::make(1, t))) 
    }
    (4, __mbtlex_captures) => {
 raise(UnexpectedEndOfFile) 
    }
    _ => abort("lex: fail to match")
  }
}


