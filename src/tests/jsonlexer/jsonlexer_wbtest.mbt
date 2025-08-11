///|
test {
  let json_str =
    #|{"cities":["New York","Bangalore","San Francisco"],"name":"Pankaj Kumar","age":32}
  let lexbuf = @lexbuf.StringLexbuf::from_string(json_str)
  let tokens = []
  while true {
    try token(lexbuf) catch {
      EndOfFile => break
      err => raise err
    } noraise {
      tok => tokens.push(tok)
    }
  }
  @json.inspect(tokens, content=[
    { "$tag": "LBRACE" },
    { "$tag": "STRING", "0": "\"cities\"" },
    { "$tag": "COLON" },
    { "$tag": "LBRACKET" },
    { "$tag": "STRING", "0": "\"New York\"" },
    { "$tag": "COMMA" },
    { "$tag": "STRING", "0": "\"Bangalore\"" },
    { "$tag": "COMMA" },
    { "$tag": "STRING", "0": "\"San Francisco\"" },
    { "$tag": "RBRACKET" },
    { "$tag": "COMMA" },
    { "$tag": "STRING", "0": "\"name\"" },
    { "$tag": "COLON" },
    { "$tag": "STRING", "0": "\"Pankaj Kumar\"" },
    { "$tag": "COMMA" },
    { "$tag": "STRING", "0": "\"age\"" },
    { "$tag": "COLON" },
    { "$tag": "NUMBER", "0": "32" },
    { "$tag": "RBRACE" },
  ])
}
