///|
pub(all) struct Program {
  body : Term
  loc : Location
} derive(ToJson)

///|
pub(all) enum Term {
  Code(loc~ : Location)
  Nested(Array[Term], loc~ : Location)
  NamedRegex(Ident, Regex, loc~ : Location)
  LexDef(Code, Array[LexCase], loc~ : Location)
  GeneratedCode(String, loc~ : Location)
} derive(ToJson(style="legacy"))

///|
pub fn Term::loc(self : Term) -> Location {
  match self {
    Code(loc~) => loc
    Nested(_, loc~) => loc
    NamedRegex(_, _, loc~) => loc
    LexDef(_, _, loc~) => loc
    GeneratedCode(_, loc~) => loc
  }
}

///|
pub(all) struct LexCase {
  pattern : LexPattern
  action : Term
  loc : Location
} derive(ToJson)

///|
pub(all) enum LexPattern {
  OpenPattern(Array[LexPatternItem], rest~ : Ident?, loc~ : Location)
  ClosedPattern(Array[LexPatternItem], loc~ : Location)
} derive(ToJson(style="legacy"))

///|
pub(all) enum LexPatternItem {
  Regex(Regex)
  RegexAs(Regex, Ident, loc~ : Location)
} derive(ToJson(style="legacy"))

///|
pub(all) enum Regex {
  Literal(StringLiteral, loc~ : Location)
  Interp(InterpLiteral, loc~ : Location)
  Named(Ident)
} derive(ToJson(style="legacy"))

///|
pub(all) struct Ident {
  name : String
  loc : Location
} derive(ToJson)

///|
pub(all) struct Code {
  loc : Location
} derive(ToJson)
