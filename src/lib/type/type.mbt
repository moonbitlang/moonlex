///|
pub(all) enum CodeUnit {
  CodeUnit1
  CodeUnit2
  CodeUnit4
}

///|
pub typealias @regex.(Regex, Encoding)

///|
pub typealias String as CodeBlock

///|
pub(all) struct Rule {
  name : String
  signature : String
  lexee : String
  // rest_binder is only used in new syntax
  patterns : Array[(Regex, String?)] // (regex, rest_binder)
  // indexed by pattern id
  actions : Array[CodeBlock]
} derive(Show, ToJson)

///|
pub(all) struct Lex {
  header : CodeBlock
  rules : Array[Rule]
  trailer : CodeBlock
} derive(Show, ToJson)
