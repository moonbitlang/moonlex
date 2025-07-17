///|
fn token_new(
  curr : @bytes.View,
  base~ : @bytes.View,
) -> (@bytes.View, Token, Int, Int) {
  match curr using regex {
    [] => {
      let offset = calc_offset(base~, curr)
      (curr, EOI, offset, offset)
    }
    ["[ \t\r\n]+", .. next] => token_new(next, base~)
    ["//[^\n]*\n?", .. next] => token_new(next, base~)
    [
      "rule",
      "[ \t\r\n]+",
      "[a-z_][A-Za-z_0-9]*" as t1,
      "[^{]+" as t2,
      "[ \t\r\n]*",
      "{",
      .. next,
    ] =>
      (
        next,
        RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE(
          (decode_utf8(t1), decode_utf8(t1) + decode_utf8(t2)),
        ),
        calc_offset(base~, curr),
        calc_offset(base~, next),
      )
    ["parse", "[ \t\r\n]*", "{", .. next] =>
      (next, PARSE_LBRACE, calc_offset(base~, curr), calc_offset(base~, next))
    ["=>", .. next] =>
      (next, FAT_ARROW, calc_offset(base~, curr), calc_offset(base~, next))
    ["_", .. next] =>
      (next, UNDERSCORE, calc_offset(base~, curr), calc_offset(base~, next))
    ["{", .. next] => {
      let buffer = StringBuilder::new()
      let next2 = code_rbrace_new(next, buffer~)
      (
        next2,
        LBRACE_CODE_RBRACE(buffer.to_string()),
        calc_offset(base~, curr),
        calc_offset(base~, next2),
      )
    }
    ["}", .. next] =>
      (next, RBRACE, calc_offset(base~, curr), calc_offset(base~, next))
    ["\\(", .. next] =>
      (next, LPAREN, calc_offset(base~, curr), calc_offset(base~, next))
    ["\\)", .. next] =>
      (next, RPAREN, calc_offset(base~, curr), calc_offset(base~, next))
    ["\\[", .. next] =>
      (next, LBRACKET, calc_offset(base~, curr), calc_offset(base~, next))
    ["\\]", .. next] =>
      (next, RBRACKET, calc_offset(base~, curr), calc_offset(base~, next))
    ["=", .. next] =>
      (next, EQ, calc_offset(base~, curr), calc_offset(base~, next))
    [";", .. next] =>
      (next, SEMICOLON, calc_offset(base~, curr), calc_offset(base~, next))
    ["\\|", .. next] =>
      (next, BAR, calc_offset(base~, curr), calc_offset(base~, next))
    ["\\*", .. next] =>
      (next, STAR, calc_offset(base~, curr), calc_offset(base~, next))
    ["\\+", .. next] =>
      (next, PLUS, calc_offset(base~, curr), calc_offset(base~, next))
    ["\\?", .. next] =>
      (next, QUESTION, calc_offset(base~, curr), calc_offset(base~, next))
    ["-", .. next] =>
      (next, MINUS, calc_offset(base~, curr), calc_offset(base~, next))
    ["\\^", .. next] =>
      (next, CARET, calc_offset(base~, curr), calc_offset(base~, next))
    ["\\\\", .. next] =>
      (next, BACKSLASH, calc_offset(base~, curr), calc_offset(base~, next))
    ["'", "(?utf8:[^'\\\\])" as t, "'", .. next] =>
      (next, CHAR(t), calc_offset(base~, curr), calc_offset(base~, next))
    ["'", "\\\\b", "'", .. next] =>
      (
        next,
        CHAR('\u{0008}'),
        calc_offset(base~, curr),
        calc_offset(base~, next),
      )
    ["'", "\\\\t", "'", .. next] =>
      (next, CHAR('\t'), calc_offset(base~, curr), calc_offset(base~, next))
    ["'", "\\\\v", "'", .. next] =>
      (
        next,
        CHAR('\u{000B}'),
        calc_offset(base~, curr),
        calc_offset(base~, next),
      )
    ["'", "\\\\r", "'", .. next] =>
      (next, CHAR('\r'), calc_offset(base~, curr), calc_offset(base~, next))
    ["'", "\\\\n", "'", .. next] =>
      (next, CHAR('\n'), calc_offset(base~, curr), calc_offset(base~, next))
    ["'", "\\\\\\\\", "'", .. next] =>
      (next, CHAR('\\'), calc_offset(base~, curr), calc_offset(base~, next))
    ["'", "\\\\'", "'", .. next] =>
      (next, CHAR('\''), calc_offset(base~, curr), calc_offset(base~, next))
    ["'", "\\\\x", "[0-9A-Fa-f][0-9A-Fa-f]" as t, "'", .. next] => {
      let code = (try? @strconv.parse_int(decode_utf8(t), base=16)).unwrap()
      (
        next,
        CHAR(code.unsafe_to_char()),
        calc_offset(base~, curr),
        calc_offset(base~, next),
      )
    }
    ["'", "\\\\u", "[0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f]" as t, "'", .. next] => {
      let code = (try? @strconv.parse_int(decode_utf8(t), base=16)).unwrap()
      (
        next,
        CHAR(code.unsafe_to_char()),
        calc_offset(base~, curr),
        calc_offset(base~, next),
      )
    }
    ["'", "\\\\u{", "[0-9A-Fa-f]+" as t, "}'", .. next] => {
      let code = (try? @strconv.parse_int(decode_utf8(t), base=16)).unwrap()
      (
        next,
        CHAR(code.unsafe_to_char()),
        calc_offset(base~, curr),
        calc_offset(base~, next),
      )
    }
    ["\"", .. next] => {
      let buffer = StringBuilder::new()
      let next2 = string_inner_rquote_new(next, buffer~)
      (
        next2,
        STRING(buffer.to_string()),
        calc_offset(base~, curr),
        calc_offset(base~, next2),
      )
    }
    ["[a-z_][A-Za-z_0-9]*" as t, .. next] =>
      (
        next,
        match t {
          "eof" => EOF
          "regex" => REGEX
          "as" => AS
          _ => LC_IDENT(decode_utf8(t))
        },
        calc_offset(base~, curr),
        calc_offset(base~, next),
      )
    _ => panic()
  }
}

