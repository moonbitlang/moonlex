
///|
struct Lexbuf {
   content : String
   mut pos : Int
 }

///|
pub fn Lexbuf::from_string(content : String) -> Lexbuf {
   { content, pos: 0 }
 }

// NOTE: MoonBit do have unboxed Option[Char] optimization
///|
fn next(self : Lexbuf) -> Char? {
   if self.pos < self.content.length() {
     let ch = self.content[self.pos]
     self.pos += 1
     Some(ch)
   } else {
     None
   }
 }

///|
fn substring(self : Lexbuf, start : Int, end : Int) -> String {
   self.content.substring(start~, end~)
 }

///|
typealias LexTagAction = Array[Array[Int]]

///|
typealias LexState = Int

///|
typealias LexInput = Int

///|
pub(all) struct LexEngine {
   graph : Array[(LexState) -> (LexState, LexTagAction)]
   end_nodes : Array[(Int, Array[((Int, Int), (Int, Int))])?]
   start_tags : Array[Int]
   code_blocks_n : Int
 }

///|
pub fn run(self : LexEngine, lexbuf : Lexbuf) -> (Int, Array[(Int, Int)]) {
   let mut state = 0
   let mut tagState : Array[Array[Int]] = []
   let backtrace = Array::make(self.code_blocks_n, None)
   for tag in self.start_tags {
     while tagState.length() <= tag {
       tagState.push([])
     }
     tagState[tag].push(lexbuf.pos)
   }
   while state != -1 {
     match self.end_nodes[state] {
       Some(t) => backtrace[t.0] = Some((lexbuf.pos, state, tagState))
       _ => ()
     }
     let b = match lexbuf.next() {
       Some(b) => b.to_int()
       None => -1
     }
     let next = self.graph[state](b)
     state = next.0
     let new_tagState : Array[Array[Int]] = []
     for i = 0; i < next.1.length(); i = i + 1 {
       new_tagState.push([])
       for j = 0; j < next.1[i].length(); j = j + 1 {
         let t = next.1[i][j]
         if t == -1 {
           new_tagState[i].push(lexbuf.pos)
         } else {
           new_tagState[i].push(tagState[i][t])
         }
       }
     }
     tagState = new_tagState
   }
   for index, b in backtrace {
     match b {
       Some((p, state, tagState)) => {
         lexbuf.pos = p
         let captures = self.end_nodes[state].unwrap().1.map(fn {
           ((b_t, b_r), (e_t, e_r)) => (tagState[b_t][b_r], tagState[e_t][e_r])
         })
         break (index, captures)
       }
       None => ()
     }
   } else {
     (self.code_blocks_n, [])
   }
 }



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

fn token_state_0(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     0..=8 => (2, token_tag_action_0)
     9..=10 => (12, token_tag_action_0)
     11..=12 => (2, token_tag_action_0)
     13 => (12, token_tag_action_0)
     14..=31 => (2, token_tag_action_0)
     32 => (12, token_tag_action_0)
     33 => (2, token_tag_action_0)
     34 => (1, token_tag_action_1)
     35..=43 => (2, token_tag_action_0)
     44 => (7, token_tag_action_0)
     45 => (13, token_tag_action_2)
     46..=47 => (2, token_tag_action_0)
     48 => (15, token_tag_action_3)
     49..=57 => (14, token_tag_action_3)
     58 => (6, token_tag_action_0)
     59..=90 => (2, token_tag_action_0)
     91 => (9, token_tag_action_0)
     92 => (2, token_tag_action_0)
     93 => (8, token_tag_action_0)
     94..=101 => (2, token_tag_action_0)
     102 => (4, token_tag_action_0)
     103..=109 => (2, token_tag_action_0)
     110 => (3, token_tag_action_0)
     111..=115 => (2, token_tag_action_0)
     116 => (5, token_tag_action_0)
     117..=122 => (2, token_tag_action_0)
     123 => (11, token_tag_action_0)
     124 => (2, token_tag_action_0)
     125 => (10, token_tag_action_0)
     126..=1114111 => (2, token_tag_action_0)
     _ => (-1, [])
   }
 }
