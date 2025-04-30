
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


fn scan_codeblock_rbrace[T : @lexbuf.IStringLexbuf](subst : Array[SubstItem], lexbuf : T) -> Unit  {
  // The matched pattern id
  let mut matched = @int.max_value
  let mut _end_pos = -1
  let mut _start_pos = lexbuf.curr_pos()
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
      if matched >= 5 {
        matched = 5
        _end_pos = lexbuf.curr_pos()
      }
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
      if matched >= 4 {
        matched = 4
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    2 => {
      if matched >= 4 {
        matched = 4
        _end_pos = lexbuf.curr_pos()
      }
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
      if matched >= 0 {
        matched = 0
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    4 => {
      if matched >= 1 {
        matched = 1
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    5 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 1
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 5
        65..=90 => 5
        95 => 5
        97..=122 => 5
        _ => break
      }
    }
    6 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 1
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 5
        65..=90 => 5
        95 => 5
        97..=109 => 5
        110 => 9
        111..=122 => 5
        _ => break
      }
    }
    7 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 1
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 5
        65..=90 => 5
        95 => 5
        97..=115 => 5
        116 => 8
        117..=122 => 5
        _ => break
      }
    }
    8 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 1
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 5
        65..=90 => 5
        95 => 5
        97 => 10
        98..=122 => 5
        _ => break
      }
    }
    9 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 1
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 5
        65..=90 => 5
        95 => 5
        97..=99 => 5
        100 => 11
        101..=122 => 5
        _ => break
      }
    }
    10 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 1
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 5
        65..=90 => 5
        95 => 5
        97..=113 => 5
        114 => 12
        115..=122 => 5
        _ => break
      }
    }
    11 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 1
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 5
        65..=90 => 5
        95 => 5
        97..=111 => 5
        112 => 13
        113..=122 => 5
        _ => break
      }
    }
    12 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 1
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        48..=57 => 5
        65..=90 => 5
        95 => 5
        97..=115 => 5
        116 => 11
        117..=122 => 5
        _ => break
      }
    }
    13 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 1
        _capture_0_end = _end_pos
      }
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
    14 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 1
        _capture_0_end = _end_pos
      }
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
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 1
        _capture_0_end = _end_pos
      }
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
      if matched >= 2 {
        matched = 2
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos + 1
        _capture_0_end = _tag_0
        _capture_1_start = _tag_1
        _capture_1_end = _tag_2
      }
      break
    }
    _ => panic()
  }

  guard matched <= 5 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_end_pos)
  match matched {
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
      let _start_pos_of_t1 = _capture_0_start
      let _end_pos_of_t1 = _capture_0_end
      let t1 = lexbuf.get_string(_start_pos_of_t1, _end_pos_of_t1)
      let _start_pos_of_t2 = _capture_1_start
      let _end_pos_of_t2 = _capture_1_end
      let t2 = lexbuf.get_string(_start_pos_of_t2, _end_pos_of_t2)

      subst.push({ 
        start: _start_pos, 
        end: _end_pos, 
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
      let _start_pos_of_t1 = _capture_0_start
      let _end_pos_of_t1 = _capture_0_end
      let t1 = lexbuf.get_string(_start_pos_of_t1, _end_pos_of_t1)

      if t1 is ("startpos" | "endpos") {
        subst.push({ 
          start: _start_pos, 
          end: _end_pos, 
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
