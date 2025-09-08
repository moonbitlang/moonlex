///|
struct Context {
  named_regexes : @immut/sorted_map.SortedMap[String, @regex.T]
}

///|
fn Context::define_regex(
  self : Context,
  name : String,
  regex : @regex.T,
) -> Context {
  { ..self, named_regexes: self.named_regexes.add(name, regex) }
}
