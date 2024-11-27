test {
  let str = "aaabbb"
  let lexbuf = Lexbuf::from_string(str)

  inspect!(test_func(lexbuf), content="aaa")
}