
pub(all) enum SubstItemDesc {
  StartPosOf(String)
  EndPosOf(String)
}

pub(all) struct SubstItem {
  start : Int
  end : Int
  desc : SubstItemDesc
}


fn scan_codeblock_rbrace[T](subst : Array[SubstItem], lexbuf : @lexbuf.T[T, Char, String, Int]) -> Unit  {
  let mut matched = None
  let mut state = 0
  let mut _tag_0 = -1
  let mut _tag_1 = -1
  let mut _tag_2 = -1
  let mut _tag_3 = -1
  let mut _tag_4 = -1
  let mut _tag_5 = -1
  _tag_4 = lexbuf.curr_pos()
  while state != -1 {
    let mut tag_action = -1
    match state {
      0 => {
        if matched is Some((prev_pattern_id, _, _)) && 5 <= prev_pattern_id || matched is None {
          matched = Some((5, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=35 => {
            state = 3
            tag_action = 1
          }
          36 => {
            state = 1
            tag_action = 0
          }
          37..=122 => {
            state = 3
            tag_action = 1
          }
          123 => {
            state = 2
            tag_action = 1
          }
          124 => {
            state = 3
            tag_action = 1
          }
          125 => {
            state = 4
            tag_action = 1
          }
          126..=1114111 => {
            state = 3
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      1 => {
        if matched is Some((prev_pattern_id, _, _)) && 4 <= prev_pattern_id || matched is None {
          matched = Some((4, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          65..=90 => {
            state = 5
            tag_action = 1
          }
          95 => {
            state = 5
            tag_action = 1
          }
          97..=100 => {
            state = 5
            tag_action = 1
          }
          101 => {
            state = 6
            tag_action = 2
          }
          102..=114 => {
            state = 5
            tag_action = 1
          }
          115 => {
            state = 7
            tag_action = 2
          }
          116..=122 => {
            state = 5
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      2 => {
        if matched is Some((prev_pattern_id, _, _)) && 0 <= prev_pattern_id || matched is None {
          matched = Some((0, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      3 => {
        if matched is Some((prev_pattern_id, _, _)) && 4 <= prev_pattern_id || matched is None {
          matched = Some((4, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      4 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      5 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 8
            tag_action = 1
          }
          65..=90 => {
            state = 8
            tag_action = 1
          }
          95 => {
            state = 8
            tag_action = 1
          }
          97..=122 => {
            state = 8
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      6 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 8
            tag_action = 1
          }
          65..=90 => {
            state = 8
            tag_action = 1
          }
          95 => {
            state = 8
            tag_action = 1
          }
          97..=109 => {
            state = 8
            tag_action = 1
          }
          110 => {
            state = 9
            tag_action = 2
          }
          111..=122 => {
            state = 8
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      7 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 8
            tag_action = 1
          }
          65..=90 => {
            state = 8
            tag_action = 1
          }
          95 => {
            state = 8
            tag_action = 1
          }
          97..=115 => {
            state = 8
            tag_action = 1
          }
          116 => {
            state = 10
            tag_action = 2
          }
          117..=122 => {
            state = 8
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      8 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 8
            tag_action = 1
          }
          65..=90 => {
            state = 8
            tag_action = 1
          }
          95 => {
            state = 8
            tag_action = 1
          }
          97..=122 => {
            state = 8
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      9 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 8
            tag_action = 1
          }
          65..=90 => {
            state = 8
            tag_action = 1
          }
          95 => {
            state = 8
            tag_action = 1
          }
          97..=99 => {
            state = 8
            tag_action = 1
          }
          100 => {
            state = 11
            tag_action = 2
          }
          101..=122 => {
            state = 8
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      10 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 8
            tag_action = 1
          }
          65..=90 => {
            state = 8
            tag_action = 1
          }
          95 => {
            state = 8
            tag_action = 1
          }
          97 => {
            state = 12
            tag_action = 2
          }
          98..=122 => {
            state = 8
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      11 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 8
            tag_action = 1
          }
          65..=90 => {
            state = 8
            tag_action = 1
          }
          95 => {
            state = 8
            tag_action = 1
          }
          97..=111 => {
            state = 8
            tag_action = 1
          }
          112 => {
            state = 13
            tag_action = 2
          }
          113..=122 => {
            state = 8
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      12 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 8
            tag_action = 1
          }
          65..=90 => {
            state = 8
            tag_action = 1
          }
          95 => {
            state = 8
            tag_action = 1
          }
          97..=113 => {
            state = 8
            tag_action = 1
          }
          114 => {
            state = 14
            tag_action = 2
          }
          115..=122 => {
            state = 8
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      13 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 8
            tag_action = 1
          }
          65..=90 => {
            state = 8
            tag_action = 1
          }
          95 => {
            state = 8
            tag_action = 1
          }
          97..=110 => {
            state = 8
            tag_action = 1
          }
          111 => {
            state = 15
            tag_action = 2
          }
          112..=122 => {
            state = 8
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      14 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 8
            tag_action = 1
          }
          65..=90 => {
            state = 8
            tag_action = 1
          }
          95 => {
            state = 8
            tag_action = 1
          }
          97..=115 => {
            state = 8
            tag_action = 1
          }
          116 => {
            state = 16
            tag_action = 2
          }
          117..=122 => {
            state = 8
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      15 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 8
            tag_action = 1
          }
          65..=90 => {
            state = 8
            tag_action = 1
          }
          95 => {
            state = 8
            tag_action = 1
          }
          97..=114 => {
            state = 8
            tag_action = 1
          }
          115 => {
            state = 17
            tag_action = 3
          }
          116..=122 => {
            state = 8
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      16 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 8
            tag_action = 1
          }
          65..=90 => {
            state = 8
            tag_action = 1
          }
          95 => {
            state = 8
            tag_action = 1
          }
          97..=111 => {
            state = 8
            tag_action = 1
          }
          112 => {
            state = 18
            tag_action = 2
          }
          113..=122 => {
            state = 8
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      17 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          40 => {
            state = 19
            tag_action = 4
          }
          48..=57 => {
            state = 8
            tag_action = 1
          }
          65..=90 => {
            state = 8
            tag_action = 1
          }
          95 => {
            state = 8
            tag_action = 1
          }
          97..=122 => {
            state = 8
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      18 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 8
            tag_action = 1
          }
          65..=90 => {
            state = 8
            tag_action = 1
          }
          95 => {
            state = 8
            tag_action = 1
          }
          97..=110 => {
            state = 8
            tag_action = 1
          }
          111 => {
            state = 20
            tag_action = 2
          }
          112..=122 => {
            state = 8
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      19 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          9 => {
            state = 22
            tag_action = 4
          }
          32 => {
            state = 22
            tag_action = 4
          }
          65..=90 => {
            state = 21
            tag_action = 5
          }
          95 => {
            state = 21
            tag_action = 5
          }
          97..=122 => {
            state = 21
            tag_action = 5
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      20 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 8
            tag_action = 1
          }
          65..=90 => {
            state = 8
            tag_action = 1
          }
          95 => {
            state = 8
            tag_action = 1
          }
          97..=114 => {
            state = 8
            tag_action = 1
          }
          115 => {
            state = 23
            tag_action = 3
          }
          116..=122 => {
            state = 8
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      21 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          9 => {
            state = 25
            tag_action = 6
          }
          32 => {
            state = 25
            tag_action = 6
          }
          41 => {
            state = 26
            tag_action = 7
          }
          48..=57 => {
            state = 24
            tag_action = 5
          }
          65..=90 => {
            state = 24
            tag_action = 5
          }
          95 => {
            state = 24
            tag_action = 5
          }
          97..=122 => {
            state = 24
            tag_action = 5
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      22 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          9 => {
            state = 22
            tag_action = 4
          }
          32 => {
            state = 22
            tag_action = 4
          }
          65..=90 => {
            state = 21
            tag_action = 5
          }
          95 => {
            state = 21
            tag_action = 5
          }
          97..=122 => {
            state = 21
            tag_action = 5
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      23 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          40 => {
            state = 19
            tag_action = 4
          }
          48..=57 => {
            state = 8
            tag_action = 1
          }
          65..=90 => {
            state = 8
            tag_action = 1
          }
          95 => {
            state = 8
            tag_action = 1
          }
          97..=122 => {
            state = 8
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      24 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          9 => {
            state = 25
            tag_action = 6
          }
          32 => {
            state = 25
            tag_action = 6
          }
          41 => {
            state = 26
            tag_action = 7
          }
          48..=57 => {
            state = 24
            tag_action = 5
          }
          65..=90 => {
            state = 24
            tag_action = 5
          }
          95 => {
            state = 24
            tag_action = 5
          }
          97..=122 => {
            state = 24
            tag_action = 5
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      25 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          9 => {
            state = 25
            tag_action = 6
          }
          32 => {
            state = 25
            tag_action = 6
          }
          41 => {
            state = 26
            tag_action = 7
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      26 => {
        if matched is Some((prev_pattern_id, _, _)) && 2 <= prev_pattern_id || matched is None {
          matched = Some((2, lexbuf.curr_pos(), [(_tag_0, _tag_1), (_tag_2, _tag_3), (_tag_4, _tag_5)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      _ => panic()
    }
    match tag_action {
      0 => {
        _tag_0 = lexbuf.curr_pos()
      }
      2 => {
        ()
      }
      3 => {
        _tag_1 = lexbuf.curr_pos()
      }
      4 => {
        _tag_2 = lexbuf.curr_pos()
      }
      5 => {
        _tag_3 = lexbuf.curr_pos()
      }
      6 => {
        ()
      }
      7 => {
        _tag_5 = lexbuf.curr_pos()
      }
      _ => ()
    }
  }

  guard matched is Some((pattern_id, marked_pos, _captures)) else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(marked_pos)
  match pattern_id {
    0 => {

      scan_codeblock_rbrace(subst, lexbuf)
      scan_codeblock_rbrace(subst, lexbuf)
    
    }
    1 => {
 () 
    }
    2 => {
      let (_start_pos_of_t1, _end_pos_of_t1) = _captures[0]
      let t1 = lexbuf.sub_lexeme(_start_pos_of_t1, _end_pos_of_t1)
      let (_start_pos_of_t2, _end_pos_of_t2) = _captures[1]
      let t2 = lexbuf.sub_lexeme(_start_pos_of_t2, _end_pos_of_t2)
      let (_start_pos_of_t, _end_pos_of_t) = _captures[2]
      let t = lexbuf.sub_lexeme(_start_pos_of_t, _end_pos_of_t)
      let _ = t

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
    3 => {

      scan_codeblock_rbrace(subst, lexbuf)
    
    }
    4 => {
 scan_codeblock_rbrace(subst, lexbuf) 
    }
    5 => {
 () 
    }
    _ => panic()
  }
}




pub fn parse_codeblock(str : String) -> Array[SubstItem] {
  let lexbuf = @lexbuf.from_string(str)
  let subst = []
  scan_codeblock_rbrace(subst, lexbuf)
  subst
}
