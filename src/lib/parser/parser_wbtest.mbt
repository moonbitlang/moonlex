///|
test {
  let lex = parse_lex_from_string!(lexer_src)
  @json.inspect!(lex, content={
    "header": "",
    "named_regexes": [
      [
        "ws",
        {
          "$tag": "Repetition",
          "0": { "$tag": "CharSet", "0": [[9, 10], [13, 13], [32, 32]] },
        },
      ],
      ["hex_digit", { "$tag": "CharSet", "0": [[48, 57], [65, 70], [97, 102]] }],
      [
        "lc_ident",
        {
          "$tag": "Concat",
          "0": { "$tag": "CharSet", "0": [[95, 95], [97, 122]] },
          "1": {
            "$tag": "Option",
            "0": {
              "$tag": "Repetition",
              "0": {
                "$tag": "CharSet",
                "0": [[48, 57], [65, 90], [95, 95], [97, 122]],
              },
            },
          },
        },
      ],
    ],
    "rules": [
      {
        "name": "token",
        "signature": "token[T](lexbuf : @lexbuf.T[T, String, Int]) -> Token ",
        "patterns": [
          [{ "$tag": "Named", "0": "ws" }, " token(lexbuf) "],
          [
            {
              "$tag": "Concat",
              "0": { "$tag": "ReStr", "0": "//" },
              "1": {
                "$tag": "Concat",
                "0": {
                  "$tag": "Option",
                  "0": {
                    "$tag": "Repetition",
                    "0": { "$tag": "CharSet", "0": [[0, 9], [11, 1114111]] },
                  },
                },
                "1": { "$tag": "Option", "0": { "$tag": "ReChar", "0": "\n" } },
              },
            },
            " token(lexbuf) ",
          ],
          [{ "$tag": "EOF" }, " EOI "],
          [{ "$tag": "ReStr", "0": "eof" }, " EOF "],
          [
            {
              "$tag": "Concat",
              "0": { "$tag": "ReStr", "0": "rule" },
              "1": {
                "$tag": "Concat",
                "0": { "$tag": "Named", "0": "ws" },
                "1": {
                  "$tag": "Concat",
                  "0": {
                    "$tag": "Capture",
                    "0": {
                      "$tag": "Concat",
                      "0": {
                        "$tag": "Capture",
                        "0": { "$tag": "Named", "0": "lc_ident" },
                        "1": "t1",
                      },
                      "1": {
                        "$tag": "Repetition",
                        "0": {
                          "$tag": "CharSet",
                          "0": [[0, 122], [124, 1114111]],
                        },
                      },
                    },
                    "1": "t2",
                  },
                  "1": {
                    "$tag": "Concat",
                    "0": {
                      "$tag": "Option",
                      "0": { "$tag": "Named", "0": "ws" },
                    },
                    "1": { "$tag": "ReChar", "0": "{" },
                  },
                },
              },
            },
            "\n      RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE((t1, t2))\n    ",
          ],
          [
            {
              "$tag": "Concat",
              "0": { "$tag": "ReStr", "0": "parse" },
              "1": {
                "$tag": "Concat",
                "0": { "$tag": "Option", "0": { "$tag": "Named", "0": "ws" } },
                "1": { "$tag": "ReStr", "0": "{" },
              },
            },
            " PARSE_LBRACE ",
          ],
          [{ "$tag": "ReStr", "0": "let" }, " LET "],
          [{ "$tag": "ReStr", "0": "as" }, " AS "],
          [{ "$tag": "ReStr", "0": "=>" }, " FAT_ARROW "],
          [{ "$tag": "ReStr", "0": "_" }, " UNDERSCORE "],
          [
            { "$tag": "ReStr", "0": "{" },
            " \n      let buffer = StringBuilder::new()\n      code_rbrace(buffer, lexbuf)\n      LBRACE_CODE_RBRACE(buffer.to_string())\n    ",
          ],
          [{ "$tag": "ReStr", "0": "}" }, " RBRACE "],
          [{ "$tag": "ReStr", "0": "(" }, " LPAREN "],
          [{ "$tag": "ReStr", "0": ")" }, " RPAREN "],
          [{ "$tag": "ReStr", "0": "[" }, " LBRACKET "],
          [{ "$tag": "ReStr", "0": "]" }, " RBRACKET "],
          [{ "$tag": "ReStr", "0": "=" }, " EQ "],
          [{ "$tag": "ReStr", "0": ";" }, " SEMICOLON "],
          [{ "$tag": "ReStr", "0": "|" }, " BAR "],
          [{ "$tag": "ReStr", "0": "*" }, " STAR "],
          [{ "$tag": "ReStr", "0": "+" }, " PLUS "],
          [{ "$tag": "ReStr", "0": "?" }, " QUESTION "],
          [{ "$tag": "ReStr", "0": "-" }, " MINUS "],
          [{ "$tag": "ReStr", "0": "^" }, " CARET "],
          [
            {
              "$tag": "Concat",
              "0": { "$tag": "ReChar", "0": "'" },
              "1": {
                "$tag": "Concat",
                "0": {
                  "$tag": "Capture",
                  "0": {
                    "$tag": "CharSet",
                    "0": [[0, 38], [40, 91], [93, 1114111]],
                  },
                  "1": "t",
                },
                "1": { "$tag": "ReChar", "0": "'" },
              },
            },
            " CHAR(t[:][0]) ",
          ],
          [
            {
              "$tag": "Concat",
              "0": { "$tag": "ReChar", "0": "'" },
              "1": {
                "$tag": "Concat",
                "0": { "$tag": "ReStr", "0": "\\b" },
                "1": { "$tag": "ReChar", "0": "'" },
              },
            },
            " CHAR('\\x08') ",
          ],
          [
            {
              "$tag": "Concat",
              "0": { "$tag": "ReChar", "0": "'" },
              "1": {
                "$tag": "Concat",
                "0": { "$tag": "ReStr", "0": "\\t" },
                "1": { "$tag": "ReChar", "0": "'" },
              },
            },
            " CHAR('\\t') ",
          ],
          [
            {
              "$tag": "Concat",
              "0": { "$tag": "ReChar", "0": "'" },
              "1": {
                "$tag": "Concat",
                "0": { "$tag": "ReStr", "0": "\\v" },
                "1": { "$tag": "ReChar", "0": "'" },
              },
            },
            " CHAR('\\x0b') ",
          ],
          [
            {
              "$tag": "Concat",
              "0": { "$tag": "ReChar", "0": "'" },
              "1": {
                "$tag": "Concat",
                "0": { "$tag": "ReStr", "0": "\\r" },
                "1": { "$tag": "ReChar", "0": "'" },
              },
            },
            " CHAR('\\r') ",
          ],
          [
            {
              "$tag": "Concat",
              "0": { "$tag": "ReChar", "0": "'" },
              "1": {
                "$tag": "Concat",
                "0": { "$tag": "ReStr", "0": "\\n" },
                "1": { "$tag": "ReChar", "0": "'" },
              },
            },
            " CHAR('\\n') ",
          ],
          [
            {
              "$tag": "Concat",
              "0": { "$tag": "ReChar", "0": "'" },
              "1": {
                "$tag": "Concat",
                "0": { "$tag": "ReStr", "0": "\\\\" },
                "1": { "$tag": "ReChar", "0": "'" },
              },
            },
            " CHAR('\\\\') ",
          ],
          [
            {
              "$tag": "Concat",
              "0": { "$tag": "ReChar", "0": "'" },
              "1": {
                "$tag": "Concat",
                "0": { "$tag": "ReStr", "0": "\\'" },
                "1": { "$tag": "ReChar", "0": "'" },
              },
            },
            " CHAR('\\'') ",
          ],
          [
            {
              "$tag": "Concat",
              "0": { "$tag": "ReChar", "0": "'" },
              "1": {
                "$tag": "Concat",
                "0": { "$tag": "ReStr", "0": "\\x" },
                "1": {
                  "$tag": "Concat",
                  "0": {
                    "$tag": "Capture",
                    "0": {
                      "$tag": "Concat",
                      "0": { "$tag": "Named", "0": "hex_digit" },
                      "1": { "$tag": "Named", "0": "hex_digit" },
                    },
                    "1": "t",
                  },
                  "1": { "$tag": "ReChar", "0": "'" },
                },
              },
            },
            "\n      let code = @strconv.parse_int?(t, base=16).unwrap()\n      CHAR(Char::from_int(code))\n    ",
          ],
          [
            {
              "$tag": "Concat",
              "0": { "$tag": "ReChar", "0": "'" },
              "1": {
                "$tag": "Concat",
                "0": { "$tag": "ReStr", "0": "\\u" },
                "1": {
                  "$tag": "Concat",
                  "0": {
                    "$tag": "Capture",
                    "0": {
                      "$tag": "Concat",
                      "0": { "$tag": "Named", "0": "hex_digit" },
                      "1": {
                        "$tag": "Concat",
                        "0": { "$tag": "Named", "0": "hex_digit" },
                        "1": {
                          "$tag": "Concat",
                          "0": { "$tag": "Named", "0": "hex_digit" },
                          "1": { "$tag": "Named", "0": "hex_digit" },
                        },
                      },
                    },
                    "1": "t",
                  },
                  "1": { "$tag": "ReChar", "0": "'" },
                },
              },
            },
            "\n      let code = @strconv.parse_int?(t, base=16).unwrap()\n      CHAR(Char::from_int(code))\n    ",
          ],
          [
            {
              "$tag": "Concat",
              "0": { "$tag": "ReChar", "0": "'" },
              "1": {
                "$tag": "Concat",
                "0": { "$tag": "ReStr", "0": "\\u{" },
                "1": {
                  "$tag": "Concat",
                  "0": {
                    "$tag": "Capture",
                    "0": {
                      "$tag": "Repetition",
                      "0": { "$tag": "Named", "0": "hex_digit" },
                    },
                    "1": "t",
                  },
                  "1": {
                    "$tag": "Concat",
                    "0": { "$tag": "ReChar", "0": "}" },
                    "1": { "$tag": "ReChar", "0": "'" },
                  },
                },
              },
            },
            "\n      let code = @strconv.parse_int?(t, base=16).unwrap()\n      CHAR(Char::from_int(code))\n    ",
          ],
          [
            { "$tag": "ReChar", "0": "\"" },
            "\n      let buffer = StringBuilder::new()\n      string_inner_rquote(buffer, lexbuf)\n      STRING(buffer.to_string())\n    ",
          ],
          [
            {
              "$tag": "Capture",
              "0": { "$tag": "Named", "0": "lc_ident" },
              "1": "t",
            },
            " LC_IDENT(t) ",
          ],
        ],
      },
      {
        "name": "string_inner_rquote",
        "signature": "string_inner_rquote[T](buffer : StringBuilder, lexbuf : @lexbuf.T[T, String, Int]) -> Unit ",
        "patterns": [
          [{ "$tag": "ReChar", "0": "\"" }, " () "],
          [
            { "$tag": "ReStr", "0": "\\b" },
            "\n      buffer.write_char('\\x08')\n      string_inner_rquote(buffer, lexbuf)\n    ",
          ],
          [
            { "$tag": "ReStr", "0": "\\t" },
            "\n      buffer.write_char('\\t')\n      string_inner_rquote(buffer, lexbuf)\n    ",
          ],
          [
            { "$tag": "ReStr", "0": "\\v" },
            "\n      buffer.write_char('\\x0b')\n      string_inner_rquote(buffer, lexbuf)\n    ",
          ],
          [
            { "$tag": "ReStr", "0": "\\r" },
            "\n      buffer.write_char('\\r')\n      string_inner_rquote(buffer, lexbuf)\n    ",
          ],
          [
            { "$tag": "ReStr", "0": "\\n" },
            "\n      buffer.write_char('\\n')\n      string_inner_rquote(buffer, lexbuf)\n    ",
          ],
          [
            { "$tag": "ReStr", "0": "\\\\" },
            "\n      buffer.write_char('\\\\')\n      string_inner_rquote(buffer, lexbuf)\n    ",
          ],
          [
            { "$tag": "ReStr", "0": "\\\"" },
            "\n      buffer.write_char('\"')\n      string_inner_rquote(buffer, lexbuf)\n    ",
          ],
          [
            {
              "$tag": "Concat",
              "0": { "$tag": "ReStr", "0": "\\x" },
              "1": {
                "$tag": "Concat",
                "0": {
                  "$tag": "Capture",
                  "0": {
                    "$tag": "Concat",
                    "0": { "$tag": "Named", "0": "hex_digit" },
                    "1": { "$tag": "Named", "0": "hex_digit" },
                  },
                  "1": "t",
                },
                "1": { "$tag": "ReChar", "0": "'" },
              },
            },
            "\n      let code = @strconv.parse_int?(t, base=16).unwrap()\n      buffer.write_char(Char::from_int(code))\n    ",
          ],
          [
            {
              "$tag": "Concat",
              "0": { "$tag": "ReStr", "0": "\\u" },
              "1": {
                "$tag": "Concat",
                "0": {
                  "$tag": "Capture",
                  "0": {
                    "$tag": "Concat",
                    "0": { "$tag": "Named", "0": "hex_digit" },
                    "1": {
                      "$tag": "Concat",
                      "0": { "$tag": "Named", "0": "hex_digit" },
                      "1": {
                        "$tag": "Concat",
                        "0": { "$tag": "Named", "0": "hex_digit" },
                        "1": { "$tag": "Named", "0": "hex_digit" },
                      },
                    },
                  },
                  "1": "t",
                },
                "1": { "$tag": "ReChar", "0": "'" },
              },
            },
            "\n      let code = @strconv.parse_int?(t, base=16).unwrap()\n      buffer.write_char(Char::from_int(code))\n    ",
          ],
          [
            {
              "$tag": "Concat",
              "0": { "$tag": "ReStr", "0": "\\u{" },
              "1": {
                "$tag": "Concat",
                "0": {
                  "$tag": "Capture",
                  "0": {
                    "$tag": "Repetition",
                    "0": { "$tag": "Named", "0": "hex_digit" },
                  },
                  "1": "t",
                },
                "1": {
                  "$tag": "Concat",
                  "0": { "$tag": "ReChar", "0": "}" },
                  "1": { "$tag": "ReChar", "0": "'" },
                },
              },
            },
            "\n      let code = @strconv.parse_int?(t, base=16).unwrap()\n      buffer.write_char(Char::from_int(code))\n    ",
          ],
          [
            { "$tag": "Capture", "0": { "$tag": "Underscore" }, "1": "t" },
            "\n      buffer.write_string(t)\n      string_inner_rquote(buffer, lexbuf)\n    ",
          ],
          [{ "$tag": "EOF" }, " abort(\"Unexpected end of input\") "],
        ],
      },
      {
        "name": "code_rbrace",
        "signature": "code_rbrace[T](buffer : StringBuilder, lexbuf : @lexbuf.T[T, String, Int]) -> Unit ",
        "patterns": [
          [
            {
              "$tag": "Capture",
              "0": {
                "$tag": "Concat",
                "0": { "$tag": "ReStr", "0": "//" },
                "1": {
                  "$tag": "Concat",
                  "0": {
                    "$tag": "Repetition",
                    "0": { "$tag": "CharSet", "0": [[0, 9], [11, 1114111]] },
                  },
                  "1": { "$tag": "ReChar", "0": "\n" },
                },
              },
              "1": "t",
            },
            "\n      buffer.write_string(t)\n      code_rbrace(buffer, lexbuf)\n    ",
          ],
          [
            {
              "$tag": "Capture",
              "0": {
                "$tag": "Concat",
                "0": { "$tag": "ReChar", "0": "\"" },
                "1": {
                  "$tag": "Concat",
                  "0": {
                    "$tag": "Option",
                    "0": {
                      "$tag": "Repetition",
                      "0": {
                        "$tag": "Alter",
                        "0": {
                          "$tag": "CharSet",
                          "0": [[0, 33], [35, 91], [93, 1114111]],
                        },
                        "1": {
                          "$tag": "Concat",
                          "0": { "$tag": "ReChar", "0": "\\" },
                          "1": { "$tag": "Underscore" },
                        },
                      },
                    },
                  },
                  "1": { "$tag": "ReChar", "0": "\"" },
                },
              },
              "1": "t",
            },
            "\n      buffer.write_string(t)\n      code_rbrace(buffer, lexbuf)\n    ",
          ],
          [
            {
              "$tag": "Capture",
              "0": {
                "$tag": "Concat",
                "0": { "$tag": "ReChar", "0": "'" },
                "1": {
                  "$tag": "Concat",
                  "0": {
                    "$tag": "CharSet",
                    "0": [[0, 38], [40, 91], [93, 1114111]],
                  },
                  "1": { "$tag": "ReChar", "0": "'" },
                },
              },
              "1": "t",
            },
            "\n      buffer.write_string(t)\n      code_rbrace(buffer, lexbuf)\n    ",
          ],
          [
            { "$tag": "ReStr", "0": "{" },
            "\n      buffer.write_string(\"{\")\n      code_rbrace(buffer, lexbuf)\n      buffer.write_string(\"}\")\n      code_rbrace(buffer, lexbuf)\n    ",
          ],
          [{ "$tag": "ReStr", "0": "}" }, " () "],
          [
            { "$tag": "Capture", "0": { "$tag": "Underscore" }, "1": "t" },
            "\n      buffer.write_string(t)\n      code_rbrace(buffer, lexbuf)\n    ",
          ],
          [{ "$tag": "EOF" }, " abort(\"Unexpected end of input\") "],
        ],
      },
    ],
    "trailer": "",
  })
}
