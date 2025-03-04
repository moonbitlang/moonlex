///|
fn slice_from[N : @bounded_enum.T](self : Tree[N], x : N) -> Tree[N] {
  match self {
    Empty => Empty
    Node(..) as t =>
      if x < t.min {
        balance(t.min, t.max, slice_from(t.left, x), t.right)
      } else if x > t.max {
        slice_from(t.right, x)
      } else {
        balance(x, t.max, Empty, t.right)
      }
  }
}

///|
fn slice_util[N : @bounded_enum.T](self : Tree[N], x : N) -> Tree[N] {
  match self {
    Empty => Empty
    Node(..) as t =>
      if x > t.max {
        balance(t.min, t.max, t.left, slice_util(t.right, x))
      } else if x < t.min {
        slice_util(t.left, x)
      } else {
        balance(t.min, x, t.left, t.right)
      }
  }
}

///|
fn slice_before[N : @bounded_enum.T](self : Tree[N], x : N) -> Tree[N] {
  if x == N::lower_bound() {
    Empty
  } else {
    slice_util(self, N::pred(x))
  }
}

///|
fn slice_after[N : @bounded_enum.T](self : Tree[N], x : N) -> Tree[N] {
  if x == N::upper_bound() {
    Empty
  } else {
    slice_from(self, N::succ(x))
  }
}

///|
pub fn slice[N : @bounded_enum.T](
  self : Tree[N],
  min? : N,
  max? : N
) -> Tree[N] {
  match (min, max) {
    (None, None) => panic()
    (Some(min), None) => slice_from(self, min)
    (None, Some(max)) => slice_util(self, max)
    (Some(min), Some(max)) => slice_util(slice_from(self, min), max)
  }
}
