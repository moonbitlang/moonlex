

fn token[T](lexbuf : @lexbuf.T[T, Char, String, Int]) -> Token  {
  let mut matched = None
  let mut state = 0
  let mut _tag_0 = -1
  let mut _tag_1 = -1
  let mut _tag_1_1 = -1
  let mut _tag_2 = -1
  let mut _tag_3 = -1
  let mut _tag_3_1 = -1
  let mut _tag_4 = -1
  let mut _tag_5 = -1
  let mut _tag_6 = -1
  let mut _tag_7 = -1
  let mut _tag_8 = -1
  let mut _tag_9 = -1
  let mut _tag_10 = -1
  let mut _tag_11 = -1
  let mut _tag_12 = -1
  let mut _tag_13 = -1
  _tag_12 = lexbuf.curr_pos()
  while state != -1 {
    let mut tag_action = -1
    match state {
      0 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          -1 => {
            state = 18
            tag_action = 0
          }
          9..=10 => {
            state = 5
            tag_action = 0
          }
          13 => {
            state = 5
            tag_action = 0
          }
          32 => {
            state = 5
            tag_action = 0
          }
          34 => {
            state = 21
            tag_action = 0
          }
          39 => {
            state = 20
            tag_action = 2
          }
          40 => {
            state = 11
            tag_action = 0
          }
          41 => {
            state = 4
            tag_action = 0
          }
          42 => {
            state = 23
            tag_action = 0
          }
          43 => {
            state = 17
            tag_action = 0
          }
          45 => {
            state = 19
            tag_action = 0
          }
          47 => {
            state = 22
            tag_action = 0
          }
          59 => {
            state = 3
            tag_action = 0
          }
          61 => {
            state = 7
            tag_action = 0
          }
          63 => {
            state = 1
            tag_action = 0
          }
          91 => {
            state = 8
            tag_action = 0
          }
          93 => {
            state = 9
            tag_action = 0
          }
          94 => {
            state = 12
            tag_action = 0
          }
          95 => {
            state = 13
            tag_action = 1
          }
          97..=111 => {
            state = 16
            tag_action = 1
          }
          112 => {
            state = 14
            tag_action = 1
          }
          113 => {
            state = 16
            tag_action = 1
          }
          114 => {
            state = 15
            tag_action = 1
          }
          115..=122 => {
            state = 16
            tag_action = 1
          }
          123 => {
            state = 6
            tag_action = 0
          }
          124 => {
            state = 10
            tag_action = 0
          }
          125 => {
            state = 2
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      1 => {
        if matched is Some((prev_pattern_id, _, _)) && 18 <= prev_pattern_id || matched is None {
          matched = Some((18, lexbuf.curr_pos(), []))
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
      2 => {
        if matched is Some((prev_pattern_id, _, _)) && 8 <= prev_pattern_id || matched is None {
          matched = Some((8, lexbuf.curr_pos(), []))
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
        if matched is Some((prev_pattern_id, _, _)) && 14 <= prev_pattern_id || matched is None {
          matched = Some((14, lexbuf.curr_pos(), []))
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
        if matched is Some((prev_pattern_id, _, _)) && 10 <= prev_pattern_id || matched is None {
          matched = Some((10, lexbuf.curr_pos(), []))
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
        if matched is Some((prev_pattern_id, _, _)) && 0 <= prev_pattern_id || matched is None {
          matched = Some((0, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          9..=10 => {
            state = 5
            tag_action = 0
          }
          13 => {
            state = 5
            tag_action = 0
          }
          32 => {
            state = 5
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      6 => {
        if matched is Some((prev_pattern_id, _, _)) && 7 <= prev_pattern_id || matched is None {
          matched = Some((7, lexbuf.curr_pos(), []))
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
      7 => {
        if matched is Some((prev_pattern_id, _, _)) && 13 <= prev_pattern_id || matched is None {
          matched = Some((13, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          62 => {
            state = 24
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      8 => {
        if matched is Some((prev_pattern_id, _, _)) && 11 <= prev_pattern_id || matched is None {
          matched = Some((11, lexbuf.curr_pos(), []))
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
      9 => {
        if matched is Some((prev_pattern_id, _, _)) && 12 <= prev_pattern_id || matched is None {
          matched = Some((12, lexbuf.curr_pos(), []))
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
      10 => {
        if matched is Some((prev_pattern_id, _, _)) && 15 <= prev_pattern_id || matched is None {
          matched = Some((15, lexbuf.curr_pos(), []))
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
      11 => {
        if matched is Some((prev_pattern_id, _, _)) && 9 <= prev_pattern_id || matched is None {
          matched = Some((9, lexbuf.curr_pos(), []))
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
      12 => {
        if matched is Some((prev_pattern_id, _, _)) && 20 <= prev_pattern_id || matched is None {
          matched = Some((20, lexbuf.curr_pos(), []))
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
      13 => {
        if matched is Some((prev_pattern_id, _, _)) && 6 <= prev_pattern_id || matched is None {
          matched = Some((6, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 25
            tag_action = 1
          }
          65..=90 => {
            state = 25
            tag_action = 1
          }
          95 => {
            state = 25
            tag_action = 1
          }
          97..=122 => {
            state = 25
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      14 => {
        if matched is Some((prev_pattern_id, _, _)) && 33 <= prev_pattern_id || matched is None {
          matched = Some((33, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 25
            tag_action = 1
          }
          65..=90 => {
            state = 25
            tag_action = 1
          }
          95 => {
            state = 25
            tag_action = 1
          }
          97 => {
            state = 26
            tag_action = 1
          }
          98..=122 => {
            state = 25
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      15 => {
        if matched is Some((prev_pattern_id, _, _)) && 33 <= prev_pattern_id || matched is None {
          matched = Some((33, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 25
            tag_action = 1
          }
          65..=90 => {
            state = 25
            tag_action = 1
          }
          95 => {
            state = 25
            tag_action = 1
          }
          97..=116 => {
            state = 25
            tag_action = 1
          }
          117 => {
            state = 27
            tag_action = 1
          }
          118..=122 => {
            state = 25
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      16 => {
        if matched is Some((prev_pattern_id, _, _)) && 33 <= prev_pattern_id || matched is None {
          matched = Some((33, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 25
            tag_action = 1
          }
          65..=90 => {
            state = 25
            tag_action = 1
          }
          95 => {
            state = 25
            tag_action = 1
          }
          97..=122 => {
            state = 25
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      17 => {
        if matched is Some((prev_pattern_id, _, _)) && 17 <= prev_pattern_id || matched is None {
          matched = Some((17, lexbuf.curr_pos(), []))
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
      18 => {
        if matched is Some((prev_pattern_id, _, _)) && 2 <= prev_pattern_id || matched is None {
          matched = Some((2, lexbuf.curr_pos(), []))
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
      19 => {
        if matched is Some((prev_pattern_id, _, _)) && 19 <= prev_pattern_id || matched is None {
          matched = Some((19, lexbuf.curr_pos(), []))
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
      20 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=38 => {
            state = 28
            tag_action = 3
          }
          40..=91 => {
            state = 28
            tag_action = 3
          }
          92 => {
            state = 29
            tag_action = 0
          }
          93..=1114111 => {
            state = 28
            tag_action = 3
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      21 => {
        if matched is Some((prev_pattern_id, _, _)) && 32 <= prev_pattern_id || matched is None {
          matched = Some((32, lexbuf.curr_pos(), []))
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
      22 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          47 => {
            state = 30
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      23 => {
        if matched is Some((prev_pattern_id, _, _)) && 16 <= prev_pattern_id || matched is None {
          matched = Some((16, lexbuf.curr_pos(), []))
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
      24 => {
        if matched is Some((prev_pattern_id, _, _)) && 5 <= prev_pattern_id || matched is None {
          matched = Some((5, lexbuf.curr_pos(), []))
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
      25 => {
        if matched is Some((prev_pattern_id, _, _)) && 33 <= prev_pattern_id || matched is None {
          matched = Some((33, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 25
            tag_action = 1
          }
          65..=90 => {
            state = 25
            tag_action = 1
          }
          95 => {
            state = 25
            tag_action = 1
          }
          97..=122 => {
            state = 25
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      26 => {
        if matched is Some((prev_pattern_id, _, _)) && 33 <= prev_pattern_id || matched is None {
          matched = Some((33, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 25
            tag_action = 1
          }
          65..=90 => {
            state = 25
            tag_action = 1
          }
          95 => {
            state = 25
            tag_action = 1
          }
          97..=113 => {
            state = 25
            tag_action = 1
          }
          114 => {
            state = 31
            tag_action = 1
          }
          115..=122 => {
            state = 25
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      27 => {
        if matched is Some((prev_pattern_id, _, _)) && 33 <= prev_pattern_id || matched is None {
          matched = Some((33, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 25
            tag_action = 1
          }
          65..=90 => {
            state = 25
            tag_action = 1
          }
          95 => {
            state = 25
            tag_action = 1
          }
          97..=107 => {
            state = 25
            tag_action = 1
          }
          108 => {
            state = 32
            tag_action = 1
          }
          109..=122 => {
            state = 25
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      28 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          39 => {
            state = 33
            tag_action = 4
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      29 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          39 => {
            state = 39
            tag_action = 0
          }
          92 => {
            state = 37
            tag_action = 0
          }
          98 => {
            state = 36
            tag_action = 0
          }
          110 => {
            state = 40
            tag_action = 0
          }
          114 => {
            state = 38
            tag_action = 0
          }
          116 => {
            state = 41
            tag_action = 0
          }
          117 => {
            state = 42
            tag_action = 6
          }
          118 => {
            state = 34
            tag_action = 0
          }
          120 => {
            state = 35
            tag_action = 5
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      30 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=9 => {
            state = 44
            tag_action = 0
          }
          10 => {
            state = 43
            tag_action = 0
          }
          11..=1114111 => {
            state = 44
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      31 => {
        if matched is Some((prev_pattern_id, _, _)) && 33 <= prev_pattern_id || matched is None {
          matched = Some((33, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 25
            tag_action = 1
          }
          65..=90 => {
            state = 25
            tag_action = 1
          }
          95 => {
            state = 25
            tag_action = 1
          }
          97..=114 => {
            state = 25
            tag_action = 1
          }
          115 => {
            state = 45
            tag_action = 1
          }
          116..=122 => {
            state = 25
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      32 => {
        if matched is Some((prev_pattern_id, _, _)) && 33 <= prev_pattern_id || matched is None {
          matched = Some((33, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 25
            tag_action = 1
          }
          65..=90 => {
            state = 25
            tag_action = 1
          }
          95 => {
            state = 25
            tag_action = 1
          }
          97..=100 => {
            state = 25
            tag_action = 1
          }
          101 => {
            state = 46
            tag_action = 1
          }
          102..=122 => {
            state = 25
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      33 => {
        if matched is Some((prev_pattern_id, _, _)) && 21 <= prev_pattern_id || matched is None {
          matched = Some((21, lexbuf.curr_pos(), [(_tag_4, _tag_5)]))
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
      34 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          39 => {
            state = 47
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      35 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 48
            tag_action = 7
          }
          65..=70 => {
            state = 48
            tag_action = 7
          }
          97..=102 => {
            state = 48
            tag_action = 7
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      36 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          39 => {
            state = 49
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      37 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          39 => {
            state = 50
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      38 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          39 => {
            state = 51
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      39 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          39 => {
            state = 52
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      40 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          39 => {
            state = 53
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      41 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          39 => {
            state = 54
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      42 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 56
            tag_action = 9
          }
          65..=70 => {
            state = 56
            tag_action = 9
          }
          97..=102 => {
            state = 56
            tag_action = 9
          }
          123 => {
            state = 55
            tag_action = 8
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      43 => {
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
      44 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), []))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=9 => {
            state = 44
            tag_action = 0
          }
          10 => {
            state = 43
            tag_action = 0
          }
          11..=1114111 => {
            state = 44
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      45 => {
        if matched is Some((prev_pattern_id, _, _)) && 33 <= prev_pattern_id || matched is None {
          matched = Some((33, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 25
            tag_action = 1
          }
          65..=90 => {
            state = 25
            tag_action = 1
          }
          95 => {
            state = 25
            tag_action = 1
          }
          97..=100 => {
            state = 25
            tag_action = 1
          }
          101 => {
            state = 57
            tag_action = 1
          }
          102..=122 => {
            state = 25
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      46 => {
        if matched is Some((prev_pattern_id, _, _)) && 33 <= prev_pattern_id || matched is None {
          matched = Some((33, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          9..=10 => {
            state = 58
            tag_action = 10
          }
          13 => {
            state = 58
            tag_action = 10
          }
          32 => {
            state = 58
            tag_action = 10
          }
          48..=57 => {
            state = 25
            tag_action = 1
          }
          65..=90 => {
            state = 25
            tag_action = 1
          }
          95 => {
            state = 25
            tag_action = 1
          }
          97..=122 => {
            state = 25
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      47 => {
        if matched is Some((prev_pattern_id, _, _)) && 24 <= prev_pattern_id || matched is None {
          matched = Some((24, lexbuf.curr_pos(), []))
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
      48 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 59
            tag_action = 11
          }
          65..=70 => {
            state = 59
            tag_action = 11
          }
          97..=102 => {
            state = 59
            tag_action = 11
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      49 => {
        if matched is Some((prev_pattern_id, _, _)) && 22 <= prev_pattern_id || matched is None {
          matched = Some((22, lexbuf.curr_pos(), []))
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
      50 => {
        if matched is Some((prev_pattern_id, _, _)) && 27 <= prev_pattern_id || matched is None {
          matched = Some((27, lexbuf.curr_pos(), []))
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
      51 => {
        if matched is Some((prev_pattern_id, _, _)) && 25 <= prev_pattern_id || matched is None {
          matched = Some((25, lexbuf.curr_pos(), []))
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
      52 => {
        if matched is Some((prev_pattern_id, _, _)) && 28 <= prev_pattern_id || matched is None {
          matched = Some((28, lexbuf.curr_pos(), []))
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
      53 => {
        if matched is Some((prev_pattern_id, _, _)) && 26 <= prev_pattern_id || matched is None {
          matched = Some((26, lexbuf.curr_pos(), []))
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
      54 => {
        if matched is Some((prev_pattern_id, _, _)) && 23 <= prev_pattern_id || matched is None {
          matched = Some((23, lexbuf.curr_pos(), []))
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
      55 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 60
            tag_action = 12
          }
          65..=70 => {
            state = 60
            tag_action = 12
          }
          97..=102 => {
            state = 60
            tag_action = 12
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      56 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 61
            tag_action = 9
          }
          65..=70 => {
            state = 61
            tag_action = 9
          }
          97..=102 => {
            state = 61
            tag_action = 9
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      57 => {
        if matched is Some((prev_pattern_id, _, _)) && 33 <= prev_pattern_id || matched is None {
          matched = Some((33, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          9..=10 => {
            state = 63
            tag_action = 0
          }
          13 => {
            state = 63
            tag_action = 0
          }
          32 => {
            state = 63
            tag_action = 0
          }
          48..=57 => {
            state = 25
            tag_action = 1
          }
          65..=90 => {
            state = 25
            tag_action = 1
          }
          95 => {
            state = 25
            tag_action = 1
          }
          97..=122 => {
            state = 25
            tag_action = 1
          }
          123 => {
            state = 62
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      58 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          9..=10 => {
            state = 58
            tag_action = 10
          }
          13 => {
            state = 58
            tag_action = 10
          }
          32 => {
            state = 58
            tag_action = 10
          }
          95 => {
            state = 64
            tag_action = 13
          }
          97..=122 => {
            state = 64
            tag_action = 13
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      59 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          39 => {
            state = 65
            tag_action = 14
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      60 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 60
            tag_action = 12
          }
          65..=70 => {
            state = 60
            tag_action = 12
          }
          97..=102 => {
            state = 60
            tag_action = 12
          }
          125 => {
            state = 66
            tag_action = 15
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      61 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 67
            tag_action = 9
          }
          65..=70 => {
            state = 67
            tag_action = 9
          }
          97..=102 => {
            state = 67
            tag_action = 9
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      62 => {
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
      63 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          9..=10 => {
            state = 63
            tag_action = 0
          }
          13 => {
            state = 63
            tag_action = 0
          }
          32 => {
            state = 63
            tag_action = 0
          }
          123 => {
            state = 62
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      64 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=47 => {
            state = 69
            tag_action = 17
          }
          48..=57 => {
            state = 68
            tag_action = 16
          }
          58..=64 => {
            state = 69
            tag_action = 17
          }
          65..=90 => {
            state = 68
            tag_action = 16
          }
          91..=94 => {
            state = 69
            tag_action = 17
          }
          95 => {
            state = 68
            tag_action = 16
          }
          96 => {
            state = 69
            tag_action = 17
          }
          97..=122 => {
            state = 68
            tag_action = 16
          }
          124..=1114111 => {
            state = 69
            tag_action = 17
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      65 => {
        if matched is Some((prev_pattern_id, _, _)) && 29 <= prev_pattern_id || matched is None {
          matched = Some((29, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
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
      66 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          39 => {
            state = 70
            tag_action = 15
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      67 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 71
            tag_action = 18
          }
          65..=70 => {
            state = 71
            tag_action = 18
          }
          97..=102 => {
            state = 71
            tag_action = 18
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      68 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=8 => {
            state = 69
            tag_action = 17
          }
          9..=10 => {
            state = 73
            tag_action = 20
          }
          11..=12 => {
            state = 69
            tag_action = 17
          }
          13 => {
            state = 73
            tag_action = 20
          }
          14..=31 => {
            state = 69
            tag_action = 17
          }
          32 => {
            state = 73
            tag_action = 20
          }
          33..=47 => {
            state = 69
            tag_action = 17
          }
          48..=57 => {
            state = 68
            tag_action = 16
          }
          58..=64 => {
            state = 69
            tag_action = 17
          }
          65..=90 => {
            state = 68
            tag_action = 16
          }
          91..=94 => {
            state = 69
            tag_action = 17
          }
          95 => {
            state = 68
            tag_action = 16
          }
          96 => {
            state = 69
            tag_action = 17
          }
          97..=122 => {
            state = 68
            tag_action = 16
          }
          123 => {
            state = 72
            tag_action = 19
          }
          124..=1114111 => {
            state = 69
            tag_action = 17
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      69 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=8 => {
            state = 69
            tag_action = 17
          }
          9..=10 => {
            state = 74
            tag_action = 22
          }
          11..=12 => {
            state = 69
            tag_action = 17
          }
          13 => {
            state = 74
            tag_action = 22
          }
          14..=31 => {
            state = 69
            tag_action = 17
          }
          32 => {
            state = 74
            tag_action = 22
          }
          33..=122 => {
            state = 69
            tag_action = 17
          }
          123 => {
            state = 72
            tag_action = 21
          }
          124..=1114111 => {
            state = 69
            tag_action = 17
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      70 => {
        if matched is Some((prev_pattern_id, _, _)) && 31 <= prev_pattern_id || matched is None {
          matched = Some((31, lexbuf.curr_pos(), [(_tag_10, _tag_11)]))
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
      71 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          39 => {
            state = 75
            tag_action = 23
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      72 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), [(_tag_0, _tag_1), (_tag_2, _tag_3)]))
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
      73 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=8 => {
            state = 69
            tag_action = 17
          }
          9..=10 => {
            state = 74
            tag_action = 22
          }
          11..=12 => {
            state = 69
            tag_action = 17
          }
          13 => {
            state = 74
            tag_action = 22
          }
          14..=31 => {
            state = 69
            tag_action = 17
          }
          32 => {
            state = 74
            tag_action = 22
          }
          33..=122 => {
            state = 69
            tag_action = 17
          }
          123 => {
            state = 72
            tag_action = 21
          }
          124..=1114111 => {
            state = 69
            tag_action = 17
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      74 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=8 => {
            state = 69
            tag_action = 17
          }
          9..=10 => {
            state = 74
            tag_action = 22
          }
          11..=12 => {
            state = 69
            tag_action = 17
          }
          13 => {
            state = 74
            tag_action = 22
          }
          14..=31 => {
            state = 69
            tag_action = 17
          }
          32 => {
            state = 74
            tag_action = 22
          }
          33..=122 => {
            state = 69
            tag_action = 17
          }
          123 => {
            state = 72
            tag_action = 21
          }
          124..=1114111 => {
            state = 69
            tag_action = 17
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      75 => {
        if matched is Some((prev_pattern_id, _, _)) && 30 <= prev_pattern_id || matched is None {
          matched = Some((30, lexbuf.curr_pos(), [(_tag_8, _tag_9)]))
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
      1 => {
        _tag_13 = lexbuf.curr_pos()
      }
      2 => {
        _tag_4 = lexbuf.curr_pos()
      }
      3 => {
        _tag_5 = lexbuf.curr_pos()
      }
      4 => {
        ()
      }
      5 => {
        _tag_6 = lexbuf.curr_pos()
      }
      6 => {
        _tag_8 = lexbuf.curr_pos()
      }
      7 => {
        ()
      }
      8 => {
        _tag_10 = lexbuf.curr_pos()
      }
      9 => {
        ()
      }
      10 => {
        _tag_0 = lexbuf.curr_pos()
        _tag_2 = lexbuf.curr_pos()
      }
      11 => {
        _tag_7 = lexbuf.curr_pos()
      }
      12 => {
        _tag_11 = lexbuf.curr_pos()
      }
      13 => {
        _tag_1 = lexbuf.curr_pos()
      }
      14 => {
        ()
      }
      15 => {
        ()
      }
      16 => {
        _tag_1 = lexbuf.curr_pos()
        _tag_1_1 = _tag_1
        _tag_3 = lexbuf.curr_pos()
      }
      17 => {
        _tag_3 = lexbuf.curr_pos()
      }
      18 => {
        _tag_9 = lexbuf.curr_pos()
      }
      19 => {
        _tag_1 = _tag_1_1
      }
      20 => {
        _tag_3 = lexbuf.curr_pos()
        _tag_3_1 = _tag_3
      }
      21 => {
        ()
      }
      22 => {
        _tag_3 = lexbuf.curr_pos()
        _tag_3_1 = _tag_3
      }
      23 => {
        ()
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
 token(lexbuf) 
    }
    1 => {
 token(lexbuf) 
    }
    2 => {
 EOI 
    }
    3 => {
      let (_start_pos_of_t1, _end_pos_of_t1) = _captures[0]
      let t1 = lexbuf.sub_lexeme(_start_pos_of_t1, _end_pos_of_t1)
      let (_start_pos_of_t2, _end_pos_of_t2) = _captures[1]
      let t2 = lexbuf.sub_lexeme(_start_pos_of_t2, _end_pos_of_t2)

      RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE((t1, t2))
    
    }
    4 => {
 PARSE_LBRACE 
    }
    5 => {
 FAT_ARROW 
    }
    6 => {
 UNDERSCORE 
    }
    7 => {
 
      let buffer = StringBuilder::new()
      code_rbrace(buffer, lexbuf)
      LBRACE_CODE_RBRACE(buffer.to_string())
    
    }
    8 => {
 RBRACE 
    }
    9 => {
 LPAREN 
    }
    10 => {
 RPAREN 
    }
    11 => {
 LBRACKET 
    }
    12 => {
 RBRACKET 
    }
    13 => {
 EQ 
    }
    14 => {
 SEMICOLON 
    }
    15 => {
 BAR 
    }
    16 => {
 STAR 
    }
    17 => {
 PLUS 
    }
    18 => {
 QUESTION 
    }
    19 => {
 MINUS 
    }
    20 => {
 CARET 
    }
    21 => {
      let _start_pos_of_t = _captures[0].0
      let t = lexbuf.unsafe_get(_start_pos_of_t)
 CHAR(t) 
    }
    22 => {
 CHAR('\u{08}') 
    }
    23 => {
 CHAR('\t') 
    }
    24 => {
 CHAR('\u{0b}') 
    }
    25 => {
 CHAR('\r') 
    }
    26 => {
 CHAR('\n') 
    }
    27 => {
 CHAR('\\') 
    }
    28 => {
 CHAR('\'') 
    }
    29 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.sub_lexeme(_start_pos_of_t, _end_pos_of_t)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      CHAR(Char::from_int(code))
    
    }
    30 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.sub_lexeme(_start_pos_of_t, _end_pos_of_t)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      CHAR(Char::from_int(code))
    
    }
    31 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.sub_lexeme(_start_pos_of_t, _end_pos_of_t)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      CHAR(Char::from_int(code))
    
    }
    32 => {

      let buffer = StringBuilder::new()
      string_inner_rquote(buffer, lexbuf)
      STRING(buffer.to_string())
    
    }
    33 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.sub_lexeme(_start_pos_of_t, _end_pos_of_t)

      match t {
        "eof" => EOF
        "let" => LET
        "as" => AS
        _ => LC_IDENT(t)
      }
    
    }
    _ => panic()
  }
}


fn string_inner_rquote[T](buffer : StringBuilder, lexbuf : @lexbuf.T[T, Char, String, Int]) -> Unit  {
  let mut matched = None
  let mut state = 0
  let mut _tag_0 = -1
  let mut _tag_1 = -1
  let mut _tag_2 = -1
  let mut _tag_3 = -1
  let mut _tag_4 = -1
  let mut _tag_5 = -1
  let mut _tag_6 = -1
  let mut _tag_7 = -1
  _tag_6 = lexbuf.curr_pos()
  while state != -1 {
    let mut tag_action = -1
    match state {
      0 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          -1 => {
            state = 2
            tag_action = 1
          }
          0..=33 => {
            state = 1
            tag_action = 0
          }
          34 => {
            state = 3
            tag_action = 0
          }
          35..=91 => {
            state = 1
            tag_action = 0
          }
          92 => {
            state = 4
            tag_action = 0
          }
          93..=1114111 => {
            state = 1
            tag_action = 0
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      1 => {
        if matched is Some((prev_pattern_id, _, _)) && 11 <= prev_pattern_id || matched is None {
          matched = Some((11, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
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
      2 => {
        if matched is Some((prev_pattern_id, _, _)) && 12 <= prev_pattern_id || matched is None {
          matched = Some((12, lexbuf.curr_pos(), []))
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
      4 => {
        if matched is Some((prev_pattern_id, _, _)) && 11 <= prev_pattern_id || matched is None {
          matched = Some((11, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          34 => {
            state = 7
            tag_action = 1
          }
          92 => {
            state = 5
            tag_action = 1
          }
          98 => {
            state = 13
            tag_action = 1
          }
          110 => {
            state = 9
            tag_action = 1
          }
          114 => {
            state = 11
            tag_action = 1
          }
          116 => {
            state = 12
            tag_action = 1
          }
          117 => {
            state = 8
            tag_action = 3
          }
          118 => {
            state = 10
            tag_action = 1
          }
          120 => {
            state = 6
            tag_action = 2
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      5 => {
        if matched is Some((prev_pattern_id, _, _)) && 6 <= prev_pattern_id || matched is None {
          matched = Some((6, lexbuf.curr_pos(), []))
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
      6 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 14
            tag_action = 4
          }
          65..=70 => {
            state = 14
            tag_action = 4
          }
          97..=102 => {
            state = 14
            tag_action = 4
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      7 => {
        if matched is Some((prev_pattern_id, _, _)) && 7 <= prev_pattern_id || matched is None {
          matched = Some((7, lexbuf.curr_pos(), []))
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
      8 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 16
            tag_action = 6
          }
          65..=70 => {
            state = 16
            tag_action = 6
          }
          97..=102 => {
            state = 16
            tag_action = 6
          }
          123 => {
            state = 15
            tag_action = 5
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      9 => {
        if matched is Some((prev_pattern_id, _, _)) && 5 <= prev_pattern_id || matched is None {
          matched = Some((5, lexbuf.curr_pos(), []))
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
      10 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
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
      11 => {
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
      12 => {
        if matched is Some((prev_pattern_id, _, _)) && 2 <= prev_pattern_id || matched is None {
          matched = Some((2, lexbuf.curr_pos(), []))
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
      13 => {
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
      14 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 17
            tag_action = 7
          }
          65..=70 => {
            state = 17
            tag_action = 7
          }
          97..=102 => {
            state = 17
            tag_action = 7
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      15 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 18
            tag_action = 8
          }
          65..=70 => {
            state = 18
            tag_action = 8
          }
          97..=102 => {
            state = 18
            tag_action = 8
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      16 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 19
            tag_action = 6
          }
          65..=70 => {
            state = 19
            tag_action = 6
          }
          97..=102 => {
            state = 19
            tag_action = 6
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      17 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          39 => {
            state = 20
            tag_action = 9
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      18 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          48..=57 => {
            state = 18
            tag_action = 8
          }
          65..=70 => {
            state = 18
            tag_action = 8
          }
          97..=102 => {
            state = 18
            tag_action = 8
          }
          125 => {
            state = 21
            tag_action = 10
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
          48..=57 => {
            state = 22
            tag_action = 6
          }
          65..=70 => {
            state = 22
            tag_action = 6
          }
          97..=102 => {
            state = 22
            tag_action = 6
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      20 => {
        if matched is Some((prev_pattern_id, _, _)) && 8 <= prev_pattern_id || matched is None {
          matched = Some((8, lexbuf.curr_pos(), [(_tag_0, _tag_1)]))
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
      21 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          39 => {
            state = 23
            tag_action = 10
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
          48..=57 => {
            state = 24
            tag_action = 11
          }
          65..=70 => {
            state = 24
            tag_action = 11
          }
          97..=102 => {
            state = 24
            tag_action = 11
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      23 => {
        if matched is Some((prev_pattern_id, _, _)) && 10 <= prev_pattern_id || matched is None {
          matched = Some((10, lexbuf.curr_pos(), [(_tag_4, _tag_5)]))
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
      24 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          39 => {
            state = 25
            tag_action = 12
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      25 => {
        if matched is Some((prev_pattern_id, _, _)) && 9 <= prev_pattern_id || matched is None {
          matched = Some((9, lexbuf.curr_pos(), [(_tag_2, _tag_3)]))
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
        _tag_7 = lexbuf.curr_pos()
      }
      2 => {
        _tag_0 = lexbuf.curr_pos()
      }
      3 => {
        _tag_2 = lexbuf.curr_pos()
      }
      4 => {
        ()
      }
      5 => {
        _tag_4 = lexbuf.curr_pos()
      }
      6 => {
        ()
      }
      7 => {
        _tag_1 = lexbuf.curr_pos()
      }
      8 => {
        _tag_5 = lexbuf.curr_pos()
      }
      9 => {
        ()
      }
      10 => {
        ()
      }
      11 => {
        _tag_3 = lexbuf.curr_pos()
      }
      12 => {
        ()
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
 () 
    }
    1 => {

      buffer.write_char('\u{08}')
      string_inner_rquote(buffer, lexbuf)
    
    }
    2 => {

      buffer.write_char('\t')
      string_inner_rquote(buffer, lexbuf)
    
    }
    3 => {

      buffer.write_char('\u{0b}')
      string_inner_rquote(buffer, lexbuf)
    
    }
    4 => {

      buffer.write_char('\r')
      string_inner_rquote(buffer, lexbuf)
    
    }
    5 => {

      buffer.write_char('\n')
      string_inner_rquote(buffer, lexbuf)
    
    }
    6 => {

      buffer.write_char('\\')
      string_inner_rquote(buffer, lexbuf)
    
    }
    7 => {

      buffer.write_char('"')
      string_inner_rquote(buffer, lexbuf)
    
    }
    8 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.sub_lexeme(_start_pos_of_t, _end_pos_of_t)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      buffer.write_char(Char::from_int(code))
    
    }
    9 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.sub_lexeme(_start_pos_of_t, _end_pos_of_t)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      buffer.write_char(Char::from_int(code))
    
    }
    10 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.sub_lexeme(_start_pos_of_t, _end_pos_of_t)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      buffer.write_char(Char::from_int(code))
    
    }
    11 => {
      let _start_pos_of_t = _captures[0].0
      let t = lexbuf.unsafe_get(_start_pos_of_t)

      buffer.write_char(t)
      string_inner_rquote(buffer, lexbuf)
    
    }
    12 => {
 abort("Unexpected end of input") 
    }
    _ => panic()
  }
}


fn code_rbrace[T](buffer : StringBuilder, lexbuf : @lexbuf.T[T, Char, String, Int]) -> Unit  {
  let mut matched = None
  let mut state = 0
  let mut _tag_0 = -1
  let mut _tag_1 = -1
  let mut _tag_2 = -1
  let mut _tag_3 = -1
  let mut _tag_4 = -1
  let mut _tag_5 = -1
  let mut _tag_6 = -1
  let mut _tag_7 = -1
  _tag_0 = lexbuf.curr_pos()
  _tag_2 = lexbuf.curr_pos()
  _tag_4 = lexbuf.curr_pos()
  _tag_6 = lexbuf.curr_pos()
  while state != -1 {
    let mut tag_action = -1
    match state {
      0 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          -1 => {
            state = 1
            tag_action = 0
          }
          0..=33 => {
            state = 6
            tag_action = 1
          }
          34 => {
            state = 7
            tag_action = 4
          }
          35..=38 => {
            state = 6
            tag_action = 1
          }
          39 => {
            state = 5
            tag_action = 3
          }
          40..=46 => {
            state = 6
            tag_action = 1
          }
          47 => {
            state = 4
            tag_action = 2
          }
          48..=122 => {
            state = 6
            tag_action = 1
          }
          123 => {
            state = 2
            tag_action = 1
          }
          124 => {
            state = 6
            tag_action = 1
          }
          125 => {
            state = 3
            tag_action = 1
          }
          126..=1114111 => {
            state = 6
            tag_action = 1
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      1 => {
        if matched is Some((prev_pattern_id, _, _)) && 6 <= prev_pattern_id || matched is None {
          matched = Some((6, lexbuf.curr_pos(), []))
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
      2 => {
        if matched is Some((prev_pattern_id, _, _)) && 3 <= prev_pattern_id || matched is None {
          matched = Some((3, lexbuf.curr_pos(), []))
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
        if matched is Some((prev_pattern_id, _, _)) && 5 <= prev_pattern_id || matched is None {
          matched = Some((5, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          47 => {
            state = 8
            tag_action = 5
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      5 => {
        if matched is Some((prev_pattern_id, _, _)) && 5 <= prev_pattern_id || matched is None {
          matched = Some((5, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=38 => {
            state = 9
            tag_action = 6
          }
          40..=91 => {
            state = 9
            tag_action = 6
          }
          93..=1114111 => {
            state = 9
            tag_action = 6
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      6 => {
        if matched is Some((prev_pattern_id, _, _)) && 5 <= prev_pattern_id || matched is None {
          matched = Some((5, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
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
      7 => {
        if matched is Some((prev_pattern_id, _, _)) && 5 <= prev_pattern_id || matched is None {
          matched = Some((5, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
        }
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=33 => {
            state = 11
            tag_action = 8
          }
          34 => {
            state = 10
            tag_action = 7
          }
          35..=91 => {
            state = 11
            tag_action = 8
          }
          92 => {
            state = 12
            tag_action = 8
          }
          93..=1114111 => {
            state = 11
            tag_action = 8
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      8 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=9 => {
            state = 13
            tag_action = 5
          }
          11..=1114111 => {
            state = 13
            tag_action = 5
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      9 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          39 => {
            state = 14
            tag_action = 9
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      10 => {
        if matched is Some((prev_pattern_id, _, _)) && 1 <= prev_pattern_id || matched is None {
          matched = Some((1, lexbuf.curr_pos(), [(_tag_2, _tag_3)]))
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
      11 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=33 => {
            state = 11
            tag_action = 8
          }
          34 => {
            state = 10
            tag_action = 7
          }
          35..=91 => {
            state = 11
            tag_action = 8
          }
          92 => {
            state = 12
            tag_action = 8
          }
          93..=1114111 => {
            state = 11
            tag_action = 8
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      12 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=1114111 => {
            state = 15
            tag_action = 8
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      13 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=9 => {
            state = 13
            tag_action = 5
          }
          10 => {
            state = 16
            tag_action = 10
          }
          11..=1114111 => {
            state = 13
            tag_action = 5
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      14 => {
        if matched is Some((prev_pattern_id, _, _)) && 2 <= prev_pattern_id || matched is None {
          matched = Some((2, lexbuf.curr_pos(), [(_tag_4, _tag_5)]))
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
      15 => {
        let c = match lexbuf.next() {
          Some(c) => c.to_int()
          None => -1
        }
        match c {
          0..=33 => {
            state = 11
            tag_action = 8
          }
          34 => {
            state = 10
            tag_action = 7
          }
          35..=91 => {
            state = 11
            tag_action = 8
          }
          92 => {
            state = 12
            tag_action = 8
          }
          93..=1114111 => {
            state = 11
            tag_action = 8
          }
          _ => {
            state = -1
            tag_action = -1
          }
        }
      }
      16 => {
        if matched is Some((prev_pattern_id, _, _)) && 0 <= prev_pattern_id || matched is None {
          matched = Some((0, lexbuf.curr_pos(), [(_tag_0, _tag_1)]))
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
      1 => {
        _tag_7 = lexbuf.curr_pos()
      }
      2 => {
        _tag_7 = lexbuf.curr_pos()
      }
      3 => {
        _tag_7 = lexbuf.curr_pos()
      }
      4 => {
        _tag_7 = lexbuf.curr_pos()
      }
      5 => {
        ()
      }
      6 => {
        ()
      }
      7 => {
        _tag_3 = lexbuf.curr_pos()
      }
      8 => {
        ()
      }
      9 => {
        _tag_5 = lexbuf.curr_pos()
      }
      10 => {
        _tag_1 = lexbuf.curr_pos()
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
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.sub_lexeme(_start_pos_of_t, _end_pos_of_t)

      buffer.write_string(t)
      code_rbrace(buffer, lexbuf)
    
    }
    1 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.sub_lexeme(_start_pos_of_t, _end_pos_of_t)

      buffer.write_string(t)
      code_rbrace(buffer, lexbuf)
    
    }
    2 => {
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.sub_lexeme(_start_pos_of_t, _end_pos_of_t)

      buffer.write_string(t)
      code_rbrace(buffer, lexbuf)
    
    }
    3 => {

      buffer.write_string("{")
      code_rbrace(buffer, lexbuf)
      buffer.write_string("}")
      code_rbrace(buffer, lexbuf)
    
    }
    4 => {
 () 
    }
    5 => {
      let _start_pos_of_t = _captures[0].0
      let t = lexbuf.unsafe_get(_start_pos_of_t)

      buffer.write_char(t)
      code_rbrace(buffer, lexbuf)
    
    }
    6 => {
 abort("Unexpected end of input") 
    }
    _ => panic()
  }
}



