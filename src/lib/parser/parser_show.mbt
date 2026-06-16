///|
pub impl Show for Token with fn output(self, logger) {
  logger.write_object(self.to_repr())
}

///|
pub impl Show for ParseError with fn output(self, logger) {
  logger.write_object(self.to_repr())
}
