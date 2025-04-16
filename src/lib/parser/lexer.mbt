

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
  while true {
    match state {
      0 => {
        state = match lexbuf.next_as_int() {
          -1 => 21
          9..=10 => 6
          13 => 6
          32 => 6
          34 => 8
          39 => {
            _tag_4 = lexbuf.curr_pos()
            19
          }
          40 => 17
          41 => 5
          42 => 20
          43 => 1
          45 => 18
          47 => 23
          58 => 4
          59 => 14
          61 => 10
          63 => 22
          91 => 11
          93 => 12
          94 => 15
          95 => {
            _tag_13 = lexbuf.curr_pos()
            16
          }
          97..=111 => {
            _tag_13 = lexbuf.curr_pos()
            2
          }
          112 => {
            _tag_13 = lexbuf.curr_pos()
            13
          }
          113 => {
            _tag_13 = lexbuf.curr_pos()
            2
          }
          114 => {
            _tag_13 = lexbuf.curr_pos()
            7
          }
          115..=122 => {
            _tag_13 = lexbuf.curr_pos()
            2
          }
          123 => 9
          124 => 24
          125 => 3
          _ => break
        }
      }
      1 => {
        if matched is (None | Some((18..<_, _, _))) {
          matched = Some((18, lexbuf.curr_pos(), []))
        }
        break
      }
      2 => {
        if matched is (None | Some((34..<_, _, _))) {
          matched = Some((34, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        state = match lexbuf.next_as_int() {
          48..=57 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          65..=90 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          95 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          97..=122 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          _ => break
        }
      }
      3 => {
        if matched is (None | Some((8..<_, _, _))) {
          matched = Some((8, lexbuf.curr_pos(), []))
        }
        break
      }
      4 => {
        if matched is (None | Some((14..<_, _, _))) {
          matched = Some((14, lexbuf.curr_pos(), []))
        }
        break
      }
      5 => {
        if matched is (None | Some((10..<_, _, _))) {
          matched = Some((10, lexbuf.curr_pos(), []))
        }
        break
      }
      6 => {
        if matched is (None | Some((0..<_, _, _))) {
          matched = Some((0, lexbuf.curr_pos(), []))
        }
        state = match lexbuf.next_as_int() {
          9..=10 => 6
          13 => 6
          32 => 6
          _ => break
        }
      }
      7 => {
        if matched is (None | Some((34..<_, _, _))) {
          matched = Some((34, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        state = match lexbuf.next_as_int() {
          48..=57 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          65..=90 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          95 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          97..=116 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          117 => {
            _tag_13 = lexbuf.curr_pos()
            26
          }
          118..=122 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          _ => break
        }
      }
      8 => {
        if matched is (None | Some((33..<_, _, _))) {
          matched = Some((33, lexbuf.curr_pos(), []))
        }
        break
      }
      9 => {
        if matched is (None | Some((7..<_, _, _))) {
          matched = Some((7, lexbuf.curr_pos(), []))
        }
        break
      }
      10 => {
        if matched is (None | Some((13..<_, _, _))) {
          matched = Some((13, lexbuf.curr_pos(), []))
        }
        state = match lexbuf.next_as_int() {
          62 => 27
          _ => break
        }
      }
      11 => {
        if matched is (None | Some((11..<_, _, _))) {
          matched = Some((11, lexbuf.curr_pos(), []))
        }
        break
      }
      12 => {
        if matched is (None | Some((12..<_, _, _))) {
          matched = Some((12, lexbuf.curr_pos(), []))
        }
        break
      }
      13 => {
        if matched is (None | Some((34..<_, _, _))) {
          matched = Some((34, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        state = match lexbuf.next_as_int() {
          48..=57 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          65..=90 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          95 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          97 => {
            _tag_13 = lexbuf.curr_pos()
            28
          }
          98..=122 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          _ => break
        }
      }
      14 => {
        if matched is (None | Some((15..<_, _, _))) {
          matched = Some((15, lexbuf.curr_pos(), []))
        }
        break
      }
      15 => {
        if matched is (None | Some((21..<_, _, _))) {
          matched = Some((21, lexbuf.curr_pos(), []))
        }
        break
      }
      16 => {
        if matched is (None | Some((6..<_, _, _))) {
          matched = Some((6, lexbuf.curr_pos(), []))
        }
        state = match lexbuf.next_as_int() {
          48..=57 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          65..=90 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          95 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          97..=122 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          _ => break
        }
      }
      17 => {
        if matched is (None | Some((9..<_, _, _))) {
          matched = Some((9, lexbuf.curr_pos(), []))
        }
        break
      }
      18 => {
        if matched is (None | Some((20..<_, _, _))) {
          matched = Some((20, lexbuf.curr_pos(), []))
        }
        break
      }
      19 => {
        state = match lexbuf.next_as_int() {
          0..=38 => {
            _tag_5 = lexbuf.curr_pos()
            29
          }
          40..=91 => {
            _tag_5 = lexbuf.curr_pos()
            29
          }
          92 => 30
          93..=1114111 => {
            _tag_5 = lexbuf.curr_pos()
            29
          }
          _ => break
        }
      }
      20 => {
        if matched is (None | Some((17..<_, _, _))) {
          matched = Some((17, lexbuf.curr_pos(), []))
        }
        break
      }
      21 => {
        if matched is (None | Some((2..<_, _, _))) {
          matched = Some((2, lexbuf.curr_pos(), []))
        }
        break
      }
      22 => {
        if matched is (None | Some((19..<_, _, _))) {
          matched = Some((19, lexbuf.curr_pos(), []))
        }
        break
      }
      23 => {
        state = match lexbuf.next_as_int() {
          47 => 31
          _ => break
        }
      }
      24 => {
        if matched is (None | Some((16..<_, _, _))) {
          matched = Some((16, lexbuf.curr_pos(), []))
        }
        break
      }
      25 => {
        if matched is (None | Some((34..<_, _, _))) {
          matched = Some((34, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        state = match lexbuf.next_as_int() {
          48..=57 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          65..=90 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          95 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          97..=122 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          _ => break
        }
      }
      26 => {
        if matched is (None | Some((34..<_, _, _))) {
          matched = Some((34, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        state = match lexbuf.next_as_int() {
          48..=57 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          65..=90 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          95 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          97..=107 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          108 => {
            _tag_13 = lexbuf.curr_pos()
            32
          }
          109..=122 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          _ => break
        }
      }
      27 => {
        if matched is (None | Some((5..<_, _, _))) {
          matched = Some((5, lexbuf.curr_pos(), []))
        }
        break
      }
      28 => {
        if matched is (None | Some((34..<_, _, _))) {
          matched = Some((34, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        state = match lexbuf.next_as_int() {
          48..=57 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          65..=90 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          95 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          97..=113 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          114 => {
            _tag_13 = lexbuf.curr_pos()
            33
          }
          115..=122 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          _ => break
        }
      }
      29 => {
        state = match lexbuf.next_as_int() {
          39 => 34
          _ => break
        }
      }
      30 => {
        state = match lexbuf.next_as_int() {
          39 => 40
          92 => 43
          98 => 37
          110 => 39
          114 => 42
          116 => 41
          117 => {
            _tag_8 = lexbuf.curr_pos()
            38
          }
          118 => 36
          120 => {
            _tag_6 = lexbuf.curr_pos()
            35
          }
          _ => break
        }
      }
      31 => {
        if matched is (None | Some((1..<_, _, _))) {
          matched = Some((1, lexbuf.curr_pos(), []))
        }
        state = match lexbuf.next_as_int() {
          0..=9 => 45
          10 => 44
          11..=1114111 => 45
          _ => break
        }
      }
      32 => {
        if matched is (None | Some((34..<_, _, _))) {
          matched = Some((34, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        state = match lexbuf.next_as_int() {
          48..=57 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          65..=90 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          95 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          97..=100 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          101 => {
            _tag_13 = lexbuf.curr_pos()
            46
          }
          102..=122 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          _ => break
        }
      }
      33 => {
        if matched is (None | Some((34..<_, _, _))) {
          matched = Some((34, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        state = match lexbuf.next_as_int() {
          48..=57 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          65..=90 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          95 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          97..=114 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          115 => {
            _tag_13 = lexbuf.curr_pos()
            47
          }
          116..=122 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          _ => break
        }
      }
      34 => {
        if matched is (None | Some((22..<_, _, _))) {
          matched = Some((22, lexbuf.curr_pos(), [(_tag_4, _tag_5)]))
        }
        break
      }
      35 => {
        state = match lexbuf.next_as_int() {
          48..=57 => 48
          65..=70 => 48
          97..=102 => 48
          _ => break
        }
      }
      36 => {
        state = match lexbuf.next_as_int() {
          39 => 49
          _ => break
        }
      }
      37 => {
        state = match lexbuf.next_as_int() {
          39 => 50
          _ => break
        }
      }
      38 => {
        state = match lexbuf.next_as_int() {
          48..=57 => 51
          65..=70 => 51
          97..=102 => 51
          123 => {
            _tag_10 = lexbuf.curr_pos()
            52
          }
          _ => break
        }
      }
      39 => {
        state = match lexbuf.next_as_int() {
          39 => 53
          _ => break
        }
      }
      40 => {
        state = match lexbuf.next_as_int() {
          39 => 54
          _ => break
        }
      }
      41 => {
        state = match lexbuf.next_as_int() {
          39 => 55
          _ => break
        }
      }
      42 => {
        state = match lexbuf.next_as_int() {
          39 => 56
          _ => break
        }
      }
      43 => {
        state = match lexbuf.next_as_int() {
          39 => 57
          _ => break
        }
      }
      44 => {
        if matched is (None | Some((1..<_, _, _))) {
          matched = Some((1, lexbuf.curr_pos(), []))
        }
        break
      }
      45 => {
        if matched is (None | Some((1..<_, _, _))) {
          matched = Some((1, lexbuf.curr_pos(), []))
        }
        state = match lexbuf.next_as_int() {
          0..=9 => 45
          10 => 44
          11..=1114111 => 45
          _ => break
        }
      }
      46 => {
        if matched is (None | Some((34..<_, _, _))) {
          matched = Some((34, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        state = match lexbuf.next_as_int() {
          9..=10 => {
            _tag_0 = lexbuf.curr_pos()
            _tag_2 = lexbuf.curr_pos()
            58
          }
          13 => {
            _tag_0 = lexbuf.curr_pos()
            _tag_2 = lexbuf.curr_pos()
            58
          }
          32 => {
            _tag_0 = lexbuf.curr_pos()
            _tag_2 = lexbuf.curr_pos()
            58
          }
          48..=57 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          65..=90 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          95 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          97..=122 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          _ => break
        }
      }
      47 => {
        if matched is (None | Some((34..<_, _, _))) {
          matched = Some((34, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        state = match lexbuf.next_as_int() {
          48..=57 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          65..=90 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          95 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          97..=100 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          101 => {
            _tag_13 = lexbuf.curr_pos()
            59
          }
          102..=122 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          _ => break
        }
      }
      48 => {
        state = match lexbuf.next_as_int() {
          48..=57 => {
            _tag_7 = lexbuf.curr_pos()
            60
          }
          65..=70 => {
            _tag_7 = lexbuf.curr_pos()
            60
          }
          97..=102 => {
            _tag_7 = lexbuf.curr_pos()
            60
          }
          _ => break
        }
      }
      49 => {
        if matched is (None | Some((25..<_, _, _))) {
          matched = Some((25, lexbuf.curr_pos(), []))
        }
        break
      }
      50 => {
        if matched is (None | Some((23..<_, _, _))) {
          matched = Some((23, lexbuf.curr_pos(), []))
        }
        break
      }
      51 => {
        state = match lexbuf.next_as_int() {
          48..=57 => 61
          65..=70 => 61
          97..=102 => 61
          _ => break
        }
      }
      52 => {
        state = match lexbuf.next_as_int() {
          48..=57 => {
            _tag_11 = lexbuf.curr_pos()
            62
          }
          65..=70 => {
            _tag_11 = lexbuf.curr_pos()
            62
          }
          97..=102 => {
            _tag_11 = lexbuf.curr_pos()
            62
          }
          _ => break
        }
      }
      53 => {
        if matched is (None | Some((27..<_, _, _))) {
          matched = Some((27, lexbuf.curr_pos(), []))
        }
        break
      }
      54 => {
        if matched is (None | Some((29..<_, _, _))) {
          matched = Some((29, lexbuf.curr_pos(), []))
        }
        break
      }
      55 => {
        if matched is (None | Some((24..<_, _, _))) {
          matched = Some((24, lexbuf.curr_pos(), []))
        }
        break
      }
      56 => {
        if matched is (None | Some((26..<_, _, _))) {
          matched = Some((26, lexbuf.curr_pos(), []))
        }
        break
      }
      57 => {
        if matched is (None | Some((28..<_, _, _))) {
          matched = Some((28, lexbuf.curr_pos(), []))
        }
        break
      }
      58 => {
        state = match lexbuf.next_as_int() {
          9..=10 => {
            _tag_0 = lexbuf.curr_pos()
            _tag_2 = lexbuf.curr_pos()
            58
          }
          13 => {
            _tag_0 = lexbuf.curr_pos()
            _tag_2 = lexbuf.curr_pos()
            58
          }
          32 => {
            _tag_0 = lexbuf.curr_pos()
            _tag_2 = lexbuf.curr_pos()
            58
          }
          95 => {
            _tag_1 = lexbuf.curr_pos()
            63
          }
          97..=122 => {
            _tag_1 = lexbuf.curr_pos()
            63
          }
          _ => break
        }
      }
      59 => {
        if matched is (None | Some((34..<_, _, _))) {
          matched = Some((34, lexbuf.curr_pos(), [(_tag_12, _tag_13)]))
        }
        state = match lexbuf.next_as_int() {
          9..=10 => 65
          13 => 65
          32 => 65
          48..=57 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          65..=90 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          95 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          97..=122 => {
            _tag_13 = lexbuf.curr_pos()
            25
          }
          123 => 64
          _ => break
        }
      }
      60 => {
        state = match lexbuf.next_as_int() {
          39 => 66
          _ => break
        }
      }
      61 => {
        state = match lexbuf.next_as_int() {
          48..=57 => 67
          65..=70 => 67
          97..=102 => 67
          _ => break
        }
      }
      62 => {
        state = match lexbuf.next_as_int() {
          48..=57 => {
            _tag_11 = lexbuf.curr_pos()
            62
          }
          65..=70 => {
            _tag_11 = lexbuf.curr_pos()
            62
          }
          97..=102 => {
            _tag_11 = lexbuf.curr_pos()
            62
          }
          125 => 68
          _ => break
        }
      }
      63 => {
        state = match lexbuf.next_as_int() {
          0..=47 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          48..=57 => {
            _tag_1 = lexbuf.curr_pos()
            _tag_3 = lexbuf.curr_pos()
            _tag_1_1 = _tag_1
            69
          }
          58..=64 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          65..=90 => {
            _tag_1 = lexbuf.curr_pos()
            _tag_3 = lexbuf.curr_pos()
            _tag_1_1 = _tag_1
            69
          }
          91..=94 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          95 => {
            _tag_1 = lexbuf.curr_pos()
            _tag_3 = lexbuf.curr_pos()
            _tag_1_1 = _tag_1
            69
          }
          96 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          97..=122 => {
            _tag_1 = lexbuf.curr_pos()
            _tag_3 = lexbuf.curr_pos()
            _tag_1_1 = _tag_1
            69
          }
          124..=1114111 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          _ => break
        }
      }
      64 => {
        if matched is (None | Some((4..<_, _, _))) {
          matched = Some((4, lexbuf.curr_pos(), []))
        }
        break
      }
      65 => {
        state = match lexbuf.next_as_int() {
          9..=10 => 65
          13 => 65
          32 => 65
          123 => 64
          _ => break
        }
      }
      66 => {
        if matched is (None | Some((30..<_, _, _))) {
          matched = Some((30, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
        }
        break
      }
      67 => {
        state = match lexbuf.next_as_int() {
          48..=57 => {
            _tag_9 = lexbuf.curr_pos()
            71
          }
          65..=70 => {
            _tag_9 = lexbuf.curr_pos()
            71
          }
          97..=102 => {
            _tag_9 = lexbuf.curr_pos()
            71
          }
          _ => break
        }
      }
      68 => {
        state = match lexbuf.next_as_int() {
          39 => 72
          _ => break
        }
      }
      69 => {
        state = match lexbuf.next_as_int() {
          0..=8 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          9..=10 => {
            _tag_3 = lexbuf.curr_pos()
            _tag_3_1 = _tag_3
            74
          }
          11..=12 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          13 => {
            _tag_3 = lexbuf.curr_pos()
            _tag_3_1 = _tag_3
            74
          }
          14..=31 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          32 => {
            _tag_3 = lexbuf.curr_pos()
            _tag_3_1 = _tag_3
            74
          }
          33..=47 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          48..=57 => {
            _tag_1 = lexbuf.curr_pos()
            _tag_3 = lexbuf.curr_pos()
            _tag_1_1 = _tag_1
            69
          }
          58..=64 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          65..=90 => {
            _tag_1 = lexbuf.curr_pos()
            _tag_3 = lexbuf.curr_pos()
            _tag_1_1 = _tag_1
            69
          }
          91..=94 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          95 => {
            _tag_1 = lexbuf.curr_pos()
            _tag_3 = lexbuf.curr_pos()
            _tag_1_1 = _tag_1
            69
          }
          96 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          97..=122 => {
            _tag_1 = lexbuf.curr_pos()
            _tag_3 = lexbuf.curr_pos()
            _tag_1_1 = _tag_1
            69
          }
          123 => {
            _tag_1 = _tag_1_1
            73
          }
          124..=1114111 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          _ => break
        }
      }
      70 => {
        state = match lexbuf.next_as_int() {
          0..=8 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          9..=10 => {
            _tag_3 = lexbuf.curr_pos()
            _tag_3_1 = _tag_3
            75
          }
          11..=12 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          13 => {
            _tag_3 = lexbuf.curr_pos()
            _tag_3_1 = _tag_3
            75
          }
          14..=31 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          32 => {
            _tag_3 = lexbuf.curr_pos()
            _tag_3_1 = _tag_3
            75
          }
          33..=122 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          123 => 73
          124..=1114111 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          _ => break
        }
      }
      71 => {
        state = match lexbuf.next_as_int() {
          39 => 76
          _ => break
        }
      }
      72 => {
        if matched is (None | Some((32..<_, _, _))) {
          matched = Some((32, lexbuf.curr_pos(), [(_tag_10, _tag_11)]))
        }
        break
      }
      73 => {
        if matched is (None | Some((3..<_, _, _))) {
          matched = Some((3, lexbuf.curr_pos(), [(_tag_0, _tag_1), (_tag_2, _tag_3)]))
        }
        break
      }
      74 => {
        state = match lexbuf.next_as_int() {
          0..=8 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          9..=10 => {
            _tag_3 = lexbuf.curr_pos()
            _tag_3_1 = _tag_3
            75
          }
          11..=12 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          13 => {
            _tag_3 = lexbuf.curr_pos()
            _tag_3_1 = _tag_3
            75
          }
          14..=31 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          32 => {
            _tag_3 = lexbuf.curr_pos()
            _tag_3_1 = _tag_3
            75
          }
          33..=122 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          123 => 73
          124..=1114111 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          _ => break
        }
      }
      75 => {
        state = match lexbuf.next_as_int() {
          0..=8 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          9..=10 => {
            _tag_3 = lexbuf.curr_pos()
            _tag_3_1 = _tag_3
            75
          }
          11..=12 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          13 => {
            _tag_3 = lexbuf.curr_pos()
            _tag_3_1 = _tag_3
            75
          }
          14..=31 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          32 => {
            _tag_3 = lexbuf.curr_pos()
            _tag_3_1 = _tag_3
            75
          }
          33..=122 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          123 => 73
          124..=1114111 => {
            _tag_3 = lexbuf.curr_pos()
            70
          }
          _ => break
        }
      }
      76 => {
        if matched is (None | Some((31..<_, _, _))) {
          matched = Some((31, lexbuf.curr_pos(), [(_tag_8, _tag_9)]))
        }
        break
      }
      _ => panic()
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
 COLON 
    }
    15 => {
 SEMICOLON 
    }
    16 => {
 BAR 
    }
    17 => {
 STAR 
    }
    18 => {
 PLUS 
    }
    19 => {
 QUESTION 
    }
    20 => {
 MINUS 
    }
    21 => {
 CARET 
    }
    22 => {
      let _start_pos_of_t = _captures[0].0
      let t = lexbuf.unsafe_get(_start_pos_of_t)
 CHAR(t) 
    }
    23 => {
 CHAR('\u{08}') 
    }
    24 => {
 CHAR('\t') 
    }
    25 => {
 CHAR('\u{0b}') 
    }
    26 => {
 CHAR('\r') 
    }
    27 => {
 CHAR('\n') 
    }
    28 => {
 CHAR('\\') 
    }
    29 => {
 CHAR('\'') 
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
      let (_start_pos_of_t, _end_pos_of_t) = _captures[0]
      let t = lexbuf.sub_lexeme(_start_pos_of_t, _end_pos_of_t)

      let code = @strconv.parse_int?(t, base=16).unwrap()
      CHAR(Char::from_int(code))
    
    }
    33 => {

      let buffer = StringBuilder::new()
      string_inner_rquote(buffer, lexbuf)
      STRING(buffer.to_string())
    
    }
    34 => {
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
  while true {
    match state {
      0 => {
        state = match lexbuf.next_as_int() {
          -1 => 2
          0..=33 => {
            _tag_7 = lexbuf.curr_pos()
            1
          }
          34 => {
            _tag_7 = lexbuf.curr_pos()
            3
          }
          35..=91 => {
            _tag_7 = lexbuf.curr_pos()
            1
          }
          92 => {
            _tag_7 = lexbuf.curr_pos()
            4
          }
          93..=1114111 => {
            _tag_7 = lexbuf.curr_pos()
            1
          }
          _ => break
        }
      }
      1 => {
        if matched is (None | Some((11..<_, _, _))) {
          matched = Some((11, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
        }
        break
      }
      2 => {
        if matched is (None | Some((12..<_, _, _))) {
          matched = Some((12, lexbuf.curr_pos(), []))
        }
        break
      }
      3 => {
        if matched is (None | Some((0..<_, _, _))) {
          matched = Some((0, lexbuf.curr_pos(), []))
        }
        break
      }
      4 => {
        if matched is (None | Some((11..<_, _, _))) {
          matched = Some((11, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
        }
        state = match lexbuf.next_as_int() {
          34 => 7
          92 => 5
          98 => 13
          110 => 9
          114 => 11
          116 => 12
          117 => {
            _tag_2 = lexbuf.curr_pos()
            8
          }
          118 => 10
          120 => {
            _tag_0 = lexbuf.curr_pos()
            6
          }
          _ => break
        }
      }
      5 => {
        if matched is (None | Some((6..<_, _, _))) {
          matched = Some((6, lexbuf.curr_pos(), []))
        }
        break
      }
      6 => {
        state = match lexbuf.next_as_int() {
          48..=57 => 14
          65..=70 => 14
          97..=102 => 14
          _ => break
        }
      }
      7 => {
        if matched is (None | Some((7..<_, _, _))) {
          matched = Some((7, lexbuf.curr_pos(), []))
        }
        break
      }
      8 => {
        state = match lexbuf.next_as_int() {
          48..=57 => 16
          65..=70 => 16
          97..=102 => 16
          123 => {
            _tag_4 = lexbuf.curr_pos()
            15
          }
          _ => break
        }
      }
      9 => {
        if matched is (None | Some((5..<_, _, _))) {
          matched = Some((5, lexbuf.curr_pos(), []))
        }
        break
      }
      10 => {
        if matched is (None | Some((3..<_, _, _))) {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        break
      }
      11 => {
        if matched is (None | Some((4..<_, _, _))) {
          matched = Some((4, lexbuf.curr_pos(), []))
        }
        break
      }
      12 => {
        if matched is (None | Some((2..<_, _, _))) {
          matched = Some((2, lexbuf.curr_pos(), []))
        }
        break
      }
      13 => {
        if matched is (None | Some((1..<_, _, _))) {
          matched = Some((1, lexbuf.curr_pos(), []))
        }
        break
      }
      14 => {
        state = match lexbuf.next_as_int() {
          48..=57 => {
            _tag_1 = lexbuf.curr_pos()
            17
          }
          65..=70 => {
            _tag_1 = lexbuf.curr_pos()
            17
          }
          97..=102 => {
            _tag_1 = lexbuf.curr_pos()
            17
          }
          _ => break
        }
      }
      15 => {
        state = match lexbuf.next_as_int() {
          48..=57 => {
            _tag_5 = lexbuf.curr_pos()
            18
          }
          65..=70 => {
            _tag_5 = lexbuf.curr_pos()
            18
          }
          97..=102 => {
            _tag_5 = lexbuf.curr_pos()
            18
          }
          _ => break
        }
      }
      16 => {
        state = match lexbuf.next_as_int() {
          48..=57 => 19
          65..=70 => 19
          97..=102 => 19
          _ => break
        }
      }
      17 => {
        state = match lexbuf.next_as_int() {
          39 => 20
          _ => break
        }
      }
      18 => {
        state = match lexbuf.next_as_int() {
          48..=57 => {
            _tag_5 = lexbuf.curr_pos()
            18
          }
          65..=70 => {
            _tag_5 = lexbuf.curr_pos()
            18
          }
          97..=102 => {
            _tag_5 = lexbuf.curr_pos()
            18
          }
          125 => 21
          _ => break
        }
      }
      19 => {
        state = match lexbuf.next_as_int() {
          48..=57 => 22
          65..=70 => 22
          97..=102 => 22
          _ => break
        }
      }
      20 => {
        if matched is (None | Some((8..<_, _, _))) {
          matched = Some((8, lexbuf.curr_pos(), [(_tag_0, _tag_1)]))
        }
        break
      }
      21 => {
        state = match lexbuf.next_as_int() {
          39 => 23
          _ => break
        }
      }
      22 => {
        state = match lexbuf.next_as_int() {
          48..=57 => {
            _tag_3 = lexbuf.curr_pos()
            24
          }
          65..=70 => {
            _tag_3 = lexbuf.curr_pos()
            24
          }
          97..=102 => {
            _tag_3 = lexbuf.curr_pos()
            24
          }
          _ => break
        }
      }
      23 => {
        if matched is (None | Some((10..<_, _, _))) {
          matched = Some((10, lexbuf.curr_pos(), [(_tag_4, _tag_5)]))
        }
        break
      }
      24 => {
        state = match lexbuf.next_as_int() {
          39 => 25
          _ => break
        }
      }
      25 => {
        if matched is (None | Some((9..<_, _, _))) {
          matched = Some((9, lexbuf.curr_pos(), [(_tag_2, _tag_3)]))
        }
        break
      }
      _ => panic()
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
  while true {
    match state {
      0 => {
        state = match lexbuf.next_as_int() {
          -1 => 1
          0..=33 => {
            _tag_7 = lexbuf.curr_pos()
            6
          }
          34 => {
            _tag_7 = lexbuf.curr_pos()
            7
          }
          35..=38 => {
            _tag_7 = lexbuf.curr_pos()
            6
          }
          39 => {
            _tag_7 = lexbuf.curr_pos()
            5
          }
          40..=46 => {
            _tag_7 = lexbuf.curr_pos()
            6
          }
          47 => {
            _tag_7 = lexbuf.curr_pos()
            4
          }
          48..=122 => {
            _tag_7 = lexbuf.curr_pos()
            6
          }
          123 => {
            _tag_7 = lexbuf.curr_pos()
            2
          }
          124 => {
            _tag_7 = lexbuf.curr_pos()
            6
          }
          125 => {
            _tag_7 = lexbuf.curr_pos()
            3
          }
          126..=1114111 => {
            _tag_7 = lexbuf.curr_pos()
            6
          }
          _ => break
        }
      }
      1 => {
        if matched is (None | Some((6..<_, _, _))) {
          matched = Some((6, lexbuf.curr_pos(), []))
        }
        break
      }
      2 => {
        if matched is (None | Some((3..<_, _, _))) {
          matched = Some((3, lexbuf.curr_pos(), []))
        }
        break
      }
      3 => {
        if matched is (None | Some((4..<_, _, _))) {
          matched = Some((4, lexbuf.curr_pos(), []))
        }
        break
      }
      4 => {
        if matched is (None | Some((5..<_, _, _))) {
          matched = Some((5, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
        }
        state = match lexbuf.next_as_int() {
          47 => 8
          _ => break
        }
      }
      5 => {
        if matched is (None | Some((5..<_, _, _))) {
          matched = Some((5, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
        }
        state = match lexbuf.next_as_int() {
          0..=38 => 9
          40..=91 => 9
          93..=1114111 => 9
          _ => break
        }
      }
      6 => {
        if matched is (None | Some((5..<_, _, _))) {
          matched = Some((5, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
        }
        break
      }
      7 => {
        if matched is (None | Some((5..<_, _, _))) {
          matched = Some((5, lexbuf.curr_pos(), [(_tag_6, _tag_7)]))
        }
        state = match lexbuf.next_as_int() {
          0..=33 => 11
          34 => {
            _tag_3 = lexbuf.curr_pos()
            10
          }
          35..=91 => 11
          92 => 12
          93..=1114111 => 11
          _ => break
        }
      }
      8 => {
        state = match lexbuf.next_as_int() {
          0..=9 => 13
          11..=1114111 => 13
          _ => break
        }
      }
      9 => {
        state = match lexbuf.next_as_int() {
          39 => {
            _tag_5 = lexbuf.curr_pos()
            14
          }
          _ => break
        }
      }
      10 => {
        if matched is (None | Some((1..<_, _, _))) {
          matched = Some((1, lexbuf.curr_pos(), [(_tag_2, _tag_3)]))
        }
        break
      }
      11 => {
        state = match lexbuf.next_as_int() {
          0..=33 => 11
          34 => {
            _tag_3 = lexbuf.curr_pos()
            10
          }
          35..=91 => 11
          92 => 12
          93..=1114111 => 11
          _ => break
        }
      }
      12 => {
        state = match lexbuf.next_as_int() {
          0..=1114111 => 15
          _ => break
        }
      }
      13 => {
        state = match lexbuf.next_as_int() {
          0..=9 => 13
          10 => {
            _tag_1 = lexbuf.curr_pos()
            16
          }
          11..=1114111 => 13
          _ => break
        }
      }
      14 => {
        if matched is (None | Some((2..<_, _, _))) {
          matched = Some((2, lexbuf.curr_pos(), [(_tag_4, _tag_5)]))
        }
        break
      }
      15 => {
        state = match lexbuf.next_as_int() {
          0..=33 => 11
          34 => {
            _tag_3 = lexbuf.curr_pos()
            10
          }
          35..=91 => 11
          92 => 12
          93..=1114111 => 11
          _ => break
        }
      }
      16 => {
        if matched is (None | Some((0..<_, _, _))) {
          matched = Some((0, lexbuf.curr_pos(), [(_tag_0, _tag_1)]))
        }
        break
      }
      _ => panic()
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



