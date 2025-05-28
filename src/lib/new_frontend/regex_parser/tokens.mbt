pub(all) enum Token {
  EOF
  CHAR(Char)
  CHAR_ESCAPE((Char, String))
  DOT
  DOLLAR
  LBRACKET
  RBRACKET
  CARET
  MINUS
  STAR
  PLUS
  QUESTION
  REPEAT((Int, Int?))
  LPAREN
  RPAREN
  BAR
  TOKEN(String)
} derive(Show)

pub fn Token::kind(self : Token) -> TokenKind {
  match self {
    EOF => TK_EOF
    CHAR(_) => TK_CHAR
    CHAR_ESCAPE(_) => TK_CHAR_ESCAPE
    DOT => TK_DOT
    DOLLAR => TK_DOLLAR
    LBRACKET => TK_LBRACKET
    RBRACKET => TK_RBRACKET
    CARET => TK_CARET
    MINUS => TK_MINUS
    STAR => TK_STAR
    PLUS => TK_PLUS
    QUESTION => TK_QUESTION
    REPEAT(_) => TK_REPEAT
    LPAREN => TK_LPAREN
    RPAREN => TK_RPAREN
    BAR => TK_BAR
    TOKEN(_) => TK_TOKEN
  }
}

pub(all) enum TokenKind {
  TK_EOF
  TK_CHAR
  TK_CHAR_ESCAPE
  TK_DOT
  TK_DOLLAR
  TK_LBRACKET
  TK_RBRACKET
  TK_CARET
  TK_MINUS
  TK_STAR
  TK_PLUS
  TK_QUESTION
  TK_REPEAT
  TK_LPAREN
  TK_RPAREN
  TK_BAR
  TK_TOKEN
}

pub impl Show for TokenKind with output(self, logger) {
  logger.write_string(
    match self {
      TK_EOF => "EOF"
      TK_CHAR => "CHAR"
      TK_CHAR_ESCAPE => "CHAR_ESCAPE"
      TK_DOT => "\".\""
      TK_DOLLAR => "\"$\""
      TK_LBRACKET => "\"[\""
      TK_RBRACKET => "\"]\""
      TK_CARET => "\"^\""
      TK_MINUS => "\"-\""
      TK_STAR => "\"*\""
      TK_PLUS => "\"+\""
      TK_QUESTION => "\"?\""
      TK_REPEAT => "REPEAT"
      TK_LPAREN => "\"(\""
      TK_RPAREN => "\")\""
      TK_BAR => "\"|\""
      TK_TOKEN => "TOKEN"
    }
  )
}

