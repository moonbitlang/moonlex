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
  _end : Int,
) -> Byte {
  return self.content.unsafe_get(start)
}

///|
pub fn BytesLexbuf::get_string(
  self : BytesLexbuf,
  start : Int,
  end : Int,
) -> @bytes.View {
  return self.content[start:end]
}
