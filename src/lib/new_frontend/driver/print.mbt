///|
fn print_term(out : StringBuilder, term : @ast.Term, source~ : Bytes) -> Unit {
  match term {
    Code(loc~) =>
      out.write_string(decode_utf8(source[loc.start.cnum:loc.end.cnum]))
    GeneratedCode(code, ..) => out.write_string(code)
    Nested(terms, ..) =>
      for term in terms {
        print_term(out, term, source~)
      }
    NamedRegex(_) => ()
    LexDef(_) => panic()
  }
}

///|
fn decode_utf8(bytes : @bytes.View) -> String {
  let res = StringBuilder::new()
  let len = bytes.length()
  let mut i = 0
  while i < len {
    let mut c = bytes[i].to_int()
    // zero byte indicates end of string
    if c == 0 {
      break
    } else if c < 0x80 {
      res.write_char(c.unsafe_to_char())
      i += 1
    } else if c < 0xE0 {
      if i + 1 >= len {
        break
      }
      c = ((c & 0x1F) << 6) | (bytes[i + 1].to_int() & 0x3F)
      res.write_char(c.unsafe_to_char())
      i += 2
    } else if c < 0xF0 {
      if i + 2 >= len {
        break
      }
      c = ((c & 0x0F) << 12) |
        ((bytes[i + 1].to_int() & 0x3F) << 6) |
        (bytes[i + 2].to_int() & 0x3F)
      res.write_char(c.unsafe_to_char())
      i += 3
    } else {
      if i + 3 >= len {
        break
      }
      c = ((c & 0x07) << 18) |
        ((bytes[i + 1].to_int() & 0x3F) << 12) |
        ((bytes[i + 2].to_int() & 0x3F) << 6) |
        (bytes[i + 3].to_int() & 0x3F)
      res.write_char(c.unsafe_to_char())
      i += 4
    }
  }
  res.to_string()
}
