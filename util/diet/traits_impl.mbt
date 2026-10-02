///|
pub impl[N] Default for Tree[N] with fn default() {
  Empty
}

///|
pub extend Tree with Default::{default}

///|
pub impl[N : Eq] Eq for Tree[N] with fn equal(self : Tree[N], other : Tree[N]) {
  let iter = InorderIterator::new(self)
  let iter1 = InorderIterator::new(other)
  for item = iter.next(), item1 = iter1.next() {
    match (item, item1) {
      (None, None) => break true
      (Some(a), Some(b)) => {
        guard a == b else { break false }
        continue iter.next(), iter1.next()
      }
      (_, _) => break false
    }
  }
}

///|
pub extend Tree with Eq::{not_equal, equal}

///|
pub impl[N : Compare] Compare for Tree[N] with fn compare(
  self : Tree[N],
  other : Tree[N],
) {
  let iter = InorderIterator::new(self)
  let iter1 = InorderIterator::new(other)
  for item = iter.next(), item1 = iter1.next() {
    match (item, item1) {
      (None, None) => break 0
      (Some(a), Some(b)) => {
        let cmp = a.compare(b)
        guard cmp == 0 else { break cmp }
        continue iter.next(), iter1.next()
      }
      (Some(_), None) => break 1
      (None, Some(_)) => break -1
    }
  }
}

///|
pub extend Tree with Compare::{op_lt, op_le, op_ge, compare, op_gt}

///|
pub impl[N : Hash] Hash for Tree[N] with fn hash_combine(self, hasher) {
  for interval in self.iter_intervals() {
    Hash::hash_combine(interval, hasher)
  }
}

///|
pub extend Tree with Hash::{hash, hash_combine}
