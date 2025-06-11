///|
test {
  let str = "aaabbb"
  let lexbuf = @lexbuf.StringLexbuf::from_string(str)
  inspect(test_func(lexbuf), content="aaa")
}
