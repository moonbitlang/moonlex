///|
fn tokenize_string_literal(
  lit : String,
  initial_pos~ : Position
) -> Iter[(Token, Position, Position)] {
  let lexbuf = Lexbuf::from_string(lit)
  Iter::new(fn(yield_) {
    while token(lexbuf) is (tok, start, end) && not(tok is EOF) {
      if yield_(
          (tok, { ..initial_pos, cnum: start }, { ..initial_pos, cnum: end }),
        )
        is IterEnd {
        break IterEnd
      }
    } else {
      IterContinue
    }
  })
}

///|
pub fn parse(
  regex : @ast.Regex,
  named_regexes~ : @immut/sorted_map.T[String, Regex]
) -> Regex {
  let tokens = Iter::new(fn(yield_) {
    match regex {
      Literal(lit, loc~) =>
        tokenize_string_literal(lit, initial_pos=loc.start).run(yield_)
      Named(id) => yield_((TOKEN(id.name), id.loc.start, id.loc.end))
      Interp(interps, ..) =>
        for interp in interps {
          match interp {
            InterpLit(repr~, loc~) =>
              if tokenize_string_literal(repr, initial_pos=loc.start).run(
                  yield_,
                )
                is IterEnd {
                break IterEnd
              }
            InterpSource({ source, loc }) =>
              if yield_((TOKEN(source), loc.start, loc.end)) is IterEnd {
                break IterEnd
              }
          }
        } else {
          IterContinue
        }
    }
  }).to_array()
  let k_regex = parse_regex?(tokens).unwrap()
  let regex = k_regex({ named_regexes, })
  regex
}
