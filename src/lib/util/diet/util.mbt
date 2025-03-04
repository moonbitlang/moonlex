///|
fn split_leftmost[N](t : Tree[N]) -> ((N, N), Tree[N]) {
  match t {
    Empty => panic()
    Node(left=Empty, right~, min~, max~, ..) => ((min, max), right)
    Node(..) as t => {
      let ((min, max), l) = split_leftmost(t.left)
      ((min, max), make_node(t.min, t.max, l, t.right))
    }
  }
}

///|
fn split_rightmost[N](t : Tree[N]) -> ((N, N), Tree[N]) {
  match t {
    Empty => panic()
    Node(left~, right=Empty, min~, max~, ..) => ((min, max), left)
    Node(..) as t => {
      let ((min, max), r) = split_rightmost(t.right)
      ((min, max), make_node(t.min, t.max, t.left, r))
    }
  }
}
