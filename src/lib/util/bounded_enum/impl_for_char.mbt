///|
pub impl BoundedEnum for Char with pred(self) {
  (self.to_int() - 1).unsafe_to_char()
}

///|
pub impl BoundedEnum for Char with succ(self) {
  (self.to_int() + 1).unsafe_to_char()
}

///|
pub impl BoundedEnum for Char with lower_bound() {
  (0).unsafe_to_char()
}

///|
pub impl BoundedEnum for Char with upper_bound() {
  (0x10ffff).unsafe_to_char()
}
