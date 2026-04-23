///|
pub(all) enum CodeUnit {
  CodeUnit1
  CodeUnit2
  CodeUnit4
}

///|
pub using @regex {type Regex, type Encoding}

///|
pub type CodeBlock = String

///|
pub(all) struct Rule {
  name : String
  signature : String
  lexee : String
  // rest_binder is only used in new syntax
  patterns : Array[(Regex, String?)] // (regex, rest_binder)
  // indexed by pattern id
  actions : Array[CodeBlock]
} derive(Debug, ToJson)

///|
pub impl Show for Rule with output(self, logger) {
  logger.write_object(self.to_repr())
}

///|
pub(all) struct Lex {
  header : CodeBlock
  rules : Array[Rule]
  trailer : CodeBlock
} derive(Debug, ToJson)

///|
pub impl Show for Lex with output(self, logger) {
  logger.write_object(self.to_repr())
}
