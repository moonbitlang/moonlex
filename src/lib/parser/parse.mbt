///|
pub fn parse_lex_from_string(input : String) -> @type.Lex raise ParseError {
  let lexbuf = @lexbuf.StringLexbuf::from_string(input)
  lex_eoi(fn() { token(lexbuf) }, 0)(Context::{
    named_regexes: @immut/sorted_map.new(),
  })
}

///|
pub fn parse_regex_from_string(input : String) -> @type.Regex raise ParseError {
  let lexbuf = @lexbuf.StringLexbuf::from_string(input)
  regex_eoi(fn() { token(lexbuf) }, 0)(Context::{
    named_regexes: @immut/sorted_map.new(),
  })
}
