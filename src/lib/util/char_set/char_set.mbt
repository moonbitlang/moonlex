///|
pub typealias CharSet as T

///|
pub type CharSet @diet.T[Char] derive(Compare, Eq, Hash)

///|
pub let empty : CharSet = @diet.empty()

///|
pub fn singleton(x : Char) -> CharSet {
  @diet.singleton(x)
}

///|
pub fn range(min : Char, max : Char) -> CharSet {
  @diet.interval(min, max)
}

///|
pub let any : T = range('\u{0}', '\u{10ffff}')

///|
pub fn of_array(arr : Array[Char]) -> CharSet {
  arr.iter().fold(init=empty, fn(acc, x) { acc + singleton(x) })
}

///|
pub fn negated(self : CharSet) -> CharSet {
  self.complement()
}

///|
pub fn is_empty(self : CharSet) -> Bool {
  self._.is_empty()
}

///|
pub fn contains(self : CharSet, x : Char) -> Bool {
  self._.contains(x)
}

///|
pub fn slice(self : CharSet, min? : Char, max? : Char) -> CharSet {
  self._.slice(min?, max?)
}

///|
pub fn union(self : CharSet, other : CharSet) -> CharSet {
  @diet.union(self._, other._)
}

///|
pub fn intersection(self : CharSet, other : CharSet) -> CharSet {
  @diet.intersection(self._, other._)
}

///|
pub fn complement(self : CharSet) -> CharSet {
  self._.complement()
}

///|
pub fn difference(self : CharSet, other : CharSet) -> CharSet {
  @diet.difference(self._, other._)
}

///|
pub fn subset(self : CharSet, other : CharSet) -> Bool {
  self.difference(other).is_empty()
}

///|
pub fn disjoint(self : CharSet, other : CharSet) -> Bool {
  self.intersection(other).is_empty()
}

///|
pub impl Neg for CharSet with op_neg(self) {
  self.complement()
}

///|
pub impl Add for CharSet with op_add(self, other) {
  self.union(other)
}

///|
pub impl Sub for CharSet with op_sub(self, other) {
  self.difference(other)
}

///|
pub impl BitAnd for CharSet with land(self : CharSet, other : CharSet) -> CharSet {
  self.intersection(other)
}

///|
pub fn iter_ranges(self : CharSet) -> Iter[(Char, Char)] {
  self._.iter_intervals()
}

///|
pub fn iter(self : CharSet) -> Iter[Char] {
  self._.iter()
}

///|
pub impl Show for CharSet with output(self, logger) {
  logger.write_iter(
    self
    .iter_ranges()
    .map(fn { (min, max) => "@char_set.range(\{repr(min)}, \{repr(max)})" }),
    prefix="@char_set.union(",
    suffix=")",
    sep=", ",
  )
}

///|
pub impl ToJson for CharSet with to_json(self) {
  self
  .iter_ranges()
  .map(fn { (min, max) => (min.to_int(), max.to_int()) })
  .to_array()
  .to_json()
}
