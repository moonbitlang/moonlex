
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





let tag_action_1 : Array[Array[Int]] = [[], []]
let tag_action_0 : Array[Array[Int]] = [[0], [-1]]

fn state_0(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn state_1(input : Input) -> (State, TagAction) {
   match input {
     10 => (2, tag_action_0)
     13 => (3, tag_action_0)
     1 => (4, tag_action_1)
     2 => (4, tag_action_1)
     3 => (4, tag_action_1)
     4 => (4, tag_action_1)
     5 => (4, tag_action_1)
     6 => (4, tag_action_1)
     7 => (4, tag_action_1)
     8 => (4, tag_action_1)
     9 => (4, tag_action_1)
     11 => (4, tag_action_1)
     12 => (4, tag_action_1)
     14 => (4, tag_action_1)
     15 => (4, tag_action_1)
     16 => (4, tag_action_1)
     17 => (4, tag_action_1)
     18 => (4, tag_action_1)
     19 => (4, tag_action_1)
     20 => (4, tag_action_1)
     21 => (4, tag_action_1)
     22 => (4, tag_action_1)
     23 => (4, tag_action_1)
     24 => (4, tag_action_1)
     25 => (4, tag_action_1)
     26 => (4, tag_action_1)
     27 => (4, tag_action_1)
     28 => (4, tag_action_1)
     29 => (4, tag_action_1)
     30 => (4, tag_action_1)
     31 => (4, tag_action_1)
     32 => (4, tag_action_1)
     33 => (4, tag_action_1)
     34 => (4, tag_action_1)
     35 => (4, tag_action_1)
     36 => (4, tag_action_1)
     37 => (4, tag_action_1)
     38 => (4, tag_action_1)
     39 => (4, tag_action_1)
     40 => (4, tag_action_1)
     41 => (4, tag_action_1)
     42 => (4, tag_action_1)
     43 => (4, tag_action_1)
     44 => (4, tag_action_1)
     45 => (4, tag_action_1)
     46 => (4, tag_action_1)
     47 => (4, tag_action_1)
     48 => (4, tag_action_1)
     49 => (4, tag_action_1)
     50 => (4, tag_action_1)
     51 => (4, tag_action_1)
     52 => (4, tag_action_1)
     53 => (4, tag_action_1)
     54 => (4, tag_action_1)
     55 => (4, tag_action_1)
     56 => (4, tag_action_1)
     57 => (4, tag_action_1)
     58 => (4, tag_action_1)
     59 => (4, tag_action_1)
     60 => (4, tag_action_1)
     61 => (4, tag_action_1)
     62 => (4, tag_action_1)
     63 => (4, tag_action_1)
     64 => (4, tag_action_1)
     65 => (4, tag_action_1)
     66 => (4, tag_action_1)
     67 => (4, tag_action_1)
     68 => (4, tag_action_1)
     69 => (4, tag_action_1)
     70 => (4, tag_action_1)
     71 => (4, tag_action_1)
     72 => (4, tag_action_1)
     73 => (4, tag_action_1)
     74 => (4, tag_action_1)
     75 => (4, tag_action_1)
     76 => (4, tag_action_1)
     77 => (4, tag_action_1)
     78 => (4, tag_action_1)
     79 => (4, tag_action_1)
     80 => (4, tag_action_1)
     81 => (4, tag_action_1)
     82 => (4, tag_action_1)
     83 => (4, tag_action_1)
     84 => (4, tag_action_1)
     85 => (4, tag_action_1)
     86 => (4, tag_action_1)
     87 => (4, tag_action_1)
     88 => (4, tag_action_1)
     89 => (4, tag_action_1)
     90 => (4, tag_action_1)
     91 => (4, tag_action_1)
     92 => (4, tag_action_1)
     93 => (4, tag_action_1)
     94 => (4, tag_action_1)
     95 => (4, tag_action_1)
     96 => (4, tag_action_1)
     97 => (4, tag_action_1)
     98 => (4, tag_action_1)
     99 => (4, tag_action_1)
     100 => (4, tag_action_1)
     101 => (4, tag_action_1)
     102 => (4, tag_action_1)
     103 => (4, tag_action_1)
     104 => (4, tag_action_1)
     105 => (4, tag_action_1)
     106 => (4, tag_action_1)
     107 => (4, tag_action_1)
     108 => (4, tag_action_1)
     109 => (4, tag_action_1)
     110 => (4, tag_action_1)
     111 => (4, tag_action_1)
     112 => (4, tag_action_1)
     113 => (4, tag_action_1)
     114 => (4, tag_action_1)
     115 => (4, tag_action_1)
     116 => (4, tag_action_1)
     117 => (4, tag_action_1)
     118 => (4, tag_action_1)
     119 => (4, tag_action_1)
     120 => (4, tag_action_1)
     121 => (4, tag_action_1)
     122 => (4, tag_action_1)
     123 => (4, tag_action_1)
     124 => (4, tag_action_1)
     125 => (4, tag_action_1)
     126 => (4, tag_action_1)
     127 => (4, tag_action_1)
     _ => (0, [])
   }
 }
fn state_2(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn state_3(input : Input) -> (State, TagAction) {
   match input {
     10 => (5, tag_action_0)
     13 => (6, tag_action_0)
     _ => (0, [])
   }
 }
fn state_4(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn state_5(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn state_6(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }

let __mbtlex_engine_scan_newline: Engine = { graph: [
   state_0,
   state_1,
   state_2,
   state_3,
   state_4,
   state_5,
   state_6,
 ]
 , end_nodes: [None, Some((2, [])), Some((0, [((0, 0), (1, 0))])), Some((0, [((0, 0), (1, 0))])), Some((1, [])), Some((0, [((0, 0), (1, 0))])), Some((0, [((0, 0), (1, 0))]))], start_tags: [0], code_blocks_n: 3 }
fn scan_newline( lexbuf : Lexbuf ) ->  Int  {
 match __mbtlex_engine_scan_newline.run(lexbuf) {
 (0, __mbtlex_captures) => {
 let (_start_pos_of_t, _end_pos_of_t) = __mbtlex_captures[0]
 let t: String = lexbuf.substring(_start_pos_of_t, _end_pos_of_t)
 ignore(t)
 
       _start_pos_of_t
     
 }
 (1, __mbtlex_captures) => {
  scan_newline(lexbuf) 
 }
 (2, __mbtlex_captures) => {
  -1 
 }
 _ => abort("lex: fail to match")
 }
 }


