///|
test {
  inspect(eval("42"), content="42")
  inspect(eval("3 2 +"), content="5")
  inspect(eval("3 2 + 5 -"), content="0")
  inspect(eval("5 3 2 + -"), content="0")
}
