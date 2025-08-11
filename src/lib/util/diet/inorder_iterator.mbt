///|
priv struct InorderIterator[N](Array[Tree[N]])

///|
fn[N] InorderIterator::new(root : T[N]) -> InorderIterator[N] {
  let it = InorderIterator([])
  it.move_left(root)
  it
}

///|
fn[N] InorderIterator::move_left(
  self : InorderIterator[N],
  node : T[N],
) -> Unit {
  loop node {
    Empty => ()
    Node(left~, ..) as curr => {
      self.inner().push(curr)
      continue left
    }
  }
}

///|
fn[N] InorderIterator::next(self : InorderIterator[N]) -> (N, N)? {
  guard self.inner().pop() is Some(curr) else { return None }
  guard curr is Node(min~, max~, right~, ..)
  self.move_left(right)
  Some((min, max))
}
