///|
struct EofChar(Int) derive(Eq, Compare, Hash, Show, ToJson)

///|
pub enum EofCharRepr {
  Eof
  Char(Char)
}

///|
pub impl @bounded_enum.T for EofChar with lower_bound() {
  EofChar(-1)
}

///|
pub impl @bounded_enum.T for EofChar with upper_bound() {
  EofChar(0x10ffff)
}

///|
pub impl @bounded_enum.T for EofChar with pred(self) {
  guard self.0 > -1
  EofChar(self.0 - 1)
}

///|
pub impl @bounded_enum.T for EofChar with succ(self) {
  guard self.0 < 0x10ffff
  EofChar(self.0 + 1)
}

///|
pub fn EofChar::eof() -> EofChar {
  EofChar(-1)
}

///|
pub fn EofChar::char(x : Char) -> EofChar {
  EofChar(x.to_int())
}

///|
pub fn EofChar::repr(self : EofChar) -> EofCharRepr {
  if self.0 == -1 {
    Eof
  } else {
    Char(self.0.unsafe_to_char())
  }
}
