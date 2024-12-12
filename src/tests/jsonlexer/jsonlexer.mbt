
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
typealias TagAction = Array[Array[Int]]

///|
typealias State = Int

///|
typealias Input = Int

///|
pub(all) struct Engine {
   graph : Array[(State) -> (State, TagAction)]
   end_nodes : Array[(Int, Array[((Int, Int), (Int, Int))])?]
   start_tags : Array[Int]
   code_blocks_n : Int
 }

///|
pub fn run(self : Engine, lexbuf : Lexbuf) -> (Int, Array[(Int, Int)]) {
   let mut state = 1
   let mut tagState : Array[Array[Int]] = []
   let backtrace = Array::make(self.code_blocks_n, None)
   for tag in self.start_tags {
     while tagState.length() <= tag {
       tagState.push([])
     }
     tagState[tag].push(lexbuf.pos)
   }
   while state != 0 {
     match self.end_nodes[state] {
       Some(t) => backtrace[t.0] = Some((lexbuf.pos, state, tagState))
       _ => ()
     }
     let b = match lexbuf.next() {
       Some(b) => b
       None => '\x00'
     }
     let next = self.graph[state](b.to_int())
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
         let captures = self.end_nodes[state].unwrap().1.map(
           fn {
             ((b_t, b_r), (e_t, e_r)) => (tagState[b_t][b_r], tagState[e_t][e_r])
           },
         )
         break (index, captures)
       }
       None => ()
     }
   } else {
     (self.code_blocks_n, [])
   }
 }



