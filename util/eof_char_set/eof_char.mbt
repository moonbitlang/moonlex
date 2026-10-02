///|
struct EofChar(Int) derive(Eq, Compare, Hash, Debug, ToJson)

///|
pub extend EofChar with Eq::{not_equal, equal}

///|
pub extend EofChar with Compare::{op_lt, op_le, op_ge, compare, op_gt}

///|
pub extend EofChar with Hash::{hash, hash_combine}

///|
pub extend EofChar with Debug::{to_repr}

///|
pub extend EofChar with ToJson::{to_json}

///|
pub enum EofCharRepr {
  Eof
  Char(Char)
}

///|
pub impl @bounded_enum.T for EofChar with fn lower_bound() {
  EofChar(-1)
}

///|
pub extend EofChar with @bounded_enum.BoundedEnum::{
  lower_bound,
  pred,
  succ,
  upper_bound,
}

///|
pub impl @bounded_enum.T for EofChar with fn upper_bound() {
  EofChar(0x10ffff)
}

///|
pub impl @bounded_enum.T for EofChar with fn pred(self) {
  guard self.0 > -1 else { panic() }
  EofChar(self.0 - 1)
}

///|
pub impl @bounded_enum.T for EofChar with fn succ(self) {
  guard self.0 < 0x10ffff else { panic() }
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
