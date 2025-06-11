///|
fn parse_hex_integer(input : String) -> Int {
  loop (0, input[:]) {
    (acc, []) => acc
    (acc, ['0'..='9' as c, .. rest]) =>
      continue (acc * 16 + (c.to_int() - '0'), rest)
    (acc, ['A'..='F' as c, .. rest]) =>
      continue (acc * 16 + 10 + (c.to_int() - 'A'), rest)
    (acc, ['a'..='f' as c, .. rest]) =>
      continue (acc * 16 + 10 + (c.to_int() - 'a'), rest)
    (_, _) => panic()
  }
}

///|
fn parse_integer(input : String) -> Int {
  loop (0, input[:]) {
    (acc, []) => acc
    (acc, ['0'..='9' as c, .. rest]) =>
      continue (acc * 10 + (c.to_int() - '0'), rest)
    (_, _) => panic()
  }
}
