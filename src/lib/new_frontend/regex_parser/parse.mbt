///|
pub fn parse(
  regex : @ast.Regex,
  named_regexes~ : @immut/sorted_map.T[String, Regex]
) -> Regex {
  let source = match regex {
    Literal(lit, ..) => parse_string_literal(lit)
    Named(id) =>
      // "cgLv3pS_" is a magic prefix to avoid clashes with user's input
      "{{cgLv3pS_\{id.name}}}"
    Interp(interps, ..) =>
      interps
      .map(fn(elem) {
        match elem {
          InterpLit(repr~, ..) => parse_string_literal(repr)
          InterpSource({ source, .. }) => "{{cgLv3pS_\{source}}}"
        }
      })
      .join("")
  }
  // TODO: map positions
  let lexbuf = StringLexbuf::from_string(source)
  let tokens = []
  while token(lexbuf) is tok && not(tok is EOF) {
    tokens.push((tok, (), ()))
  }
  let k_regex = parse_regex?(tokens, initial_pos=()).unwrap()
  let regex = k_regex({ named_regexes, })
  regex
}
