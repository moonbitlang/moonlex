///|
test {
  let lexbuf = @lexbuf.StringLexbuf::from_string("%a\u{0}%")
  let tokens = []
  while true {
    let tok = token(lexbuf)
    tokens.push(tok)
    match tok {
      EOF => break
      _ => ()
    }
  }
  @json.inspect(tokens, content=[
    { "$tag": "PERCENT" },
    { "$tag": "NON_PERCENT" },
    { "$tag": "NON_PERCENT" },
    { "$tag": "PERCENT_EOF" },
    { "$tag": "EOF" },
  ])
}
