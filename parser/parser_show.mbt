///|
pub impl Show for Token with fn output(self, logger) {
  logger.write_object(Debug::to_repr(self))
}

///|
pub extend Token with Show::{to_string, output}

///|
pub impl Show for ParseError with fn output(self, logger) {
  logger.write_object(Debug::to_repr(self))
}

///|
pub extend ParseError with Show::{to_string, output}

///|
pub extend Token with ToJson::{to_json}
