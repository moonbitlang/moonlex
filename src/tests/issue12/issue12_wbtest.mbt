///|
test {
  let str = "aaabbb"
  let lexbuf = @lexbuf.from_string(str)
  inspect!(test_func(lexbuf), content="aaa")
}
