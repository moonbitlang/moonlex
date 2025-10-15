///|
pub typealias EofCharSet as T

///|
struct EofCharSet(@diet.T[EofChar]) derive(Default, Eq, Compare, Hash)

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

///|
/// The pseudo-character indicating the end of the input.
pub let eof : EofCharSet = @diet.singleton(EofChar::eof())

///|
pub fn range(min : Char, max : Char) -> EofCharSet {
  @diet.interval(EofChar::char(min), EofChar::char(max))
}

///|
/// The set of all characters.
/// Does not include the EOF character.
pub let any : EofCharSet = range('\u{0}', '\u{10ffff}')

///|
pub fn of_array(arr : Array[Char]) -> EofCharSet {
  arr.iter().fold(init=empty, fn(acc, x) { acc + singleton(x) })
}

///|
pub fn EofCharSet::negated(self : EofCharSet) -> EofCharSet {
  self.complement() - eof
}

///|
pub fn EofCharSet::is_empty(self : EofCharSet) -> Bool {
  self.0.is_empty()
}

///|
pub fn EofCharSet::contains(self : EofCharSet, x : Char) -> Bool {
  self.0.contains(EofChar::char(x))
}

///|
pub fn EofCharSet::contains2(self : EofCharSet, x : EofChar) -> Bool {
  self.0.contains(x)
}

///|
pub fn EofCharSet::slice(
  self : EofCharSet,
  min? : Char,
  max? : Char,
) -> EofCharSet {
  self.0.slice(
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
pub fn EofCharSet::union(self : EofCharSet, other : EofCharSet) -> EofCharSet {
  @diet.union(self.0, other.0)
}

///|
pub fn EofCharSet::intersection(
  self : EofCharSet,
  other : EofCharSet,
) -> EofCharSet {
  @diet.intersection(self.0, other.0)
}

///|
pub fn EofCharSet::complement(self : EofCharSet) -> EofCharSet {
  self.0.complement()
}

///|
pub fn EofCharSet::difference(
  self : EofCharSet,
  other : EofCharSet,
) -> EofCharSet {
  @diet.difference(self.0, other.0)
}

///|
pub fn EofCharSet::subset(self : EofCharSet, other : EofCharSet) -> Bool {
  self.difference(other).is_empty()
}

///|
pub fn EofCharSet::disjoint(self : EofCharSet, other : EofCharSet) -> Bool {
  self.intersection(other).is_empty()
}

///|
pub fn EofCharSet::unsafe_choose(self : EofCharSet) -> EofChar {
  self.0.unsafe_choose()
}

///|
pub impl Neg for EofCharSet with neg(self) {
  self.complement()
}

///|
pub impl Add for EofCharSet with add(self, other) {
  self.union(other)
}

///|
pub impl Sub for EofCharSet with sub(self, other) {
  self.difference(other)
}

///|
pub impl BitAnd for EofCharSet with land(self : EofCharSet, other : EofCharSet) -> EofCharSet {
  self.intersection(other)
}

///|
pub fn EofCharSet::iter_ranges(self : EofCharSet) -> Iter[(EofChar, EofChar)] {
  self.0.iter_intervals()
}

///|
pub fn EofCharSet::iter(self : EofCharSet) -> Iter[EofChar] {
  self.0.iter()
}

///|
pub impl Show for EofCharSet with output(self, logger) {
  logger.write_iter(
    self
    .iter_ranges()
    .map(it => {
      let (min, max) = it
      "@eof_char_set.range(\{repr(min)}, \{repr(max)})"
    }),
    prefix="@eof_char_set.union(",
    suffix=")",
    sep=", ",
  )
}

///|
pub impl ToJson for EofCharSet with to_json(self) {
  self.iter_ranges().to_array().to_json()
}
