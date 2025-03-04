///|
pub typealias T = CharSet

///|
type CharSet @diet.T[Char] derive(Default, Eq, Compare, Hash)

///|
pub fn empty() -> CharSet {
  @diet.empty()
}

///|
pub fn singleton(x : Char) -> CharSet {
  @diet.singleton(x)
}

///|
pub fn range(min : Char, max : Char) -> CharSet {
  @diet.interval(min, max)
}

///|
pub fn slice(self : CharSet, min? : Char, max? : Char) -> CharSet {
  self._.slice(min?, max?)
}

///|
pub fn contains(self : CharSet, x : Char) -> Bool {
  @diet.contains(self._, x)
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
  @diet.complement(self._)
}

///|
pub fn difference(self : CharSet, other : CharSet) -> CharSet {
  @diet.difference(self._, other._)
}

///|
pub fn CharSet::op_neg(self : CharSet) -> CharSet {
  complement(self)
}

///|
pub fn CharSet::op_add(self : CharSet, other : CharSet) -> CharSet {
  union(self, other)
}

///|
pub fn CharSet::op_sub(self : CharSet, other : CharSet) -> CharSet {
  difference(self, other)
}

///|
pub fn CharSet::land(self : CharSet, other : CharSet) -> CharSet {
  intersection(self, other)
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
  self.iter_ranges().to_array().to_json()
}