fn token_state_1(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn token_state_2(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn token_state_3(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     117 => (16, token_tag_action_4)
     _ => (-1, [])
   }
 }
fn token_state_4(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     97 => (17, token_tag_action_4)
     _ => (-1, [])
   }
 }
fn token_state_5(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     114 => (18, token_tag_action_4)
     _ => (-1, [])
   }
 }
fn token_state_6(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn token_state_7(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn token_state_8(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn token_state_9(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn token_state_10(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn token_state_11(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn token_state_12(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn token_state_13(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     48 => (20, token_tag_action_5)
     49..=57 => (19, token_tag_action_5)
     _ => (-1, [])
   }
 }
fn token_state_14(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     46 => (22, token_tag_action_6)
     48..=57 => (23, token_tag_action_5)
     69 => (21, token_tag_action_6)
     101 => (21, token_tag_action_6)
     _ => (-1, [])
   }
 }
fn token_state_15(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     69 => (21, token_tag_action_6)
     101 => (21, token_tag_action_6)
     _ => (-1, [])
   }
 }
fn token_state_16(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     108 => (24, token_tag_action_4)
     _ => (-1, [])
   }
 }
fn token_state_17(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     108 => (25, token_tag_action_4)
     _ => (-1, [])
   }
 }
fn token_state_18(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     117 => (26, token_tag_action_4)
     _ => (-1, [])
   }
 }
fn token_state_19(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     46 => (22, token_tag_action_6)
     48..=57 => (23, token_tag_action_5)
     69 => (21, token_tag_action_6)
     101 => (21, token_tag_action_6)
     _ => (-1, [])
   }
 }
fn token_state_20(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     69 => (21, token_tag_action_6)
     101 => (21, token_tag_action_6)
     _ => (-1, [])
   }
 }
fn token_state_21(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     43 => (28, token_tag_action_6)
     45 => (28, token_tag_action_6)
     48..=57 => (27, token_tag_action_5)
     _ => (-1, [])
   }
 }
fn token_state_22(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     48..=57 => (29, token_tag_action_5)
     _ => (-1, [])
   }
 }
fn token_state_23(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     46 => (22, token_tag_action_6)
     48..=57 => (23, token_tag_action_5)
     69 => (21, token_tag_action_6)
     101 => (21, token_tag_action_6)
     _ => (-1, [])
   }
 }
fn token_state_24(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     108 => (30, token_tag_action_4)
     _ => (-1, [])
   }
 }
fn token_state_25(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     115 => (31, token_tag_action_4)
     _ => (-1, [])
   }
 }
fn token_state_26(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     101 => (32, token_tag_action_4)
     _ => (-1, [])
   }
 }
fn token_state_27(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     48..=57 => (27, token_tag_action_5)
     _ => (-1, [])
   }
 }
fn token_state_28(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     48..=57 => (27, token_tag_action_5)
     _ => (-1, [])
   }
 }
fn token_state_29(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     48..=57 => (29, token_tag_action_5)
     69 => (21, token_tag_action_6)
     101 => (21, token_tag_action_6)
     _ => (-1, [])
   }
 }
fn token_state_30(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn token_state_31(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     101 => (33, token_tag_action_4)
     _ => (-1, [])
   }
 }
