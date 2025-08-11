///|
priv struct InorderIterator[K, V](Array[T[K, V]])

///|
fn[K, V] InorderIterator::new(root : T[K, V]) -> InorderIterator[K, V] {
  let it = InorderIterator([])
  it.move_left(root)
  it
}

///|
fn[K, V] InorderIterator::move_left(
  self : InorderIterator[K, V],
  node : T[K, V],
) -> Unit {
  loop node {
    Empty => ()
    Node(..) as curr => {
      let InorderIterator(self) = self
      self.push(curr)
      continue curr.left
    }
  }
}

///|
fn[K, V] InorderIterator::next(self : InorderIterator[K, V]) -> (K, V)? {
  let InorderIterator(s) = self
  guard s.pop() is Some(curr) else { return None }
  guard curr is (Node(..) as curr)
  self.move_left(curr.right)
  Some((curr.key, curr.value))
}
