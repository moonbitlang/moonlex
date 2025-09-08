///|
struct BytesLexbuf {
  content : Bytes
  mut pos : Int
  end : Int
}

///|
pub typealias BytesLexbuf as T

///|
pub fn from_bytes(bytes : Bytes, start? : Int = 0, end? : Int) -> BytesLexbuf {
  let end = end.unwrap_or(bytes.length())
  return { content: bytes, pos: start, end }
}

///|
pub fn BytesLexbuf::next(self : BytesLexbuf) -> Byte? {
  let pos = self.pos
  let end = self.end
  if pos < end {
    let c = self.content.unsafe_get(pos)
    self.pos += 1
    return Some(c)
  }
  None
}

///|
pub fn BytesLexbuf::next_as_int(self : BytesLexbuf) -> Int {
  let pos = self.pos
  let end = self.end
  if pos < end {
    let c = self.content.unsafe_get(pos)
    self.pos += 1
    return c.to_int()
  }
  -1
}

///|
pub fn BytesLexbuf::curr_pos(self : BytesLexbuf) -> Int {
  return self.pos
}

///|
pub fn BytesLexbuf::reset(self : BytesLexbuf, pos~ : Int) -> Unit {
  self.pos = pos
}

///|
pub fn BytesLexbuf::get_char(
  self : BytesLexbuf,
  start : Int,
  end : Int,
) -> Char {
  decode_utf8(self.content[start:end]).get_char(0).unwrap()
}

///|
pub fn BytesLexbuf::get_string(
  self : BytesLexbuf,
  start : Int,
  end : Int,
) -> String {
  decode_utf8(self.content[start:end])
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
      c -= 0x10000
      res.write_char(((c >> 10) + 0xD800).unsafe_to_char())
      res.write_char(((c & 0x3FF) + 0xDC00).unsafe_to_char())
      i += 4
    }
  }
  res.to_string()
}
