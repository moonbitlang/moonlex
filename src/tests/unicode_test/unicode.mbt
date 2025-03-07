


let lex_unicode_tag_action_0 : Array[Array[Int]] = []

fn lex_unicode_state_0(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    0..=12352 => (1, lex_unicode_tag_action_0)
    12353..=12438 => (2, lex_unicode_tag_action_0)
    12439..=12440 => (1, lex_unicode_tag_action_0)
    12441..=12447 => (2, lex_unicode_tag_action_0)
    12448..=25104 => (1, lex_unicode_tag_action_0)
    25105 => (4, lex_unicode_tag_action_0)
    25106..=134070 => (1, lex_unicode_tag_action_0)
    134071 => (3, lex_unicode_tag_action_0)
    134072..=1114111 => (1, lex_unicode_tag_action_0)
    _ => (-1, [])
  }
}
fn lex_unicode_state_1(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn lex_unicode_state_2(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn lex_unicode_state_3(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn lex_unicode_state_4(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    29233 => (5, lex_unicode_tag_action_0)
    _ => (-1, [])
  }
}
fn lex_unicode_state_5(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    20013 => (6, lex_unicode_tag_action_0)
    _ => (-1, [])
  }
}
fn lex_unicode_state_6(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    22269 => (7, lex_unicode_tag_action_0)
    _ => (-1, [])
  }
}
fn lex_unicode_state_7(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}

let __mbtlex_engine_lex_unicode: @lexengine.T = { graph: [lex_unicode_state_0, lex_unicode_state_1, lex_unicode_state_2, lex_unicode_state_3, lex_unicode_state_4, lex_unicode_state_5, lex_unicode_state_6, lex_unicode_state_7, ], end_nodes: [None, Some((3, [])), Some((2, [])), Some((1, [])), Some((3, [])), None, None, Some((0, []))], start_tags: [], code_blocks_n: 4 }
fn lex_unicode[T](lexbuf : @lexbuf.T[T, String, Int]) -> Int  {
  match __mbtlex_engine_lex_unicode.run(lexbuf) {
    (0, __mbtlex_captures) => {
 1 
    }
    (1, __mbtlex_captures) => {
 2 
    }
    (2, __mbtlex_captures) => {
 3 
    }
    (3, __mbtlex_captures) => {
 4 
    }
    _ => abort("lex: fail to match")
  }
}


fn classify(str : String) -> Int {
  let lexbuf = @lexbuf.from_string(str)
  lex_unicode(lexbuf)
}
