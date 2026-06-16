///|
pub type T[K] = Tree[K]

///|
enum Tree[T] {
  Empty
  Node(left~ : Tree[T], right~ : Tree[T], size~ : Int, min~ : T, max~ : T)
}
