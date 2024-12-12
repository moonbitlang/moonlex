
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
   PERCENT
   PERCENT_EOF
   NON_PERCENT
   EOF
 } derive(ToJson)


let tag_action_0 : Array[Array[Int]] = []

fn state_0(input : Input) -> (State, TagAction) {
   match input {
     _ => (0, [])
   }
 }
fn state_1(input : Input) -> (State, TagAction) {
   match input {
     37 => (2, tag_action_0)
     1 => (3, tag_action_0)
     2 => (3, tag_action_0)
     3 => (3, tag_action_0)
     4 => (3, tag_action_0)
     5 => (3, tag_action_0)
     6 => (3, tag_action_0)
     7 => (3, tag_action_0)
     8 => (3, tag_action_0)
     9 => (3, tag_action_0)
     10 => (3, tag_action_0)
     11 => (3, tag_action_0)
     12 => (3, tag_action_0)
     13 => (3, tag_action_0)
     14 => (3, tag_action_0)
     15 => (3, tag_action_0)
     16 => (3, tag_action_0)
     17 => (3, tag_action_0)
     18 => (3, tag_action_0)
     19 => (3, tag_action_0)
     20 => (3, tag_action_0)
     21 => (3, tag_action_0)
     22 => (3, tag_action_0)
     23 => (3, tag_action_0)
     24 => (3, tag_action_0)
     25 => (3, tag_action_0)
     26 => (3, tag_action_0)
     27 => (3, tag_action_0)
     28 => (3, tag_action_0)
     29 => (3, tag_action_0)
     30 => (3, tag_action_0)
     31 => (3, tag_action_0)
     32 => (3, tag_action_0)
     33 => (3, tag_action_0)
     34 => (3, tag_action_0)
     35 => (3, tag_action_0)
     36 => (3, tag_action_0)
     38 => (3, tag_action_0)
     39 => (3, tag_action_0)
     40 => (3, tag_action_0)
     41 => (3, tag_action_0)
     42 => (3, tag_action_0)
     43 => (3, tag_action_0)
     44 => (3, tag_action_0)
     45 => (3, tag_action_0)
     46 => (3, tag_action_0)
     47 => (3, tag_action_0)
     48 => (3, tag_action_0)
     49 => (3, tag_action_0)
     50 => (3, tag_action_0)
     51 => (3, tag_action_0)
     52 => (3, tag_action_0)
     53 => (3, tag_action_0)
     54 => (3, tag_action_0)
     55 => (3, tag_action_0)
     56 => (3, tag_action_0)
     57 => (3, tag_action_0)
     58 => (3, tag_action_0)
     59 => (3, tag_action_0)
     60 => (3, tag_action_0)
     61 => (3, tag_action_0)
     62 => (3, tag_action_0)
     63 => (3, tag_action_0)
     64 => (3, tag_action_0)
     65 => (3, tag_action_0)
     66 => (3, tag_action_0)
     67 => (3, tag_action_0)
     68 => (3, tag_action_0)
     69 => (3, tag_action_0)
     70 => (3, tag_action_0)
     71 => (3, tag_action_0)
     72 => (3, tag_action_0)
     73 => (3, tag_action_0)
     74 => (3, tag_action_0)
     75 => (3, tag_action_0)
     76 => (3, tag_action_0)
     77 => (3, tag_action_0)
     78 => (3, tag_action_0)
     79 => (3, tag_action_0)
     80 => (3, tag_action_0)
     81 => (3, tag_action_0)
     82 => (3, tag_action_0)
     83 => (3, tag_action_0)
     84 => (3, tag_action_0)
     85 => (3, tag_action_0)
     86 => (3, tag_action_0)
     87 => (3, tag_action_0)
     88 => (3, tag_action_0)
     89 => (3, tag_action_0)
     90 => (3, tag_action_0)
     91 => (3, tag_action_0)
     92 => (3, tag_action_0)
     93 => (3, tag_action_0)
     94 => (3, tag_action_0)
     95 => (3, tag_action_0)
     96 => (3, tag_action_0)
     97 => (3, tag_action_0)
     98 => (3, tag_action_0)
     99 => (3, tag_action_0)
     100 => (3, tag_action_0)
     101 => (3, tag_action_0)
     102 => (3, tag_action_0)
     103 => (3, tag_action_0)
     104 => (3, tag_action_0)
     105 => (3, tag_action_0)
     106 => (3, tag_action_0)
     107 => (3, tag_action_0)
     108 => (3, tag_action_0)
     109 => (3, tag_action_0)
     110 => (3, tag_action_0)
     111 => (3, tag_action_0)
     112 => (3, tag_action_0)
     113 => (3, tag_action_0)
     114 => (3, tag_action_0)
     115 => (3, tag_action_0)
     116 => (3, tag_action_0)
     117 => (3, tag_action_0)
     118 => (3, tag_action_0)
     119 => (3, tag_action_0)
     120 => (3, tag_action_0)
     121 => (3, tag_action_0)
     122 => (3, tag_action_0)
     123 => (3, tag_action_0)
     124 => (3, tag_action_0)
     125 => (3, tag_action_0)
     126 => (3, tag_action_0)
     127 => (3, tag_action_0)
     0 => (4, tag_action_0)
     _ => panic()
   }
 }
fn state_2(input : Input) -> (State, TagAction) {
   match input {
     0 => (5, tag_action_0)
     _ => (0, [])
   }
 }
fn state_3(input : Input) -> (State, TagAction) {
   match input {
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

let __mbtlex_engine_token: Engine = { graph: [
   state_0,
   state_1,
   state_2,
   state_3,
   state_4,
   state_5,
 ]
 , end_nodes: [None, None, Some((1, [])), Some((2, [])), Some((3, [])), Some((0, []))], start_tags: [], code_blocks_n: 4 }
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

