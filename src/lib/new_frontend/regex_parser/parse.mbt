///|
fn tokenize_string_literal(lit : String) -> Iter[(Token, Unit, Unit)] {
  let lexbuf = StringLexbuf::from_string(lit)
  Iter::new(fn(yield_) {
    while token(lexbuf) is tok && not(tok is EOF) {
      if yield_((tok, (), ())) is IterEnd {
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
      Literal(lit, ..) => tokenize_string_literal(lit).run(yield_)
      Named(id) => yield_((TOKEN(id.name), (), ()))
      Interp(interps, ..) =>
        for interp in interps {
          match interp {
            InterpLit(repr~, ..) =>
              if tokenize_string_literal(repr).run(yield_) is IterEnd {
                break IterEnd
              }
            InterpSource({ source, .. }) =>
              if yield_((TOKEN(source), (), ())) is IterEnd {
                break IterEnd
              }
          }
        } else {
          IterContinue
        }
    }
  }).to_array()
  let k_regex = parse_regex?(tokens, initial_pos=()).unwrap()
  let regex = k_regex({ named_regexes, })
  regex
}
