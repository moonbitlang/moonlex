


let lex_is_number_tag_action_0 : Array[Array[Int]] = []

fn lex_is_number_state_0(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    0..=47 => (1, lex_is_number_tag_action_0)
    48 => (3, lex_is_number_tag_action_0)
    49..=57 => (2, lex_is_number_tag_action_0)
    58..=1114111 => (1, lex_is_number_tag_action_0)
    _ => (-1, [])
  }
}
fn lex_is_number_state_1(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn lex_is_number_state_2(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (4, lex_is_number_tag_action_0)
    _ => (-1, [])
  }
}
fn lex_is_number_state_3(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn lex_is_number_state_4(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (4, lex_is_number_tag_action_0)
    _ => (-1, [])
  }
}

let __mbtlex_engine_lex_is_number: @lexengine.T = { graph: [lex_is_number_state_0, lex_is_number_state_1, lex_is_number_state_2, lex_is_number_state_3, lex_is_number_state_4, ], end_nodes: [None, Some((1, [])), Some((0, [])), Some((0, [])), Some((0, []))], start_tags: [], code_blocks_n: 2 }
fn lex_is_number[T, S, P](lexbuf : @lexbuf.T[T, S, P]) -> Bool  {
  match __mbtlex_engine_lex_is_number.run(lexbuf) {
    (0, __mbtlex_captures) => {
 true 
    }
    (1, __mbtlex_captures) => {
 false 
    }
    _ => abort("lex: fail to match")
  }
}


pub fn is_number(str : String) -> Bool {
    let lexbuf = @lexbuf.from_string(str)
    lex_is_number(lexbuf)
}
