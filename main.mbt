///|
priv struct CliOptions {
  output_file : String
  input_file : String
  code_unit : @type.CodeUnit
  default_encoding : @type.Encoding?
}

///|
fn parse_code_unit(code_unit_str : String) -> @type.CodeUnit {
  match code_unit_str {
    "1" => CodeUnit1
    "2" => CodeUnit2
    "4" => CodeUnit4
    _ => abort("Invalid code unit: \{code_unit_str}")
  }
}

///|
fn parse_default_encoding(encoding : String) -> @type.Encoding {
  match encoding {
    "ascii" => Ascii
    "latin1" => Latin1
    "utf8" => Utf8
    "utf16" => Utf16
    _ => abort("Invalid encoding: \{encoding}")
  }
}

///|
fn get_value(matches : @argparse.Matches, name : String) -> String? {
  match matches.values.get(name) {
    Some(values) => values.last()
    None => None
  }
}

///|
fn moonlex_command() -> @argparse.Command {
  Command(
    "moonlex",
    version="moonlex 0.1.0",
    disable_version_flag=true,
    flags=[
      FlagArg(
        "version",
        short='v',
        long="version",
        action=Version,
        about="Show version",
      ),
    ],
    options=[
      OptionArg(
        "output-file",
        short='o',
        long="output-file",
        about="Output file",
      ),
      OptionArg(
        "code-unit",
        long="code-unit",
        about="Set code unit (1, 2, or 4)",
      ),
      OptionArg(
        "default-encoding",
        long="default-encoding",
        about="Set default encoding (ascii, latin1, utf8, or utf16). Only valid when code unit is 1",
      ),
    ],
    positionals=[PositionArg("input-file", allow_hyphen_values=true)],
  )
}

///|
fn parse_cli_args(argv : ArrayView[String]) -> CliOptions raise {
  let matches = moonlex_command().parse(argv~, env={})
  let code_unit = match get_value(matches, "code-unit") {
    Some(code_unit_str) => parse_code_unit(code_unit_str)
    None => CodeUnit4
  }
  let default_encoding = get_value(matches, "default-encoding").map(
    parse_default_encoding,
  )
  {
    output_file: get_value(matches, "output-file").unwrap_or(""),
    input_file: get_value(matches, "input-file").unwrap_or(""),
    code_unit,
    default_encoding,
  }
}

///|
fn cli_user_args(args : Array[String]) -> ArrayView[String] {
  if args.length() > 1 &&
    (args[1].has_suffix(".js") || args[1].has_suffix(".cjs")) {
    args[2:]
  } else if args.length() > 0 {
    args[1:]
  } else {
    []
  }
}

///|
#cfg(target="wasm")
fn proc_exit_ffi(rval : Int) -> Unit = "wasi_snapshot_preview1" "proc_exit"

///|
#cfg(target="native")
extern "c" fn proc_exit_ffi(rval : Int) -> Unit = "exit"

///|
async fn write_stderr_line(msg : String) -> Unit {
  @stdio.stderr.write(msg + "\n") catch {
    _ => ()
  }
}

///|
async fn[T] exit_with_error(msg : String) -> T {
  write_stderr_line(msg)
  proc_exit_ffi(1)
  panic()
}

///|
async fn main {
  let options = parse_cli_args(cli_user_args(@env.args())) catch {
    err => exit_with_error(err.to_string())
  }
  guard options.input_file != "" else {
    exit_with_error("Input file is required")
  }
  let output = {
    let lexer_spec_src = @fs.read_file(options.input_file).text() catch {
      err => exit_with_error("Failed to read input file: \{err}")
    }
    let lex_ = @parser.parse_lex_from_string(lexer_spec_src) catch {
      UnexpectedToken(token, loc, expected) => {
        let loc_str = loc_to_string(options.input_file, lexer_spec_src, loc)
        let expected_str = array_to_or_list(expected.map(Show::to_string)[:])
        exit_with_error(
          "SyntaxError: Unexpected token \{token.kind()}, expected \{expected_str}.\n  at \{loc_str}",
        )
      }
    }
    @codegen.codegen_lex(
      lex_,
      code_unit=options.code_unit,
      default_encoding=options.default_encoding,
    )
  }
  if options.output_file == "" {
    @stdio.stdout.write(output + "\n") catch {
      err => exit_with_error("Failed to write stdout: \{err}")
    }
  } else {
    @fs.write_file(options.output_file, output, create_mode=CreateOrTruncate) catch {
      err => exit_with_error("Failed to write output file: \{err}")
    }
  }
}
