

fn[T : @lexbuf.IStringLexbuf] lex_unicode(lexbuf : T) -> Int  {
  // The matched pattern id
  let mut _match_pattern = @int.max_value
  let mut _match_start = lexbuf.curr_pos()
  let mut _match_end = -1
  let mut _capture_0_start = -1
  let mut _capture_0_end = -1
  loop 0 {
    0 => {
      continue match lexbuf.next_as_int() {
        0..=12352 => 1
        12353..=12438 => 2
        12439..=12440 => 1
        12441..=12447 => 2
        12448..=25104 => 1
        25105 => 3
        25106..=134070 => 1
        134071 => 4
        134072..=1114111 => 1
        _ => break
      }
    }
    1 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      break
    }
    2 => {
      _match_pattern = 2
      _match_end = lexbuf.curr_pos()
      break
    }
    3 => {
      _match_pattern = 3
      _match_end = lexbuf.curr_pos()
      continue match lexbuf.next_as_int() {
        29233 => 5
        _ => break
      }
    }
    4 => {
      _match_pattern = 1
      _match_end = lexbuf.curr_pos()
      break
    }
    5 => {
      continue match lexbuf.next_as_int() {
        20013 => 6
        _ => break
      }
    }
    6 => {
      continue match lexbuf.next_as_int() {
        22269 => 7
        _ => break
      }
    }
    7 => {
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
 1 
    }
    1 => {
      ()
 2 
    }
    2 => {
      ()
 3 
    }
    3 => {
      ()
 4 
    }
    _ => panic()
  }
}




fn classify(str : String) -> Int {
  let lexbuf = @lexbuf.StringLexbuf::from_string(str)
  lex_unicode(lexbuf)
}
