test (it : @test.T) {
  let parser_buf = @parser.ParserBuf::from_string(
    #| {
    #| // translate from https://ohama.github.io/ocaml/ocamllex-tutorial/examples/wordcount/
    #| }
    #| rule count(lines : Int, words : Int, chars : Int) -> (Int, Int, Int) {
    #| parse {
    #|   '\n' => { count(lines + 1, words, chars + 1, lexbuf) }
    #|   [^ ' ' '\t' '\n' ]+ as word => {
    #|     let new_chars = chars + word.length()
    #|     count(lines, words + 1, new_chars, lexbuf)
    #|   }
    #|   _ => { count(lines, words, chars + 1, lexbuf) }
    #|   "" => { (lines, words, chars) }
    #| }
    #| }
    #| {
    #| test {
    #|   let str = "Hi\nWelcome to MoonbitLex\n"
    #|   let lexbuf = Lexbuf::from_string(str)
    #|   inspect!(count(0, 0, 0, lexbuf), content="(2, 4, 25)")
    #| }
    #| }
    ,
  )
  guard let Some((_, lex)) = parser_buf.lex() else { _ => abort("") }
  it.write(@codegen.codegen_lex(lex))
  it.snapshot!(filename="fortytwolexer/42_lexer_test.mbt.inc")
}

test (it : @test.T) {
  let parser_buf = @parser.ParserBuf::from_string(
    #|{
    #|enum Token {
    #|  WHITESPACE
    #|  NUMBER(String)
    #|  STRING(String)
    #|  LBRACE
    #|  RBRACE
    #|  LBRACKET
    #|  RBRACKET
    #|  COMMA
    #|  COLON
    #|  TRUE
    #|  FALSE
    #|  NULL
    #|} derive(ToJson)
    #|
    #|type! LexError {
    #|  EndOfFile
    #|  UnexpectedEndOfFile
    #|  Unrecognized(String)
    #|}
    #|}
    #|
    #|rule token() -> Token!LexError {
    #|  parse {
    #|    [' ' '\t' '\r' '\n'] => { WHITESPACE }
    #|    ('-'? ('0' | ['1'-'9'] ['0'-'9']* ('.' ['0'-'9']+)?) (['E' 'e'] ['+' '-']? ['0'-'9']+)?) as t => { NUMBER(t) }
    #|    '"' as t => {
    #|      let buf = StringBuilder::new()
    #|      buf.write_string(t)
    #|      lex_string!(buf, lexbuf)
    #|      STRING(buf.to_string())
    #|    }
    #|    '{' => { LBRACE }
    #|    '}' => { RBRACE }
    #|    '[' => { LBRACKET }
    #|    ']' => { RBRACKET }
    #|    ',' => { COMMA }
    #|    ':' => { COLON }
    #|    "true" => { TRUE }
    #|    "false" => { FALSE }
    #|    "null" => { NULL }
    #|    _ as t => { raise(Unrecognized(t)) }
    #|    "" => { raise(EndOfFile) }
    #|  }
    #|}
    #|
    #|rule lex_string(buf : StringBuilder) -> Unit!LexError {
    #|  parse {
    #|    '"' as t => { buf.write_string(t) }
    #|    ( '\\' '"'
    #|    | '\\' '\\'
    #|    | '\\' '/'
    #|    | '\\' 'b'
    #|    | '\\' 'f'
    #|    | '\\' 'n'
    #|    | '\\' 'r'
    #|    | '\\' 't'
    #|    | '\\' 'u' ['0'-'9' 'A'-'F' 'a'-'f'] ['0'-'9' 'A'-'F' 'a'-'f'] ['0'-'9' 'A'-'F' 'a'-'f'] ['0'-'9' 'A'-'F' 'a'-'f']) as t => { 
    #|      buf.write_string(t)
    #|      lex_string!(buf, lexbuf)
    #|    }
    #|    [^ '"' '\\' '\x00'-'\x1F' '\x7f'] as t => { 
    #|      buf.write_string(t)
    #|      lex_string!(buf, lexbuf)
    #|    }
    #|    _ as t => { raise(Unrecognized(t)) }
    #|    "" => { raise(UnexpectedEndOfFile) }
    #|  }
    #|}
    #|
    #|{
    #|test {
    #|  let json_str = (
    #|    #|{"cities":["New York","Bangalore","San Francisco"],"name":"Pankaj Kumar","age":32}
    #|  )
    #|  let lexbuf = Lexbuf::from_string(json_str)
    #|  let tokens = []
    #|  while true {
    #|    try token!(lexbuf) catch! {
    #|      EndOfFile => { break }
    #|    } else {
    #|      tok => { tokens.push(tok) }
    #|    }
    #|  }
    #|
    #|  @json.inspect!(
    #|    tokens,
    #|    content=[
    #|      { "$tag": "LBRACE" },
    #|      { "$tag": "STRING", "0": "\"cities\"" },
    #|      { "$tag": "COLON" },
    #|      { "$tag": "LBRACKET" },
    #|      { "$tag": "STRING", "0": "\"New York\"" },
    #|      { "$tag": "COMMA" },
    #|      { "$tag": "STRING", "0": "\"Bangalore\"" },
    #|      { "$tag": "COMMA" },
    #|      { "$tag": "STRING", "0": "\"San Francisco\"" },
    #|      { "$tag": "RBRACKET" },
    #|      { "$tag": "COMMA" },
    #|      { "$tag": "STRING", "0": "\"name\"" },
    #|      { "$tag": "COLON" },
    #|      { "$tag": "STRING", "0": "\"Pankaj Kumar\"" },
    #|      { "$tag": "COMMA" },
    #|      { "$tag": "STRING", "0": "\"age\"" },
    #|      { "$tag": "COLON" },
    #|      { "$tag": "NUMBER", "0": "32" },
    #|      { "$tag": "RBRACE" },
    #|    ],
    #|  )
    #|}
    #|}
    ,
  )
  guard let Some((_, lex)) = parser_buf.lex() else { _ => abort("") }
  it.write(@codegen.codegen_lex(lex))
  it.snapshot!(filename="jsonlexer/json_lexer_test.mbt.inc")
}
