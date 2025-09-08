///|
test (it : @test.T) {
  let lex_ = parse_lex_from_string(lexer_src)
  it.writeln(lex_.to_json().stringify(indent=2))
  it.snapshot(filename="spec.json")
}
