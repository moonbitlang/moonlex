///|
pub extend Token with Debug::{to_repr}

///|
pub extend Token with Eq::{not_equal, equal}

///|
pub extend Token with ToJson::{to_json}

///|
pub extend Token with Show::{to_string, output}

///|
pub extend TokenKind with Debug::{to_repr}

///|
pub extend TokenKind with Show::{to_string, output}

///|
pub extend ParseError with Debug::{to_repr}

///|
pub extend ParseError with Show::{to_string, output}
