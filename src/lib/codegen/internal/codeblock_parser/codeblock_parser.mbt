
pub(all) enum SubstItemDesc {
  StartPosOf(String)
  EndPosOf(String)
}

pub(all) struct SubstItem {
  start : Int
  end : Int
  desc : SubstItemDesc
}


let scan_codeblock_rbrace_tag_action_row_0 : Array[Int] = []
let scan_codeblock_rbrace_tag_action_row_2 : Array[Int] = [-1]
let scan_codeblock_rbrace_tag_action_row_1 : Array[Int] = [0]

let scan_codeblock_rbrace_tag_action_0 : Array[Array[Int]] = [scan_codeblock_rbrace_tag_action_row_0, scan_codeblock_rbrace_tag_action_row_0, scan_codeblock_rbrace_tag_action_row_0, scan_codeblock_rbrace_tag_action_row_0, scan_codeblock_rbrace_tag_action_row_0, scan_codeblock_rbrace_tag_action_row_0]
let scan_codeblock_rbrace_tag_action_1 : Array[Array[Int]] = [scan_codeblock_rbrace_tag_action_row_1, scan_codeblock_rbrace_tag_action_row_0, scan_codeblock_rbrace_tag_action_row_2, scan_codeblock_rbrace_tag_action_row_0, scan_codeblock_rbrace_tag_action_row_0, scan_codeblock_rbrace_tag_action_row_0]
let scan_codeblock_rbrace_tag_action_2 : Array[Array[Int]] = [scan_codeblock_rbrace_tag_action_row_1, scan_codeblock_rbrace_tag_action_row_0, scan_codeblock_rbrace_tag_action_row_1, scan_codeblock_rbrace_tag_action_row_0, scan_codeblock_rbrace_tag_action_row_0, scan_codeblock_rbrace_tag_action_row_0]
let scan_codeblock_rbrace_tag_action_3 : Array[Array[Int]] = [scan_codeblock_rbrace_tag_action_row_1, scan_codeblock_rbrace_tag_action_row_0, scan_codeblock_rbrace_tag_action_row_1, scan_codeblock_rbrace_tag_action_row_2, scan_codeblock_rbrace_tag_action_row_0, scan_codeblock_rbrace_tag_action_row_0]
let scan_codeblock_rbrace_tag_action_4 : Array[Array[Int]] = [scan_codeblock_rbrace_tag_action_row_1, scan_codeblock_rbrace_tag_action_row_0, scan_codeblock_rbrace_tag_action_row_1, scan_codeblock_rbrace_tag_action_row_1, scan_codeblock_rbrace_tag_action_row_2, scan_codeblock_rbrace_tag_action_row_0]
let scan_codeblock_rbrace_tag_action_5 : Array[Array[Int]] = [scan_codeblock_rbrace_tag_action_row_1, scan_codeblock_rbrace_tag_action_row_0, scan_codeblock_rbrace_tag_action_row_1, scan_codeblock_rbrace_tag_action_row_1, scan_codeblock_rbrace_tag_action_row_1, scan_codeblock_rbrace_tag_action_row_2]
let scan_codeblock_rbrace_tag_action_6 : Array[Array[Int]] = [scan_codeblock_rbrace_tag_action_row_1, scan_codeblock_rbrace_tag_action_row_0, scan_codeblock_rbrace_tag_action_row_1, scan_codeblock_rbrace_tag_action_row_1, scan_codeblock_rbrace_tag_action_row_1, scan_codeblock_rbrace_tag_action_row_1]
let scan_codeblock_rbrace_tag_action_7 : Array[Array[Int]] = [scan_codeblock_rbrace_tag_action_row_1, scan_codeblock_rbrace_tag_action_row_2, scan_codeblock_rbrace_tag_action_row_1, scan_codeblock_rbrace_tag_action_row_1, scan_codeblock_rbrace_tag_action_row_1, scan_codeblock_rbrace_tag_action_row_1]

