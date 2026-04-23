///|
pub impl Show for Token with output(self, logger) {
  logger.write_object(self.to_repr())
}

///|
pub impl Show for ParseError with output(self, logger) {
  logger.write_object(self.to_repr())
}
