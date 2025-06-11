///|
pub fn[N] empty() -> Tree[N] {
  Empty
}

///|
pub fn[N] singleton(x : N) -> Tree[N] {
  make_node(x, x, Empty, Empty)
}

///|
pub fn[N] interval(min : N, max : N) -> Tree[N] {
  make_node(min, max, Empty, Empty)
}

///|
pub fn[N : @bounded_enum.T] of(array : Array[N]) -> Tree[N] {
  let mut t = Empty
  for x in array {
    t = union(t, singleton(x))
  }
  t
}
