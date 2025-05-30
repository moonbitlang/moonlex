///|
pub(all) struct Rule {
  lexee : String
  // rest_binder is only used in new syntax
  patterns : Array[(@regex.Regex, String?)] // (regex, rest_binder)
  // indexed by pattern id
  actions : Array[String]
}
