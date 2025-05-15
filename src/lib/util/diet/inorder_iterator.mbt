///|
priv type InorderIterator[N] Array[Tree[N]]

///|
fn InorderIterator::new[N](root : T[N]) -> InorderIterator[N] {
  let it = InorderIterator([])
  it.move_left(root)
  it
}

///|
fn InorderIterator::move_left[N](
  self : InorderIterator[N],
  node : T[N]
) -> Unit {
  loop node {
    Empty => ()
    Node(left~, ..) as curr => {
      self._.push(curr)
      continue left
    }
  }
}

///|
fn InorderIterator::next[N](self : InorderIterator[N]) -> (N, N)? {
  guard self._.pop() is Some(curr) else { return None }
  guard curr is Node(min~, max~, right~, ..)
  self.move_left(right)
  Some((min, max))
}
