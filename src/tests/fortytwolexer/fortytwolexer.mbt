


let scan_newline_tag_action_row_0 : Array[Int] = []
let scan_newline_tag_action_row_2 : Array[Int] = [-1]
let scan_newline_tag_action_row_1 : Array[Int] = [0]

let scan_newline_tag_action_0 : Array[Array[Int]] = [scan_newline_tag_action_row_0, scan_newline_tag_action_row_0]
let scan_newline_tag_action_1 : Array[Array[Int]] = [scan_newline_tag_action_row_1, scan_newline_tag_action_row_2]

fn scan_newline_state_0(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    0..=9 => (3, scan_newline_tag_action_0)
    10 => (2, scan_newline_tag_action_1)
    11..=12 => (3, scan_newline_tag_action_0)
    13 => (1, scan_newline_tag_action_1)
    14..=1114111 => (3, scan_newline_tag_action_0)
    _ => (-1, [])
  }
}
fn scan_newline_state_1(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    10 => (4, scan_newline_tag_action_1)
    _ => (-1, [])
  }
}
fn scan_newline_state_2(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn scan_newline_state_3(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn scan_newline_state_4(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}

let __mbtlex_engine_scan_newline: @lexengine.T = { graph: [scan_newline_state_0, scan_newline_state_1, scan_newline_state_2, scan_newline_state_3, scan_newline_state_4, ], end_nodes: [Some((2, [])), Some((0, [((0, 0), (1, 0))])), Some((0, [((0, 0), (1, 0))])), Some((1, [])), Some((0, [((0, 0), (1, 0))]))], start_tags: [0], code_blocks_n: 3 }
fn scan_newline[T](lexbuf : @lexbuf.T[T, String, Int]) -> Int  {
  match __mbtlex_engine_scan_newline.run(lexbuf) {
    (0, __mbtlex_captures) => {
  let (_start_pos_of_t, _end_pos_of_t) = __mbtlex_captures[0]
  let t = lexbuf.sub_lexeme(_start_pos_of_t, _end_pos_of_t)
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


