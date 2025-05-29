///|
const DELTA = 3

///|
const RATIO = 2

///|
fn[N] size(self : Tree[N]) -> Int {
  match self {
    Empty => 0
    Node(size~, ..) => size
  }
}

///|
fn[N] make_node(min : N, max : N, l : Tree[N], r : Tree[N]) -> Tree[N] {
  let size = l.size() + r.size() + 1
  Node(left=l, right=r, size~, min~, max~)
}

///|
fn[N] single_l(min : N, max : N, l : Tree[N], r : Tree[N]) -> Tree[N] {
  guard r is (Node(..) as r)
  make_node(r.min, r.max, make_node(min, max, l, r.left), r.right)
}

///|
fn[N] single_r(min : N, max : N, l : Tree[N], r : Tree[N]) -> Tree[N] {
  guard l is (Node(..) as l)
  make_node(l.min, l.max, l.left, make_node(min, max, l.right, r))
}

///|
fn[N] double_l(min : N, max : N, l : Tree[N], r : Tree[N]) -> Tree[N] {
  guard r is (Node(left=Node(..) as rl, ..) as r)
  make_node(
    rl.min,
    rl.max,
    make_node(min, max, l, rl.left),
    make_node(r.min, r.max, rl.right, r.right),
  )
}

///|
fn[N] double_r(min : N, max : N, l : Tree[N], r : Tree[N]) -> Tree[N] {
  guard l is (Node(right=Node(..) as lr, ..) as l)
  make_node(
    lr.min,
    lr.max,
    make_node(l.min, l.max, l.left, lr.left),
    make_node(min, max, lr.right, r),
  )
}

///|
fn[N] balance(min : N, max : N, l : Tree[N], r : Tree[N]) -> Tree[N] {
  let l_size = l.size()
  let r_size = r.size()
  if l_size + r_size <= 1 {
    make_node(min, max, l, r)
  } else if r_size + 1 > DELTA * (l_size + 1) {
    guard r is (Node(..) as r)
    if r.left.size() + 1 < RATIO * (r.right.size() + 1) {
      single_l(min, max, l, r)
    } else {
      double_l(min, max, l, r)
    }
  } else if l_size + 1 > DELTA * (r_size + 1) {
    guard l is (Node(..) as l)
    if l.right.size() + 1 < RATIO * (l.left.size() + 1) {
      single_r(min, max, l, r)
    } else {
      double_r(min, max, l, r)
    }
  } else {
    make_node(min, max, l, r)
  }
}

///|
fn[N] concat(l : Tree[N], r : Tree[N]) -> Tree[N] {
  match (l, r) {
    (Empty, _) => r
    (_, Empty) => l
    (Node(..) as l, Node(..) as r) => {
      let ((min, max), r) = split_leftmost(r)
      balance(min, max, l, r)
    }
  }
}