enum Token {
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

type! LexError {
   EndOfFile
   UnexpectedEndOfFile
   Unrecognized(String)
 }


let token_tag_action_6 : Array[Array[Int]] = [[], [], [], [], [], []]
let token_tag_action_2 : Array[Array[Int]] = [[], [], [], [], [0], [-1]]
let token_tag_action_1 : Array[Array[Int]] = [[], [], [0], [-1], [0], [-1]]
let token_tag_action_5 : Array[Array[Int]] = [[0], [], [], [], [], []]
let token_tag_action_0 : Array[Array[Int]] = [[0], [], [], [], [0], [-1]]
let token_tag_action_4 : Array[Array[Int]] = [[0], [-1], [], [], [], []]
let token_tag_action_3 : Array[Array[Int]] = [[0], [-1], [], [], [0], [-1]]

fn token_state_0(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn token_state_1(input : Input) -> (State, TagAction) {
   match input {
     45 => (2, token_tag_action_0)
     34 => (3, token_tag_action_1)
     1 => (4, token_tag_action_2)
     2 => (4, token_tag_action_2)
     3 => (4, token_tag_action_2)
     4 => (4, token_tag_action_2)
     5 => (4, token_tag_action_2)
     6 => (4, token_tag_action_2)
     7 => (4, token_tag_action_2)
     8 => (4, token_tag_action_2)
     9 => (5, token_tag_action_2)
     10 => (5, token_tag_action_2)
     11 => (4, token_tag_action_2)
     12 => (4, token_tag_action_2)
     13 => (5, token_tag_action_2)
     14 => (4, token_tag_action_2)
     15 => (4, token_tag_action_2)
     16 => (4, token_tag_action_2)
     17 => (4, token_tag_action_2)
     18 => (4, token_tag_action_2)
     19 => (4, token_tag_action_2)
     20 => (4, token_tag_action_2)
     21 => (4, token_tag_action_2)
     22 => (4, token_tag_action_2)
     23 => (4, token_tag_action_2)
     24 => (4, token_tag_action_2)
     25 => (4, token_tag_action_2)
     26 => (4, token_tag_action_2)
     27 => (4, token_tag_action_2)
     28 => (4, token_tag_action_2)
     29 => (4, token_tag_action_2)
     30 => (4, token_tag_action_2)
     31 => (4, token_tag_action_2)
     32 => (5, token_tag_action_2)
     33 => (4, token_tag_action_2)
     35 => (4, token_tag_action_2)
     36 => (4, token_tag_action_2)
     37 => (4, token_tag_action_2)
     38 => (4, token_tag_action_2)
     39 => (4, token_tag_action_2)
     40 => (4, token_tag_action_2)
     41 => (4, token_tag_action_2)
     42 => (4, token_tag_action_2)
     43 => (4, token_tag_action_2)
     44 => (6, token_tag_action_2)
     46 => (4, token_tag_action_2)
     47 => (4, token_tag_action_2)
     48 => (7, token_tag_action_3)
     49 => (8, token_tag_action_3)
     50 => (8, token_tag_action_3)
     51 => (8, token_tag_action_3)
     52 => (8, token_tag_action_3)
     53 => (8, token_tag_action_3)
     54 => (8, token_tag_action_3)
     55 => (8, token_tag_action_3)
     56 => (8, token_tag_action_3)
     57 => (8, token_tag_action_3)
     58 => (9, token_tag_action_2)
     59 => (4, token_tag_action_2)
     60 => (4, token_tag_action_2)
     61 => (4, token_tag_action_2)
     62 => (4, token_tag_action_2)
     63 => (4, token_tag_action_2)
     64 => (4, token_tag_action_2)
     65 => (4, token_tag_action_2)
     66 => (4, token_tag_action_2)
     67 => (4, token_tag_action_2)
     68 => (4, token_tag_action_2)
     69 => (4, token_tag_action_2)
     70 => (4, token_tag_action_2)
     71 => (4, token_tag_action_2)
     72 => (4, token_tag_action_2)
     73 => (4, token_tag_action_2)
     74 => (4, token_tag_action_2)
     75 => (4, token_tag_action_2)
     76 => (4, token_tag_action_2)
     77 => (4, token_tag_action_2)
     78 => (4, token_tag_action_2)
     79 => (4, token_tag_action_2)
     80 => (4, token_tag_action_2)
     81 => (4, token_tag_action_2)
     82 => (4, token_tag_action_2)
     83 => (4, token_tag_action_2)
     84 => (4, token_tag_action_2)
     85 => (4, token_tag_action_2)
     86 => (4, token_tag_action_2)
     87 => (4, token_tag_action_2)
     88 => (4, token_tag_action_2)
     89 => (4, token_tag_action_2)
     90 => (4, token_tag_action_2)
     91 => (10, token_tag_action_2)
     92 => (4, token_tag_action_2)
     93 => (11, token_tag_action_2)
     94 => (4, token_tag_action_2)
     95 => (4, token_tag_action_2)
     96 => (4, token_tag_action_2)
     97 => (4, token_tag_action_2)
     98 => (4, token_tag_action_2)
     99 => (4, token_tag_action_2)
     100 => (4, token_tag_action_2)
     101 => (4, token_tag_action_2)
     102 => (12, token_tag_action_2)
     103 => (4, token_tag_action_2)
     104 => (4, token_tag_action_2)
     105 => (4, token_tag_action_2)
     106 => (4, token_tag_action_2)
     107 => (4, token_tag_action_2)
     108 => (4, token_tag_action_2)
     109 => (4, token_tag_action_2)
     110 => (13, token_tag_action_2)
     111 => (4, token_tag_action_2)
     112 => (4, token_tag_action_2)
     113 => (4, token_tag_action_2)
     114 => (4, token_tag_action_2)
     115 => (4, token_tag_action_2)
     116 => (14, token_tag_action_2)
     117 => (4, token_tag_action_2)
     118 => (4, token_tag_action_2)
     119 => (4, token_tag_action_2)
     120 => (4, token_tag_action_2)
     121 => (4, token_tag_action_2)
     122 => (4, token_tag_action_2)
     123 => (15, token_tag_action_2)
     124 => (4, token_tag_action_2)
     125 => (16, token_tag_action_2)
     126 => (4, token_tag_action_2)
     127 => (4, token_tag_action_2)
     _ => (0, [])
   }
 }
fn token_state_2(input : Input) -> (State, TagAction) {
   match input {
     48 => (17, token_tag_action_4)
     49 => (18, token_tag_action_4)
     50 => (18, token_tag_action_4)
     51 => (18, token_tag_action_4)
     52 => (18, token_tag_action_4)
     53 => (18, token_tag_action_4)
     54 => (18, token_tag_action_4)
     55 => (18, token_tag_action_4)
     56 => (18, token_tag_action_4)
     57 => (18, token_tag_action_4)
     _ => (0, [])
   }
 }
fn token_state_3(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn token_state_4(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn token_state_5(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn token_state_6(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn token_state_7(input : Input) -> (State, TagAction) {
   match input {
     69 => (19, token_tag_action_5)
     101 => (19, token_tag_action_5)
     _ => (0, [])
   }
 }
fn token_state_8(input : Input) -> (State, TagAction) {
   match input {
     46 => (20, token_tag_action_5)
     48 => (21, token_tag_action_4)
     49 => (21, token_tag_action_4)
     50 => (21, token_tag_action_4)
     51 => (21, token_tag_action_4)
     52 => (21, token_tag_action_4)
     53 => (21, token_tag_action_4)
     54 => (21, token_tag_action_4)
     55 => (21, token_tag_action_4)
     56 => (21, token_tag_action_4)
     57 => (21, token_tag_action_4)
     69 => (19, token_tag_action_5)
     101 => (19, token_tag_action_5)
     _ => (0, [])
   }
 }
fn token_state_9(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn token_state_10(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn token_state_11(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn token_state_12(input : Input) -> (State, TagAction) {
   match input {
     97 => (22, token_tag_action_6)
     _ => (0, [])
   }
 }
fn token_state_13(input : Input) -> (State, TagAction) {
   match input {
     117 => (23, token_tag_action_6)
     _ => (0, [])
   }
 }
fn token_state_14(input : Input) -> (State, TagAction) {
   match input {
     114 => (24, token_tag_action_6)
     _ => (0, [])
   }
 }
fn token_state_15(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn token_state_16(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn token_state_17(input : Input) -> (State, TagAction) {
   match input {
     69 => (19, token_tag_action_5)
     101 => (19, token_tag_action_5)
     _ => (0, [])
   }
 }
fn token_state_18(input : Input) -> (State, TagAction) {
   match input {
     46 => (20, token_tag_action_5)
     48 => (21, token_tag_action_4)
     49 => (21, token_tag_action_4)
     50 => (21, token_tag_action_4)
     51 => (21, token_tag_action_4)
     52 => (21, token_tag_action_4)
     53 => (21, token_tag_action_4)
     54 => (21, token_tag_action_4)
     55 => (21, token_tag_action_4)
     56 => (21, token_tag_action_4)
     57 => (21, token_tag_action_4)
     69 => (19, token_tag_action_5)
     101 => (19, token_tag_action_5)
     _ => (0, [])
   }
 }
fn token_state_19(input : Input) -> (State, TagAction) {
   match input {
     43 => (25, token_tag_action_5)
     45 => (25, token_tag_action_5)
     48 => (26, token_tag_action_4)
     49 => (26, token_tag_action_4)
     50 => (26, token_tag_action_4)
     51 => (26, token_tag_action_4)
     52 => (26, token_tag_action_4)
     53 => (26, token_tag_action_4)
     54 => (26, token_tag_action_4)
     55 => (26, token_tag_action_4)
     56 => (26, token_tag_action_4)
     57 => (26, token_tag_action_4)
     _ => (0, [])
   }
 }
fn token_state_20(input : Input) -> (State, TagAction) {
   match input {
     48 => (27, token_tag_action_4)
     49 => (27, token_tag_action_4)
     50 => (27, token_tag_action_4)
     51 => (27, token_tag_action_4)
     52 => (27, token_tag_action_4)
     53 => (27, token_tag_action_4)
     54 => (27, token_tag_action_4)
     55 => (27, token_tag_action_4)
     56 => (27, token_tag_action_4)
     57 => (27, token_tag_action_4)
     _ => (0, [])
   }
 }
fn token_state_21(input : Input) -> (State, TagAction) {
   match input {
     46 => (20, token_tag_action_5)
     48 => (21, token_tag_action_4)
     49 => (21, token_tag_action_4)
     50 => (21, token_tag_action_4)
     51 => (21, token_tag_action_4)
     52 => (21, token_tag_action_4)
     53 => (21, token_tag_action_4)
     54 => (21, token_tag_action_4)
     55 => (21, token_tag_action_4)
     56 => (21, token_tag_action_4)
     57 => (21, token_tag_action_4)
     69 => (19, token_tag_action_5)
     101 => (19, token_tag_action_5)
     _ => (0, [])
   }
 }
fn token_state_22(input : Input) -> (State, TagAction) {
   match input {
     108 => (28, token_tag_action_6)
     _ => (0, [])
   }
 }
fn token_state_23(input : Input) -> (State, TagAction) {
   match input {
     108 => (29, token_tag_action_6)
     _ => (0, [])
   }
 }
fn token_state_24(input : Input) -> (State, TagAction) {
   match input {
     117 => (30, token_tag_action_6)
     _ => (0, [])
   }
 }
fn token_state_25(input : Input) -> (State, TagAction) {
   match input {
     48 => (26, token_tag_action_4)
     49 => (26, token_tag_action_4)
     50 => (26, token_tag_action_4)
     51 => (26, token_tag_action_4)
     52 => (26, token_tag_action_4)
     53 => (26, token_tag_action_4)
     54 => (26, token_tag_action_4)
     55 => (26, token_tag_action_4)
     56 => (26, token_tag_action_4)
     57 => (26, token_tag_action_4)
     _ => (0, [])
   }
 }
fn token_state_26(input : Input) -> (State, TagAction) {
   match input {
     48 => (26, token_tag_action_4)
     49 => (26, token_tag_action_4)
     50 => (26, token_tag_action_4)
     51 => (26, token_tag_action_4)
     52 => (26, token_tag_action_4)
     53 => (26, token_tag_action_4)
     54 => (26, token_tag_action_4)
     55 => (26, token_tag_action_4)
     56 => (26, token_tag_action_4)
     57 => (26, token_tag_action_4)
     _ => (0, [])
   }
 }
fn token_state_27(input : Input) -> (State, TagAction) {
   match input {
     48 => (27, token_tag_action_4)
     49 => (27, token_tag_action_4)
     50 => (27, token_tag_action_4)
     51 => (27, token_tag_action_4)
     52 => (27, token_tag_action_4)
     53 => (27, token_tag_action_4)
     54 => (27, token_tag_action_4)
     55 => (27, token_tag_action_4)
     56 => (27, token_tag_action_4)
     57 => (27, token_tag_action_4)
     69 => (19, token_tag_action_5)
     101 => (19, token_tag_action_5)
     _ => (0, [])
   }
 }
fn token_state_28(input : Input) -> (State, TagAction) {
   match input {
     115 => (31, token_tag_action_6)
     _ => (0, [])
   }
 }
fn token_state_29(input : Input) -> (State, TagAction) {
   match input {
     108 => (32, token_tag_action_6)
     _ => (0, [])
   }
 }
fn token_state_30(input : Input) -> (State, TagAction) {
   match input {
     101 => (33, token_tag_action_6)
     _ => (0, [])
   }
 }
fn token_state_31(input : Input) -> (State, TagAction) {
   match input {
     101 => (34, token_tag_action_6)
     _ => (0, [])
   }
 }
fn token_state_32(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn token_state_33(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn token_state_34(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }

let __mbtlex_engine_token: Engine = { graph: [
   token_state_0,
   token_state_1,
   token_state_2,
   token_state_3,
   token_state_4,
   token_state_5,
   token_state_6,
   token_state_7,
   token_state_8,
   token_state_9,
   token_state_10,
   token_state_11,
   token_state_12,
   token_state_13,
   token_state_14,
   token_state_15,
   token_state_16,
   token_state_17,
   token_state_18,
   token_state_19,
   token_state_20,
   token_state_21,
   token_state_22,
   token_state_23,
   token_state_24,
   token_state_25,
   token_state_26,
   token_state_27,
   token_state_28,
   token_state_29,
   token_state_30,
   token_state_31,
   token_state_32,
   token_state_33,
   token_state_34,
 ]
 , end_nodes: [None, Some((13, [])), Some((12, [((4, 0), (5, 0))])), Some((2, [((2, 0), (3, 0))])), Some((12, [((4, 0), (5, 0))])), Some((0, [])), Some((7, [])), Some((1, [((0, 0), (1, 0))])), Some((1, [((0, 0), (1, 0))])), Some((8, [])), Some((5, [])), Some((6, [])), Some((12, [((4, 0), (5, 0))])), Some((12, [((4, 0), (5, 0))])), Some((12, [((4, 0), (5, 0))])), Some((3, [])), Some((4, [])), Some((1, [((0, 0), (1, 0))])), Some((1, [((0, 0), (1, 0))])), None, None, Some((1, [((0, 0), (1, 0))])), None, None, None, None, Some((1, [((0, 0), (1, 0))])), Some((1, [((0, 0), (1, 0))])), None, None, None, None, Some((11, [])), Some((9, [])), Some((10, []))], start_tags: [0, 2, 4], code_blocks_n: 14 }
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
let lex_string_tag_action_3 : Array[Array[Int]] = [[], [], [], [], [], [], [0], [-1]]
let lex_string_tag_action_0 : Array[Array[Int]] = [[], [], [], [], [0], [-1], [0], [-1]]
let lex_string_tag_action_5 : Array[Array[Int]] = [[], [], [0], [], [], [], [], []]
let lex_string_tag_action_1 : Array[Array[Int]] = [[], [], [0], [], [], [], [0], [-1]]
let lex_string_tag_action_4 : Array[Array[Int]] = [[], [], [0], [-1], [], [], [], []]
let lex_string_tag_action_2 : Array[Array[Int]] = [[0], [-1], [], [], [], [], [0], [-1]]

fn lex_string_state_0(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn lex_string_state_1(input : Input) -> (State, TagAction) {
   match input {
     32 => (2, lex_string_tag_action_0)
     33 => (2, lex_string_tag_action_0)
     35 => (2, lex_string_tag_action_0)
     36 => (2, lex_string_tag_action_0)
     37 => (2, lex_string_tag_action_0)
     38 => (2, lex_string_tag_action_0)
     39 => (2, lex_string_tag_action_0)
     40 => (2, lex_string_tag_action_0)
     41 => (2, lex_string_tag_action_0)
     42 => (2, lex_string_tag_action_0)
     43 => (2, lex_string_tag_action_0)
     44 => (2, lex_string_tag_action_0)
     45 => (2, lex_string_tag_action_0)
     46 => (2, lex_string_tag_action_0)
     47 => (2, lex_string_tag_action_0)
     48 => (2, lex_string_tag_action_0)
     49 => (2, lex_string_tag_action_0)
     50 => (2, lex_string_tag_action_0)
     51 => (2, lex_string_tag_action_0)
     52 => (2, lex_string_tag_action_0)
     53 => (2, lex_string_tag_action_0)
     54 => (2, lex_string_tag_action_0)
     55 => (2, lex_string_tag_action_0)
     56 => (2, lex_string_tag_action_0)
     57 => (2, lex_string_tag_action_0)
     58 => (2, lex_string_tag_action_0)
     59 => (2, lex_string_tag_action_0)
     60 => (2, lex_string_tag_action_0)
     61 => (2, lex_string_tag_action_0)
     62 => (2, lex_string_tag_action_0)
     63 => (2, lex_string_tag_action_0)
     64 => (2, lex_string_tag_action_0)
     65 => (2, lex_string_tag_action_0)
     66 => (2, lex_string_tag_action_0)
     67 => (2, lex_string_tag_action_0)
     68 => (2, lex_string_tag_action_0)
     69 => (2, lex_string_tag_action_0)
     70 => (2, lex_string_tag_action_0)
     71 => (2, lex_string_tag_action_0)
     72 => (2, lex_string_tag_action_0)
     73 => (2, lex_string_tag_action_0)
     74 => (2, lex_string_tag_action_0)
     75 => (2, lex_string_tag_action_0)
     76 => (2, lex_string_tag_action_0)
     77 => (2, lex_string_tag_action_0)
     78 => (2, lex_string_tag_action_0)
     79 => (2, lex_string_tag_action_0)
     80 => (2, lex_string_tag_action_0)
     81 => (2, lex_string_tag_action_0)
     82 => (2, lex_string_tag_action_0)
     83 => (2, lex_string_tag_action_0)
     84 => (2, lex_string_tag_action_0)
     85 => (2, lex_string_tag_action_0)
     86 => (2, lex_string_tag_action_0)
     87 => (2, lex_string_tag_action_0)
     88 => (2, lex_string_tag_action_0)
     89 => (2, lex_string_tag_action_0)
     90 => (2, lex_string_tag_action_0)
     91 => (2, lex_string_tag_action_0)
     93 => (2, lex_string_tag_action_0)
     94 => (2, lex_string_tag_action_0)
     95 => (2, lex_string_tag_action_0)
     96 => (2, lex_string_tag_action_0)
     97 => (2, lex_string_tag_action_0)
     98 => (2, lex_string_tag_action_0)
     99 => (2, lex_string_tag_action_0)
     100 => (2, lex_string_tag_action_0)
     101 => (2, lex_string_tag_action_0)
     102 => (2, lex_string_tag_action_0)
     103 => (2, lex_string_tag_action_0)
     104 => (2, lex_string_tag_action_0)
     105 => (2, lex_string_tag_action_0)
     106 => (2, lex_string_tag_action_0)
     107 => (2, lex_string_tag_action_0)
     108 => (2, lex_string_tag_action_0)
     109 => (2, lex_string_tag_action_0)
     110 => (2, lex_string_tag_action_0)
     111 => (2, lex_string_tag_action_0)
     112 => (2, lex_string_tag_action_0)
     113 => (2, lex_string_tag_action_0)
     114 => (2, lex_string_tag_action_0)
     115 => (2, lex_string_tag_action_0)
     116 => (2, lex_string_tag_action_0)
     117 => (2, lex_string_tag_action_0)
     118 => (2, lex_string_tag_action_0)
     119 => (2, lex_string_tag_action_0)
     120 => (2, lex_string_tag_action_0)
     121 => (2, lex_string_tag_action_0)
     122 => (2, lex_string_tag_action_0)
     123 => (2, lex_string_tag_action_0)
     124 => (2, lex_string_tag_action_0)
     125 => (2, lex_string_tag_action_0)
     126 => (2, lex_string_tag_action_0)
     92 => (3, lex_string_tag_action_1)
     34 => (4, lex_string_tag_action_2)
     1 => (5, lex_string_tag_action_3)
     2 => (5, lex_string_tag_action_3)
     3 => (5, lex_string_tag_action_3)
     4 => (5, lex_string_tag_action_3)
     5 => (5, lex_string_tag_action_3)
     6 => (5, lex_string_tag_action_3)
     7 => (5, lex_string_tag_action_3)
     8 => (5, lex_string_tag_action_3)
     9 => (5, lex_string_tag_action_3)
     10 => (5, lex_string_tag_action_3)
     11 => (5, lex_string_tag_action_3)
     12 => (5, lex_string_tag_action_3)
     13 => (5, lex_string_tag_action_3)
     14 => (5, lex_string_tag_action_3)
     15 => (5, lex_string_tag_action_3)
     16 => (5, lex_string_tag_action_3)
     17 => (5, lex_string_tag_action_3)
     18 => (5, lex_string_tag_action_3)
     19 => (5, lex_string_tag_action_3)
     20 => (5, lex_string_tag_action_3)
     21 => (5, lex_string_tag_action_3)
     22 => (5, lex_string_tag_action_3)
     23 => (5, lex_string_tag_action_3)
     24 => (5, lex_string_tag_action_3)
     25 => (5, lex_string_tag_action_3)
     26 => (5, lex_string_tag_action_3)
     27 => (5, lex_string_tag_action_3)
     28 => (5, lex_string_tag_action_3)
     29 => (5, lex_string_tag_action_3)
     30 => (5, lex_string_tag_action_3)
     31 => (5, lex_string_tag_action_3)
     127 => (5, lex_string_tag_action_3)
     _ => (0, [])
   }
 }
fn lex_string_state_2(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn lex_string_state_3(input : Input) -> (State, TagAction) {
   match input {
     34 => (6, lex_string_tag_action_4)
     92 => (7, lex_string_tag_action_5)
     _ => (0, [])
   }
 }
fn lex_string_state_4(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn lex_string_state_5(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn lex_string_state_6(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn lex_string_state_7(input : Input) -> (State, TagAction) {
   match input {
     92 => (8, lex_string_tag_action_4)
     _ => (0, [])
   }
 }
fn lex_string_state_8(input : Input) -> (State, TagAction) {
   match input {
     47 => (9, lex_string_tag_action_4)
     92 => (10, lex_string_tag_action_5)
     _ => (0, [])
   }
 }
fn lex_string_state_9(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn lex_string_state_10(input : Input) -> (State, TagAction) {
   match input {
     98 => (11, lex_string_tag_action_4)
     92 => (12, lex_string_tag_action_5)
     _ => (0, [])
   }
 }
fn lex_string_state_11(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn lex_string_state_12(input : Input) -> (State, TagAction) {
   match input {
     102 => (13, lex_string_tag_action_4)
     92 => (14, lex_string_tag_action_5)
     _ => (0, [])
   }
 }
fn lex_string_state_13(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn lex_string_state_14(input : Input) -> (State, TagAction) {
   match input {
     110 => (15, lex_string_tag_action_4)
     92 => (16, lex_string_tag_action_5)
     _ => (0, [])
   }
 }
fn lex_string_state_15(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn lex_string_state_16(input : Input) -> (State, TagAction) {
   match input {
     114 => (17, lex_string_tag_action_4)
     92 => (18, lex_string_tag_action_5)
     _ => (0, [])
   }
 }
fn lex_string_state_17(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn lex_string_state_18(input : Input) -> (State, TagAction) {
   match input {
     116 => (19, lex_string_tag_action_4)
     92 => (20, lex_string_tag_action_5)
     _ => (0, [])
   }
 }
fn lex_string_state_19(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn lex_string_state_20(input : Input) -> (State, TagAction) {
   match input {
     117 => (21, lex_string_tag_action_5)
     _ => (0, [])
   }
 }
fn lex_string_state_21(input : Input) -> (State, TagAction) {
   match input {
     48 => (22, lex_string_tag_action_5)
     49 => (22, lex_string_tag_action_5)
     50 => (22, lex_string_tag_action_5)
     51 => (22, lex_string_tag_action_5)
     52 => (22, lex_string_tag_action_5)
     53 => (22, lex_string_tag_action_5)
     54 => (22, lex_string_tag_action_5)
     55 => (22, lex_string_tag_action_5)
     56 => (22, lex_string_tag_action_5)
     57 => (22, lex_string_tag_action_5)
     65 => (22, lex_string_tag_action_5)
     66 => (22, lex_string_tag_action_5)
     67 => (22, lex_string_tag_action_5)
     68 => (22, lex_string_tag_action_5)
     69 => (22, lex_string_tag_action_5)
     70 => (22, lex_string_tag_action_5)
     97 => (22, lex_string_tag_action_5)
     98 => (22, lex_string_tag_action_5)
     99 => (22, lex_string_tag_action_5)
     100 => (22, lex_string_tag_action_5)
     101 => (22, lex_string_tag_action_5)
     102 => (22, lex_string_tag_action_5)
     _ => (0, [])
   }
 }
fn lex_string_state_22(input : Input) -> (State, TagAction) {
   match input {
     48 => (23, lex_string_tag_action_5)
     49 => (23, lex_string_tag_action_5)
     50 => (23, lex_string_tag_action_5)
     51 => (23, lex_string_tag_action_5)
     52 => (23, lex_string_tag_action_5)
     53 => (23, lex_string_tag_action_5)
     54 => (23, lex_string_tag_action_5)
     55 => (23, lex_string_tag_action_5)
     56 => (23, lex_string_tag_action_5)
     57 => (23, lex_string_tag_action_5)
     65 => (23, lex_string_tag_action_5)
     66 => (23, lex_string_tag_action_5)
     67 => (23, lex_string_tag_action_5)
     68 => (23, lex_string_tag_action_5)
     69 => (23, lex_string_tag_action_5)
     70 => (23, lex_string_tag_action_5)
     97 => (23, lex_string_tag_action_5)
     98 => (23, lex_string_tag_action_5)
     99 => (23, lex_string_tag_action_5)
     100 => (23, lex_string_tag_action_5)
     101 => (23, lex_string_tag_action_5)
     102 => (23, lex_string_tag_action_5)
     _ => (0, [])
   }
 }
fn lex_string_state_23(input : Input) -> (State, TagAction) {
   match input {
     48 => (24, lex_string_tag_action_5)
     49 => (24, lex_string_tag_action_5)
     50 => (24, lex_string_tag_action_5)
     51 => (24, lex_string_tag_action_5)
     52 => (24, lex_string_tag_action_5)
     53 => (24, lex_string_tag_action_5)
     54 => (24, lex_string_tag_action_5)
     55 => (24, lex_string_tag_action_5)
     56 => (24, lex_string_tag_action_5)
     57 => (24, lex_string_tag_action_5)
     65 => (24, lex_string_tag_action_5)
     66 => (24, lex_string_tag_action_5)
     67 => (24, lex_string_tag_action_5)
     68 => (24, lex_string_tag_action_5)
     69 => (24, lex_string_tag_action_5)
     70 => (24, lex_string_tag_action_5)
     97 => (24, lex_string_tag_action_5)
     98 => (24, lex_string_tag_action_5)
     99 => (24, lex_string_tag_action_5)
     100 => (24, lex_string_tag_action_5)
     101 => (24, lex_string_tag_action_5)
     102 => (24, lex_string_tag_action_5)
     _ => (0, [])
   }
 }
fn lex_string_state_24(input : Input) -> (State, TagAction) {
   match input {
     48 => (25, lex_string_tag_action_4)
     49 => (25, lex_string_tag_action_4)
     50 => (25, lex_string_tag_action_4)
     51 => (25, lex_string_tag_action_4)
     52 => (25, lex_string_tag_action_4)
     53 => (25, lex_string_tag_action_4)
     54 => (25, lex_string_tag_action_4)
     55 => (25, lex_string_tag_action_4)
     56 => (25, lex_string_tag_action_4)
     57 => (25, lex_string_tag_action_4)
     65 => (25, lex_string_tag_action_4)
     66 => (25, lex_string_tag_action_4)
     67 => (25, lex_string_tag_action_4)
     68 => (25, lex_string_tag_action_4)
     69 => (25, lex_string_tag_action_4)
     70 => (25, lex_string_tag_action_4)
     97 => (25, lex_string_tag_action_4)
     98 => (25, lex_string_tag_action_4)
     99 => (25, lex_string_tag_action_4)
     100 => (25, lex_string_tag_action_4)
     101 => (25, lex_string_tag_action_4)
     102 => (25, lex_string_tag_action_4)
     _ => (0, [])
   }
 }
fn lex_string_state_25(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }

let __mbtlex_engine_lex_string: Engine = { graph: [
   lex_string_state_0,
   lex_string_state_1,
   lex_string_state_2,
   lex_string_state_3,
   lex_string_state_4,
   lex_string_state_5,
   lex_string_state_6,
   lex_string_state_7,
   lex_string_state_8,
   lex_string_state_9,
   lex_string_state_10,
   lex_string_state_11,
   lex_string_state_12,
   lex_string_state_13,
   lex_string_state_14,
   lex_string_state_15,
   lex_string_state_16,
   lex_string_state_17,
   lex_string_state_18,
   lex_string_state_19,
   lex_string_state_20,
   lex_string_state_21,
   lex_string_state_22,
   lex_string_state_23,
   lex_string_state_24,
   lex_string_state_25,
 ]
 , end_nodes: [None, Some((4, [])), Some((2, [((4, 0), (5, 0))])), Some((3, [((6, 0), (7, 0))])), Some((0, [((0, 0), (1, 0))])), Some((3, [((6, 0), (7, 0))])), Some((1, [((2, 0), (3, 0))])), None, Some((1, [((2, 0), (3, 0))])), Some((1, [((2, 0), (3, 0))])), None, Some((1, [((2, 0), (3, 0))])), None, Some((1, [((2, 0), (3, 0))])), None, Some((1, [((2, 0), (3, 0))])), None, Some((1, [((2, 0), (3, 0))])), None, Some((1, [((2, 0), (3, 0))])), None, None, None, None, None, Some((1, [((2, 0), (3, 0))]))], start_tags: [0, 2, 4, 6], code_blocks_n: 5 }
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


