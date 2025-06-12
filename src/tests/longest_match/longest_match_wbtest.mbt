///|
test {
  inspect(token(@lexbuf.StringLexbuf::from_string("le")), content="ident")
  inspect(token(@lexbuf.StringLexbuf::from_string("let")), content="keyword")
  inspect(token(@lexbuf.StringLexbuf::from_string("letx")), content="ident")
}
