///|
fn generate(term : @ast.Term, source~ : Bytes) -> String {
  let term = expand_term(term, named_regexes=@immut/sorted_map.new(), source~)
  let buffer = StringBuilder::new()
  print_term(buffer, term, source~)
  buffer.to_string()
}

///|
fn expand_terms(
  terms : Array[@ast.Term],
  named_regexes~ : @immut/sorted_map.T[String, @regex.Regex],
  source~ : Bytes
) -> Array[@ast.Term] {
  let named_regexes = terms.fold(init=named_regexes, fn(acc, term) {
    if term is NamedRegex(id, regex, ..) {
      acc.add(id.name, @regex_parser.parse(regex, named_regexes=acc))
    } else {
      acc
    }
  })
  terms.map(fn(term) { expand_term(term, named_regexes~, source~) })
}

///|
fn expand_term(
  term : @ast.Term,
  named_regexes~ : @immut/sorted_map.T[String, @regex.Regex],
  source~ : Bytes
) -> @ast.Term {
  match term {
    Code(_) | GeneratedCode(_) | NamedRegex(_) => term
    Nested(terms, loc~) =>
      Nested(expand_terms(terms, named_regexes~, source~), loc~)
    LexDef(id, cases, loc~) => {
      let rule : @type.Rule = {
        name: "",
        signature: "",
        lexee_var: id.name,
        patterns: cases.map(fn(case) {
          let re = loop @regex.epsilon, case.pattern[:] {
            acc, [] => acc
            acc, [Regex(re), .. rest] =>
              continue @regex.seq(acc, @regex_parser.parse(re, named_regexes~)),
                rest
            acc, [RegexAs(re, id, ..), .. rest] =>
              continue @regex.seq(
                  acc,
                  @regex.bind(@regex_parser.parse(re, named_regexes~), id.name),
                ),
                rest
          }
          (re, generate(case.action, source~))
        }),
      }
      let code = @codegen.codegen_rule_inner(
        rule,
        code_unit=CodeUnit1,
        default_encoding=Some(Utf8),
      )
      let code =
        $|{
        $|  ()
        $|\{code}
        $|}
      GeneratedCode(code, loc~)
    }
  }
}
