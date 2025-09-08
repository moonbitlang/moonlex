///|
test {
  let str = "Hi\nWelcome to MoonbitLex\n"
  let lexbuf = @lexbuf.StringLexbuf::from_string(str)
  inspect(_count(0, 0, 0, lexbuf), content="(2, 4, 25)")
}
