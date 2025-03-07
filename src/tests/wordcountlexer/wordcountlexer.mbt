
// translate from https://ohama.github.io/ocaml/ocamllex-tutorial/examples/wordcount/


let count_tag_action_row_0 : Array[Int] = []
let count_tag_action_row_2 : Array[Int] = [-1]
let count_tag_action_row_1 : Array[Int] = [0]

let count_tag_action_1 : Array[Array[Int]] = [count_tag_action_row_0, count_tag_action_row_0]
let count_tag_action_0 : Array[Array[Int]] = [count_tag_action_row_1, count_tag_action_row_2]

fn count_state_0(input : Int) -> (Int, Array[Array[Int]]) {
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
fn count_state_1(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn count_state_2(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn count_state_3(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    0..=8 => (4, count_tag_action_0)
    11..=31 => (4, count_tag_action_0)
    33..=1114111 => (4, count_tag_action_0)
    _ => (-1, [])
  }
}
fn count_state_4(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    0..=8 => (4, count_tag_action_0)
    11..=31 => (4, count_tag_action_0)
    33..=1114111 => (4, count_tag_action_0)
    _ => (-1, [])
  }
}

let __mbtlex_engine_count: @lexengine.T = { graph: [count_state_0, count_state_1, count_state_2, count_state_3, count_state_4, ], end_nodes: [Some((3, [])), Some((2, [])), Some((0, [])), Some((1, [((0, 0), (1, 0))])), Some((1, [((0, 0), (1, 0))]))], start_tags: [0], code_blocks_n: 4 }
fn count[T](lines : Int, words : Int, chars : Int, lexbuf : @lexbuf.T[T, String, Int]) -> (Int, Int, Int)  {
  match __mbtlex_engine_count.run(lexbuf) {
    (0, __mbtlex_captures) => {
 count(lines + 1, words, chars + 1, lexbuf) 
    }
    (1, __mbtlex_captures) => {
  let (_start_pos_of_word, _end_pos_of_word) = __mbtlex_captures[0]
  let word = lexbuf.sub_lexeme(_start_pos_of_word, _end_pos_of_word)
  

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


