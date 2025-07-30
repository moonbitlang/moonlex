
// for string
let string_repr_buf : StringBuilder = StringBuilder::new()
let string_interps : Ref[Array[InterpElem]] = @ref.new([])

fn string(lexbuf : Lexbuf, env~ : LexEnv, end_with_newline~ : Bool, allow_interp~ : Bool, startpos~ : Int) -> Array[InterpElem] {
  string_repr_buf.reset()
  normal(lexbuf, env~, end_with_newline~, allow_interp~, startpos~)
  if string_interps.val.length() == 0 {
    [
      InterpLit(
        repr = "",
        loc = Location::{ start : env.make_pos(startpos), end : env.make_pos(lexbuf.curr_pos()) }
      )
    ]
  } else {
    let interps = string_interps.val
    string_interps.val = []
    return interps
  }
}

// invalid byte

let invalid_byte_repr_buf : StringBuilder = StringBuilder::new()



fn interp_handle(lexbuf : Lexbuf, env~ : LexEnv) -> Int  {
  // The matched pattern id
  let mut _match_pattern = @int.max_value
  let mut _match_start = lexbuf.curr_pos()
  let mut _match_end = -1
  let mut _capture_0_start = -1
  let mut _capture_0_end = -1
  let mut _capture_1_start = -1
  let mut _capture_1_end = -1
  loop 0 {
    0 => {
      continue match lexbuf.next_as_int() {
        -1 => 1
        0..=8 => 2
        9 => 3
        10 => 4
        11..=12 => 3
        13 => 4
        14..=31 => 2
        32 => 3
        33 => 2
        34 => 5
        35..=122 => 2
        123 => 5
        124 => 2
        125 => 6
        126..=127 => 2
        194 => 7
        195..=223 => 8
        224 => 9
        225 => 10
        226 => 11
        227 => 12
        228..=236 => 13
        237 => 14
        238 => 15
        239 => 16
        240 => 17
        241..=243 => 18
        244 => 19
        _ => break
      }
    }
    1 => {
      _match_pattern = 1
      _match_end = lexbuf.curr_pos()
      break
    }
    2 => {
      _match_pattern = 4
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      break
    }
    3 => {
      _match_pattern = 4
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        9 => 29
        11..=12 => 29
        32 => 29
        125 => 6
        194 => 30
        225 => 31
        226 => 32
        227 => 33
        239 => 34
        _ => break
      }
    }
    4 => {
      _match_pattern = 2
      _match_end = lexbuf.curr_pos()
      break
    }
    5 => {
      _match_pattern = 5
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      break
    }
    6 => {
      _match_pattern = 0
      _match_end = lexbuf.curr_pos()
      break
    }
    7 => {
      continue match lexbuf.next_as_int() {
        128..=159 => 2
        160 => 3
        161..=191 => 2
        _ => break
      }
    }
    8 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 2
        _ => break
      }
    }
    9 => {
      continue match lexbuf.next_as_int() {
        160 => 8
        161..=191 => 24
        _ => break
      }
    }
    10 => {
      continue match lexbuf.next_as_int() {
        128..=153 => 8
        154 => 26
        155..=191 => 8
        _ => break
      }
    }
    11 => {
      continue match lexbuf.next_as_int() {
        128 => 27
        129 => 28
        130..=191 => 8
        _ => break
      }
    }
    12 => {
      continue match lexbuf.next_as_int() {
        128 => 26
        129..=191 => 8
        _ => break
      }
    }
    13 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 8
        _ => break
      }
    }
    14 => {
      continue match lexbuf.next_as_int() {
        128..=159 => 8
        160..=191 => 23
        _ => break
      }
    }
    15 => {
      continue match lexbuf.next_as_int() {
        128 => 8
        129..=191 => 22
        _ => break
      }
    }
    16 => {
      continue match lexbuf.next_as_int() {
        128..=186 => 8
        187 => 25
        188..=191 => 8
        _ => break
      }
    }
    17 => {
      continue match lexbuf.next_as_int() {
        144 => 20
        145..=191 => 21
        _ => break
      }
    }
    18 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 13
        _ => break
      }
    }
    19 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 13
        _ => break
      }
    }
    20 => {
      continue match lexbuf.next_as_int() {
        128 => 8
        129..=191 => 24
        _ => break
      }
    }
    21 => {
      continue match lexbuf.next_as_int() {
        128 => 24
        _ => break
      }
    }
    22 => {
      continue match lexbuf.next_as_int() {
        128 => 2
        129..=191 => 5
        _ => break
      }
    }
    23 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 5
        _ => break
      }
    }
    24 => {
      continue match lexbuf.next_as_int() {
        128 => 2
        _ => break
      }
    }
    25 => {
      continue match lexbuf.next_as_int() {
        128..=190 => 2
        191 => 3
        _ => break
      }
    }
    26 => {
      continue match lexbuf.next_as_int() {
        128 => 3
        129..=191 => 2
        _ => break
      }
    }
    27 => {
      continue match lexbuf.next_as_int() {
        128..=138 => 3
        139..=174 => 2
        175 => 3
        176..=191 => 2
        _ => break
      }
    }
    28 => {
      continue match lexbuf.next_as_int() {
        128..=158 => 2
        159 => 3
        160..=191 => 2
        _ => break
      }
    }
    29 => {
      continue match lexbuf.next_as_int() {
        9 => 29
        11..=12 => 29
        32 => 29
        125 => 6
        194 => 30
        225 => 31
        226 => 32
        227 => 33
        239 => 34
        _ => break
      }
    }
    30 => {
      continue match lexbuf.next_as_int() {
        160 => 29
        _ => break
      }
    }
    31 => {
      continue match lexbuf.next_as_int() {
        154 => 36
        _ => break
      }
    }
    32 => {
      continue match lexbuf.next_as_int() {
        128 => 37
        129 => 38
        _ => break
      }
    }
    33 => {
      continue match lexbuf.next_as_int() {
        128 => 36
        _ => break
      }
    }
    34 => {
      continue match lexbuf.next_as_int() {
        187 => 35
        _ => break
      }
    }
    35 => {
      continue match lexbuf.next_as_int() {
        191 => 29
        _ => break
      }
    }
    36 => {
      continue match lexbuf.next_as_int() {
        128 => 29
        _ => break
      }
    }
    37 => {
      continue match lexbuf.next_as_int() {
        128..=138 => 29
        175 => 29
        _ => break
      }
    }
    38 => {
      continue match lexbuf.next_as_int() {
        159 => 29
        _ => break
      }
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

      _match_start
    
    }
    1 => {
      ()

      env.add_lexing_error(start=_match_start, end = _match_end, UnterminatedString)
      _match_start
    
    }
    2 => {
      ()

      env.add_lexing_error(start=_match_start, end = _match_end, UnterminatedStringInVariableInterploation)
      lexbuf.reset(pos=_match_start)
      _match_start
    
    }
    3 => {
      ()

      env.add_lexing_error(start=_match_start, end = _match_end, UnterminatedStringInVariableInterploation)
      _match_start
    
    }
    4 => {
      ()
      let c = lexbuf.get_char(_capture_0_start, _capture_0_end)

      string_repr_buf.write_char(c)
      interp_handle(lexbuf, env~)
    
    }
    5 => {
      ()
      let c = lexbuf.get_char(_capture_0_start, _capture_0_end)

      // TODO: better error message when it is '"' etc
      env.add_lexing_error(start=_match_start, end = _match_end, IllegalCharacter(c))
      interp_handle(lexbuf, env~)
    
    }
    _ => panic()
  }
}


