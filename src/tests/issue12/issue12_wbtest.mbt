test {
  let str = "aaabbb"
  let lexbuf = Lexbuf::from_string(str)

  // FIXME
  inspect!(test_func(lexbuf), content="aaabbb")
}