
// translate from https://ohama.github.io/ocaml/ocamllex-tutorial/examples/wordcount/


fn[T : @lexbuf.IStringLexbuf] _count(lines : Int, words : Int, chars : Int, lexbuf : T) -> (Int, Int, Int)  {
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
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        0..=8 => 1
        9 => 2
        10 => 3
        11..=31 => 1
        32 => 2
        33..=1114111 => 1
        _ => break
      }
    }
    1 => {
      _match_pattern = 1
      _match_end = lexbuf.curr_pos()
      _capture_0_start = _match_start
      _capture_0_end = _match_end
      continue match lexbuf.next_as_int() {
        0..=8 => 1
        11..=31 => 1
        33..=1114111 => 1
        _ => break
      }
    }
    2 => {
      _match_pattern = 2
      _match_end = lexbuf.curr_pos()
      break
    }
    3 => {
      _match_pattern = 0
      _match_end = lexbuf.curr_pos()
      break
    }
    _ => panic()
  }

  guard _match_pattern <= 3 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_match_end)
  match _match_pattern {
    0 => {
      ()
 _count(lines + 1, words, chars + 1, lexbuf) 
    }
    1 => {
      ()
      let word = lexbuf.get_string(_capture_0_start, _capture_0_end)

      let new_chars = chars + word.length()
      _count(lines, words + 1, new_chars, lexbuf)
    
    }
    2 => {
      ()
 _count(lines, words, chars + 1, lexbuf) 
    }
    3 => {
      ()
 (lines, words, chars) 
    }
    _ => panic()
  }
}




