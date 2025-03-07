
priv enum Token {
  PERCENT
  PERCENT_EOF
  NON_PERCENT
  EOF
} derive(ToJson)



let token_tag_action_0 : Array[Array[Int]] = []

fn token_state_0(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    -1 => (1, token_tag_action_0)
    0..=36 => (2, token_tag_action_0)
    37 => (3, token_tag_action_0)
    38..=1114111 => (2, token_tag_action_0)
    _ => (-1, [])
  }
}
fn token_state_1(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
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
    -1 => (4, token_tag_action_0)
    _ => (-1, [])
  }
}
fn token_state_4(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}

let __mbtlex_engine_token: @lexengine.T = { graph: [token_state_0, token_state_1, token_state_2, token_state_3, token_state_4, ], end_nodes: [None, Some((3, [])), Some((2, [])), Some((1, [])), Some((0, []))], start_tags: [], code_blocks_n: 4 }
fn token[T, S, P](lexbuf : @lexbuf.T[T, S, P]) -> Token  {
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

