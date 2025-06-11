///|
pub fn compile(content : Bytes, filename~ : String) -> String {
  let lex_result = @lexer.tokens_from_bytes(
    name=filename,
    content,
    comment=false,
  )
  let ast = @parser.start(
    lex_result.tokens.filter(fn(triple) {
      not(triple.0 is (NEWLINE | COMMENT(_)))
    }),
    initial_pos={ fname: filename, lnum: 1, bol: 0, cnum: 0 },
  ) catch {
    err => {
      println(err)
      panic()
    }
  }
  generate(ast.body, source=content)
}