fn normal(lexbuf : Lexbuf, env~ : LexEnv, end_with_newline~ : Bool, allow_interp~ : Bool, startpos~ : Int) -> Unit  {
  // The matched pattern id
  let mut _match_pattern = @int.max_value
  let mut _match_start = lexbuf.curr_pos()
  let mut _match_end = -1
  let mut _capture_0_start = -1
  let mut _capture_0_end = -1
  let mut _capture_1_start = -1
  let mut _capture_1_end = -1
  loop 0 {
    0 => {
      continue match lexbuf.next_as_int() {
        -1 => 1
        0..=12 => 2
        13 => 3
        14..=33 => 2
        34 => 4
        35..=91 => 2
        92 => 5
        93..=127 => 2
        194..=223 => 6
        224 => 7
        225..=239 => 8
        240 => 9
        241..=243 => 10
        244 => 11
        _ => break
      }
    }
    1 => {
      _match_pattern = 11
      _match_end = lexbuf.curr_pos()
      break
    }
    2 => {
      _match_pattern = 13
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      break
    }
    3 => {
      _match_pattern = 13
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        10 => 27
        _ => break
      }
    }
    4 => {
      _match_pattern = 0
      _match_end = lexbuf.curr_pos()
      break
    }
    5 => {
      _match_pattern = 13
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        0..=31 => 15
        32 => 16
        33 => 15
        34 => 16
        35..=38 => 15
        39 => 16
        40..=91 => 15
        92 => 16
        93..=97 => 15
        98 => 16
        99..=109 => 15
        110 => 16
        111 => 17
        112..=113 => 15
        114 => 16
        115 => 15
        116 => 16
        117 => 18
        118..=119 => 15
        120 => 19
        121..=122 => 15
        123 => 20
        124..=127 => 15
        194..=223 => 21
        224 => 22
        225..=239 => 23
        240 => 24
        241..=243 => 25
        244 => 26
        _ => break
      }
    }
    6 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 2
        _ => break
      }
    }
    7 => {
      continue match lexbuf.next_as_int() {
        160 => 6
        161..=191 => 14
        _ => break
      }
    }
    8 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 6
        _ => break
      }
    }
    9 => {
      continue match lexbuf.next_as_int() {
        144 => 12
        145..=191 => 13
        _ => break
      }
    }
    10 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 8
        _ => break
      }
    }
    11 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 8
        _ => break
      }
    }
    12 => {
      continue match lexbuf.next_as_int() {
        128 => 6
        129..=191 => 14
        _ => break
      }
    }
    13 => {
      continue match lexbuf.next_as_int() {
        128 => 14
        _ => break
      }
    }
    14 => {
      continue match lexbuf.next_as_int() {
        128 => 2
        _ => break
      }
    }
    15 => {
      _match_pattern = 10
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      break
    }
    16 => {
      _match_pattern = 1
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 2
      break
    }
    17 => {
      _match_pattern = 10
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        0..=47 => 38
        48..=51 => 39
        52..=127 => 38
        194..=223 => 40
        224 => 41
        225..=239 => 42
        240 => 43
        241..=243 => 44
        244 => 45
        _ => break
      }
    }
    18 => {
      _match_pattern = 10
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 36
        65..=70 => 36
        97..=102 => 36
        123 => 37
        _ => break
      }
    }
    19 => {
      _match_pattern = 10
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        0..=47 => 46
        48..=57 => 47
        58..=64 => 46
        65..=70 => 47
        71..=96 => 46
        97..=102 => 47
        103..=127 => 46
        194..=223 => 48
        224 => 49
        225..=239 => 50
        240 => 51
        241..=243 => 52
        244 => 53
        _ => break
      }
    }
    20 => {
      _match_pattern = 9
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        9 => 20
        11..=12 => 20
        32 => 20
        194 => 31
        225 => 32
        226 => 33
        227 => 34
        239 => 35
        _ => break
      }
    }
    21 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 15
        _ => break
      }
    }
    22 => {
      continue match lexbuf.next_as_int() {
        160 => 21
        161..=191 => 30
        _ => break
      }
    }
    23 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 21
        _ => break
      }
    }
    24 => {
      continue match lexbuf.next_as_int() {
        144 => 28
        145..=191 => 29
        _ => break
      }
    }
    25 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 23
        _ => break
      }
    }
    26 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 23
        _ => break
      }
    }
    27 => {
      _match_pattern = 12
      _match_end = lexbuf.curr_pos()
      break
    }
    28 => {
      continue match lexbuf.next_as_int() {
        128 => 21
        129..=191 => 30
        _ => break
      }
    }
    29 => {
      continue match lexbuf.next_as_int() {
        128 => 30
        _ => break
      }
    }
    30 => {
      continue match lexbuf.next_as_int() {
        128 => 15
        _ => break
      }
    }
    31 => {
      continue match lexbuf.next_as_int() {
        160 => 20
        _ => break
      }
    }
    32 => {
      continue match lexbuf.next_as_int() {
        154 => 55
        _ => break
      }
    }
    33 => {
      continue match lexbuf.next_as_int() {
        128 => 56
        129 => 57
        _ => break
      }
    }
    34 => {
      continue match lexbuf.next_as_int() {
        128 => 55
        _ => break
      }
    }
    35 => {
      continue match lexbuf.next_as_int() {
        187 => 54
        _ => break
      }
    }
    36 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 67
        65..=70 => 67
        97..=102 => 67
        _ => break
      }
    }
    37 => {
      continue match lexbuf.next_as_int() {
        0..=9 => 58
        11..=12 => 58
        14..=47 => 58
        48..=57 => 59
        58..=64 => 58
        65..=70 => 59
        71..=96 => 58
        97..=102 => 59
        103..=124 => 58
        125 => 60
        126..=127 => 58
        194..=223 => 61
        224 => 62
        225..=239 => 63
        240 => 64
        241..=243 => 65
        244 => 66
        _ => break
      }
    }
    38 => {
      continue match lexbuf.next_as_int() {
        0..=127 => 71
        194..=223 => 72
        224 => 73
        225..=239 => 74
        240 => 75
        241..=243 => 76
        244 => 77
        _ => break
      }
    }
    39 => {
      continue match lexbuf.next_as_int() {
        0..=47 => 71
        48..=55 => 78
        56..=127 => 71
        194..=223 => 72
        224 => 73
        225..=239 => 74
        240 => 75
        241..=243 => 76
        244 => 77
        _ => break
      }
    }
    40 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 38
        _ => break
      }
    }
    41 => {
      continue match lexbuf.next_as_int() {
        160 => 40
        161..=191 => 70
        _ => break
      }
    }
    42 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 40
        _ => break
      }
    }
    43 => {
      continue match lexbuf.next_as_int() {
        144 => 68
        145..=191 => 69
        _ => break
      }
    }
    44 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 42
        _ => break
      }
    }
    45 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 42
        _ => break
      }
    }
    46 => {
      continue match lexbuf.next_as_int() {
        0..=127 => 82
        194..=223 => 83
        224 => 84
        225..=239 => 85
        240 => 86
        241..=243 => 87
        244 => 88
        _ => break
      }
    }
    47 => {
      continue match lexbuf.next_as_int() {
        0..=47 => 82
        48..=57 => 89
        58..=64 => 82
        65..=70 => 89
        71..=96 => 82
        97..=102 => 89
        103..=127 => 82
        194..=223 => 83
        224 => 84
        225..=239 => 85
        240 => 86
        241..=243 => 87
        244 => 88
        _ => break
      }
    }
    48 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 46
        _ => break
      }
    }
    49 => {
      continue match lexbuf.next_as_int() {
        160 => 48
        161..=191 => 81
        _ => break
      }
    }
    50 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 48
        _ => break
      }
    }
    51 => {
      continue match lexbuf.next_as_int() {
        144 => 79
        145..=191 => 80
        _ => break
      }
    }
    52 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 50
        _ => break
      }
    }
    53 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 50
        _ => break
      }
    }
    54 => {
      continue match lexbuf.next_as_int() {
        191 => 20
        _ => break
      }
    }
    55 => {
      continue match lexbuf.next_as_int() {
        128 => 20
        _ => break
      }
    }
    56 => {
      continue match lexbuf.next_as_int() {
        128..=138 => 20
        175 => 20
        _ => break
      }
    }
    57 => {
      continue match lexbuf.next_as_int() {
        159 => 20
        _ => break
      }
    }
    58 => {
      continue match lexbuf.next_as_int() {
        0..=9 => 58
        11..=12 => 58
        14..=124 => 58
        125 => 60
        126..=127 => 58
        194..=223 => 61
        224 => 62
        225..=239 => 63
        240 => 64
        241..=243 => 65
        244 => 66
        _ => break
      }
    }
    59 => {
      continue match lexbuf.next_as_int() {
        0..=9 => 58
        11..=12 => 58
        14..=47 => 58
        48..=57 => 59
        58..=64 => 58
        65..=70 => 59
        71..=96 => 58
        97..=102 => 59
        103..=124 => 58
        125 => 93
        126..=127 => 58
        194..=223 => 61
        224 => 62
        225..=239 => 63
        240 => 64
        241..=243 => 65
        244 => 66
        _ => break
      }
    }
    60 => {
      _match_pattern = 8
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      break
    }
    61 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 58
        _ => break
      }
    }
    62 => {
      continue match lexbuf.next_as_int() {
        160 => 61
        161..=191 => 92
        _ => break
      }
    }
    63 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 61
        _ => break
      }
    }
    64 => {
      continue match lexbuf.next_as_int() {
        144 => 90
        145..=191 => 91
        _ => break
      }
    }
    65 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 63
        _ => break
      }
    }
    66 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 63
        _ => break
      }
    }
    67 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 94
        65..=70 => 94
        97..=102 => 94
        _ => break
      }
    }
    68 => {
      continue match lexbuf.next_as_int() {
        128 => 40
        129..=191 => 70
        _ => break
      }
    }
    69 => {
      continue match lexbuf.next_as_int() {
        128 => 70
        _ => break
      }
    }
    70 => {
      continue match lexbuf.next_as_int() {
        128 => 38
        _ => break
      }
    }
    71 => {
      continue match lexbuf.next_as_int() {
        0..=127 => 98
        194..=223 => 99
        224 => 100
        225..=239 => 101
        240 => 102
        241..=243 => 103
        244 => 104
        _ => break
      }
    }
    72 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 71
        _ => break
      }
    }
    73 => {
      continue match lexbuf.next_as_int() {
        160 => 72
        161..=191 => 97
        _ => break
      }
    }
    74 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 72
        _ => break
      }
    }
    75 => {
      continue match lexbuf.next_as_int() {
        144 => 95
        145..=191 => 96
        _ => break
      }
    }
    76 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 74
        _ => break
      }
    }
    77 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 74
        _ => break
      }
    }
    78 => {
      continue match lexbuf.next_as_int() {
        0..=47 => 98
        48..=55 => 105
        56..=127 => 98
        194..=223 => 99
        224 => 100
        225..=239 => 101
        240 => 102
        241..=243 => 103
        244 => 104
        _ => break
      }
    }
    79 => {
      continue match lexbuf.next_as_int() {
        128 => 48
        129..=191 => 81
        _ => break
      }
    }
    80 => {
      continue match lexbuf.next_as_int() {
        128 => 81
        _ => break
      }
    }
    81 => {
      continue match lexbuf.next_as_int() {
        128 => 46
        _ => break
      }
    }
    82 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      break
    }
    83 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 82
        _ => break
      }
    }
    84 => {
      continue match lexbuf.next_as_int() {
        160 => 83
        161..=191 => 108
        _ => break
      }
    }
    85 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 83
        _ => break
      }
    }
    86 => {
      continue match lexbuf.next_as_int() {
        144 => 106
        145..=191 => 107
        _ => break
      }
    }
    87 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 85
        _ => break
      }
    }
    88 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 85
        _ => break
      }
    }
    89 => {
      _match_pattern = 2
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 4
      break
    }
    90 => {
      continue match lexbuf.next_as_int() {
        128 => 61
        129..=191 => 92
        _ => break
      }
    }
    91 => {
      continue match lexbuf.next_as_int() {
        128 => 92
        _ => break
      }
    }
    92 => {
      continue match lexbuf.next_as_int() {
        128 => 58
        _ => break
      }
    }
    93 => {
      _match_pattern = 7
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      break
    }
    94 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 109
        65..=70 => 109
        97..=102 => 109
        _ => break
      }
    }
    95 => {
      continue match lexbuf.next_as_int() {
        128 => 72
        129..=191 => 97
        _ => break
      }
    }
    96 => {
      continue match lexbuf.next_as_int() {
        128 => 97
        _ => break
      }
    }
    97 => {
      continue match lexbuf.next_as_int() {
        128 => 71
        _ => break
      }
    }
    98 => {
      _match_pattern = 5
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      break
    }
    99 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 98
        _ => break
      }
    }
    100 => {
      continue match lexbuf.next_as_int() {
        160 => 99
        161..=191 => 112
        _ => break
      }
    }
    101 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 99
        _ => break
      }
    }
    102 => {
      continue match lexbuf.next_as_int() {
        144 => 110
        145..=191 => 111
        _ => break
      }
    }
    103 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 101
        _ => break
      }
    }
    104 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 101
        _ => break
      }
    }
    105 => {
      _match_pattern = 4
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 5
      break
    }
    106 => {
      continue match lexbuf.next_as_int() {
        128 => 83
        129..=191 => 108
        _ => break
      }
    }
    107 => {
      continue match lexbuf.next_as_int() {
        128 => 108
        _ => break
      }
    }
    108 => {
      continue match lexbuf.next_as_int() {
        128 => 82
        _ => break
      }
    }
    109 => {
      _match_pattern = 6
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 6
      break
    }
    110 => {
      continue match lexbuf.next_as_int() {
        128 => 99
        129..=191 => 112
        _ => break
      }
    }
    111 => {
      continue match lexbuf.next_as_int() {
        128 => 112
        _ => break
      }
    }
    112 => {
      continue match lexbuf.next_as_int() {
        128 => 98
        _ => break
      }
    }
    _ => panic()
  }

  guard _match_pattern <= 13 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_match_end)
  match _match_pattern {
    0 => {
      ()

      if end_with_newline {
        string_repr_buf.write_char('"')
        normal(lexbuf, env~, end_with_newline~, allow_interp~, startpos~)
      } else {
        if not(string_repr_buf.is_empty()) {
          string_interps.val.push(
            InterpLit(
              repr=string_repr_buf.to_string(),
              loc=Location::{ start : env.make_pos(startpos), end : env.make_pos(_match_end) }
            )
          )
        }
      }
    
    }
    1 => {
      ()
      let repr = lexbuf.get_string(_capture_0_start, _capture_0_end)

      string_repr_buf.write_string(repr)
      normal(lexbuf, env~, end_with_newline~, allow_interp~, startpos~)
    
    }
    2 => {
      ()
      let repr = lexbuf.get_string(_capture_0_start, _capture_0_end)

      string_repr_buf.write_string(repr)
      normal(lexbuf, env~, end_with_newline~, allow_interp~, startpos~)
    
    }
    3 => {
      ()
      let repr = lexbuf.get_string(_capture_0_start, _capture_0_end)

      env.add_lexing_error(start=_match_start, end=_match_end, InvalidEscapeSequence(repr))
      normal(lexbuf, env~, end_with_newline~, allow_interp~, startpos~)
    
    }
    4 => {
      ()
      let repr = lexbuf.get_string(_capture_0_start, _capture_0_end)

      string_repr_buf.write_string(repr)
      normal(lexbuf, env~, end_with_newline~, allow_interp~, startpos~)
    
    }
    5 => {
      ()
      let repr = lexbuf.get_string(_capture_0_start, _capture_0_end)

      env.add_lexing_error(start=_match_start, end=_match_end, InvalidEscapeSequence(repr))
      normal(lexbuf, env~, end_with_newline~, allow_interp~, startpos~)
    
    }
    6 => {
      ()
      let repr = lexbuf.get_string(_capture_0_start, _capture_0_end)

      string_repr_buf.write_string(repr)
      normal(lexbuf, env~, end_with_newline~, allow_interp~, startpos~)
    
    }
    7 => {
      ()
      let repr = lexbuf.get_string(_capture_0_start, _capture_0_end)

      string_repr_buf.write_string(repr)
      normal(lexbuf, env~, end_with_newline~, allow_interp~, startpos~)
    
    }
    8 => {
      ()
      let repr = lexbuf.get_string(_capture_0_start, _capture_0_end)

      env.add_lexing_error(start=_match_start, end=_match_end, InvalidEscapeSequence(repr))
      normal(lexbuf, env~, end_with_newline~, allow_interp~, startpos~)
    
    }
    9 => {
      ()
      let repr = lexbuf.get_string(_capture_0_start, _capture_0_end)

      if allow_interp {
        if not(string_repr_buf.is_empty()) {
          string_interps.val.push(
            InterpLit(
              repr=string_repr_buf.to_string(),
              loc=Location::{ start : env.make_pos(startpos), end : env.make_pos(_match_end) }
            )
          )
        }
        string_repr_buf.reset()
        let apos = _match_end
        let bpos = interp_handle(lexbuf, env~)
        let loc = Location::{ start: env.make_pos(apos), end : env.make_pos(bpos) }
        if string_repr_buf.is_empty() {
          env.add_lexing_error(start=_match_start, end=_match_end, InterpMissingExpression)
        } else {
          let source = string_repr_buf.to_string()
          string_interps.val.push(
            InterpSource(
              InterpSource::{ source, loc }
            )
          )
        }
        string_repr_buf.reset()
      } else {
        env.add_lexing_error(start=_match_start, end=_match_end, InvalidEscapeSequence(repr))
      }
      normal(lexbuf, env~, end_with_newline~, allow_interp~, startpos~)
    
    }
    10 => {
      ()
      let repr = lexbuf.get_string(_capture_0_start, _capture_0_end)

      env.add_lexing_error(start=_match_start, end=_match_end, InvalidEscapeSequence(repr))
      normal(lexbuf, env~, end_with_newline~, allow_interp~, startpos~)
    
    }
    11 => {
      ()

      env.add_lexing_error(start=_match_start, end=_match_end, UnterminatedString)
      if not(string_repr_buf.is_empty()) {
        string_interps.val.push(
          InterpLit(
            repr=string_repr_buf.to_string(),
            loc=Location::{ start : env.make_pos(startpos), end : env.make_pos(_match_end) }
          )
        )
      }
    
    }
    12 => {
      ()

      // we need insert a NEWLINE token here, so back off to main tokenizer
      lexbuf.reset(pos=lexbuf.curr_pos() - 1)
      if not(end_with_newline) {
        env.add_lexing_error(start=_match_start, end=_match_end, UnterminatedString)
      }
      if not(string_repr_buf.is_empty()) {
        string_interps.val.push(
          InterpLit(
            repr=string_repr_buf.to_string(),
            loc=Location::{ start: env.make_pos(startpos), end: env.make_pos(_match_end) }
          )
        )
      }
    
    }
    13 => {
      ()
      let repr = lexbuf.get_char(_capture_0_start, _capture_0_end)

      string_repr_buf.write_string([repr])
      normal(lexbuf, env~, end_with_newline~, allow_interp~, startpos~)
    
    }
    _ => panic()
  }
}


