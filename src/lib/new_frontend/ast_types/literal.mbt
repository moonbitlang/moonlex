///|
pub typealias CharLiteral = String

///|
pub typealias StringLiteral = String

///|
pub typealias ByteLiteral = String

///|
pub typealias BytesLiteral = String

///|
pub(all) struct InterpSource {
  source : String
  loc : Location
} derive(Show, ToJson)

///|
pub(all) enum InterpElem {
  InterpLit(repr~ : String, loc~ : Location)
  InterpSource(InterpSource)
} derive(Show, ToJson)

///|
pub typealias InterpLiteral = Array[InterpElem]
