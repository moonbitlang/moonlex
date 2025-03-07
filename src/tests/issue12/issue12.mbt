

let test_func_tag_action_row_1 : Array[Int] = []
let test_func_tag_action_row_2 : Array[Int] = [-1]
let test_func_tag_action_row_0 : Array[Int] = [0]

let test_func_tag_action_1 : Array[Array[Int]] = [test_func_tag_action_row_0, test_func_tag_action_row_1]
let test_func_tag_action_0 : Array[Array[Int]] = [test_func_tag_action_row_0, test_func_tag_action_row_2]

fn test_func_state_0(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    97 => (1, test_func_tag_action_0)
    _ => (-1, [])
  }
}
fn test_func_state_1(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    97..=98 => (2, test_func_tag_action_1)
    _ => (-1, [])
  }
}
fn test_func_state_2(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    97 => (3, test_func_tag_action_0)
    98 => (2, test_func_tag_action_1)
    _ => (-1, [])
  }
}
fn test_func_state_3(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    97 => (3, test_func_tag_action_0)
    98 => (2, test_func_tag_action_1)
    _ => (-1, [])
  }
}

let __mbtlex_engine_test_func: @lexengine.T = { graph: [test_func_state_0, test_func_state_1, test_func_state_2, test_func_state_3, ], end_nodes: [None, Some((0, [((0, 0), (1, 0))])), None, Some((0, [((0, 0), (1, 0))]))], start_tags: [0], code_blocks_n: 1 }
fn test_func[T](lexbuf : @lexbuf.T[T, String, Int]) -> String  {
  match __mbtlex_engine_test_func.run(lexbuf) {
    (0, __mbtlex_captures) => {
  let (_start_pos_of_t2, _end_pos_of_t2) = __mbtlex_captures[0]
  let t2 = lexbuf.sub_lexeme(_start_pos_of_t2, _end_pos_of_t2)
  

      t2
    
    }
    _ => abort("lex: fail to match")
  }
}


