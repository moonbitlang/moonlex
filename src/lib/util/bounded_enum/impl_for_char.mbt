///|
pub impl BoundedEnum for Char with fn pred(self) {
  (self.to_int() - 1).unsafe_to_char()
}

///|
pub impl BoundedEnum for Char with fn succ(self) {
  (self.to_int() + 1).unsafe_to_char()
}

///|
pub impl BoundedEnum for Char with fn lower_bound() {
  (0).unsafe_to_char()
}

///|
pub impl BoundedEnum for Char with fn upper_bound() {
  (0x10ffff).unsafe_to_char()
}
