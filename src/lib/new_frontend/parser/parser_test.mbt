///|
test {
  let content = @encoding.encode(
    UTF8,
    (
      #|let x : Int = 1
      #|const DIGIT : Regex = "[0-9]"
      #|const NUM : Regex = "\{DIGIT}+"
      #|fn foo(lexbuf : Lexbuf) -> Unit {
      #|  lex lexbuf {
      #|    NUM => {}
      #|  }
      #|}
    ),
  )
  let filename = "test.mbt"
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
  )
  @json.inspect(ast, content={
    "body": {
      "$tag": "Nested",
      "0": [
        { "$tag": "Code", "loc": "test.mbt:1:0-2:0" },
        {
          "$tag": "NamedRegex",
          "0": { "name": "DIGIT", "loc": "test.mbt:2:6-2:11" },
          "1": { "$tag": "Literal", "0": "[0-9]", "loc": "test.mbt:2:22-2:29" },
          "loc": "test.mbt:2:0-2:29",
        },
        { "$tag": "Code", "loc": "test.mbt:2:29-3:0" },
        {
          "$tag": "NamedRegex",
          "0": { "name": "NUM", "loc": "test.mbt:3:6-3:9" },
          "1": {
            "$tag": "Interp",
            "0": [
              {
                "$tag": "InterpSource",
                "0": { "source": "DIGIT", "loc": "test.mbt:3:23-3:28" },
              },
              { "$tag": "InterpLit", "repr": "+", "loc": "test.mbt:3:20-3:31" },
            ],
            "loc": "test.mbt:3:20-3:31",
          },
          "loc": "test.mbt:3:0-3:31",
        },
        { "$tag": "Code", "loc": "test.mbt:3:31-5:2" },
        {
          "$tag": "LexDef",
          "0": { "loc": "test.mbt:5:6-5:12" },
          "1": [
            {
              "pattern": {
                "$tag": "OpenPattern",
                "0": [
                  {
                    "$tag": "Regex",
                    "0": {
                      "$tag": "Named",
                      "0": { "name": "NUM", "loc": "test.mbt:6:4-6:7" },
                    },
                  },
                ],
                "rest": Json::null(),
                "loc": "test.mbt:6:4-6:7",
              },
              "action": { "$tag": "Code", "loc": "test.mbt:6:11-6:13" },
              "loc": "test.mbt:6:4-6:13",
            },
          ],
          "loc": "test.mbt:5:2-7:3",
        },
        { "$tag": "Code", "loc": "test.mbt:7:3-8:1" },
      ],
      "loc": "test.mbt:1:0-8:1",
    },
    "loc": "test.mbt:1:0-8:1",
  })
}