fn invalid_byte(lexbuf : Lexbuf, env~ : LexEnv, start~ : Int) -> Unit  {
  // The matched pattern id
  let mut _match_pattern = @int.max_value
  let mut _match_start = lexbuf.curr_pos()
  let mut _match_end = -1
  let mut _capture_0_start = -1
  let mut _capture_0_end = -1
  let mut _capture_1_start = -1
  let mut _capture_1_end = -1
  loop 0 {
    0 => {
      continue match lexbuf.next_as_int() {
        -1 => 1
        0..=9 => 2
        10 => 1
        11..=12 => 2
        13 => 1
        14..=38 => 2
        39 => 1
        40..=127 => 2
        194..=223 => 3
        224 => 4
        225..=236 => 5
        237 => 6
        238 => 7
        239 => 5
        240 => 8
        241..=243 => 9
        244 => 10
        _ => break
      }
    }
    1 => {
      _match_pattern = 0
      _match_end = lexbuf.curr_pos()
      break
    }
    2 => {
      _match_pattern = 1
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      break
    }
    3 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 2
        _ => break
      }
    }
    4 => {
      continue match lexbuf.next_as_int() {
        160 => 3
        161..=191 => 15
        _ => break
      }
    }
    5 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 3
        _ => break
      }
    }
    6 => {
      continue match lexbuf.next_as_int() {
        128..=159 => 3
        160..=191 => 13
        _ => break
      }
    }
    7 => {
      continue match lexbuf.next_as_int() {
        128 => 3
        129..=191 => 14
        _ => break
      }
    }
    8 => {
      continue match lexbuf.next_as_int() {
        144 => 11
        145..=191 => 12
        _ => break
      }
    }
    9 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 5
        _ => break
      }
    }
    10 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 5
        _ => break
      }
    }
    11 => {
      continue match lexbuf.next_as_int() {
        128 => 3
        129..=191 => 15
        _ => break
      }
    }
    12 => {
      continue match lexbuf.next_as_int() {
        128 => 15
        _ => break
      }
    }
    13 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 16
        _ => break
      }
    }
    14 => {
      continue match lexbuf.next_as_int() {
        128 => 2
        129..=191 => 16
        _ => break
      }
    }
    15 => {
      continue match lexbuf.next_as_int() {
        128 => 2
        _ => break
      }
    }
    16 => {
      _match_pattern = 2
      _match_end = lexbuf.curr_pos()
      break
    }
    _ => panic()
  }

  guard _match_pattern <= 2 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_match_end)
  match _match_pattern {
    0 => {
      ()

      env.add_lexing_error(InvalidByteLiteral(invalid_byte_repr_buf.to_string()), start~, end=_match_end)
      invalid_byte_repr_buf.reset()
    
    }
    1 => {
      ()
      let c = lexbuf.get_char(_capture_0_start, _capture_0_end)

      invalid_byte_repr_buf.write_char(c)
      invalid_byte(lexbuf, env~, start~)
    
    }
    2 => {
      ()

      invalid_byte(lexbuf, env~, start~)
    
    }
    _ => panic()
  }
}


