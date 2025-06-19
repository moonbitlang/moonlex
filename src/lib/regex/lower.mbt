///|
pub fn lower(re : Regex, encoding~ : Encoding?) -> Regex {
  if encoding is None {
    re
  } else {
    match re.desc {
      Epsilon => epsilon
      EOF => eof
      Character(cset) =>
        match encoding {
          None => char_class(cset)
          Some(encoding) => lower_unicode_charclass(cset, encoding~)
        }
      Repetition(re) => plus(lower(re, encoding~))
      Concat(re1, re2) => seq(lower(re1, encoding~), lower(re2, encoding~))
      Alter(re1, re2) => alt(lower(re1, encoding~), lower(re2, encoding~))
      Capture(re, var_) => bind(lower(re, encoding~), var_)
    }
  }
}

///|
fn lower_unicode_charclass(cset : @char_set.T, encoding~ : Encoding) -> Regex {
  let branches = match encoding {
    Utf8 => lower_unicode_charclass_to_utf8(cset)
    Ascii | Latin1 | Utf16 =>
      // TODO: Handle Ascii, Latin1, and Utf16 cases
      panic()
  }
  fn regex_of_branch(branch : Array[@char_set.T]) -> Regex {
    guard branch.length() >= 1
    let mut regex = char_class(branch[0])
    for cset in branch[1:] {
      regex = seq(regex, char_class(cset))
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
