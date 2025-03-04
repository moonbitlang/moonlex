///|
pub fn empty[N]() -> Tree[N] {
  Empty
}

///|
pub fn singleton[N](x : N) -> Tree[N] {
  make_node(x, x, Empty, Empty)
}

///|
pub fn interval[N](min : N, max : N) -> Tree[N] {
  make_node(min, max, Empty, Empty)
}

///|
pub fn of[N : @bounded_enum.T](array : Array[N]) -> Tree[N] {
  let mut t = Empty
  for x in array {
    t = union(t, singleton(x))
  }
  t
}
