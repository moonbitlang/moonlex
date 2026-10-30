///|
pub impl Show for Token with fn output(self, logger) {
  logger.write_object(self.to_repr())
}

///|
pub impl Show for ParseError with fn output(self, logger) {
  logger.write_object(self.to_repr())
}

///|
pub extend ParseError with Show::{to_string, output}

///|
pub extend Token with Show::{to_string, output}

///|
pub extend ParseError with Debug::{to_repr}

///|
pub extend Token with Debug::{to_repr}

///|
pub extend Token with Eq::{not_equal, equal}

///|
pub extend Token with ToJson::{to_json}

///|
pub extend TokenKind with Debug::{to_repr}

///|
pub extend TokenKind with Show::{to_string, output}
