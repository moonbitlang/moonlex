///|
test "parse_cli_args reads options and input file" {
  let options = parse_cli_args([
    "--code-unit", "1", "--default-encoding", "utf8", "-o", "generated.mbt", "lexer.mlex",
  ]) catch {
    err => fail(err.to_string())
  }
  assert_true(options.output_file == "generated.mbt")
  assert_true(options.input_file == "lexer.mlex")
  assert_true(options.code_unit is CodeUnit1)
  assert_true(options.default_encoding is Some(Utf8))
}

///|
test "parse_cli_args keeps defaults when optional args are omitted" {
  let options = parse_cli_args(["lexer.mlex"]) catch {
    err => fail(err.to_string())
  }
  assert_true(options.output_file == "")
  assert_true(options.input_file == "lexer.mlex")
  assert_true(options.code_unit is CodeUnit4)
  assert_true(options.default_encoding is None)
}

///|
test "cli_user_args drops native and js runtime prefixes" {
  assert_true(cli_user_args(["moonlex", "lexer.mlex"]) == ["lexer.mlex"])
  assert_true(
    cli_user_args(["node", "moonlex.cjs", "lexer.mlex"]) == ["lexer.mlex"],
  )
}