fn tokens(lexbuf : Lexbuf, env~ : LexEnv, preserve_comment~ : (Comment, Int, Int) -> Unit) -> Unit  {
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
  loop 0 {
    0 => {
      continue match lexbuf.next_as_int() {
        -1 => 1
        0..=8 => 2
        9 => 3
        10 => 4
        11..=12 => 3
        13 => 5
        14..=31 => 2
        32 => 3
        33 => 6
        34 => 7
        35 => 8
        36 => 9
        37 => 10
        38 => 11
        39 => 12
        40 => 13
        41 => 14
        42 => 15
        43 => 16
        44 => 17
        45 => 18
        46 => 19
        47 => 20
        48 => 21
        49..=57 => 22
        58 => 23
        59 => 24
        60 => 25
        61 => 26
        62 => 27
        63 => 28
        64 => 29
        65..=90 => 30
        91 => 31
        92 => 2
        93 => 32
        94 => 33
        95 => 34
        96 => 2
        97 => 34
        98 => 35
        99..=122 => 34
        123 => 36
        124 => 37
        125 => 38
        126..=127 => 2
        194 => 39
        195..=201 => 40
        202 => 41
        203..=223 => 42
        224 => 43
        225 => 44
        226 => 45
        227 => 46
        228..=233 => 47
        234 => 48
        235..=236 => 47
        237 => 49
        238 => 50
        239 => 51
        240 => 52
        241..=242 => 53
        243 => 54
        244 => 55
        _ => break
      }
    }
    1 => {
      _match_pattern = 66
      _match_end = lexbuf.curr_pos()
      break
    }
    2 => {
      _match_pattern = 70
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      break
    }
    3 => {
      _match_pattern = 1
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        9 => 3
        11..=12 => 3
        32 => 3
        194 => 109
        225 => 110
        226 => 111
        227 => 112
        239 => 113
        _ => break
      }
    }
    4 => {
      _match_pattern = 0
      _match_end = lexbuf.curr_pos()
      break
    }
    5 => {
      _match_pattern = 0
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        10 => 4
        _ => break
      }
    }
    6 => {
      _match_pattern = 62
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        61 => 114
        _ => break
      }
    }
    7 => {
      _match_pattern = 11
      _match_end = lexbuf.curr_pos()
      break
    }
    8 => {
      _match_pattern = 70
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        65..=90 => 143
        97..=122 => 143
        124 => 144
        _ => break
      }
    }
    9 => {
      _match_pattern = 70
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        124 => 145
        _ => break
      }
    }
    10 => {
      _match_pattern = 30
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        61 => 115
        _ => break
      }
    }
    11 => {
      _match_pattern = 23
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        38 => 141
        _ => break
      }
    }
    12 => {
      _match_pattern = 70
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        0..=9 => 96
        11..=12 => 96
        14..=38 => 96
        40..=91 => 96
        92 => 97
        93..=127 => 96
        194..=223 => 98
        224 => 99
        225..=239 => 100
        240 => 101
        241..=243 => 102
        244 => 103
        _ => break
      }
    }
    13 => {
      _match_pattern = 25
      _match_end = lexbuf.curr_pos()
      break
    }
    14 => {
      _match_pattern = 26
      _match_end = lexbuf.curr_pos()
      break
    }
    15 => {
      _match_pattern = 28
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        61 => 115
        _ => break
      }
    }
    16 => {
      _match_pattern = 58
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        61 => 115
        _ => break
      }
    }
    17 => {
      _match_pattern = 31
      _match_end = lexbuf.curr_pos()
      break
    }
    18 => {
      _match_pattern = 59
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        61 => 115
        62 => 148
        _ => break
      }
    }
    19 => {
      _match_pattern = 70
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        40 => 123
        46 => 124
        48..=57 => 125
        65..=90 => 126
        95 => 127
        97..=122 => 127
        194 => 128
        195..=201 => 129
        202 => 130
        225 => 131
        226 => 132
        227 => 133
        228..=233 => 134
        234 => 135
        235..=236 => 134
        237 => 136
        239 => 137
        240 => 138
        243 => 139
        _ => break
      }
    }
    20 => {
      _match_pattern = 29
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        47 => 140
        61 => 115
        _ => break
      }
    }
    21 => {
      _match_pattern = 65
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        46 => 90
        48..=57 => 22
        66 => 91
        76 => 92
        78 => 92
        79 => 93
        85 => 94
        88 => 95
        95 => 22
        98 => 91
        111 => 93
        120 => 95
        _ => break
      }
    }
    22 => {
      _match_pattern = 65
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        46 => 90
        48..=57 => 22
        76 => 92
        78 => 92
        85 => 94
        95 => 22
        _ => break
      }
    }
    23 => {
      _match_pattern = 41
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        58 => 122
        _ => break
      }
    }
    24 => {
      _match_pattern = 42
      _match_end = lexbuf.curr_pos()
      break
    }
    25 => {
      _match_pattern = 50
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        60 => 120
        61 => 121
        _ => break
      }
    }
    26 => {
      _match_pattern = 44
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        61 => 149
        62 => 150
        _ => break
      }
    }
    27 => {
      _match_pattern = 48
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        61 => 118
        62 => 119
        _ => break
      }
    }
    28 => {
      _match_pattern = 60
      _match_end = lexbuf.curr_pos()
      break
    }
    29 => {
      _match_pattern = 70
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        65..=90 => 142
        95 => 142
        97..=122 => 142
        _ => break
      }
    }
    30 => {
      _match_pattern = 67
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 30
        65..=90 => 30
        95 => 30
        97..=122 => 30
        194 => 78
        195..=201 => 79
        202 => 80
        225 => 81
        226 => 82
        227 => 83
        228..=233 => 84
        234 => 85
        235..=236 => 84
        237 => 86
        239 => 87
        240 => 88
        243 => 89
        _ => break
      }
    }
    31 => {
      _match_pattern = 51
      _match_end = lexbuf.curr_pos()
      break
    }
    32 => {
      _match_pattern = 52
      _match_end = lexbuf.curr_pos()
      break
    }
    33 => {
      _match_pattern = 24
      _match_end = lexbuf.curr_pos()
      break
    }
    34 => {
      _match_pattern = 69
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 34
        65..=90 => 34
        95 => 34
        97..=122 => 34
        126 => 67
        194 => 68
        195..=201 => 40
        202 => 69
        225 => 70
        226 => 71
        227 => 72
        228..=233 => 47
        234 => 73
        235..=236 => 47
        237 => 74
        239 => 75
        240 => 76
        243 => 77
        _ => break
      }
    }
    35 => {
      _match_pattern = 69
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        34 => 146
        39 => 147
        48..=57 => 34
        65..=90 => 34
        95 => 34
        97..=122 => 34
        126 => 67
        194 => 68
        195..=201 => 40
        202 => 69
        225 => 70
        226 => 71
        227 => 72
        228..=233 => 47
        234 => 73
        235..=236 => 47
        237 => 74
        239 => 75
        240 => 76
        243 => 77
        _ => break
      }
    }
    36 => {
      _match_pattern = 53
      _match_end = lexbuf.curr_pos()
      break
    }
    37 => {
      _match_pattern = 57
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        62 => 116
        124 => 117
        _ => break
      }
    }
    38 => {
      _match_pattern = 54
      _match_end = lexbuf.curr_pos()
      break
    }
    39 => {
      continue match lexbuf.next_as_int() {
        128..=159 => 2
        160 => 3
        161..=172 => 34
        173 => 2
        174..=191 => 34
        _ => break
      }
    }
    40 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 34
        _ => break
      }
    }
    41 => {
      continue match lexbuf.next_as_int() {
        128..=175 => 34
        176..=191 => 2
        _ => break
      }
    }
    42 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 2
        _ => break
      }
    }
    43 => {
      continue match lexbuf.next_as_int() {
        160 => 42
        161..=191 => 56
        _ => break
      }
    }
    44 => {
      continue match lexbuf.next_as_int() {
        128..=131 => 42
        132..=135 => 40
        136..=153 => 42
        154 => 108
        155..=183 => 42
        184..=187 => 40
        188..=191 => 42
        _ => break
      }
    }
    45 => {
      continue match lexbuf.next_as_int() {
        128 => 151
        129 => 152
        130 => 153
        131..=132 => 42
        133 => 154
        134 => 105
        135..=185 => 42
        186..=187 => 40
        188..=190 => 42
        191 => 155
        _ => break
      }
    }
    46 => {
      continue match lexbuf.next_as_int() {
        128 => 107
        129..=131 => 40
        132..=134 => 42
        135 => 40
        136..=191 => 66
        _ => break
      }
    }
    47 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 40
        _ => break
      }
    }
    48 => {
      continue match lexbuf.next_as_int() {
        128..=175 => 42
        176 => 40
        177..=191 => 66
        _ => break
      }
    }
    49 => {
      continue match lexbuf.next_as_int() {
        128..=159 => 40
        160..=191 => 42
        _ => break
      }
    }
    50 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 42
        _ => break
      }
    }
    51 => {
      continue match lexbuf.next_as_int() {
        128..=163 => 42
        164..=171 => 40
        172..=183 => 42
        184 => 104
        185 => 105
        186 => 42
        187 => 106
        188..=191 => 42
        _ => break
      }
    }
    52 => {
      continue match lexbuf.next_as_int() {
        144 => 58
        145..=158 => 59
        159 => 60
        160 => 61
        161..=169 => 47
        170 => 62
        171..=173 => 47
        174 => 63
        175 => 64
        176 => 61
        177 => 47
        178 => 65
        179..=191 => 59
        _ => break
      }
    }
    53 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 50
        _ => break
      }
    }
    54 => {
      continue match lexbuf.next_as_int() {
        128..=159 => 50
        160 => 57
        161..=191 => 50
        _ => break
      }
    }
    55 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 50
        _ => break
      }
    }
    56 => {
      continue match lexbuf.next_as_int() {
        128 => 2
        _ => break
      }
    }
    57 => {
      continue match lexbuf.next_as_int() {
        128..=131 => 42
        132..=134 => 40
        135 => 41
        136..=191 => 42
        _ => break
      }
    }
    58 => {
      continue match lexbuf.next_as_int() {
        128 => 42
        129..=191 => 56
        _ => break
      }
    }
    59 => {
      continue match lexbuf.next_as_int() {
        128 => 56
        _ => break
      }
    }
    60 => {
      continue match lexbuf.next_as_int() {
        128..=175 => 40
        _ => break
      }
    }
    61 => {
      continue match lexbuf.next_as_int() {
        128 => 40
        129..=191 => 156
        _ => break
      }
    }
    62 => {
      continue match lexbuf.next_as_int() {
        128..=155 => 157
        156 => 40
        157..=191 => 156
        _ => break
      }
    }
    63 => {
      continue match lexbuf.next_as_int() {
        128..=175 => 69
        _ => break
      }
    }
    64 => {
      continue match lexbuf.next_as_int() {
        128 => 56
        160..=167 => 40
        168 => 157
        _ => break
      }
    }
    65 => {
      continue match lexbuf.next_as_int() {
        128..=142 => 69
        _ => break
      }
    }
    66 => {
      continue match lexbuf.next_as_int() {
        128 => 34
        129..=191 => 2
        _ => break
      }
    }
    67 => {
      _match_pattern = 68
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end + -1
      break
    }
    68 => {
      continue match lexbuf.next_as_int() {
        161..=172 => 34
        174..=191 => 34
        _ => break
      }
    }
    69 => {
      continue match lexbuf.next_as_int() {
        128..=175 => 34
        _ => break
      }
    }
    70 => {
      continue match lexbuf.next_as_int() {
        132..=135 => 40
        184..=187 => 40
        _ => break
      }
    }
    71 => {
      continue match lexbuf.next_as_int() {
        129 => 163
        130 => 157
        133 => 164
        134 => 161
        186..=187 => 40
        191 => 163
        _ => break
      }
    }
    72 => {
      continue match lexbuf.next_as_int() {
        128 => 162
        129..=131 => 40
        135 => 40
        136..=191 => 156
        _ => break
      }
    }
    73 => {
      continue match lexbuf.next_as_int() {
        176 => 40
        177..=191 => 156
        _ => break
      }
    }
    74 => {
      continue match lexbuf.next_as_int() {
        128..=159 => 40
        _ => break
      }
    }
    75 => {
      continue match lexbuf.next_as_int() {
        164..=171 => 40
        184 => 160
        185 => 161
        _ => break
      }
    }
    76 => {
      continue match lexbuf.next_as_int() {
        159 => 60
        160 => 61
        161..=169 => 47
        170 => 62
        171..=173 => 47
        174 => 63
        175 => 159
        176 => 61
        177 => 47
        178 => 65
        _ => break
      }
    }
    77 => {
      continue match lexbuf.next_as_int() {
        160 => 158
        _ => break
      }
    }
    78 => {
      continue match lexbuf.next_as_int() {
        161..=172 => 30
        174..=191 => 30
        _ => break
      }
    }
    79 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 30
        _ => break
      }
    }
    80 => {
      continue match lexbuf.next_as_int() {
        128..=175 => 30
        _ => break
      }
    }
    81 => {
      continue match lexbuf.next_as_int() {
        132..=135 => 79
        184..=187 => 79
        _ => break
      }
    }
    82 => {
      continue match lexbuf.next_as_int() {
        129 => 176
        130 => 177
        133 => 178
        134 => 173
        186..=187 => 79
        191 => 176
        _ => break
      }
    }
    83 => {
      continue match lexbuf.next_as_int() {
        128 => 175
        129..=131 => 79
        135 => 79
        136..=191 => 174
        _ => break
      }
    }
    84 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 79
        _ => break
      }
    }
    85 => {
      continue match lexbuf.next_as_int() {
        176 => 79
        177..=191 => 174
        _ => break
      }
    }
    86 => {
      continue match lexbuf.next_as_int() {
        128..=159 => 79
        _ => break
      }
    }
    87 => {
      continue match lexbuf.next_as_int() {
        164..=171 => 79
        184 => 172
        185 => 173
        _ => break
      }
    }
    88 => {
      continue match lexbuf.next_as_int() {
        159 => 166
        160 => 167
        161..=169 => 84
        170 => 168
        171..=173 => 84
        174 => 169
        175 => 170
        176 => 167
        177 => 84
        178 => 171
        _ => break
      }
    }
    89 => {
      continue match lexbuf.next_as_int() {
        160 => 165
        _ => break
      }
    }
    90 => {
      _match_pattern = 64
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        46 => 179
        48..=57 => 180
        69 => 181
        95 => 180
        101 => 181
        _ => break
      }
    }
    91 => {
      continue match lexbuf.next_as_int() {
        48..=49 => 183
        _ => break
      }
    }
    92 => {
      _match_pattern = 65
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        46 => 182
        _ => break
      }
    }
    93 => {
      continue match lexbuf.next_as_int() {
        48..=55 => 184
        _ => break
      }
    }
    94 => {
      _match_pattern = 65
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        46 => 182
        76 => 92
        _ => break
      }
    }
    95 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 185
        65..=70 => 185
        97..=102 => 185
        _ => break
      }
    }
    96 => {
      continue match lexbuf.next_as_int() {
        39 => 193
        _ => break
      }
    }
    97 => {
      continue match lexbuf.next_as_int() {
        32 => 186
        34 => 186
        39 => 186
        92 => 186
        98 => 186
        110 => 186
        111 => 187
        114 => 186
        116 => 186
        117 => 188
        120 => 189
        _ => break
      }
    }
    98 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 96
        _ => break
      }
    }
    99 => {
      continue match lexbuf.next_as_int() {
        160 => 98
        161..=191 => 192
        _ => break
      }
    }
    100 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 98
        _ => break
      }
    }
    101 => {
      continue match lexbuf.next_as_int() {
        144 => 190
        145..=191 => 191
        _ => break
      }
    }
    102 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 100
        _ => break
      }
    }
    103 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 100
        _ => break
      }
    }
    104 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 34
        144..=175 => 2
        176..=191 => 34
        _ => break
      }
    }
    105 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 34
        144..=191 => 2
        _ => break
      }
    }
    106 => {
      continue match lexbuf.next_as_int() {
        128..=190 => 2
        191 => 3
        _ => break
      }
    }
    107 => {
      continue match lexbuf.next_as_int() {
        128 => 3
        129..=191 => 34
        _ => break
      }
    }
    108 => {
      continue match lexbuf.next_as_int() {
        128 => 3
        129..=191 => 2
        _ => break
      }
    }
    109 => {
      continue match lexbuf.next_as_int() {
        160 => 3
        _ => break
      }
    }
    110 => {
      continue match lexbuf.next_as_int() {
        154 => 195
        _ => break
      }
    }
    111 => {
      continue match lexbuf.next_as_int() {
        128 => 196
        129 => 197
        _ => break
      }
    }
    112 => {
      continue match lexbuf.next_as_int() {
        128 => 195
        _ => break
      }
    }
    113 => {
      continue match lexbuf.next_as_int() {
        187 => 194
        _ => break
      }
    }
    114 => {
      _match_pattern = 61
      _match_end = lexbuf.curr_pos()
      break
    }
    115 => {
      _match_pattern = 27
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 1
      _capture_1_start = _match_start
      _capture_1_end = _match_start + 2
      break
    }
    116 => {
      _match_pattern = 55
      _match_end = lexbuf.curr_pos()
      break
    }
    117 => {
      _match_pattern = 56
      _match_end = lexbuf.curr_pos()
      break
    }
    118 => {
      _match_pattern = 46
      _match_end = lexbuf.curr_pos()
      break
    }
    119 => {
      _match_pattern = 47
      _match_end = lexbuf.curr_pos()
      break
    }
    120 => {
      _match_pattern = 49
      _match_end = lexbuf.curr_pos()
      break
    }
    121 => {
      _match_pattern = 45
      _match_end = lexbuf.curr_pos()
      break
    }
    122 => {
      _match_pattern = 40
      _match_end = lexbuf.curr_pos()
      break
    }
    123 => {
      _match_pattern = 32
      _match_end = lexbuf.curr_pos()
      break
    }
    124 => {
      _match_pattern = 37
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        46 => 224
        60 => 225
        61 => 226
        _ => break
      }
    }
    125 => {
      _match_pattern = 33
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      _capture_1_start = _match_start + 1
      _capture_1_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 125
        _ => break
      }
    }
    126 => {
      _match_pattern = 38
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 1
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 126
        65..=90 => 126
        95 => 126
        97..=122 => 126
        194 => 212
        195..=201 => 213
        202 => 214
        225 => 215
        226 => 216
        227 => 217
        228..=233 => 218
        234 => 219
        235..=236 => 218
        237 => 220
        239 => 221
        240 => 222
        243 => 223
        _ => break
      }
    }
    127 => {
      _match_pattern = 39
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 1
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 127
        65..=90 => 127
        95 => 127
        97..=122 => 127
        194 => 128
        195..=201 => 129
        202 => 130
        225 => 131
        226 => 132
        227 => 133
        228..=233 => 134
        234 => 135
        235..=236 => 134
        237 => 136
        239 => 137
        240 => 138
        243 => 139
        _ => break
      }
    }
    128 => {
      continue match lexbuf.next_as_int() {
        161..=172 => 127
        174..=191 => 127
        _ => break
      }
    }
    129 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 127
        _ => break
      }
    }
    130 => {
      continue match lexbuf.next_as_int() {
        128..=175 => 127
        _ => break
      }
    }
    131 => {
      continue match lexbuf.next_as_int() {
        132..=135 => 129
        184..=187 => 129
        _ => break
      }
    }
    132 => {
      continue match lexbuf.next_as_int() {
        129 => 209
        130 => 210
        133 => 211
        134 => 206
        186..=187 => 129
        191 => 209
        _ => break
      }
    }
    133 => {
      continue match lexbuf.next_as_int() {
        128 => 208
        129..=131 => 129
        135 => 129
        136..=191 => 207
        _ => break
      }
    }
    134 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 129
        _ => break
      }
    }
    135 => {
      continue match lexbuf.next_as_int() {
        176 => 129
        177..=191 => 207
        _ => break
      }
    }
    136 => {
      continue match lexbuf.next_as_int() {
        128..=159 => 129
        _ => break
      }
    }
    137 => {
      continue match lexbuf.next_as_int() {
        164..=171 => 129
        184 => 205
        185 => 206
        _ => break
      }
    }
    138 => {
      continue match lexbuf.next_as_int() {
        159 => 199
        160 => 200
        161..=169 => 134
        170 => 201
        171..=173 => 134
        174 => 202
        175 => 203
        176 => 200
        177 => 134
        178 => 204
        _ => break
      }
    }
    139 => {
      continue match lexbuf.next_as_int() {
        160 => 198
        _ => break
      }
    }
    140 => {
      _match_pattern = 4
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        0..=9 => 140
        11..=12 => 140
        14..=127 => 140
        194..=223 => 227
        224 => 228
        225..=239 => 229
        240 => 230
        241..=243 => 231
        244 => 232
        _ => break
      }
    }
    141 => {
      _match_pattern = 22
      _match_end = lexbuf.curr_pos()
      break
    }
    142 => {
      _match_pattern = 16
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 1
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        47 => 233
        48..=57 => 142
        65..=90 => 142
        95 => 142
        97..=122 => 142
        _ => break
      }
    }
    143 => {
      _match_pattern = 15
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 1
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        0..=9 => 143
        11..=12 => 143
        14..=127 => 143
        194..=223 => 234
        224 => 235
        225..=239 => 236
        240 => 237
        241..=243 => 238
        244 => 239
        _ => break
      }
    }
    144 => {
      _match_pattern = 14
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 2
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        0..=9 => 144
        11..=12 => 144
        14..=127 => 144
        194..=223 => 240
        224 => 241
        225..=239 => 242
        240 => 243
        241..=243 => 244
        244 => 245
        _ => break
      }
    }
    145 => {
      _match_pattern = 13
      _match_end = lexbuf.curr_pos()
      break
    }
    146 => {
      _match_pattern = 12
      _match_end = lexbuf.curr_pos()
      break
    }
    147 => {
      _match_pattern = 21
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 2
      continue match lexbuf.next_as_int() {
        0..=91 => 246
        92 => 247
        93..=127 => 246
        _ => break
      }
    }
    148 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      break
    }
    149 => {
      _match_pattern = 43
      _match_end = lexbuf.curr_pos()
      break
    }
    150 => {
      _match_pattern = 2
      _match_end = lexbuf.curr_pos()
      break
    }
    151 => {
      continue match lexbuf.next_as_int() {
        128..=138 => 3
        139..=167 => 2
        168..=169 => 4
        170..=174 => 2
        175 => 3
        176..=191 => 2
        _ => break
      }
    }
    152 => {
      continue match lexbuf.next_as_int() {
        128..=158 => 2
        159 => 3
        160..=175 => 2
        176..=191 => 34
        _ => break
      }
    }
    153 => {
      continue match lexbuf.next_as_int() {
        128..=159 => 34
        160..=191 => 2
        _ => break
      }
    }
    154 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 2
        144..=191 => 34
        _ => break
      }
    }
    155 => {
      continue match lexbuf.next_as_int() {
        128..=175 => 2
        176..=191 => 34
        _ => break
      }
    }
    156 => {
      continue match lexbuf.next_as_int() {
        128 => 34
        _ => break
      }
    }
    157 => {
      continue match lexbuf.next_as_int() {
        128..=159 => 34
        _ => break
      }
    }
    158 => {
      continue match lexbuf.next_as_int() {
        132..=134 => 40
        135 => 69
        _ => break
      }
    }
    159 => {
      continue match lexbuf.next_as_int() {
        160..=167 => 40
        168 => 157
        _ => break
      }
    }
    160 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 34
        176..=191 => 34
        _ => break
      }
    }
    161 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 34
        _ => break
      }
    }
    162 => {
      continue match lexbuf.next_as_int() {
        129..=191 => 34
        _ => break
      }
    }
    163 => {
      continue match lexbuf.next_as_int() {
        176..=191 => 34
        _ => break
      }
    }
    164 => {
      continue match lexbuf.next_as_int() {
        144..=191 => 34
        _ => break
      }
    }
    165 => {
      continue match lexbuf.next_as_int() {
        132..=134 => 79
        135 => 80
        _ => break
      }
    }
    166 => {
      continue match lexbuf.next_as_int() {
        128..=175 => 79
        _ => break
      }
    }
    167 => {
      continue match lexbuf.next_as_int() {
        128 => 79
        129..=191 => 174
        _ => break
      }
    }
    168 => {
      continue match lexbuf.next_as_int() {
        128..=155 => 177
        156 => 79
        157..=191 => 174
        _ => break
      }
    }
    169 => {
      continue match lexbuf.next_as_int() {
        128..=175 => 80
        _ => break
      }
    }
    170 => {
      continue match lexbuf.next_as_int() {
        160..=167 => 79
        168 => 177
        _ => break
      }
    }
    171 => {
      continue match lexbuf.next_as_int() {
        128..=142 => 80
        _ => break
      }
    }
    172 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 30
        176..=191 => 30
        _ => break
      }
    }
    173 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 30
        _ => break
      }
    }
    174 => {
      continue match lexbuf.next_as_int() {
        128 => 30
        _ => break
      }
    }
    175 => {
      continue match lexbuf.next_as_int() {
        129..=191 => 30
        _ => break
      }
    }
    176 => {
      continue match lexbuf.next_as_int() {
        176..=191 => 30
        _ => break
      }
    }
    177 => {
      continue match lexbuf.next_as_int() {
        128..=159 => 30
        _ => break
      }
    }
    178 => {
      continue match lexbuf.next_as_int() {
        144..=191 => 30
        _ => break
      }
    }
    179 => {
      _match_pattern = 63
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end + -2
      break
    }
    180 => {
      _match_pattern = 64
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 180
        69 => 181
        95 => 180
        101 => 181
        _ => break
      }
    }
    181 => {
      continue match lexbuf.next_as_int() {
        43 => 248
        45 => 248
        48..=57 => 249
        _ => break
      }
    }
    182 => {
      continue match lexbuf.next_as_int() {
        46 => 179
        _ => break
      }
    }
    183 => {
      _match_pattern = 65
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        46 => 182
        48..=49 => 183
        76 => 92
        78 => 92
        85 => 94
        95 => 183
        _ => break
      }
    }
    184 => {
      _match_pattern = 65
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        46 => 182
        48..=55 => 184
        76 => 92
        78 => 92
        85 => 94
        95 => 184
        _ => break
      }
    }
    185 => {
      _match_pattern = 65
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        46 => 250
        48..=57 => 185
        65..=70 => 185
        76 => 92
        78 => 92
        85 => 94
        95 => 185
        97..=102 => 185
        _ => break
      }
    }
    186 => {
      continue match lexbuf.next_as_int() {
        39 => 255
        _ => break
      }
    }
    187 => {
      continue match lexbuf.next_as_int() {
        48..=51 => 253
        _ => break
      }
    }
    188 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 251
        65..=70 => 251
        97..=102 => 251
        123 => 252
        _ => break
      }
    }
    189 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 254
        65..=70 => 254
        97..=102 => 254
        _ => break
      }
    }
    190 => {
      continue match lexbuf.next_as_int() {
        128 => 98
        129..=191 => 192
        _ => break
      }
    }
    191 => {
      continue match lexbuf.next_as_int() {
        128 => 192
        _ => break
      }
    }
    192 => {
      continue match lexbuf.next_as_int() {
        128 => 96
        _ => break
      }
    }
    193 => {
      _match_pattern = 5
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      break
    }
    194 => {
      continue match lexbuf.next_as_int() {
        191 => 3
        _ => break
      }
    }
    195 => {
      continue match lexbuf.next_as_int() {
        128 => 3
        _ => break
      }
    }
    196 => {
      continue match lexbuf.next_as_int() {
        128..=138 => 3
        175 => 3
        _ => break
      }
    }
    197 => {
      continue match lexbuf.next_as_int() {
        159 => 3
        _ => break
      }
    }
    198 => {
      continue match lexbuf.next_as_int() {
        132..=134 => 129
        135 => 130
        _ => break
      }
    }
    199 => {
      continue match lexbuf.next_as_int() {
        128..=175 => 129
        _ => break
      }
    }
    200 => {
      continue match lexbuf.next_as_int() {
        128 => 129
        129..=191 => 207
        _ => break
      }
    }
    201 => {
      continue match lexbuf.next_as_int() {
        128..=155 => 210
        156 => 129
        157..=191 => 207
        _ => break
      }
    }
    202 => {
      continue match lexbuf.next_as_int() {
        128..=175 => 130
        _ => break
      }
    }
    203 => {
      continue match lexbuf.next_as_int() {
        160..=167 => 129
        168 => 210
        _ => break
      }
    }
    204 => {
      continue match lexbuf.next_as_int() {
        128..=142 => 130
        _ => break
      }
    }
    205 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 127
        176..=191 => 127
        _ => break
      }
    }
    206 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 127
        _ => break
      }
    }
    207 => {
      continue match lexbuf.next_as_int() {
        128 => 127
        _ => break
      }
    }
    208 => {
      continue match lexbuf.next_as_int() {
        129..=191 => 127
        _ => break
      }
    }
    209 => {
      continue match lexbuf.next_as_int() {
        176..=191 => 127
        _ => break
      }
    }
    210 => {
      continue match lexbuf.next_as_int() {
        128..=159 => 127
        _ => break
      }
    }
    211 => {
      continue match lexbuf.next_as_int() {
        144..=191 => 127
        _ => break
      }
    }
    212 => {
      continue match lexbuf.next_as_int() {
        161..=172 => 126
        174..=191 => 126
        _ => break
      }
    }
    213 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 126
        _ => break
      }
    }
    214 => {
      continue match lexbuf.next_as_int() {
        128..=175 => 126
        _ => break
      }
    }
    215 => {
      continue match lexbuf.next_as_int() {
        132..=135 => 213
        184..=187 => 213
        _ => break
      }
    }
    216 => {
      continue match lexbuf.next_as_int() {
        129 => 267
        130 => 268
        133 => 269
        134 => 264
        186..=187 => 213
        191 => 267
        _ => break
      }
    }
    217 => {
      continue match lexbuf.next_as_int() {
        128 => 266
        129..=131 => 213
        135 => 213
        136..=191 => 265
        _ => break
      }
    }
    218 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 213
        _ => break
      }
    }
    219 => {
      continue match lexbuf.next_as_int() {
        176 => 213
        177..=191 => 265
        _ => break
      }
    }
    220 => {
      continue match lexbuf.next_as_int() {
        128..=159 => 213
        _ => break
      }
    }
    221 => {
      continue match lexbuf.next_as_int() {
        164..=171 => 213
        184 => 263
        185 => 264
        _ => break
      }
    }
    222 => {
      continue match lexbuf.next_as_int() {
        159 => 257
        160 => 258
        161..=169 => 218
        170 => 259
        171..=173 => 218
        174 => 260
        175 => 261
        176 => 258
        177 => 218
        178 => 262
        _ => break
      }
    }
    223 => {
      continue match lexbuf.next_as_int() {
        160 => 256
        _ => break
      }
    }
    224 => {
      _match_pattern = 34
      _match_end = lexbuf.curr_pos()
      break
    }
    225 => {
      _match_pattern = 36
      _match_end = lexbuf.curr_pos()
      break
    }
    226 => {
      _match_pattern = 35
      _match_end = lexbuf.curr_pos()
      break
    }
    227 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 140
        _ => break
      }
    }
    228 => {
      continue match lexbuf.next_as_int() {
        160 => 227
        161..=191 => 272
        _ => break
      }
    }
    229 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 227
        _ => break
      }
    }
    230 => {
      continue match lexbuf.next_as_int() {
        144 => 270
        145..=191 => 271
        _ => break
      }
    }
    231 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 229
        _ => break
      }
    }
    232 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 229
        _ => break
      }
    }
    233 => {
      continue match lexbuf.next_as_int() {
        65..=90 => 142
        95 => 142
        97..=122 => 142
        _ => break
      }
    }
    234 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 143
        _ => break
      }
    }
    235 => {
      continue match lexbuf.next_as_int() {
        160 => 234
        161..=191 => 275
        _ => break
      }
    }
    236 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 234
        _ => break
      }
    }
    237 => {
      continue match lexbuf.next_as_int() {
        144 => 273
        145..=191 => 274
        _ => break
      }
    }
    238 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 236
        _ => break
      }
    }
    239 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 236
        _ => break
      }
    }
    240 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 144
        _ => break
      }
    }
    241 => {
      continue match lexbuf.next_as_int() {
        160 => 240
        161..=191 => 278
        _ => break
      }
    }
    242 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 240
        _ => break
      }
    }
    243 => {
      continue match lexbuf.next_as_int() {
        144 => 276
        145..=191 => 277
        _ => break
      }
    }
    244 => {
      continue match lexbuf.next_as_int() {
        128..=191 => 242
        _ => break
      }
    }
    245 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 242
        _ => break
      }
    }
    246 => {
      continue match lexbuf.next_as_int() {
        39 => 279
        _ => break
      }
    }
    247 => {
      continue match lexbuf.next_as_int() {
        32 => 280
        34 => 280
        39 => 281
        92 => 280
        98 => 280
        110 => 280
        111 => 282
        114 => 280
        116 => 280
        120 => 283
        _ => break
      }
    }
    248 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 249
        _ => break
      }
    }
    249 => {
      _match_pattern = 64
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 249
        95 => 249
        _ => break
      }
    }
    250 => {
      _match_pattern = 64
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        46 => 179
        48..=57 => 284
        65..=70 => 284
        80 => 181
        95 => 284
        97..=102 => 284
        112 => 181
        _ => break
      }
    }
    251 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 286
        65..=70 => 286
        97..=102 => 286
        _ => break
      }
    }
    252 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 252
        65..=70 => 252
        97..=102 => 252
        125 => 285
        _ => break
      }
    }
    253 => {
      continue match lexbuf.next_as_int() {
        48..=55 => 287
        _ => break
      }
    }
    254 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 288
        65..=70 => 288
        97..=102 => 288
        _ => break
      }
    }
    255 => {
      _match_pattern = 6
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 4
      break
    }
    256 => {
      continue match lexbuf.next_as_int() {
        132..=134 => 213
        135 => 214
        _ => break
      }
    }
    257 => {
      continue match lexbuf.next_as_int() {
        128..=175 => 213
        _ => break
      }
    }
    258 => {
      continue match lexbuf.next_as_int() {
        128 => 213
        129..=191 => 265
        _ => break
      }
    }
    259 => {
      continue match lexbuf.next_as_int() {
        128..=155 => 268
        156 => 213
        157..=191 => 265
        _ => break
      }
    }
    260 => {
      continue match lexbuf.next_as_int() {
        128..=175 => 214
        _ => break
      }
    }
    261 => {
      continue match lexbuf.next_as_int() {
        160..=167 => 213
        168 => 268
        _ => break
      }
    }
    262 => {
      continue match lexbuf.next_as_int() {
        128..=142 => 214
        _ => break
      }
    }
    263 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 126
        176..=191 => 126
        _ => break
      }
    }
    264 => {
      continue match lexbuf.next_as_int() {
        128..=143 => 126
        _ => break
      }
    }
    265 => {
      continue match lexbuf.next_as_int() {
        128 => 126
        _ => break
      }
    }
    266 => {
      continue match lexbuf.next_as_int() {
        129..=191 => 126
        _ => break
      }
    }
    267 => {
      continue match lexbuf.next_as_int() {
        176..=191 => 126
        _ => break
      }
    }
    268 => {
      continue match lexbuf.next_as_int() {
        128..=159 => 126
        _ => break
      }
    }
    269 => {
      continue match lexbuf.next_as_int() {
        144..=191 => 126
        _ => break
      }
    }
    270 => {
      continue match lexbuf.next_as_int() {
        128 => 227
        129..=191 => 272
        _ => break
      }
    }
    271 => {
      continue match lexbuf.next_as_int() {
        128 => 272
        _ => break
      }
    }
    272 => {
      continue match lexbuf.next_as_int() {
        128 => 140
        _ => break
      }
    }
    273 => {
      continue match lexbuf.next_as_int() {
        128 => 234
        129..=191 => 275
        _ => break
      }
    }
    274 => {
      continue match lexbuf.next_as_int() {
        128 => 275
        _ => break
      }
    }
    275 => {
      continue match lexbuf.next_as_int() {
        128 => 143
        _ => break
      }
    }
    276 => {
      continue match lexbuf.next_as_int() {
        128 => 240
        129..=191 => 278
        _ => break
      }
    }
    277 => {
      continue match lexbuf.next_as_int() {
        128 => 278
        _ => break
      }
    }
    278 => {
      continue match lexbuf.next_as_int() {
        128 => 144
        _ => break
      }
    }
    279 => {
      _match_pattern = 19
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 2
      _capture_0_end = _match_start + 3
      break
    }
    280 => {
      continue match lexbuf.next_as_int() {
        39 => 289
        _ => break
      }
    }
    281 => {
      _match_pattern = 19
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 2
      _capture_0_end = _match_start + 3
      continue match lexbuf.next_as_int() {
        39 => 289
        _ => break
      }
    }
    282 => {
      continue match lexbuf.next_as_int() {
        48..=51 => 290
        _ => break
      }
    }
    283 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 291
        65..=70 => 291
        97..=102 => 291
        _ => break
      }
    }
    284 => {
      _match_pattern = 64
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        48..=57 => 284
        65..=70 => 284
        80 => 181
        95 => 284
        97..=102 => 284
        112 => 181
        _ => break
      }
    }
    285 => {
      continue match lexbuf.next_as_int() {
        39 => 292
        _ => break
      }
    }
    286 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 293
        65..=70 => 293
        97..=102 => 293
        _ => break
      }
    }
    287 => {
      continue match lexbuf.next_as_int() {
        48..=55 => 294
        _ => break
      }
    }
    288 => {
      continue match lexbuf.next_as_int() {
        39 => 295
        _ => break
      }
    }
    289 => {
      _match_pattern = 20
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 3
      _capture_0_end = _match_start + 4
      break
    }
    290 => {
      continue match lexbuf.next_as_int() {
        48..=55 => 296
        _ => break
      }
    }
    291 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 297
        65..=70 => 297
        97..=102 => 297
        _ => break
      }
    }
    292 => {
      _match_pattern = 10
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 4
      _capture_0_end = _match_end + -2
      _capture_1_start = _match_start
      _capture_1_end = _match_end
      break
    }
    293 => {
      continue match lexbuf.next_as_int() {
        48..=57 => 298
        65..=70 => 298
        97..=102 => 298
        _ => break
      }
    }
    294 => {
      continue match lexbuf.next_as_int() {
        39 => 299
        _ => break
      }
    }
    295 => {
      _match_pattern = 7
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 6
      break
    }
    296 => {
      continue match lexbuf.next_as_int() {
        48..=55 => 300
        _ => break
      }
    }
    297 => {
      continue match lexbuf.next_as_int() {
        39 => 301
        _ => break
      }
    }
    298 => {
      continue match lexbuf.next_as_int() {
        39 => 302
        _ => break
      }
    }
    299 => {
      _match_pattern = 8
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 7
      break
    }
    300 => {
      continue match lexbuf.next_as_int() {
        39 => 303
        _ => break
      }
    }
    301 => {
      _match_pattern = 17
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 4
      _capture_0_end = _match_start + 6
      break
    }
    302 => {
      _match_pattern = 9
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_start + 8
      break
    }
    303 => {
      _match_pattern = 18
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start + 4
      _capture_0_end = _match_start + 7
      break
    }
    _ => panic()
  }

  guard _match_pattern <= 70 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_match_end)
  match _match_pattern {
    0 => {
      ()

      env.add_token_with_loc(NEWLINE, start=_match_start, end=_match_end)
      env.current_bol = _match_end
      env.current_line += 1
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    1 => {
      ()

      tokens(lexbuf, env~, preserve_comment~)
    
    }
    2 => {
      ()

      env.add_token_with_loc(FAT_ARROW, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    3 => {
      ()

      env.add_token_with_loc(THIN_ARROW, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    4 => {
      ()
      let repr = lexbuf.get_string(_capture_0_start, _capture_0_end)

      if env.is_interpolation {
        env.add_lexing_error(start=_match_start, end = _match_end,InterpInvalidComment)
      }
      if env.comment {
        let comment = Comment::{
          content : repr,
          kind : InlineTrailing,
          consumed_by_docstring : @ref.new(false)
        }
        preserve_comment(comment, _match_start, _match_end)
        env.add_token_with_loc(COMMENT(comment), start=_match_start, end=_match_end)
      }
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    5 => {
      ()
      let repr = lexbuf.get_string(_capture_0_start, _capture_0_end)

      env.add_token_with_loc(CHAR(repr), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    6 => {
      ()
      let repr = lexbuf.get_string(_capture_0_start, _capture_0_end)

      env.add_token_with_loc(CHAR(repr), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    7 => {
      ()
      let repr = lexbuf.get_string(_capture_0_start, _capture_0_end)

      env.add_token_with_loc(CHAR(repr), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    8 => {
      ()
      let repr = lexbuf.get_string(_capture_0_start, _capture_0_end)

      env.add_token_with_loc(CHAR(repr), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    9 => {
      ()
      let repr = lexbuf.get_string(_capture_0_start, _capture_0_end)

      env.add_token_with_loc(CHAR(repr), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    10 => {
      ()
      let hex = lexbuf.get_string(_capture_0_start, _capture_0_end)
      let repr = lexbuf.get_string(_capture_1_start, _capture_1_end)
      let _ = repr

      if char_for_hex_escape(hex) is None {
        // Overflow
        env.add_lexing_error(start=_capture_1_start, end = _capture_1_end, InvalidEscapeSequence(repr))
      }
      env.add_token_with_loc(CHAR(repr), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    11 => {
      ()

      let startpos = _match_start
      let tok : Token =
        match string(lexbuf, env~, end_with_newline = false, allow_interp = true, startpos~) {
          [ InterpLit(repr~, ..) ] => STRING(repr)
          interps => INTERP(interps)
        }
      let endpos = lexbuf.curr_pos()
      env.add_token(tok, env.make_pos(startpos), env.make_pos(endpos))
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    12 => {
      ()

      let startpos = _match_start
      let tok : Token =
        match string(lexbuf, env~, end_with_newline = false, allow_interp = false, startpos~) {
          [ InterpLit(repr~, ..) ] => STRING(repr)
          _interps => panic()
        }
      let endpos = lexbuf.curr_pos()
      env.add_token(tok, env.make_pos(startpos), env.make_pos(endpos))
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    13 => {
      ()

      if env.is_interpolation {
        env.add_lexing_error(start=_match_start, end = _match_end, InterpInvalidMultilineString)
      }
      let startpos = _match_start
      let tok : Token = MULTILINE_INTERP(string(lexbuf, env~, end_with_newline = true, allow_interp = true, startpos~))
      let endpos = lexbuf.curr_pos()
      env.add_token(tok, env.make_pos(startpos), env.make_pos(endpos))
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    14 => {
      ()
      let s = lexbuf.get_string(_capture_0_start, _capture_0_end)

      if env.is_interpolation {
        env.add_lexing_error(start=_match_start, end=_match_end, InterpInvalidMultilineString)
      }
      env.add_token_with_loc(MULTILINE_STRING(s), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    15 => {
      ()
      let attr = lexbuf.get_string(_capture_0_start, _capture_0_end)

      if env.is_interpolation {
        env.add_lexing_error(start=_match_start, end=_match_end, InterpInvalidAttribute)
      }
      env.add_token_with_loc(ATTRIBUTE(attr), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    16 => {
      ()
      let pkgname = lexbuf.get_string(_capture_0_start, _capture_0_end)

      env.add_token_with_loc(PACKAGE_NAME(pkgname), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    17 => {
      ()
      let hex = lexbuf.get_string(_capture_0_start, _capture_0_end)

      let literal = "\\x" + hex
      env.add_token_with_loc(BYTE(literal), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    18 => {
      ()
      let oct = lexbuf.get_string(_capture_0_start, _capture_0_end)

      let literal = "\\o" + oct
      env.add_token_with_loc(BYTE(literal), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    19 => {
      ()
      let ascii = lexbuf.get_char(_capture_0_start, _capture_0_end)

      let literal = ascii
      env.add_token_with_loc(BYTE([literal]), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    20 => {
      ()
      let e = lexbuf.get_char(_capture_0_start, _capture_0_end)

      let literal = "\\" + [e]
      env.add_token_with_loc(BYTE(literal), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    21 => {
      ()
      let repr = lexbuf.get_string(_capture_0_start, _capture_0_end)
      let _ = repr

      invalid_byte(lexbuf, env~, start=_capture_0_start)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    22 => {
      ()

      env.add_token_with_loc(AMPERAMPER, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    23 => {
      ()

      env.add_token_with_loc(AMPER, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    24 => {
      ()

      env.add_token_with_loc(CARET, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    25 => {
      ()

      env.add_token_with_loc(LPAREN, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    26 => {
      ()

      env.add_token_with_loc(RPAREN, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    27 => {
      ()
      let op = lexbuf.get_char(_capture_0_start, _capture_0_end)
      let repr = lexbuf.get_string(_capture_1_start, _capture_1_end)
      let _ = repr

      env.add_token_with_loc(AUGMENTED_ASSIGNMENT([op]), start=_capture_1_start, end=_capture_1_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    28 => {
      ()

      env.add_token_with_loc(INFIX3("*"), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    29 => {
      ()

      env.add_token_with_loc(INFIX3("/"), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    30 => {
      ()

      env.add_token_with_loc(INFIX3("%"), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    31 => {
      ()

      env.add_token_with_loc(COMMA, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    32 => {
      ()

      env.add_token_with_loc(DOT_LPAREN, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    33 => {
      ()
      let repr = lexbuf.get_string(_capture_0_start, _capture_0_end)
      let _ = repr
      let digits = lexbuf.get_string(_capture_1_start, _capture_1_end)

      let idx =
        try {
          @strconv.parse_int(digits)
        } catch {
          StrConvError(_) => {
            env.add_lexing_error(InvalidDotInt(repr), start=_capture_0_start, end=_capture_0_end)
            0
          }
        }
      env.add_token_with_loc(DOT_INT(idx), start=_capture_0_start, end=_capture_0_end, start_offset = 1)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    34 => {
      ()

      env.add_token_with_loc(ELLIPSIS, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    35 => {
      ()

      env.add_token_with_loc(RANGE_INCLUSIVE, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    36 => {
      ()

      env.add_token_with_loc(RANGE_EXCLUSIVE, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    37 => {
      ()

      env.add_token_with_loc(DOTDOT, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    38 => {
      ()
      let name = lexbuf.get_string(_capture_0_start, _capture_0_end)
      let _ = name

      env.add_token_with_loc(DOT_UIDENT(name), start=_capture_0_start, end=_capture_0_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    39 => {
      ()
      let name = lexbuf.get_string(_capture_0_start, _capture_0_end)
      let _ = name

      env.add_token_with_loc(DOT_LIDENT(name), start=_capture_0_start, end=_capture_0_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    40 => {
      ()

      env.add_token_with_loc(COLONCOLON, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    41 => {
      ()

      env.add_token_with_loc(COLON, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    42 => {
      ()

      env.add_token_with_loc(SEMI(true), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    43 => {
      ()

      env.add_token_with_loc(INFIX1("=="), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    44 => {
      ()

      env.add_token_with_loc(EQUAL, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    45 => {
      ()

      env.add_token_with_loc(INFIX1("<="), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    46 => {
      ()

      env.add_token_with_loc(INFIX1(">="), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    47 => {
      ()

      env.add_token_with_loc(INFIX2(">>"), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    48 => {
      ()

      env.add_token_with_loc(INFIX1(">"), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    49 => {
      ()

      env.add_token_with_loc(INFIX2("<<"), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    50 => {
      ()

      env.add_token_with_loc(INFIX1("<"), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    51 => {
      ()

      env.add_token_with_loc(LBRACKET, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    52 => {
      ()

      env.add_token_with_loc(RBRACKET, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    53 => {
      ()

      env.add_token_with_loc(LBRACE, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    54 => {
      ()

      env.add_token_with_loc(RBRACE, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    55 => {
      ()

      env.add_token_with_loc(PIPE, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    56 => {
      ()

      env.add_token_with_loc(BARBAR, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    57 => {
      ()

      env.add_token_with_loc(BAR, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    58 => {
      ()

      env.add_token_with_loc(PLUS, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    59 => {
      ()

      env.add_token_with_loc(MINUS, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    60 => {
      ()

      env.add_token_with_loc(QUESTION, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    61 => {
      ()

      env.add_token_with_loc(INFIX1("!="), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    62 => {
      ()

      env.add_token_with_loc(EXCLAMATION, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    63 => {
      ()
      let integer = lexbuf.get_string(_capture_0_start, _capture_0_end)
      let _ = integer

      lexbuf.reset(pos=_capture_0_end)
      env.add_token_with_loc(INT(integer), start=_capture_0_start, end=_capture_0_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    64 => {
      ()
      let float = lexbuf.get_string(_capture_0_start, _capture_0_end)

      env.add_token_with_loc(FLOAT(float), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    65 => {
      ()
      let integer = lexbuf.get_string(_capture_0_start, _capture_0_end)

      env.add_token_with_loc(INT(integer), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    66 => {
      ()

      let end = lexbuf.curr_pos()
      env.add_token_with_loc(EOF, start=end, end=end)
    
    }
    67 => {
      ()
      let raw = lexbuf.get_string(_capture_0_start, _capture_0_end)

      let token : Token = if raw is "Regex" {
        UIDENT_REGEX
      } else {
        UIDENT(raw)
      }
      env.add_token_with_loc(token, start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    68 => {
      ()
      let raw = lexbuf.get_string(_capture_0_start, _capture_0_end)

      env.add_token_with_loc(POST_LABEL(raw), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    69 => {
      ()
      let raw = lexbuf.get_string(_capture_0_start, _capture_0_end)

      if reserved_keyword_table.contains(raw) {
        env.add_lexing_error(Reserved_keyword(raw), start=_match_start, end=_match_end)
      }
      env.add_token_with_loc(
        match keyword_table.get(raw) {
          None => LIDENT(raw)
          Some(tok) => tok
        },
        start=_match_start, end=_match_end
      )
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    70 => {
      ()
      let c = lexbuf.get_char(_capture_0_start, _capture_0_end)

      env.add_lexing_error(IllegalCharacter(c), start=_match_start, end=_match_end)
      tokens(lexbuf, env~, preserve_comment~)
    
    }
    _ => panic()
  }
}





