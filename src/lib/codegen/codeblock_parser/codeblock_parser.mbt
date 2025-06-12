
pub(all) enum SubstItemDesc {
  StartPosOf(String)
  EndPosOf(String)
  StartPos
  EndPos
}

pub(all) struct SubstItem {
  start : Int
  end : Int
  desc : SubstItemDesc
}


fn[T : @lexbuf.IStringLexbuf] scan_codeblock_rbrace(subst : Array[SubstItem], lexbuf : T) -> Unit  {
  // The matched pattern id
  let mut _match_pattern = @int.max_value
  let mut _match_start = lexbuf.curr_pos()
  let mut _match_end = -1
  let mut _capture_0_start = -1
  let mut _capture_0_end = -1
  let mut _capture_1_start = -1
  let mut _capture_1_end = -1
  let mut _capture_2_start = -1
  let mut _capture_2_end = -1
  let mut _tag_0 = -1
  let mut _tag_1 = -1
  let mut _tag_2 = -1
  loop 0 {
    0 => {
      _match_pattern = 5
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        0..=35 => 1
        36 => 2
        37..=122 => 1
        123 => 3
        124 => 1
        125 => 4
        126..=1114111 => 1
        _ => break
      }
    }
    1 => {
      _match_pattern = 4
      _match_end = lexbuf.curr_pos()
      break
    }
    2 => {
      _match_pattern = 4
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        65..=90 => 5
        95 => 5
        97..=100 => 5
        101 => 6
        102..=114 => 5
        115 => 7
        116..=122 => 5
        _ => break
      }
    }
    3 => {
      _match_pattern = 0
      _match_end = lexbuf.curr_pos()
      break
    }
    4 => {
      _match_pattern = 1
      _match_end = lexbuf.curr_pos()
      break
    }
    5 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 1
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 5
        65..=90 => 5
        95 => 5
        97..=122 => 5
        _ => break
      }
    }
    6 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 1
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 5
        65..=90 => 5
        95 => 5
        97..=109 => 5
        110 => 8
        111..=122 => 5
        _ => break
      }
    }
    7 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 1
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 5
        65..=90 => 5
        95 => 5
        97..=115 => 5
        116 => 9
        117..=122 => 5
        _ => break
      }
    }
    8 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 1
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 5
        65..=90 => 5
        95 => 5
        97..=99 => 5
        100 => 10
        101..=122 => 5
        _ => break
      }
    }
    9 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 1
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 5
        65..=90 => 5
        95 => 5
        97 => 11
        98..=122 => 5
        _ => break
      }
    }
    10 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 1
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 5
        65..=90 => 5
        95 => 5
        97..=111 => 5
        112 => 12
        113..=122 => 5
        _ => break
      }
    }
    11 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 1
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 5
        65..=90 => 5
        95 => 5
        97..=113 => 5
        114 => 13
        115..=122 => 5
        _ => break
      }
    }
    12 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 1
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 5
        65..=90 => 5
        95 => 5
        97..=110 => 5
        111 => 14
        112..=122 => 5
        _ => break
      }
    }
    13 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 1
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 5
        65..=90 => 5
        95 => 5
        97..=115 => 5
        116 => 10
        117..=122 => 5
        _ => break
      }
    }
    14 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 1
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 5
        65..=90 => 5
        95 => 5
        97..=114 => 5
        115 => 15
        116..=122 => 5
        _ => break
      }
    }
    15 => {
      _tag_0 = lexbuf.curr_pos()
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 1
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        40 => 16
        48..=57 => 5
        65..=90 => 5
        95 => 5
        97..=122 => 5
        _ => break
      }
    }
    16 => {
      _tag_1 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        9 => 16
        32 => 16
        65..=90 => 17
        95 => 17
        97..=122 => 17
        _ => break
      }
    }
    17 => {
      _tag_2 = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        9 => 18
        32 => 18
        41 => 19
        48..=57 => 17
        65..=90 => 17
        95 => 17
        97..=122 => 17
        _ => break
      }
    }
    18 => {
      continue match lexbuf.next_as_int() {
        9 => 18
        32 => 18
        41 => 19
        _ => break
      }
    }
    19 => {
      _match_pattern = 2
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 1
      _capture_0_end = _tag_0
      _capture_1_start = _tag_1
      _capture_1_end = _tag_2
      break
    }
    _ => panic()
  }

  guard _match_pattern <= 5 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_match_end)
  match _match_pattern {
    0 => {
      ()

      scan_codeblock_rbrace(subst, lexbuf)
      scan_codeblock_rbrace(subst, lexbuf)
    
    }
    1 => {
      ()
 () 
    }
    2 => {
      ()
      let t1 = lexbuf.get_string(_capture_0_start, _capture_0_end)
      let t2 = lexbuf.get_string(_capture_1_start, _capture_1_end)

      subst.push({ 
        start: _match_start, 
        end: _match_end, 
        desc: match t1 {
          "startpos" => StartPosOf(t2)
          "endpos" => EndPosOf(t2)
          _ => panic()
        }
      })
      scan_codeblock_rbrace(subst, lexbuf)
    
    }
    3 => {
      ()
      let t1 = lexbuf.get_string(_capture_0_start, _capture_0_end)

      if t1 is ("startpos" | "endpos") {
        subst.push({ 
          start: _match_start, 
          end: _match_end, 
          desc: match t1 {
            "startpos" => StartPos
            "endpos" => EndPos
            _ => panic()
          }
        })
      }
      scan_codeblock_rbrace(subst, lexbuf)
    
    }
    4 => {
      ()
 scan_codeblock_rbrace(subst, lexbuf) 
    }
    5 => {
      ()
 () 
    }
    _ => panic()
  }
}




pub fn parse_codeblock(str : String) -> Array[SubstItem] {
  let lexbuf = @lexbuf.StringLexbuf::from_string(str)
  let subst = []
  scan_codeblock_rbrace(subst, lexbuf)
  subst
}
