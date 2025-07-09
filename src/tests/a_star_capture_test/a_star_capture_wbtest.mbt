///|
test {
  let str = "aaaa"
  let lexbuf = @lexbuf.StringLexbuf::from_string(str)
  inspect(test_func(lexbuf), content="a")
}
