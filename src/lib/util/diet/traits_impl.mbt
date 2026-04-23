///|
pub impl[N] Default for Tree[N] with default() {
  Empty
}

///|
pub impl[N : Eq] Eq for Tree[N] with equal(self : Tree[N], other : Tree[N]) {
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
pub impl[N : Compare] Compare for Tree[N] with compare(
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
pub impl[N : Hash] Hash for Tree[N] with hash_combine(self, hasher) {
  for interval in self.iter_intervals() {
    interval.hash_combine(hasher)
  }
}
