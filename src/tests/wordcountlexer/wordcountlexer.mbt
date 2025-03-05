
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



// translate from https://ohama.github.io/ocaml/ocamllex-tutorial/examples/wordcount/


let count_tag_action_row_0 : Array[Int] = []
let count_tag_action_row_2 : Array[Int] = [-1]
let count_tag_action_row_1 : Array[Int] = [0]

let count_tag_action_1 : Array[Array[Int]] = [count_tag_action_row_0, count_tag_action_row_0]
let count_tag_action_0 : Array[Array[Int]] = [count_tag_action_row_1, count_tag_action_row_2]

fn count_state_0(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     0..=8 => (3, count_tag_action_0)
     9 => (1, count_tag_action_1)
     10 => (2, count_tag_action_1)
     11..=31 => (3, count_tag_action_0)
     32 => (1, count_tag_action_1)
     33..=1114111 => (3, count_tag_action_0)
     _ => (-1, [])
   }
 }
fn count_state_1(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn count_state_2(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     _ => (-1, [])
   }
 }
fn count_state_3(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     0..=8 => (4, count_tag_action_0)
     11..=31 => (4, count_tag_action_0)
     33..=1114111 => (4, count_tag_action_0)
     _ => (-1, [])
   }
 }
fn count_state_4(input : LexInput) -> (LexState, LexTagAction) {
   match input {
     0..=8 => (4, count_tag_action_0)
     11..=31 => (4, count_tag_action_0)
     33..=1114111 => (4, count_tag_action_0)
     _ => (-1, [])
   }
 }

let __mbtlex_engine_count: LexEngine = { graph: [count_state_0, count_state_1, count_state_2, count_state_3, count_state_4, ], end_nodes: [Some((3, [])), Some((2, [])), Some((0, [])), Some((1, [((0, 0), (1, 0))])), Some((1, [((0, 0), (1, 0))]))], start_tags: [0], code_blocks_n: 4 }
fn count( lines :  Int, words :  Int, chars :  Int, lexbuf : Lexbuf ) ->  (Int, Int, Int)  {
 match __mbtlex_engine_count.run(lexbuf) {
 (0, __mbtlex_captures) => {
  count(lines + 1, words, chars + 1, lexbuf) 
 }
 (1, __mbtlex_captures) => {
 let (_start_pos_of_word, _end_pos_of_word) = __mbtlex_captures[0]
 let word: String = lexbuf.substring(_start_pos_of_word, _end_pos_of_word)
 
 
       let new_chars = chars + word.length()
       count(lines, words + 1, new_chars, lexbuf)
     
 }
 (2, __mbtlex_captures) => {
  count(lines, words, chars + 1, lexbuf) 
 }
 (3, __mbtlex_captures) => {
  (lines, words, chars) 
 }
 _ => abort("lex: fail to match")
 }
 }


