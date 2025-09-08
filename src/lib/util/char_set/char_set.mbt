///|
pub typealias CharSet as T

///|
pub struct CharSet(@diet.T[Char]) derive(Compare, Eq, Hash)

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
  self.inner().is_empty()
}

///|
pub fn contains(self : CharSet, x : Char) -> Bool {
  self.inner().contains(x)
}

///|
pub fn slice(self : CharSet, min? : Char, max? : Char) -> CharSet {
  self.inner().slice(min?, max?)
}

///|
pub fn union(self : CharSet, other : CharSet) -> CharSet {
  @diet.union(self.inner(), other.inner())
}

///|
pub fn intersection(self : CharSet, other : CharSet) -> CharSet {
  @diet.intersection(self.inner(), other.inner())
}

///|
pub fn complement(self : CharSet) -> CharSet {
  self.inner().complement()
}

///|
pub fn difference(self : CharSet, other : CharSet) -> CharSet {
  @diet.difference(self.inner(), other.inner())
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
pub impl Neg for CharSet with neg(self) {
  self.complement()
}

///|
pub impl Add for CharSet with add(self, other) {
  self.union(other)
}

///|
pub impl Sub for CharSet with sub(self, other) {
  self.difference(other)
}

///|
pub impl BitAnd for CharSet with land(self : CharSet, other : CharSet) -> CharSet {
  self.intersection(other)
}

///|
pub fn iter_ranges(self : CharSet) -> Iter[(Char, Char)] {
  self.inner().iter_intervals()
}

///|
pub fn iter(self : CharSet) -> Iter[Char] {
  self.inner().iter()
}

///|
pub impl Show for CharSet with output(self, logger) {
  logger.write_iter(
    self
    .iter_ranges()
    .map(it => {
      let (min, max) = it
      "@char_set.range(\{repr(min)}, \{repr(max)})"
    }),
    prefix="@char_set.union(",
    suffix=")",
    sep=", ",
  )
}

///|
pub impl ToJson for CharSet with to_json(self) {
  self
  .iter_ranges()
  .map(it => {
    let (min, max) = it
    (min.to_int(), max.to_int())
  })
  .to_array()
  .to_json()
}
