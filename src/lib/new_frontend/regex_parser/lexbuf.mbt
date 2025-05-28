///|
pub struct Lexbuf {
  data : Bytes
  end : Int
  // in UTF-8
  mut pos : Int
}

///|
pub fn Lexbuf::from_string(string : String) -> Lexbuf {
  Lexbuf::{ data: @encoding.encode(UTF8, string), end: string.length(), pos: 0 }
}

///|
pub fn Lexbuf::next_as_int(self : Lexbuf) -> Int {
  let cnum = self.pos
  let end = self.end
  if cnum >= end {
    return -1 // EOF
  }
  let c = self.data[cnum].to_int()
  if c < 0x80 {
    self.pos += 1
    return c
  }
  if c < 0xE0 {
    guard cnum + 1 < end
    let c2 = self.data[cnum + 1].to_int()
    self.pos += 2
    return ((c & 0x1F) << 6) | (c2 & 0x3F)
  }
  if c < 0xF0 {
    guard cnum + 2 < end
    let c2 = self.data[cnum + 1].to_int()
    let c3 = self.data[cnum + 2].to_int()
    self.pos += 3
    return ((c & 0x0F) << 12) | ((c2 & 0x3F) << 6) | (c3 & 0x3F)
  }
  guard cnum + 3 < end
  let c2 = self.data[cnum + 1].to_int()
  let c3 = self.data[cnum + 2].to_int()
  let c4 = self.data[cnum + 3].to_int()
  self.pos += 4
  return ((c & 0x07) << 18) |
    ((c2 & 0x3F) << 12) |
    ((c3 & 0x3F) << 6) |
    (c4 & 0x3F)
}

///|
pub fn Lexbuf::curr_pos(self : Lexbuf) -> Int {
  self.pos
}

///|
pub fn Lexbuf::reset(self : Lexbuf, pos~ : Int) -> Unit {
  self.pos = pos
}

///|
pub fn Lexbuf::get_char(self : Lexbuf, start : Int, end : Int) -> Char {
  decode_utf8(self.data[start:end]).unsafe_char_at(0)
}

///|
pub fn Lexbuf::get_string(self : Lexbuf, start : Int, end : Int) -> String {
  decode_utf8(self.data[start:end])
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
