///|
pub impl BoundedEnum for Char with pred(self) {
  Char::from_int(self.to_int() - 1)
}

///|
pub impl BoundedEnum for Char with succ(self) {
  Char::from_int(self.to_int() + 1)
}

///|
pub impl BoundedEnum for Char with lower_bound() {
  Char::from_int(0)
}

///|
pub impl BoundedEnum for Char with upper_bound() {
  Char::from_int(0x10ffff)
}
