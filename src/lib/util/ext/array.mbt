///|
pub fn[T1, T2] unzip_array(arr : Array[(T1, T2)]) -> (Array[T1], Array[T2]) {
  let first = []
  let second = []
  for it in arr {
    let (a, b) = it
    first.push(a)
    second.push(b)
  }
  (first, second)
}
