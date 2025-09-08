///|
enum T[K, V] {
  Empty
  Node(key~ : K, value~ : V, left~ : T[K, V], right~ : T[K, V], priority~ : Int)
}

///|
let rand_state : Ref[Int] = { val: 1 }

///|
fn random_priority() -> Int {
  rand_state.val = (rand_state.val * 1103515245 + 12345) & 0x7fffffff
  rand_state.val
}

///|
pub fn[K, V] empty() -> T[K, V] {
  Empty
}

///|
pub fn[K : Compare, V] T::add(self : Self[K, V], key : K, value : V) -> T[K, V] {
  match self {
    Empty =>
      Node(key~, value~, left=Empty, right=Empty, priority=random_priority())
    Node(..) as node =>
      if key < node.key {
        let left = node.left.add(key, value)
        guard left is (Node(..) as left) else { panic() }
        if left.priority < node.priority {
          Node(
            key=left.key,
            value=left.value,
            left=left.left,
            right=Node(
              key=node.key,
              value=node.value,
              left=left.right,
              right=node.right,
              priority=node.priority,
            ),
            priority=left.priority,
          )
        } else {
          Node(
            key=node.key,
            value=node.value,
            left~,
            right=node.right,
            priority=node.priority,
          )
        }
      } else if key > node.key {
        let right = node.right.add(key, value)
        guard right is (Node(..) as right) else { panic() }
        if right.priority < node.priority {
          Node(
            key=right.key,
            value=right.value,
            left=Node(
              key=node.key,
              value=node.value,
              left=node.left,
              right=right.left,
              priority=node.priority,
            ),
            right=right.right,
            priority=right.priority,
          )
        } else {
          Node(
            key=node.key,
            value=node.value,
            left=node.left,
            right~,
            priority=node.priority,
          )
        }
      } else {
        Node(
          key=node.key,
          value~,
          left=node.left,
          right=node.right,
          priority=node.priority,
        )
      }
  }
}

///|
pub fn[K : Compare, V] T::get(self : Self[K, V], key : K) -> V? {
  match self {
    Empty => None
    Node(..) as node =>
      if key < node.key {
        node.left.get(key)
      } else if key > node.key {
        node.right.get(key)
      } else {
        Some(node.value)
      }
  }
}

///|
pub fn[K, V] iter(self : T[K, V]) -> Iter[(K, V)] {
  Iter::new(yield_ => {
    fn go(t) {
      match t {
        Empty => IterContinue
        Node(..) as node =>
          if go(node.left) is IterEnd {
            IterEnd
          } else if yield_((node.key, node.value)) is IterEnd {
            IterEnd
          } else {
            go(node.right)
          }
      }
    }

    go(self)
  })
}

///|
pub fn[K : Compare, V] from_iter(iter : Iter[(K, V)]) -> T[K, V] {
  let mut map = empty()
  for it in iter {
    let (key, value) = it
    map = map.add(key, value)
  }
  map
}

///|
pub impl[K : Eq, V : Eq] Eq for T[K, V] with equal(self, other) -> Bool {
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
pub impl[K : Compare, V : Compare] Compare for T[K, V] with compare(self, other) -> Int {
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
pub impl[K : Hash, V : Hash] Hash for T[K, V] with hash_combine(self, hasher) {
  for e in self {
    hasher..combine(e.0)..combine(e.1)
  }
}
