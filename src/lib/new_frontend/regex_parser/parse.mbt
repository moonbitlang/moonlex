///|
pub fn parse(
  regex : @ast.Regex,
  named_regexes~ : @immut/sorted_map.T[String, Regex]
) -> Regex {
  let source = match regex {
    Literal(lit, ..) => lit
    Named(id) =>
      // "cgLv3pS_" is a magic prefix to avoid clashes with user's input
      "{{cgLv3pS_\{id.name}}}"
    Interp(interps, ..) =>
      interps
      .map(fn(elem) {
        match elem {
          InterpLit(repr~, ..) => repr
          InterpSource({ source, .. }) => "{{cgLv3pS_\{source}}}"
        }
      })
      .join("")
  }
  // TODO: map positions
  let lexbuf = StringLexbuf::from_string(source)
  let k_regex = regex_eof?(fn() { (token(lexbuf), (), ()) }, ()).unwrap()
  let regex = k_regex({ named_regexes, })
  regex
}
