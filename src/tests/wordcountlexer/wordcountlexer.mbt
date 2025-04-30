
// translate from https://ohama.github.io/ocaml/ocamllex-tutorial/examples/wordcount/


fn count[T : @lexbuf.IStringLexbuf](lines : Int, words : Int, chars : Int, lexbuf : T) -> (Int, Int, Int)  {
  // The matched pattern id
  let mut matched = @int.max_value
  let mut _end_pos = -1
  let mut _start_pos = lexbuf.curr_pos()
  let mut _capture_0_start = -1
  let mut _capture_0_end = -1
  let mut _capture_1_start = -1
  let mut _capture_1_end = -1
  loop 0 {
    0 => {
      if matched >= 3 {
        matched = 3
        _end_pos = lexbuf.curr_pos()
      }
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
      if matched >= 1 {
        matched = 1
        _end_pos = lexbuf.curr_pos()
        _capture_0_start = _start_pos
        _capture_0_end = _end_pos
      }
      continue match lexbuf.next_as_int() {
        0..=8 => 1
        11..=31 => 1
        33..=1114111 => 1
        _ => break
      }
    }
    2 => {
      if matched >= 2 {
        matched = 2
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    3 => {
      if matched >= 0 {
        matched = 0
        _end_pos = lexbuf.curr_pos()
      }
      break
    }
    _ => panic()
  }

  guard matched <= 3 else {
    // No pattern matched
    panic()
  }

  lexbuf.reset(pos=_end_pos)
  match matched {
    0 => {
      ()
 count(lines + 1, words, chars + 1, lexbuf) 
    }
    1 => {
      ()
      let _start_pos_of_word = _capture_0_start
      let _end_pos_of_word = _capture_0_end
      let word = lexbuf.get_string(_start_pos_of_word, _end_pos_of_word)

      let new_chars = chars + word.length()
      count(lines, words + 1, new_chars, lexbuf)
    
    }
    2 => {
      ()
 count(lines, words, chars + 1, lexbuf) 
    }
    3 => {
      ()
 (lines, words, chars) 
    }
    _ => panic()
  }
}




