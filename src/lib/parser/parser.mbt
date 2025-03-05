// parser_buf
///|
struct ParserBuf {
  ptr : Int
  content : String
} derive(Show)

///|
pub fn ParserBuf::from_string(content : String) -> ParserBuf {
  { ptr: 0, content }
}

///|
fn step(self : ParserBuf, i~ : Int = 1) -> ParserBuf {
  { ptr: self.ptr + i, content: self.content }
}

///|
fn peek(self : ParserBuf, i~ : Int = 0) -> Char? {
  if self.ptr + i >= self.content.length() {
    None
  } else {
    Some(self.content.get(self.ptr + i))
  }
}

///|
fn get_str(self : ParserBuf, i : Int) -> String? {
  if self.ptr + i > self.content.length() {
    None
  } else {
    Some(self.content.substring(start=self.ptr, end=self.ptr + i))
  }
}

///|
fn match_str(self : ParserBuf, pattern : String) -> ParserBuf? {
  for i = 0; i < pattern.length(); i = i + 1 {
    if self.peek(i~) != Some(pattern.get(i)) {
      break None
    }
  } else {
    Some(self.step(i=pattern.length()))
  }
}

// ignore ws
///|
fn match_str_array(self : ParserBuf, patterns : Array[String]) -> ParserBuf? {
  let mut p = self
  for pattern in patterns {
    match p.skip_ws().match_str(pattern) {
      None => return None
      Some(np) => p = np
    }
  }
  Some(p)
}

///|
fn match_re(self : ParserBuf, re : Regex) -> (ParserBuf, String)? {
  match re {
    Underscore =>
      self.peek().map(fn(c) { (self.step(), String::from_array([c])) })
    EOF => @option.when(self.ptr == self.content.length(), fn() { (self, "") })
    ReStr(str) => self.match_str(str).map(fn(p) { (p, str) })
    ReChar(ch) =>
      self
      .peek()
      .bind(fn(c) {
        @option.when(ch == c, fn() { (self.step(), String::from_array([c])) })
      })
    CharSet(ch_set) =>
      self
      .peek()
      .bind(fn(c) {
        @option.when(ch_set.contains(c), fn() {
          (self.step(), String::from_array([c]))
        })
      })
    Repetition(re) =>
      match self.match_re(re) {
        None => None
        Some((p, s)) =>
          p
          .match_re(Option(Repetition(re)))
          .map(fn { (p, rest) => (p, s + rest) })
      }
    Option(re) => bind_none(self.match_re(re), fn() { Some((self, "")) })
    Alter(re1, re2) =>
      bind_none(self.match_re(re1), fn() { self.match_re(re2) })
    Concat(re1, re2) =>
      self
      .match_re(re1)
      .bind(fn {
        (p, s1) => p.match_re(re2).map(fn { (p, s2) => (p, s1 + s2) })
      })
    Capture(_, _) => abort("Capture is not allowed in ParserBuf")
    Named(_) => abort("Named is not allowed in ParserBuf")
  }
}

///|
fn repeat_match[T](
  self : ParserBuf,
  match_fn : (ParserBuf) -> (ParserBuf, T)?
) -> (ParserBuf, Array[T]) {
  for p = self, arr = [] {
    match match_fn(p) {
      None => break (p, arr)
      Some((p, t)) => {
        arr.push(t)
        continue p, arr
      }
    }
  }
}

///|
fn skip_ws(self : ParserBuf) -> ParserBuf {
  for p = self {
    match p.peek() {
      Some(' ') | Some('\n') => continue p.step()
      _ => break p
    }
  }
}

///|
let digit_re : Regex = CharSet(@eof_char_set.range('0', '9'))

///|
let hex_digit_re : Regex = Alter(
  digit_re,
  Alter(
    CharSet(@eof_char_set.range('a', 'f')),
    CharSet(@eof_char_set.range('A', 'F')),
  ),
)

// parser
///|
let char_re : Regex = Concat(
  ReChar('\''),
  Alter(
    Concat(Underscore, ReChar('\'')),
    Concat(
      Concat(
        ReChar('\\'),
        Alter(
          Concat(ReChar('x'), Concat(hex_digit_re, hex_digit_re)),
          Underscore,
        ),
      ),
      ReChar('\''),
    ),
  ),
)