fn scan_codeblock_rbrace_state_0(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    0..=35 => (1, scan_codeblock_rbrace_tag_action_0)
    36 => (2, scan_codeblock_rbrace_tag_action_1)
    37..=122 => (1, scan_codeblock_rbrace_tag_action_0)
    123 => (4, scan_codeblock_rbrace_tag_action_0)
    124 => (1, scan_codeblock_rbrace_tag_action_0)
    125 => (3, scan_codeblock_rbrace_tag_action_0)
    126..=1114111 => (1, scan_codeblock_rbrace_tag_action_0)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_1(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_2(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    65..=90 => (5, scan_codeblock_rbrace_tag_action_0)
    95 => (5, scan_codeblock_rbrace_tag_action_0)
    97..=100 => (5, scan_codeblock_rbrace_tag_action_0)
    101 => (6, scan_codeblock_rbrace_tag_action_2)
    102..=114 => (5, scan_codeblock_rbrace_tag_action_0)
    115 => (7, scan_codeblock_rbrace_tag_action_2)
    116..=122 => (5, scan_codeblock_rbrace_tag_action_0)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_3(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_4(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_5(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (8, scan_codeblock_rbrace_tag_action_0)
    65..=90 => (8, scan_codeblock_rbrace_tag_action_0)
    95 => (8, scan_codeblock_rbrace_tag_action_0)
    97..=122 => (8, scan_codeblock_rbrace_tag_action_0)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_6(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (8, scan_codeblock_rbrace_tag_action_0)
    65..=90 => (8, scan_codeblock_rbrace_tag_action_0)
    95 => (8, scan_codeblock_rbrace_tag_action_0)
    97..=109 => (8, scan_codeblock_rbrace_tag_action_0)
    110 => (9, scan_codeblock_rbrace_tag_action_2)
    111..=122 => (8, scan_codeblock_rbrace_tag_action_0)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_7(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (8, scan_codeblock_rbrace_tag_action_0)
    65..=90 => (8, scan_codeblock_rbrace_tag_action_0)
    95 => (8, scan_codeblock_rbrace_tag_action_0)
    97..=115 => (8, scan_codeblock_rbrace_tag_action_0)
    116 => (10, scan_codeblock_rbrace_tag_action_2)
    117..=122 => (8, scan_codeblock_rbrace_tag_action_0)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_8(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (8, scan_codeblock_rbrace_tag_action_0)
    65..=90 => (8, scan_codeblock_rbrace_tag_action_0)
    95 => (8, scan_codeblock_rbrace_tag_action_0)
    97..=122 => (8, scan_codeblock_rbrace_tag_action_0)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_9(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (8, scan_codeblock_rbrace_tag_action_0)
    65..=90 => (8, scan_codeblock_rbrace_tag_action_0)
    95 => (8, scan_codeblock_rbrace_tag_action_0)
    97..=99 => (8, scan_codeblock_rbrace_tag_action_0)
    100 => (11, scan_codeblock_rbrace_tag_action_2)
    101..=122 => (8, scan_codeblock_rbrace_tag_action_0)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_10(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (8, scan_codeblock_rbrace_tag_action_0)
    65..=90 => (8, scan_codeblock_rbrace_tag_action_0)
    95 => (8, scan_codeblock_rbrace_tag_action_0)
    97 => (12, scan_codeblock_rbrace_tag_action_2)
    98..=122 => (8, scan_codeblock_rbrace_tag_action_0)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_11(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (8, scan_codeblock_rbrace_tag_action_0)
    65..=90 => (8, scan_codeblock_rbrace_tag_action_0)
    95 => (8, scan_codeblock_rbrace_tag_action_0)
    97..=111 => (8, scan_codeblock_rbrace_tag_action_0)
    112 => (13, scan_codeblock_rbrace_tag_action_2)
    113..=122 => (8, scan_codeblock_rbrace_tag_action_0)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_12(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (8, scan_codeblock_rbrace_tag_action_0)
    65..=90 => (8, scan_codeblock_rbrace_tag_action_0)
    95 => (8, scan_codeblock_rbrace_tag_action_0)
    97..=113 => (8, scan_codeblock_rbrace_tag_action_0)
    114 => (14, scan_codeblock_rbrace_tag_action_2)
    115..=122 => (8, scan_codeblock_rbrace_tag_action_0)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_13(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (8, scan_codeblock_rbrace_tag_action_0)
    65..=90 => (8, scan_codeblock_rbrace_tag_action_0)
    95 => (8, scan_codeblock_rbrace_tag_action_0)
    97..=110 => (8, scan_codeblock_rbrace_tag_action_0)
    111 => (15, scan_codeblock_rbrace_tag_action_2)
    112..=122 => (8, scan_codeblock_rbrace_tag_action_0)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_14(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (8, scan_codeblock_rbrace_tag_action_0)
    65..=90 => (8, scan_codeblock_rbrace_tag_action_0)
    95 => (8, scan_codeblock_rbrace_tag_action_0)
    97..=115 => (8, scan_codeblock_rbrace_tag_action_0)
    116 => (16, scan_codeblock_rbrace_tag_action_2)
    117..=122 => (8, scan_codeblock_rbrace_tag_action_0)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_15(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (8, scan_codeblock_rbrace_tag_action_0)
    65..=90 => (8, scan_codeblock_rbrace_tag_action_0)
    95 => (8, scan_codeblock_rbrace_tag_action_0)
    97..=114 => (8, scan_codeblock_rbrace_tag_action_0)
    115 => (17, scan_codeblock_rbrace_tag_action_3)
    116..=122 => (8, scan_codeblock_rbrace_tag_action_0)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_16(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (8, scan_codeblock_rbrace_tag_action_0)
    65..=90 => (8, scan_codeblock_rbrace_tag_action_0)
    95 => (8, scan_codeblock_rbrace_tag_action_0)
    97..=111 => (8, scan_codeblock_rbrace_tag_action_0)
    112 => (18, scan_codeblock_rbrace_tag_action_2)
    113..=122 => (8, scan_codeblock_rbrace_tag_action_0)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_17(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    40 => (19, scan_codeblock_rbrace_tag_action_4)
    48..=57 => (8, scan_codeblock_rbrace_tag_action_0)
    65..=90 => (8, scan_codeblock_rbrace_tag_action_0)
    95 => (8, scan_codeblock_rbrace_tag_action_0)
    97..=122 => (8, scan_codeblock_rbrace_tag_action_0)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_18(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (8, scan_codeblock_rbrace_tag_action_0)
    65..=90 => (8, scan_codeblock_rbrace_tag_action_0)
    95 => (8, scan_codeblock_rbrace_tag_action_0)
    97..=110 => (8, scan_codeblock_rbrace_tag_action_0)
    111 => (20, scan_codeblock_rbrace_tag_action_2)
    112..=122 => (8, scan_codeblock_rbrace_tag_action_0)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_19(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    9 => (22, scan_codeblock_rbrace_tag_action_4)
    32 => (22, scan_codeblock_rbrace_tag_action_4)
    65..=90 => (21, scan_codeblock_rbrace_tag_action_5)
    95 => (21, scan_codeblock_rbrace_tag_action_5)
    97..=122 => (21, scan_codeblock_rbrace_tag_action_5)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_20(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    48..=57 => (8, scan_codeblock_rbrace_tag_action_0)
    65..=90 => (8, scan_codeblock_rbrace_tag_action_0)
    95 => (8, scan_codeblock_rbrace_tag_action_0)
    97..=114 => (8, scan_codeblock_rbrace_tag_action_0)
    115 => (23, scan_codeblock_rbrace_tag_action_3)
    116..=122 => (8, scan_codeblock_rbrace_tag_action_0)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_21(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    9 => (25, scan_codeblock_rbrace_tag_action_6)
    32 => (25, scan_codeblock_rbrace_tag_action_6)
    41 => (26, scan_codeblock_rbrace_tag_action_7)
    48..=57 => (24, scan_codeblock_rbrace_tag_action_5)
    65..=90 => (24, scan_codeblock_rbrace_tag_action_5)
    95 => (24, scan_codeblock_rbrace_tag_action_5)
    97..=122 => (24, scan_codeblock_rbrace_tag_action_5)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_22(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    9 => (22, scan_codeblock_rbrace_tag_action_4)
    32 => (22, scan_codeblock_rbrace_tag_action_4)
    65..=90 => (21, scan_codeblock_rbrace_tag_action_5)
    95 => (21, scan_codeblock_rbrace_tag_action_5)
    97..=122 => (21, scan_codeblock_rbrace_tag_action_5)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_23(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    40 => (19, scan_codeblock_rbrace_tag_action_4)
    48..=57 => (8, scan_codeblock_rbrace_tag_action_0)
    65..=90 => (8, scan_codeblock_rbrace_tag_action_0)
    95 => (8, scan_codeblock_rbrace_tag_action_0)
    97..=122 => (8, scan_codeblock_rbrace_tag_action_0)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_24(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    9 => (25, scan_codeblock_rbrace_tag_action_6)
    32 => (25, scan_codeblock_rbrace_tag_action_6)
    41 => (26, scan_codeblock_rbrace_tag_action_7)
    48..=57 => (24, scan_codeblock_rbrace_tag_action_5)
    65..=90 => (24, scan_codeblock_rbrace_tag_action_5)
    95 => (24, scan_codeblock_rbrace_tag_action_5)
    97..=122 => (24, scan_codeblock_rbrace_tag_action_5)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_25(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    9 => (25, scan_codeblock_rbrace_tag_action_6)
    32 => (25, scan_codeblock_rbrace_tag_action_6)
    41 => (26, scan_codeblock_rbrace_tag_action_7)
    _ => (-1, [])
  }
}
fn scan_codeblock_rbrace_state_26(input : Int) -> (Int, Array[Array[Int]]) {
  match input {
    _ => (-1, [])
  }
}

let __mbtlex_engine_scan_codeblock_rbrace: @lexengine.T = { graph: [scan_codeblock_rbrace_state_0, scan_codeblock_rbrace_state_1, scan_codeblock_rbrace_state_2, scan_codeblock_rbrace_state_3, scan_codeblock_rbrace_state_4, scan_codeblock_rbrace_state_5, scan_codeblock_rbrace_state_6, scan_codeblock_rbrace_state_7, scan_codeblock_rbrace_state_8, scan_codeblock_rbrace_state_9, scan_codeblock_rbrace_state_10, scan_codeblock_rbrace_state_11, scan_codeblock_rbrace_state_12, scan_codeblock_rbrace_state_13, scan_codeblock_rbrace_state_14, scan_codeblock_rbrace_state_15, scan_codeblock_rbrace_state_16, scan_codeblock_rbrace_state_17, scan_codeblock_rbrace_state_18, scan_codeblock_rbrace_state_19, scan_codeblock_rbrace_state_20, scan_codeblock_rbrace_state_21, scan_codeblock_rbrace_state_22, scan_codeblock_rbrace_state_23, scan_codeblock_rbrace_state_24, scan_codeblock_rbrace_state_25, scan_codeblock_rbrace_state_26, ], end_nodes: [Some((5, [])), Some((4, [])), Some((4, [])), Some((1, [])), Some((0, [])), Some((3, [])), Some((3, [])), Some((3, [])), Some((3, [])), Some((3, [])), Some((3, [])), Some((3, [])), Some((3, [])), Some((3, [])), Some((3, [])), Some((3, [])), Some((3, [])), Some((3, [])), Some((3, [])), None, Some((3, [])), None, None, Some((3, [])), None, None, Some((2, [((0, 0), (1, 0)), ((2, 0), (3, 0)), ((4, 0), (5, 0))]))], start_tags: [0], code_blocks_n: 6 }
fn scan_codeblock_rbrace[T](subst : Array[SubstItem], lexbuf : @lexbuf.T[T, String, Int]) -> Unit  {
  match __mbtlex_engine_scan_codeblock_rbrace.run(lexbuf) {
    (0, __mbtlex_captures) => {

      scan_codeblock_rbrace(subst, lexbuf)
      scan_codeblock_rbrace(subst, lexbuf)
    
    }
    (1, __mbtlex_captures) => {
 () 
    }
    (2, __mbtlex_captures) => {
  let (_start_pos_of_t, _end_pos_of_t) = __mbtlex_captures[0]
  let t = lexbuf.sub_lexeme(_start_pos_of_t, _end_pos_of_t)
  ignore(t)
  let (_start_pos_of_t1, _end_pos_of_t1) = __mbtlex_captures[1]
  let t1 = lexbuf.sub_lexeme(_start_pos_of_t1, _end_pos_of_t1)
  
  let (_start_pos_of_t2, _end_pos_of_t2) = __mbtlex_captures[2]
  let t2 = lexbuf.sub_lexeme(_start_pos_of_t2, _end_pos_of_t2)
  

      subst.push({ 
        start: _start_pos_of_t, 
        end: _end_pos_of_t, 
        desc: match t1 {
          "startpos" => StartPosOf(t2)
          "endpos" => EndPosOf(t2)
          _ => panic()
        }
      })
      scan_codeblock_rbrace(subst, lexbuf)
    
    }
    (3, __mbtlex_captures) => {

      scan_codeblock_rbrace(subst, lexbuf)
    
    }
    (4, __mbtlex_captures) => {
 scan_codeblock_rbrace(subst, lexbuf) 
    }
    (5, __mbtlex_captures) => {
 () 
    }
    _ => abort("lex: fail to match")
  }
}


pub fn parse_codeblock(str : String) -> Array[SubstItem] {
  let lexbuf = @lexbuf.from_string(str)
  let subst = []
  scan_codeblock_rbrace(subst, lexbuf)
  subst
}