///|
fn string_inner_rquote_new(
  curr : @bytes.View,
  buffer~ : StringBuilder,
) -> @bytes.View {
  match curr using regex {
    ["\"", .. next] => next
    ["[^\"\\\\]" as t, .. next] => {
      buffer.write_char(t.to_char())
      string_inner_rquote_new(next, buffer~)
    }
    ["\\\\b", .. next] => {
      buffer.write_char('\u{0008}')
      string_inner_rquote_new(next, buffer~)
    }
    ["\\\\t", .. next] => {
      buffer.write_char('\t')
      string_inner_rquote_new(next, buffer~)
    }
    ["\\\\v", .. next] => {
      buffer.write_char('\u{000B}')
      string_inner_rquote_new(next, buffer~)
    }
    ["\\\\r", .. next] => {
      buffer.write_char('\r')
      string_inner_rquote_new(next, buffer~)
    }
    ["\\\\n", .. next] => {
      buffer.write_char('\n')
      string_inner_rquote_new(next, buffer~)
    }
    ["\\\\\\\\", .. next] => {
      buffer.write_char('\\')
      string_inner_rquote_new(next, buffer~)
    }
    ["\\\\\"", .. next] => {
      buffer.write_char('\"')
      string_inner_rquote_new(next, buffer~)
    }
    ["\\\\x", "[0-9A-Fa-f][0-9A-Fa-f]" as t, .. next] => {
      let code = (try? @strconv.parse_int(decode_utf8(t), base=16)).unwrap()
      buffer.write_char(code.unsafe_to_char())
      string_inner_rquote_new(next, buffer~)
    }
    ["\\\\u", "[0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f]" as t, .. next] => {
      let code = (try? @strconv.parse_int(decode_utf8(t), base=16)).unwrap()
      buffer.write_char(code.unsafe_to_char())
      string_inner_rquote_new(next, buffer~)
    }
    ["\\\\u{", "[0-9A-Fa-f]+" as t, "}", .. next] => {
      let code = (try? @strconv.parse_int(decode_utf8(t), base=16)).unwrap()
      buffer.write_char(code.unsafe_to_char())
      string_inner_rquote_new(next, buffer~)
    }
    ["(?utf8:.)" as c, .. next] => {
      buffer.write_char(c)
      string_inner_rquote_new(next, buffer~)
    }
    [] => abort("Unexpected end of input")
    _ => panic()
  }
}

///|
fn code_rbrace_new(curr : @bytes.View, buffer~ : StringBuilder) -> @bytes.View {
  match curr using regex {
    ["//[^\n]*\n?" as t, .. next] => {
      buffer.write_string(decode_utf8(t))
      code_rbrace_new(next, buffer~)
    }
    ["\"([^\"\\\\]|\\\\.)*\"" as t, .. next] => {
      buffer.write_string(decode_utf8(t))
      code_rbrace_new(next, buffer~)
    }
    ["'[^\\\\']'" as t, .. next] => {
      buffer.write_string(decode_utf8(t))
      code_rbrace_new(next, buffer~)
    }
    ["{", .. next] => {
      buffer.write_string("{")
      let next2 = code_rbrace_new(next, buffer~)
      buffer.write_string("}")
      code_rbrace_new(next2, buffer~)
    }
    ["}", .. next] => next
    ["(?utf8:.)" as c, .. next] => {
      buffer.write_char(c)
      code_rbrace_new(next, buffer~)
    }
    [] => abort("Unexpected end of input")
    _ => panic()
  }
}

///|
fn calc_offset(base~ : @bytes.View, view : @bytes.View) -> Int {
  view.start_offset() - base.start_offset()
}