///|
fn char(self : ParserBuf) -> (ParserBuf, Char)? {
  self
  .match_re(char_re)
  .map(fn {
    (p, str) => {
      let ch = if str.length() == 3 {
        str.get(1)
      } else if str.length() == 4 {
        match str.get(2) {
          't' => '\t'
          'r' => '\r'
          'n' => '\n'
          '\\' => '\\'
          '\'' => '\''
          _ => abort("unsupported escaped char")
        }
      } else if str.length() == 6 {
        fn hex_char_to_int(c : Char) -> Int {
          let c = c.to_int()
          if c >= '0'.to_int() && c <= '9'.to_int() {
            c - '0'.to_int()
          } else if c >= 'a'.to_int() && c <= 'f'.to_int() {
            c - 'a'.to_int() + 10
          } else if c >= 'A'.to_int() && c <= 'F'.to_int() {
            c - 'A'.to_int() + 10
          } else {
            abort("illegal hex char")
          }
        }

        let c1 = hex_char_to_int(str.get(3))
        let c2 = hex_char_to_int(str.get(4))
        Char::from_int(c1 * 16 + c2)
      } else {
        abort("illegal char")
      }
      (p, ch)
    }
  })
}

///|
let string_re : Regex = Concat(
  ReChar('"'),
  Concat(
    Option(
      Repetition(
        Alter(ReStr("\\\""), CharSet(@eof_char_set.singleton('"').negated())),
      ),
    ),
    ReChar('"'),
  ),
)

///|
fn string(self : ParserBuf) -> (ParserBuf, String)? {
  self
  .match_re(string_re)
  .map(fn { (p, s) => (p, s.substring(start=1, end=s.length() - 1)) })
}

///|
fn charset_inside(self : ParserBuf) -> (ParserBuf, @eof_char_set.T) {
  let (p, arr) = self.repeat_match(fn(p) {
    let c = p.skip_ws().char()
    c.bind(fn {
      (p, ch) => {
        let p = p.skip_ws()
        if p.peek() == Some('-') {
          let ch_end = p.step().skip_ws().char()
          ch_end.map(fn { (p, ch_end) => (p, @eof_char_set.range(ch, ch_end)) })
        } else {
          Some((p, @eof_char_set.singleton(ch)))
        }
      }
    })
  })
  (p, arr.fold(init=@eof_char_set.empty, @eof_char_set.union))
}

///|
fn regex_nonleftrec(self : ParserBuf) -> (ParserBuf, Regex)? {
  let p = self.skip_ws()
  match (p.peek(), p.peek(i=1)) {
    (Some('\''), _) => p.char().map(fn { (p, ch) => (p, ReChar(ch)) })
    (Some('"'), _) => p.string().map(fn { (p, str) => (p, ReStr(str)) })
    (Some('['), Some('^')) => {
      let (p, cset) = p.step(i=2).charset_inside()
      p.match_str("]").map(fn(p) { (p, CharSet(cset.negated())) })
    }
    (Some('['), _) => {
      let (p, arr) = p.step().charset_inside()
      p.match_str("]").map(fn(p) { (p, CharSet(arr)) })
    }
    (Some('('), _) =>
      p
      .step()
      .regex()
      .bind(fn { (p, re) => p.match_str(")").map(fn(p) { (p, re) }) })
    (Some('A'..='Z' | 'a'..='z'), _) =>
      p
      .identifier()
      .map(fn {
        (p, name) => if name == "eof" { (p, EOF) } else { (p, Named(name)) }
      })
    (Some('_'), _) => Some((p.step(), Underscore))
    _ => None
  }
}

///|
fn regex_leftrec(self : ParserBuf, re : Regex) -> (ParserBuf, Regex)? {
  let p = self.skip_ws()
  match p.peek() {
    Some('|') => p.step().regex().map(fn { (p, re2) => (p, Alter(re, re2)) })
    Some('*') => p.step().regex_leftrec(Option(Repetition(re)))
    Some('+') => p.step().regex_leftrec(Repetition(re))
    Some('?') => p.step().regex_leftrec(Option(re))
    Some('a') =>
      p
      .match_str("as")
      .bind(fn(p) {
        p.skip_ws().identifier().map(fn { (p, name) => (p, Capture(re, name)) })
      })
    _ => Some((p, re))
  }
}

///|
pub fn regex(self : ParserBuf) -> (ParserBuf, Regex)? {
  let (p, arr) = self.repeat_match(fn(p) {
    p.regex_nonleftrec().bind(fn { (p, re) => p.regex_leftrec(re) })
  })
  if arr.length() == 0 {
    None
  } else {
    let head = arr.get(0).unwrap()
    Some((p, arr.split_at(1).1.fold(init=head, fn(a, b) { Concat(a, b) })))
  }
}

///|
fn identifier(self : ParserBuf) -> (ParserBuf, String)? {
  let re : Regex = Concat(
    CharSet(@eof_char_set.range('a', 'z')),
    Option(
      Repetition(
        CharSet(
          @eof_char_set.range('a', 'z') +
          @eof_char_set.range('A', 'Z') +
          @eof_char_set.range('0', '9') +
          @eof_char_set.singleton('_'),
        ),
      ),
    ),
  )
  self.match_re(re)
}