fn token_state_32(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn token_state_33(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }

let __mbtlex_engine_token: LexEngine = { graph: [token_state_0, token_state_1, token_state_2, token_state_3, token_state_4, token_state_5, token_state_6, token_state_7, token_state_8, token_state_9, token_state_10, token_state_11, token_state_12, token_state_13, token_state_14, token_state_15, token_state_16, token_state_17, token_state_18, token_state_19, token_state_20, token_state_21, token_state_22, token_state_23, token_state_24, token_state_25, token_state_26, token_state_27, token_state_28, token_state_29, token_state_30, token_state_31, token_state_32, token_state_33, ], end_nodes: [Some((13, [])), Some((2, [((2, 0), (3, 0))])), Some((12, [((4, 0), (5, 0))])), Some((12, [((4, 0), (5, 0))])), Some((12, [((4, 0), (5, 0))])), Some((12, [((4, 0), (5, 0))])), Some((8, [])), Some((7, [])), Some((6, [])), Some((5, [])), Some((4, [])), Some((3, [])), Some((0, [])), Some((12, [((4, 0), (5, 0))])), Some((1, [((0, 0), (1, 0))])), Some((1, [((0, 0), (1, 0))])), None, None, None, Some((1, [((0, 0), (1, 0))])), Some((1, [((0, 0), (1, 0))])), None, None, Some((1, [((0, 0), (1, 0))])), None, None, None, Some((1, [((0, 0), (1, 0))])), None, Some((1, [((0, 0), (1, 0))])), Some((11, [])), None, Some((9, [])), Some((10, []))], start_tags: [0, 2, 4], code_blocks_n: 14 }
fn token( lexbuf : Lexbuf ) ->  Token!LexError  {
 match __mbtlex_engine_token.run(lexbuf) {
 (0, __mbtlex_captures) => {
  WHITESPACE 
 }
 (1, __mbtlex_captures) => {
 let (_start_pos_of_t, _end_pos_of_t) = __mbtlex_captures[0]
 let t: String = lexbuf.substring(_start_pos_of_t, _end_pos_of_t)
 
  NUMBER(t) 
 }
 (2, __mbtlex_captures) => {
 let (_start_pos_of_t, _end_pos_of_t) = __mbtlex_captures[0]
 let t: String = lexbuf.substring(_start_pos_of_t, _end_pos_of_t)
 
 
       let buf = StringBuilder::new()
       buf.write_string(t)
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
 let t: String = lexbuf.substring(_start_pos_of_t, _end_pos_of_t)
 
  raise(Unrecognized(t)) 
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

fn lex_string_state_0(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     0..=31 => (3, lex_string_tag_action_0)
     32..=33 => (2, lex_string_tag_action_1)
     34 => (1, lex_string_tag_action_2)
     35..=91 => (2, lex_string_tag_action_1)
     92 => (4, lex_string_tag_action_3)
     93..=126 => (2, lex_string_tag_action_1)
     127 => (3, lex_string_tag_action_0)
     128..=1114111 => (2, lex_string_tag_action_1)
     _ => (-1, [])
   }
 }
fn lex_string_state_1(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn lex_string_state_2(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn lex_string_state_3(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn lex_string_state_4(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     34 => (6, lex_string_tag_action_4)
     92 => (5, lex_string_tag_action_5)
     _ => (-1, [])
   }
 }
fn lex_string_state_5(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     92 => (7, lex_string_tag_action_4)
     _ => (-1, [])
   }
 }
fn lex_string_state_6(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn lex_string_state_7(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     47 => (9, lex_string_tag_action_4)
     92 => (8, lex_string_tag_action_5)
     _ => (-1, [])
   }
 }
fn lex_string_state_8(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     92 => (10, lex_string_tag_action_5)
     98 => (11, lex_string_tag_action_4)
     _ => (-1, [])
   }
 }
fn lex_string_state_9(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn lex_string_state_10(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     92 => (12, lex_string_tag_action_5)
     102 => (13, lex_string_tag_action_4)
     _ => (-1, [])
   }
 }
fn lex_string_state_11(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn lex_string_state_12(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     92 => (14, lex_string_tag_action_5)
     110 => (15, lex_string_tag_action_4)
     _ => (-1, [])
   }
 }
fn lex_string_state_13(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn lex_string_state_14(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     92 => (16, lex_string_tag_action_5)
     114 => (17, lex_string_tag_action_4)
     _ => (-1, [])
   }
 }
fn lex_string_state_15(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn lex_string_state_16(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     92 => (18, lex_string_tag_action_5)
     116 => (19, lex_string_tag_action_4)
     _ => (-1, [])
   }
 }
fn lex_string_state_17(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn lex_string_state_18(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     117 => (20, lex_string_tag_action_5)
     _ => (-1, [])
   }
 }
fn lex_string_state_19(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn lex_string_state_20(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     48..=57 => (21, lex_string_tag_action_5)
     65..=70 => (21, lex_string_tag_action_5)
     97..=102 => (21, lex_string_tag_action_5)
     _ => (-1, [])
   }
 }
fn lex_string_state_21(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     48..=57 => (22, lex_string_tag_action_5)
     65..=70 => (22, lex_string_tag_action_5)
     97..=102 => (22, lex_string_tag_action_5)
     _ => (-1, [])
   }
 }
fn lex_string_state_22(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     48..=57 => (23, lex_string_tag_action_5)
     65..=70 => (23, lex_string_tag_action_5)
     97..=102 => (23, lex_string_tag_action_5)
     _ => (-1, [])
   }
 }
fn lex_string_state_23(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     48..=57 => (24, lex_string_tag_action_4)
     65..=70 => (24, lex_string_tag_action_4)
     97..=102 => (24, lex_string_tag_action_4)
     _ => (-1, [])
   }
 }
