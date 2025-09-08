///|
test {
  let lexbuf = @lexbuf.StringLexbuf::from_string("Hello\nworld!")
  let pos = _scan_newline(lexbuf)
  assert_eq(pos, 5)
}