///|
fn ty(self : ParserBuf) -> (ParserBuf, String)? {
  // read until ','  ')' or '{' and the parentheses matched
  let p = self
  let stack : Array[Char] = []
  for i = 0; ; i = i + 1 {
    match p.peek(i~) {
      None => break None // in lex, var_definition're unpossiable to appear on the end
      Some('[' as c) | Some('(' as c) => stack.push(c)
      Some(',') =>
        if stack.is_empty() {
          break Some((p.step(i~), p.get_str(i).unwrap()))
        }
      Some('{') =>
        if stack.is_empty() {
          break Some((p.step(i~), p.get_str(i).unwrap()))
        } else {
          break None
        }
      Some(')') =>
        if stack.is_empty() {
          break Some((p.step(i~), p.get_str(i).unwrap()))
        } else if stack.pop() != Some('(') {
          break None
        }
      Some(']') => if stack.pop() != Some('[') { break None }
      Some(_) => continue
    }
  }
}

///|
fn var_definition(self : ParserBuf) -> (ParserBuf, VarDefinition)? {
  self
  .skip_ws()
  .identifier()
  .bind(fn {
    (p, identifier) =>
      p
      .skip_ws()
      .match_str(":")
      .bind(fn(p) {
        guard p.ty() is Some((p, ty)) else { return None }
        Some((p, { identifier, ty }))
      })
  })
}

///|
fn code_block(self : ParserBuf) -> (ParserBuf, CodeBlock)? {
  let re : Regex = Option(
    Repetition(
      Alter(
        CharSet(@eof_char_set.of_array(['{', '}', '\'', '"']).negated()),
        Alter(char_re, string_re),
      ),
    ),
  )
  self
  .skip_ws()
  .match_str("{")
  .bind(fn(p) {
    let strbuf : Array[String] = []
    let mut mut_p = p
    for count = 1 {
      match mut_p.match_re(re) {
        None => return None
        Some((p, str)) => {
          strbuf.push(str)
          match p.peek() {
            Some('{') => {
              strbuf.push("{")
              mut_p = p.step()
              continue count + 1
            }
            Some('}') => {
              mut_p = p.step()
              if count == 1 {
                break
              } else {
                strbuf.push("}")
                continue count - 1
              }
            }
            _ => abort("unreachable")
          }
        }
      }
    }
    Some((mut_p, strbuf.fold(init="", fn(a, b) { a + b })))
  })
}

///|
fn named_regex(self : ParserBuf) -> (ParserBuf, (String, Regex))? {
  guard self.skip_ws().match_str("let") is Some(p) else { None }
  guard p.skip_ws().identifier() is Some((p, name)) else { None }
  guard p.skip_ws().match_str("=") is Some(p) else { None }
  guard p.regex() is Some((p, re)) else { None }
  guard p.skip_ws().match_str(";") is Some(p) else { None }
  Some((p, (name, re)))
}

///|
fn rule(self : ParserBuf) -> (ParserBuf, Rule)? {
  guard self.skip_ws().match_str("rule") is Some(p) else { None }
  guard p.skip_ws().identifier() is Some((p, name)) else { None }
  guard p.skip_ws().match_str("(") is Some(p) else { None }
  let (p, vars) = p.repeat_match(fn(p) {
    guard p.var_definition() is Some((p, var)) else { None }
    guard p.skip_ws().match_re(Option(ReStr(","))) is Some((p, _)) else { None }
    Some((p, var))
  })
  guard p.match_str_array([")", "->"]) is Some(p) else { None }
  guard p.ty() is Some((p, return_type)) else { None }
  guard p.match_str_array(["{", "parse", "{"]) is Some(p) else { None }
  let (p, patterns) = p.repeat_match(fn(p) {
    let p = p.skip_ws()
    guard p.regex() is Some((p, re)) else { None }
    guard p.skip_ws().match_str("=>") is Some(p) else { None }
    guard p.code_block() is Some((p, code_block)) else { None }
    Some((p, (re, code_block)))
  })
  guard p.match_str_array(["}", "}"]) is Some(p) else { None }
  Some((p, { name, vars, return_type, patterns }))
}

///|
pub fn lex(self : ParserBuf) -> (ParserBuf, Lex)? {
  guard self.code_block() is Some((p, header)) else { None }
  let (p, named_regexes) = p.repeat_match(named_regex)
  let (p, rules) = p.repeat_match(rule)
  guard p.code_block() is Some((p, trailer)) else { None }
  Some((p, { header, named_regexes, rules, trailer }))
}

// utils funcs
///|
fn bind_none[T](opt : T?, f : () -> T?) -> T? {
  match opt {
    None => f()
    Some(_) => opt
  }
}
