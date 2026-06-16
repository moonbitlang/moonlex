///|
test {
  inspect(is_number("123"), content="true")
  inspect(is_number("0"), content="true")
  inspect(is_number("a"), content="false")
  inspect(is_number("123a"), content="true")
  inspect(is_number("a123"), content="false")
}
