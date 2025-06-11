///|
test {
  let lexbuf = @lexbuf.StringLexbuf::from_string("Hello\nworld!")
  let pos = scan_newline(lexbuf)
  assert_eq(pos, 5)
}
