///|
pub fn[N] is_empty(self : Tree[N]) -> Bool {
  match self {
    Empty => true
    Node(..) => false
  }
}

///|
pub fn[N : @bounded_enum.T] contains(self : Tree[N], x : N) -> Bool {
  match self {
    Empty => false
    Node(..) as t =>
      if x < t.min {
        t.left.contains(x)
      } else if x > t.max {
        t.right.contains(x)
      } else {
        true
      }
  }
}

///|
pub fn[N : @bounded_enum.T] union(t1 : Tree[N], t2 : Tree[N]) -> Tree[N] {
  match (t1, t2) {
    (Empty, Empty) => Empty
    (Empty, Node(..) as t) | (Node(..) as t, Empty) => t
    (Node(..) as t1, Node(..) as t2) => {
      let (t1, t2) = if t1.size >= t2.size { (t1, t2) } else { (t2, t1) }
      union_aux(t1, t2)
    }
  }
}

///|
fn[N : @bounded_enum.T] union_aux(t1 : Tree[N], t2 : Tree[N]) -> Tree[N] {
  guard t1 is (Node(..) as t1)
  guard t2 is (Node(..) as t2)
  let l1 = t1.left
  let r1 = t1.right
  let l2 = t2.slice_before(t1.min)
  let r2 = t2.slice_after(t1.max)
  let (min, l) = if t1.min == N::lower_bound() {
    (t1.min, Empty)
  } else {
    let l = union(l1, l2)
    match l {
      Empty => (t1.min, Empty)
      Node(_) => {
        let ((min, max), l3) = split_rightmost(l)
        if max < N::upper_bound() && N::succ(max) == t1.min {
          (min, l3)
        } else {
          (t1.min, l)
        }
      }
    }
  }
  let (max, r) = if t1.max == N::upper_bound() {
    (t1.max, Empty)
  } else {
    let r = union(r1, r2)
    match r {
      Empty => (t1.max, Empty)
      Node(_) => {
        let ((min, max), r3) = split_leftmost(r)
        if min > N::lower_bound() && N::pred(min) == t1.max {
          (max, r3)
        } else {
          (t1.max, r)
        }
      }
    }
  }
  balance(min, max, l, r)
}

///|
pub fn[N : @bounded_enum.T] intersection(t1 : Tree[N], t2 : Tree[N]) -> Tree[N] {
  match (t1, t2) {
    (Empty, _) | (_, Empty) => Empty
    (Node(..) as t1, Node(..) as t2) => {
      let (t1, t2) = if t1.size >= t2.size { (t1, t2) } else { (t2, t1) }
      intersection_aux(t1, t2)
    }
  }
}

///|
fn[N : @bounded_enum.T] intersection_aux(t1 : Tree[N], t2 : Tree[N]) -> Tree[N] {
  guard t1 is (Node(..) as t1)
  guard t2 is (Node(..) as t2)
  let l1 = t1.left
  let r1 = t1.right
  let l2 = t2.slice_before(t1.min)
  let r2 = t2.slice_after(t1.max)
  let l = intersection(l1, l2)
  let r = intersection(r1, r2)
  let m = t2.slice(min=t1.min, max=t1.max)
  concat(concat(l, m), r)
}

///|
pub fn[N : @bounded_enum.T] complement(self : Tree[N]) -> Tree[N] {
  complement_aux(N::lower_bound(), N::upper_bound(), self)
}

///|
fn[N : @bounded_enum.T] complement_aux(
  min : N,
  max : N,
  t : Tree[N],
) -> Tree[N] {
  match t {
    Empty => interval(min, max)
    Node(..) as t => {
      let l = if t.min == N::lower_bound() {
        Empty
      } else {
        complement_aux(min, N::pred(t.min), t.left)
      }
      let r = if t.max == N::upper_bound() {
        Empty
      } else {
        complement_aux(N::succ(t.max), max, t.right)
      }
      concat(l, r)
    }
  }
}

///|
pub fn[N : @bounded_enum.T] difference(t1 : Tree[N], t2 : Tree[N]) -> Tree[N] {
  intersection(t1, t2.complement())
}

///|
pub fn[N] unsafe_choose(self : Tree[N]) -> N {
  match self {
    Empty => panic()
    Node(min~, ..) => min
  }
}