fn lex_string_state_24(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }

let __mbtlex_engine_lex_string: LexEngine = { graph: [lex_string_state_0, lex_string_state_1, lex_string_state_2, lex_string_state_3, lex_string_state_4, lex_string_state_5, lex_string_state_6, lex_string_state_7, lex_string_state_8, lex_string_state_9, lex_string_state_10, lex_string_state_11, lex_string_state_12, lex_string_state_13, lex_string_state_14, lex_string_state_15, lex_string_state_16, lex_string_state_17, lex_string_state_18, lex_string_state_19, lex_string_state_20, lex_string_state_21, lex_string_state_22, lex_string_state_23, lex_string_state_24, ], end_nodes: [Some((4, [])), Some((0, [((0, 0), (1, 0))])), Some((2, [((4, 0), (5, 0))])), Some((3, [((6, 0), (7, 0))])), Some((3, [((6, 0), (7, 0))])), None, Some((1, [((2, 0), (3, 0))])), Some((1, [((2, 0), (3, 0))])), None, Some((1, [((2, 0), (3, 0))])), None, Some((1, [((2, 0), (3, 0))])), None, Some((1, [((2, 0), (3, 0))])), None, Some((1, [((2, 0), (3, 0))])), None, Some((1, [((2, 0), (3, 0))])), None, Some((1, [((2, 0), (3, 0))])), None, None, None, None, Some((1, [((2, 0), (3, 0))]))], start_tags: [0, 2, 4, 6], code_blocks_n: 5 }
fn lex_string( buf :  StringBuilder, lexbuf : Lexbuf ) ->  Unit!LexError  {
 match __mbtlex_engine_lex_string.run(lexbuf) {
 (0, __mbtlex_captures) => {
 let (_start_pos_of_t, _end_pos_of_t) = __mbtlex_captures[0]
 let t: String = lexbuf.substring(_start_pos_of_t, _end_pos_of_t)
 
  buf.write_string(t) 
 }
 (1, __mbtlex_captures) => {
 let (_start_pos_of_t, _end_pos_of_t) = __mbtlex_captures[0]
 let t: String = lexbuf.substring(_start_pos_of_t, _end_pos_of_t)
 
  
       buf.write_string(t)
       lex_string!(buf, lexbuf)
     
 }
 (2, __mbtlex_captures) => {
 let (_start_pos_of_t, _end_pos_of_t) = __mbtlex_captures[0]
 let t: String = lexbuf.substring(_start_pos_of_t, _end_pos_of_t)
 
  
       buf.write_string(t)
       lex_string!(buf, lexbuf)
     
 }
 (3, __mbtlex_captures) => {
 let (_start_pos_of_t, _end_pos_of_t) = __mbtlex_captures[0]
 let t: String = lexbuf.substring(_start_pos_of_t, _end_pos_of_t)
 
  raise(Unrecognized(t)) 
 }
 (4, __mbtlex_captures) => {
  raise(UnexpectedEndOfFile) 
 }
 _ => abort("lex: fail to match")
 }
 }


