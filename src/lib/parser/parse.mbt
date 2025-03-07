///|
pub fn parse_lex_from_string(input : String) -> @type.Lex!ParseError {
  let lexbuf = @lexbuf.from_string(input)
  lex_eoi!(
    fn() {
      let tok = token(lexbuf)
      (tok, (), ())
    },
    (),
  )
}

///|
pub fn parse_regex_from_string(input : String) -> @type.Regex!ParseError {
  let lexbuf = @lexbuf.from_string(input)
  regex_eoi!(
    fn() {
      let tok = token(lexbuf)
      (tok, (), ())
    },
    (),
  )
}
