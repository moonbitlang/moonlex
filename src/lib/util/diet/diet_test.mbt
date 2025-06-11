///|
test "empty" {
  let empty : @diet.T[Char] = @diet.empty()
  inspect(empty.iter().to_array(), content="[]")
}

///|
test "singleton" {
  let singleton : @diet.T[Char] = @diet.singleton('a')
  inspect(singleton.iter().to_array(), content="['a']")
}

///|
test "interval" {
  let interval : @diet.T[Char] = @diet.interval('0', '9')
  inspect(
    interval.iter().to_array(),
    content="['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']",
  )
}

///|
test "slice with min" {
  let a : @diet.T[Char] = @diet.interval('0', '9')
  let slice : @diet.T[Char] = a.slice(min='3')
  inspect(
    slice.iter().to_array(),
    content="['3', '4', '5', '6', '7', '8', '9']",
  )
}

///|
test "slice with max" {
  let a : @diet.T[Char] = @diet.interval('0', '9')
  let slice : @diet.T[Char] = a.slice(max='3')
  inspect(slice.iter().to_array(), content="['0', '1', '2', '3']")
}

///|
test "slice with min and max" {
  let a : @diet.T[Char] = @diet.interval('0', '9')
  let slice : @diet.T[Char] = a.slice(min='3', max='6')
  inspect(slice.iter().to_array(), content="['3', '4', '5', '6']")
}

///|
test "union adjacent" {
  let a : @diet.T[Char] = @diet.interval('0', '4')
  let b : @diet.T[Char] = @diet.interval('5', '9')
  let union : @diet.T[Char] = @diet.union(a, b)
  inspect(
    union.iter().to_array(),
    content="['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']",
  )
}

///|
test "union overlapping" {
  let a : @diet.T[Char] = @diet.interval('0', '5')
  let b : @diet.T[Char] = @diet.interval('4', '9')
  let union : @diet.T[Char] = @diet.union(a, b)
  inspect(
    union.iter().to_array(),
    content="['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']",
  )
}

///|
test "union disjoint" {
  let a : @diet.T[Char] = @diet.interval('0', '4')
  let b : @diet.T[Char] = @diet.interval('6', '9')
  let union : @diet.T[Char] = @diet.union(a, b)
  inspect(
    union.iter().to_array(),
    content="['0', '1', '2', '3', '4', '6', '7', '8', '9']",
  )
}

///|
test "union containing" {
  let a : @diet.T[Char] = @diet.interval('0', '9')
  let b : @diet.T[Char] = @diet.interval('3', '6')
  let union : @diet.T[Char] = @diet.union(a, b)
  inspect(
    union.iter().to_array(),
    content="['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']",
  )
}

///|
test "intersection adjacent" {
  let a : @diet.T[Char] = @diet.interval('0', '4')
  let b : @diet.T[Char] = @diet.interval('4', '9')
  let intersection : @diet.T[Char] = @diet.intersection(a, b)
  inspect(intersection.iter().to_array(), content="['4']")
}

///|
test "intersection overlapping" {
  let a : @diet.T[Char] = @diet.interval('0', '5')
  let b : @diet.T[Char] = @diet.interval('4', '9')
  let intersection : @diet.T[Char] = @diet.intersection(a, b)
  inspect(intersection.iter().to_array(), content="['4', '5']")
}

///|
test "intersection disjoint" {
  let a : @diet.T[Char] = @diet.interval('0', '4')
  let b : @diet.T[Char] = @diet.interval('6', '9')
  let intersection : @diet.T[Char] = @diet.intersection(a, b)
  inspect(intersection.iter().to_array(), content="[]")
}

///|
test "intersection containing" {
  let a : @diet.T[Char] = @diet.interval('0', '9')
  let b : @diet.T[Char] = @diet.interval('3', '6')
  let intersection : @diet.T[Char] = @diet.intersection(a, b)
  inspect(intersection.iter().to_array(), content="['3', '4', '5', '6']")
}

///|
test "complement empty" {
  let empty : @diet.T[Char] = @diet.empty()
  let complement : @diet.T[Char] = empty.complement()
  assert_eq(complement.iter_intervals().to_array(), [('\u{0}', '\u{10ffff}')])
}

///|
test "complement single interval" {
  let a : @diet.T[Char] = @diet.interval('0', '9')
  let complement : @diet.T[Char] = a.complement()
  assert_eq(complement.iter_intervals().to_array(), [
    ('\u{0}', '/'),
    (':', '\u{10ffff}'),
  ])
}

///|
test "complement multiple intervals" {
  let a : @diet.T[Char] = @diet.union(
    @diet.interval('0', '4'),
    @diet.interval('6', '9'),
  )
  let complement : @diet.T[Char] = a.complement()
  assert_eq(complement.iter_intervals().to_array(), [
    ('\u{0}', '/'),
    ('5', '5'),
    (':', '\u{10ffff}'),
  ])
}

///|
test "difference" {
  let a : @diet.T[Char] = @diet.interval('0', '9')
  let b : @diet.T[Char] = @diet.interval('3', '6')
  let difference : @diet.T[Char] = @diet.difference(a, b)
  assert_eq(difference.iter().to_array(), ['0', '1', '2', '7', '8', '9'])
}
