///|
test {
  inspect(classify(b"我爱中国"), content="1")
  inspect(classify(b"𠮷"), content="2")
  inspect(classify(b"あ"), content="3")
  inspect(classify(b"$"), content="4")
}
