///|
pub fn[N] Tree::iter_intervals(self : Tree[N]) -> Iter[(N, N)] {
  let iter = InorderIterator::new(self)
  Iterator::new(fn() { iter.next() }).iter()
}

///|
pub fn[N : @bounded_enum.T] Tree::iter(self : Tree[N]) -> Iter[N] {
  self
  .iter_intervals()
  .flat_map(it => {
    let (min, max) = it
    let mut x = min
    let mut done = min > max
    Iterator::new(fn() {
      if done {
        return None
      }
      let current = x
      if x == max {
        done = true
      } else {
        x = N::succ(x)
      }
      Some(current)
    }).iter()
  })
}
