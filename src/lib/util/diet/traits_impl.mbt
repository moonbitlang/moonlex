///|
pub impl[N] Default for Tree[N] with default() {
  Empty
}

///|
pub impl[N : Eq] Eq for Tree[N] with equal(self : Tree[N], other : Tree[N]) {
  let iter = InorderIterator::new(self)
  let iter1 = InorderIterator::new(other)
  loop (iter.next(), iter1.next()) {
    (None, None) => true
    (Some(a), Some(b)) => {
      guard a == b else { break false }
      continue (iter.next(), iter1.next())
    }
    (_, _) => false
  }
}

///|
pub impl[N : Compare] Compare for Tree[N] with compare(
  self : Tree[N],
  other : Tree[N],
) {
  let iter = InorderIterator::new(self)
  let iter1 = InorderIterator::new(other)
  loop (iter.next(), iter1.next()) {
    (None, None) => 0
    (Some(a), Some(b)) => {
      let cmp = a.compare(b)
      guard cmp == 0 else { break cmp }
      continue (iter.next(), iter1.next())
    }
    (Some(_), None) => 1
    (None, Some(_)) => -1
  }
}

///|
pub impl[N : Hash] Hash for Tree[N] with hash_combine(self, hasher) {
  for interval in self.iter_intervals() {
    interval.hash_combine(hasher)
  }
}
