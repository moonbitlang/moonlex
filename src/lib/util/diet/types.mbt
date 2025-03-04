///|
pub typealias T[T] = Tree[T]

///|
enum Tree[T] {
  Empty
  Node(left~ : Tree[T], right~ : Tree[T], size~ : Int, min~ : T, max~ : T)
}
