///|
pub type T = CharSet

///|
pub struct CharSet(@diet.T[Char]) derive(Compare, Eq, Hash)

///|
pub extend CharSet with Compare::{op_lt, op_le, op_ge, compare, op_gt}

///|
pub extend CharSet with Eq::{not_equal, equal}

///|
pub extend CharSet with Hash::{hash, hash_combine}

///|
pub impl Debug for CharSet with fn to_repr(self) {
  Repr::literal(self.to_string())
}

///|
pub extend CharSet with Debug::{to_repr}

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
pub fn CharSet::negated(self : CharSet) -> CharSet {
  self.complement()
}

///|
pub fn CharSet::is_empty(self : CharSet) -> Bool {
  self.0.is_empty()
}

///|
pub fn CharSet::contains(self : CharSet, x : Char) -> Bool {
  self.0.contains(x)
}

///|
pub fn CharSet::slice(self : CharSet, min? : Char, max? : Char) -> CharSet {
  self.0.slice(min?, max?)
}

///|
pub fn CharSet::union(self : CharSet, other : CharSet) -> CharSet {
  @diet.union(self.0, other.0)
}

///|
pub fn CharSet::intersection(self : CharSet, other : CharSet) -> CharSet {
  @diet.intersection(self.0, other.0)
}

///|
pub fn CharSet::complement(self : CharSet) -> CharSet {
  self.0.complement()
}

///|
pub fn CharSet::difference(self : CharSet, other : CharSet) -> CharSet {
  @diet.difference(self.0, other.0)
}

///|
pub fn CharSet::subset(self : CharSet, other : CharSet) -> Bool {
  self.difference(other).is_empty()
}

///|
pub fn CharSet::disjoint(self : CharSet, other : CharSet) -> Bool {
  self.intersection(other).is_empty()
}

///|
pub impl Neg for CharSet with fn neg(self) {
  self.complement()
}

///|
pub extend CharSet with Neg::{neg}

///|
pub impl Add for CharSet with fn add(self, other) {
  self.union(other)
}

///|
pub extend CharSet with Add::{add}

///|
pub impl Sub for CharSet with fn sub(self, other) {
  self.difference(other)
}

///|
pub extend CharSet with Sub::{sub}

///|
pub impl BitAnd for CharSet with fn land(self : CharSet, other : CharSet) -> CharSet {
  self.intersection(other)
}

///|
pub extend CharSet with BitAnd::{land}

///|
pub fn CharSet::iter_ranges(self : CharSet) -> Iter[(Char, Char)] {
  self.0.iter_intervals()
}

///|
pub fn CharSet::iter(self : CharSet) -> Iter[Char] {
  self.0.iter()
}

///|
pub impl Show for CharSet with fn output(self, logger) {
  logger.write_iter(
    self
    .iter_ranges()
    .map(it => {
      let (min, max) = it
      "@char_set.range(\{Repr(min)}, \{Repr(max)})"
    }),
    prefix="@char_set.union(",
    suffix=")",
    sep=", ",
  )
}

///|
pub extend CharSet with Show::{to_string, output}

///|
pub impl ToJson for CharSet with fn to_json(self) {
  self
  .iter_ranges()
  .map(it => {
    let (min, max) = it
    (min.to_int(), max.to_int())
  })
  .to_array()
  .to_json()
}

///|
pub extend CharSet with ToJson::{to_json}
