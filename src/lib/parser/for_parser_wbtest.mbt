// Generated by `moon tool embed --text`, do not edit.

///|
let lexer_src : String =
  #|{}
  #|
  #|let ws = [' ' '\t' '\r' '\n']+;
  #|let hex_digit = ['0'-'9' 'A'-'F' 'a'-'f'];
  #|let lc_ident = ['a'-'z' '_'] ['A'-'Z' 'a'-'z' '_' '0'-'9']*;
  #|
  #|rule token[T](lexbuf : @lexbuf.T[T, Char, String, Int]) -> Token {
  #|  parse {
  #|    ws => { token(lexbuf) }
  #|    "//" [^ '\n']* '\n'? => { token(lexbuf) }
  #|    eof => { EOI }
  #|    "rule" ws ((lc_ident as t1) [^ '{']+ as t2) ws? '{' => {
  #|      RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE((t1, t2))
  #|    }
  #|    "parse" ws? "{" => { PARSE_LBRACE }
  #|    "=>" => { FAT_ARROW }
  #|    "_" => { UNDERSCORE }
  #|    "{" => { 
  #|      let buffer = StringBuilder::new()
  #|      code_rbrace(buffer, lexbuf)
  #|      LBRACE_CODE_RBRACE(buffer.to_string())
  #|    }
  #|    "}" => { RBRACE }
  #|    "(" => { LPAREN }
  #|    ")" => { RPAREN }
  #|    "[" => { LBRACKET }
  #|    "]" => { RBRACKET }
  #|    "=" => { EQ }
  #|    ":" => { COLON }
  #|    ";" => { SEMICOLON }
  #|    "|" => { BAR }
  #|    "*" => { STAR }
  #|    "+" => { PLUS }
  #|    "?" => { QUESTION }
  #|    "-" => { MINUS }
  #|    "^" => { CARET }
  #|    '\'' ([^ '\'' '\\'] as t) '\'' => { CHAR(t) }
  #|    '\'' "\\b" '\'' => { CHAR('\u{08}') }
  #|    '\'' "\\t" '\'' => { CHAR('\t') }
  #|    '\'' "\\v" '\'' => { CHAR('\u{0b}') }
  #|    '\'' "\\r" '\'' => { CHAR('\r') }
  #|    '\'' "\\n" '\'' => { CHAR('\n') }
  #|    '\'' "\\\\" '\'' => { CHAR('\\') }
  #|    '\'' "\\'" '\'' => { CHAR('\'') }
  #|    '\'' "\\x" ((hex_digit hex_digit) as t) '\'' => {
  #|      let code = @strconv.parse_int?(t, base=16).unwrap()
  #|      CHAR(Char::from_int(code))
  #|    }
  #|    '\'' "\\u" ((hex_digit hex_digit hex_digit hex_digit) as t) '\'' => {
  #|      let code = @strconv.parse_int?(t, base=16).unwrap()
  #|      CHAR(Char::from_int(code))
  #|    }
  #|    '\'' "\\u{" (hex_digit+ as t) '}' '\'' => {
  #|      let code = @strconv.parse_int?(t, base=16).unwrap()
  #|      CHAR(Char::from_int(code))
  #|    }
  #|    '"' => {
  #|      let buffer = StringBuilder::new()
  #|      string_inner_rquote(buffer, lexbuf)
  #|      STRING(buffer.to_string())
  #|    }
  #|    lc_ident as t => {
  #|      match t {
  #|        "eof" => EOF
  #|        "let" => LET
  #|        "as" => AS
  #|        _ => LC_IDENT(t)
  #|      }
  #|    }
  #|  }
  #|}
  #|
  #|rule string_inner_rquote[T](buffer : StringBuilder, lexbuf : @lexbuf.T[T, Char, String, Int]) -> Unit {
  #|  parse {
  #|    '"' => { () }
  #|    "\\b" => {
  #|      buffer.write_char('\u{08}')
  #|      string_inner_rquote(buffer, lexbuf)
  #|    }
  #|    "\\t" => {
  #|      buffer.write_char('\t')
  #|      string_inner_rquote(buffer, lexbuf)
  #|    }
  #|    "\\v" => {
  #|      buffer.write_char('\u{0b}')
  #|      string_inner_rquote(buffer, lexbuf)
  #|    }
  #|    "\\r" => {
  #|      buffer.write_char('\r')
  #|      string_inner_rquote(buffer, lexbuf)
  #|    }
  #|    "\\n" => {
  #|      buffer.write_char('\n')
  #|      string_inner_rquote(buffer, lexbuf)
  #|    }
  #|    "\\\\" => {
  #|      buffer.write_char('\\')
  #|      string_inner_rquote(buffer, lexbuf)
  #|    }
  #|    "\\\"" => {
  #|      buffer.write_char('"')
  #|      string_inner_rquote(buffer, lexbuf)
  #|    }
  #|    "\\x" ((hex_digit hex_digit) as t) '\'' => {
  #|      let code = @strconv.parse_int?(t, base=16).unwrap()
  #|      buffer.write_char(Char::from_int(code))
  #|    }
  #|    "\\u" ((hex_digit hex_digit hex_digit hex_digit) as t) '\'' => {
  #|      let code = @strconv.parse_int?(t, base=16).unwrap()
  #|      buffer.write_char(Char::from_int(code))
  #|    }
  #|    "\\u{" (hex_digit+ as t) '}' '\'' => {
  #|      let code = @strconv.parse_int?(t, base=16).unwrap()
  #|      buffer.write_char(Char::from_int(code))
  #|    }
  #|    _ as t => {
  #|      buffer.write_char(t)
  #|      string_inner_rquote(buffer, lexbuf)
  #|    }
  #|    eof => { abort("Unexpected end of input") }
  #|  }
  #|}
  #|
  #|rule code_rbrace[T](buffer : StringBuilder, lexbuf : @lexbuf.T[T, Char, String, Int]) -> Unit {
  #|  parse {
  #|    ("//" [^ '\n']+ '\n') as t => {
  #|      buffer.write_string(t)
  #|      code_rbrace(buffer, lexbuf)
  #|    }
  #|    ('"' ([^ '"' '\\'] | '\\' _)* '"') as t => {
  #|      buffer.write_string(t)
  #|      code_rbrace(buffer, lexbuf)
  #|    }
  #|    ('\'' [^ '\'' '\\'] '\'') as t => {
  #|      buffer.write_string(t)
  #|      code_rbrace(buffer, lexbuf)
  #|    }
  #|    "{" => {
  #|      buffer.write_string("{")
  #|      code_rbrace(buffer, lexbuf)
  #|      buffer.write_string("}")
  #|      code_rbrace(buffer, lexbuf)
  #|    }
  #|    "}" => { () }
  #|    _ as t => {
  #|      buffer.write_char(t)
  #|      code_rbrace(buffer, lexbuf)
  #|    }
  #|    eof => { abort("Unexpected end of input") }
  #|  }
  #|}
  #|
  #|{}
  #|
