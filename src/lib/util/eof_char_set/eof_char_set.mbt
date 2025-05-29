///|
pub typealias T = EofCharSet

///|
type EofCharSet @diet.T[EofChar] derive(Default, Eq, Compare, Hash)

///|
pub fn from_char_set(cset : @char_set.T) -> EofCharSet {
  let mut result = empty
  for r in cset.iter_ranges() {
    result += range(r.0, r.1)
  }
  result
}

///|
pub let empty : EofCharSet = @diet.empty()

///|
pub fn singleton(x : Char) -> EofCharSet {
  @diet.singleton(EofChar::char(x))
}

///| The pseudo-character indicating the end of the input.
pub let eof : EofCharSet = @diet.singleton(EofChar::eof())

///|
pub fn range(min : Char, max : Char) -> EofCharSet {
  @diet.interval(EofChar::char(min), EofChar::char(max))
}

///| The set of all characters.
/// Does not include the EOF character.
pub let any : EofCharSet = range('\u{0}', '\u{10ffff}')

///|
pub fn of_array(arr : Array[Char]) -> EofCharSet {
  arr.iter().fold(init=empty, fn(acc, x) { acc + singleton(x) })
}

///|
pub fn negated(self : EofCharSet) -> EofCharSet {
  self.complement() - eof
}

///|
pub fn is_empty(self : EofCharSet) -> Bool {
  self._.is_empty()
}

///|
pub fn contains(self : EofCharSet, x : Char) -> Bool {
  self._.contains(EofChar::char(x))
}

///|
pub fn slice(self : EofCharSet, min? : Char, max? : Char) -> EofCharSet {
  self._.slice(
    min?=match min {
      None => None
      Some(c) => Some(EofChar::char(c))
    },
    max?=match max {
      None => None
      Some(c) => Some(EofChar::char(c))
    },
  )
}

///|
pub fn union(self : EofCharSet, other : EofCharSet) -> EofCharSet {
  @diet.union(self._, other._)
}

///|
pub fn intersection(self : EofCharSet, other : EofCharSet) -> EofCharSet {
  @diet.intersection(self._, other._)
}

///|
pub fn complement(self : EofCharSet) -> EofCharSet {
  self._.complement()
}

///|
pub fn difference(self : EofCharSet, other : EofCharSet) -> EofCharSet {
  @diet.difference(self._, other._)
}

///|
pub fn subset(self : EofCharSet, other : EofCharSet) -> Bool {
  self.difference(other).is_empty()
}

///|
pub fn disjoint(self : EofCharSet, other : EofCharSet) -> Bool {
  self.intersection(other).is_empty()
}

///|
pub impl Neg for EofCharSet with op_neg(self) {
  self.complement()
}

///|
pub impl Add for EofCharSet with op_add(self, other) {
  self.union(other)
}

///|
pub impl Sub for EofCharSet with op_sub(self, other) {
  self.difference(other)
}

///|
pub impl BitAnd for EofCharSet with land(self : EofCharSet, other : EofCharSet) -> EofCharSet {
  self.intersection(other)
}

///|
pub fn iter_ranges(self : EofCharSet) -> Iter[(EofChar, EofChar)] {
  self._.iter_intervals()
}

///|
pub fn iter(self : EofCharSet) -> Iter[EofChar] {
  self._.iter()
}

///|
pub impl Show for EofCharSet with output(self, logger) {
  logger.write_iter(
    self
    .iter_ranges()
    .map(fn { (min, max) => "@eof_char_set.range(\{repr(min)}, \{repr(max)})" }),
    prefix="@eof_char_set.union(",
    suffix=")",
    sep=", ",
  )
}

///|
pub impl ToJson for EofCharSet with to_json(self) {
  self.iter_ranges().to_array().to_json()
}
