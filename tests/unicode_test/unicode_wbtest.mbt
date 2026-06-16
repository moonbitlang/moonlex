///|
test {
  inspect(classify("我爱中国"), content="1")
  inspect(classify("𠮷"), content="2")
  inspect(classify("あ"), content="3")
  inspect(classify("$"), content="4")
}
