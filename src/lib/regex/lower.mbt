///|
fn lower_unicode_charclass(cset : @char_set.T, encoding~ : Encoding) -> Regex {
  let branches = match encoding {
    Utf8 => lower_unicode_charclass_to_utf8(cset)
  }
  fn regex_of_branch(branch : Array[@char_set.T]) -> Regex {
    guard branch.length() >= 1
    let mut regex = char_class(branch[0])
    for cset in branch[1:] {
      regex = concat(regex, char_class(cset))
    }
    regex
  }

  guard branches.length() >= 1
  let mut regex = regex_of_branch(branches[0])
  for branch in branches[1:] {
    regex = alt(regex, regex_of_branch(branch))
  }
  regex
}

///|
pub fn lower(re : Regex, encoding~ : Encoding) -> Regex {
  match re.desc {
    Concat(re1, re2) => concat(lower(re1, encoding~), lower(re2, encoding~))
    Alter(re1, re2) => alt(lower(re1, encoding~), lower(re2, encoding~))
    Repetition(re) => star(lower(re, encoding~))
    Character(cset) => lower_unicode_charclass(cset, encoding~)
    Epsilon => epsilon
    EOF => eof
    Capture(re, name) => bind(lower(re, encoding~), name)
  }
}
