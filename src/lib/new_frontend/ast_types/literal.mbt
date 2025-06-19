///|
pub typealias String as CharLiteral

///|
pub typealias String as StringLiteral

///|
pub typealias String as ByteLiteral

///|
pub typealias String as BytesLiteral

///|
pub(all) struct InterpSource {
  source : String
  loc : Location
} derive(Show, ToJson)

///|
pub(all) enum InterpElem {
  InterpLit(repr~ : String, loc~ : Location)
  InterpSource(InterpSource)
} derive(Show, ToJson)

///|
pub typealias Array[InterpElem] as InterpLiteral

///|
pub fn parse_string_literal(lit : StringLiteral) -> String {
  fn hex(c : Char) -> Int {
    match c {
      '0'..='9' => c.to_int() - '0'
      'a'..='f' => c.to_int() - 'a' + 10
      'A'..='F' => c.to_int() - 'A' + 10
      _ => panic()
    }
  }

  let buffer = StringBuilder::new()
  loop lit[:] {
    [] => break
    [.. "\\'", .. rest] => {
      buffer.write_char('\'')
      continue rest
    }
    [.. "\\\"", .. rest] => {
      buffer.write_char('\"')
      continue rest
    }
    [.. "\\\\", .. rest] => {
      buffer.write_char('\\')
      continue rest
    }
    [.. "\\n", .. rest] => {
      buffer.write_char('\n')
      continue rest
    }
    [.. "\\t", .. rest] => {
      buffer.write_char('\t')
      continue rest
    }
    [.. "\\b", .. rest] => {
      buffer.write_char('\b')
      continue rest
    }
    [.. "\\r", .. rest] => {
      buffer.write_char('\r')
      continue rest
    }
    [.. "\\x", c1, c2, .. rest] => {
      let code = hex(c1) * 16 + hex(c2)
      buffer.write_char(code.unsafe_to_char())
      continue rest
    }
    [.. "\\u", c1, c2, c3, c4, .. rest] => {
      let code = hex(c1) * 16 * 16 * 16 +
        hex(c2) * 16 * 16 +
        hex(c3) * 16 +
        hex(c4)
      buffer.write_char(code.unsafe_to_char())
      continue rest
    }
    [.. "\\u{", .. rest] => {
      let rbrace_index = rest.find_by(c => c is '}').unwrap()
      let code_str = rest.charcodes(start=0, end=rbrace_index)
      let code = (try? @strconv.parse_int(code_str.to_string(), base=16)).unwrap()
      buffer.write_char(code.unsafe_to_char())
      continue rest.charcodes(start=rbrace_index + 1)
    }
    ['\\', ..] => panic()
    [c, .. rest] => {
      buffer.write_char(c)
      continue rest
    }
  }
  buffer.to_string()
}
