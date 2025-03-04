///|
test "parse regex" {
  let parser_buf = ParserBuf::from_string(
    "(\"x\"*|'\"'+) ['a'- 'z' '_' ] [^ 'a' 'b'] eof '\'' '\r' '\x00'",
  )
  let result = parser_buf.regex().map(fn { (_, r) => r })
  @json.inspect!(result, content=[
    {
      "$tag": "Concat",
      "0": {
        "$tag": "Concat",
        "0": {
          "$tag": "Concat",
          "0": {
            "$tag": "Concat",
            "0": {
              "$tag": "Concat",
              "0": {
                "$tag": "Concat",
                "0": {
                  "$tag": "Alter",
                  "0": {
                    "$tag": "Option",
                    "0": {
                      "$tag": "Repetition",
                      "0": { "$tag": "ReStr", "0": "x" },
                    },
                  },
                  "1": {
                    "$tag": "Repetition",
                    "0": { "$tag": "ReChar", "0": "\"" },
                  },
                },
                "1": { "$tag": "CharSet", "0": [["_", "_"], ["a", "z"]] },
              },
              "1": { "$tag": "RevCharSet", "0": [["a", "b"]] },
            },
            "1": { "$tag": "EOF" },
          },
          "1": { "$tag": "ReChar", "0": "'" },
        },
        "1": { "$tag": "ReChar", "0": "\r" },
      },
      "1": { "$tag": "ReChar", "0": "\u0000" },
    },
  ])
}

///|
test "parse var_definition" {
  let parser_buf = ParserBuf::from_string(
    "jian123___ : Array[(Int, Array[B, C])])",
  )
  let result = parser_buf.var_definition().map(fn { (_, r) => r })
  let correct : VarDefinition? = Some({
    identifier: "jian123___",
    ty: " Array[(Int, Array[B, C])]",
  })
  if result != correct {
    fail!("parse var_definition fail")
  }
}

///|
test "parse codeblock" {
  let parser_buf = ParserBuf::from_string("{asdsad {\"}\"} asdas {xx}} xxx")
  let result = parser_buf.code_block().map(fn { (_, r) => r })
  @json.inspect!(result, content=["asdsad {\"}\"} asdas {xx}"])
}
