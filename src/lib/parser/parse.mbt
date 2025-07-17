///|
pub fn parse_lex_from_string(input : String) -> @type.Lex raise ParseError {
  let bytes = @encoding.encode(UTF8, input)
  let base = bytes[:]
  let mut curr = base
  lex_eoi(
    fn() {
      let (next, tok, spos, epos) = token_new(curr, base~)
      curr = next
      (tok, spos, epos)
    },
    0,
  )(Context::{ named_regexes: @immut/sorted_map.new() })
}

///|
pub fn parse_regex_from_string(input : String) -> @type.Regex raise ParseError {
  let lexbuf = @lexbuf.StringLexbuf::from_string(input)
  regex_eoi(fn() { token(lexbuf) }, 0)(Context::{
    named_regexes: @immut/sorted_map.new(),
  })
}
