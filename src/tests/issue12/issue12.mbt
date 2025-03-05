
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




let test_func_tag_action_row_1 : Array[Int] = []
let test_func_tag_action_row_2 : Array[Int] = [-1]
let test_func_tag_action_row_0 : Array[Int] = [0]

let test_func_tag_action_1 : Array[Array[Int]] = [test_func_tag_action_row_0, test_func_tag_action_row_1]
let test_func_tag_action_0 : Array[Array[Int]] = [test_func_tag_action_row_0, test_func_tag_action_row_2]

fn test_func_state_0(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     97 => (1, test_func_tag_action_0)
     _ => (-1, [])
   }
 }
fn test_func_state_1(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     97..=98 => (2, test_func_tag_action_1)
     _ => (-1, [])
   }
 }
fn test_func_state_2(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     97 => (3, test_func_tag_action_0)
     98 => (2, test_func_tag_action_1)
     _ => (-1, [])
   }
 }
fn test_func_state_3(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     97 => (3, test_func_tag_action_0)
     98 => (2, test_func_tag_action_1)
     _ => (-1, [])
   }
 }

let __mbtlex_engine_test_func: LexEngine = { graph: [test_func_state_0, test_func_state_1, test_func_state_2, test_func_state_3, ], end_nodes: [None, Some((0, [((0, 0), (1, 0))])), None, Some((0, [((0, 0), (1, 0))]))], start_tags: [0], code_blocks_n: 1 }
fn test_func( lexbuf : Lexbuf ) ->  String  {
 match __mbtlex_engine_test_func.run(lexbuf) {
 (0, __mbtlex_captures) => {
 let (_start_pos_of_t2, _end_pos_of_t2) = __mbtlex_captures[0]
 let t2: String = lexbuf.substring(_start_pos_of_t2, _end_pos_of_t2)
 
 
       t2
     
 }
 _ => abort("lex: fail to match")
 }
 }


