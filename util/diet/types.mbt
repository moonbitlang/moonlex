///|
pub type T[K] = Tree[K]

///|
enum Tree[T] {
  Empty
  Node(left~ : Tree[T], right~ : Tree[T], size~ : Int32, min~ : T, max~ : T)
}
