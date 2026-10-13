///|
struct BytesLexbuf {
  content : Bytes
  mut pos : Int32
  end : Int32
}

///|
pub type T = BytesLexbuf

///|
pub fn from_bytes(
  bytes : Bytes,
  start~ : Int32 = 0,
  end? : Int32,
) -> BytesLexbuf {
  let end = end.unwrap_or(bytes.length())
  return { content: bytes, pos: start, end, }
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
pub fn BytesLexbuf::next_as_int(self : BytesLexbuf) -> Int32 {
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
pub fn BytesLexbuf::curr_pos(self : BytesLexbuf) -> Int32 {
  return self.pos
}

///|
pub fn BytesLexbuf::reset(self : BytesLexbuf, pos~ : Int32) -> Unit {
  self.pos = pos
}

///|
pub fn BytesLexbuf::get_char(
  self : BytesLexbuf,
  start : Int32,
  _end : Int32,
) -> Byte {
  return self.content.unsafe_get(start)
}

///|
pub fn BytesLexbuf::get_string(
  self : BytesLexbuf,
  start : Int32,
  end : Int32,
) -> BytesView {
  return self.content[start:end]
}
