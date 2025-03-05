///|
pub typealias T = EofCharSet

///|
type EofCharSet @diet.T[EofChar] derive(Default, Eq, Compare, Hash)

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
pub let any : EofCharSet = range('\x00', '\u{10ffff}')

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
  @diet.is_empty(self._)
}

///|
pub fn contains(self : EofCharSet, x : Char) -> Bool {
  @diet.contains(self._, EofChar::char(x))
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
  @diet.complement(self._)
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
pub fn EofCharSet::op_neg(self : EofCharSet) -> EofCharSet {
  complement(self)
}

///|
pub fn EofCharSet::op_add(self : EofCharSet, other : EofCharSet) -> EofCharSet {
  union(self, other)
}

///|
pub fn EofCharSet::op_sub(self : EofCharSet, other : EofCharSet) -> EofCharSet {
  difference(self, other)
}

///|
pub fn EofCharSet::land(self : EofCharSet, other : EofCharSet) -> EofCharSet {
  intersection(self, other)
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
