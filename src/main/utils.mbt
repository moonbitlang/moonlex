///|
fn offset_to_line_column(content : String, offset : Int) -> (Int, Int) {
  let mut line = 1
  let mut column = 1
  for i in 0..<offset {
    if content[i] == '\n' {
      line += 1
      column = 1
    } else {
      column += 1
    }
  }
  (line, column)
}

///|
fn array_to_or_list(arr : ArrayView[String]) -> String {
  match arr {
    [] => panic()
    [x] => x
    [.. xs, x] => {
      let left = [..xs].join(", ")
      "\{left} or \{x}"
    }
  }
}

///|
fn loc_to_string(
  filename : String,
  content : String,
  loc : (Int, Int),
) -> String {
  let (start_line, start_column) = offset_to_line_column(content, loc.0)
  let (end_line, end_column) = offset_to_line_column(content, loc.1)
  if start_line == end_line {
    "\{filename}:\{start_line}:\{start_column}-\{end_column}"
  } else {
    "\{filename}:\{start_line}:\{start_column}-\{end_line}:\{end_column}"
  }
}
