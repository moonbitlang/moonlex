///|
pub(all) struct Program {
  body : Array[Term]
  loc : Location
} derive(ToJson)

///|
pub(all) enum Term {
  Code(loc~ : Location)
  Nested(Array[Term], loc~ : Location)
  NamedRegex(Ident, Regex, loc~ : Location)
  LexDef(Ident, Array[LexCase], loc~ : Location)
} derive(ToJson)

///|
pub(all) struct LexCase {
  pattern : Array[LexPatternItem]
  action : Term
  loc : Location
} derive(ToJson)

///|
pub(all) enum LexPatternItem {
  Regex(Regex)
  RegexAs(Regex, Ident, loc~: Location)
} derive(ToJson)

///|
pub(all) enum Regex {
  Literal(StringLiteral, loc~: Location)
  Interp(InterpLiteral, loc~: Location)
  Named(Ident)
} derive(ToJson)

///|
pub(all) struct Ident {
  name : String
  loc : Location
} derive(ToJson)
