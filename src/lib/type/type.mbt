///|
pub(all) enum CodeUnit {
  CodeUnit1
  CodeUnit2
  CodeUnit4
}

///|
pub typealias @regex.(Regex, Encoding)

///|
pub typealias CodeBlock = String

///|
pub(all) struct Rule {
  name : String
  signature : String
  lexee_var : String
  patterns : Array[(Regex, CodeBlock)]
} derive(Show, ToJson)

///|
pub(all) struct Lex {
  header : CodeBlock
  rules : Array[Rule]
  trailer : CodeBlock
} derive(Show, ToJson)
