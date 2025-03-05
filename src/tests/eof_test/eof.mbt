
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
   PERCENT
   PERCENT_EOF
   NON_PERCENT
   EOF
 } derive(ToJson)



let token_tag_action_0 : Array[Array[Int]] = []

fn token_state_0(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     -1 => (1, token_tag_action_0)
     0..=36 => (2, token_tag_action_0)
     37 => (3, token_tag_action_0)
     38..=1114111 => (2, token_tag_action_0)
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
     -1 => (4, token_tag_action_0)
     _ => (-1, [])
   }
 }
fn token_state_4(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }

let __mbtlex_engine_token: LexEngine = { graph: [token_state_0, token_state_1, token_state_2, token_state_3, token_state_4, ], end_nodes: [None, Some((3, [])), Some((2, [])), Some((1, [])), Some((0, []))], start_tags: [], code_blocks_n: 4 }
fn token( lexbuf : Lexbuf ) ->  Token  {
 match __mbtlex_engine_token.run(lexbuf) {
 (0, __mbtlex_captures) => {
  PERCENT_EOF 
 }
 (1, __mbtlex_captures) => {
  PERCENT 
 }
 (2, __mbtlex_captures) => {
  NON_PERCENT 
 }
 (3, __mbtlex_captures) => {
  EOF 
 }
 _ => abort("lex: fail to match")
 }
 }

