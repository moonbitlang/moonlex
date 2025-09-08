///|
fnalias @util.(println_to_stderr, exit)

///|
fn main {
  let usage =
    #|Usage: moonlex [options] <input-file>
  let output_file = @ref.new("")
  let input_file = @ref.new("")
  let mut code_unit = @type.CodeUnit4
  let mut default_encoding : @type.Encoding? = None
  @ArgParser.parse(
    [
      (
        "--input-file",
        "-i",
        Set_string(input_file),
        "Input file (lexer specification)",
      ),
      (
        "--output-format",
        "-f",
        String(fn(format) {
          output_file.val = match format {
            "rust" => "out.rs"
            "c" => "out.c"
            _ => {
              abort("Invalid output format: \{format}")
              return
            }
          }
        }),
        "Output format (rust or c)",
      ),
      ("--output-file", "-o", Set_string(output_file), "Output file"),
      (
        "--version",
        "-v",
        Unit(fn() {
          println("moonlex 0.1.0")
          exit(0)
        }),
        "Show version",
      ),
      (
        "--code-unit",
        "",
        String(fn(code_unit_str) {
          code_unit = match code_unit_str {
            "1" => @type.CodeUnit1
            "2" => @type.CodeUnit2
            "4" => @type.CodeUnit4
            _ => {
              abort("Invalid code unit: \{code_unit_str}")
              return
            }
          }
        }),
        "Set code unit (1, 2, or 4)",
      ),
      (
        "--default-encoding",
        "",
        String(fn(encoding) {
          default_encoding = Some(
            match encoding {
              "ascii" => @regex.Ascii
              "latin1" => @regex.Latin1
              "utf8" => @regex.Utf8
              "utf16" => @regex.Utf16
              _ => {
                abort("Invalid encoding: \{encoding}")
                return
              }
            },
          )
        }),
        "Set default encoding (ascii, latin1, utf8, or utf16). Only valid when code unit is 1",
      ),
    ],
    fn(rest) { input_file.val = rest },
    usage,
    @sys.get_cli_args(),
  )
  guard input_file.val != "" else { abort("Input file is required") }
  let output = {
    let lexer_spec_src = (try? @fs.read_file_to_string(input_file.val)).unwrap()
    let lex_ = @parser.parse_lex_from_string(lexer_spec_src) catch {
      @parser.UnexpectedToken(token, loc, expected) => {
        let loc_str = loc_to_string(input_file.val, lexer_spec_src, loc)
        let expected_str = array_to_or_list(expected.map(Show::to_string)[:])
        println_to_stderr(
          "SyntaxError: Unexpected token \{token.kind()}, expected \{expected_str}.\n  at \{loc_str}",
        )
        exit(1)
      }
    }
    @codegen.codegen_lex(lex_, code_unit~, default_encoding~)
  }
  if output_file.val == "" {
    println(output)
  } else {
    (try? @fs.write_string_to_file(output_file.val, output)).unwrap()
  }
}
