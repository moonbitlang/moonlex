
let named_regexes: Map[String, @type.Regex] = {}

fn cleanup() -> Unit {
  named_regexes.clear()
}
pub(all) typealias Position = Int

pub(all) enum Token {
  EOI
  EOF
  PARSE_LBRACE
  REGEX
  AS
  UNDERSCORE
  RBRACE
  LPAREN
  RPAREN
  LBRACKET
  RBRACKET
  EQ
  COLON
  SEMICOLON
  FAT_ARROW
  BAR
  STAR
  PLUS
  QUESTION
  MINUS
  CARET
  BACKSLASH
  RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE((String, String))
  LBRACE_CODE_RBRACE(String)
  LC_IDENT(String)
  CHAR(Char)
  STRING(String)
} derive(Show)

pub fn Token::kind(self : Token) -> TokenKind {
  match self {
    EOI => TK_EOI
    EOF => TK_EOF
    PARSE_LBRACE => TK_PARSE_LBRACE
    REGEX => TK_REGEX
    AS => TK_AS
    UNDERSCORE => TK_UNDERSCORE
    RBRACE => TK_RBRACE
    LPAREN => TK_LPAREN
    RPAREN => TK_RPAREN
    LBRACKET => TK_LBRACKET
    RBRACKET => TK_RBRACKET
    EQ => TK_EQ
    COLON => TK_COLON
    SEMICOLON => TK_SEMICOLON
    FAT_ARROW => TK_FAT_ARROW
    BAR => TK_BAR
    STAR => TK_STAR
    PLUS => TK_PLUS
    QUESTION => TK_QUESTION
    MINUS => TK_MINUS
    CARET => TK_CARET
    BACKSLASH => TK_BACKSLASH
    RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE(_) => TK_RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE
    LBRACE_CODE_RBRACE(_) => TK_LBRACE_CODE_RBRACE
    LC_IDENT(_) => TK_LC_IDENT
    CHAR(_) => TK_CHAR
    STRING(_) => TK_STRING
  }
}

pub(all) enum TokenKind {
  TK_EOI
  TK_EOF
  TK_PARSE_LBRACE
  TK_REGEX
  TK_AS
  TK_UNDERSCORE
  TK_RBRACE
  TK_LPAREN
  TK_RPAREN
  TK_LBRACKET
  TK_RBRACKET
  TK_EQ
  TK_COLON
  TK_SEMICOLON
  TK_FAT_ARROW
  TK_BAR
  TK_STAR
  TK_PLUS
  TK_QUESTION
  TK_MINUS
  TK_CARET
  TK_BACKSLASH
  TK_RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE
  TK_LBRACE_CODE_RBRACE
  TK_LC_IDENT
  TK_CHAR
  TK_STRING
}

pub impl Show for TokenKind with output(self, logger) {
  logger.write_string(
    match self {
      TK_EOI => "EOI"
      TK_EOF => "\"eof\""
      TK_PARSE_LBRACE => "\"parse {\""
      TK_REGEX => "\"regex\""
      TK_AS => "\"as\""
      TK_UNDERSCORE => "\"_\""
      TK_RBRACE => "\"}\""
      TK_LPAREN => "\"(\""
      TK_RPAREN => "\")\""
      TK_LBRACKET => "\"[\""
      TK_RBRACKET => "\"]\""
      TK_EQ => "\"=\""
      TK_COLON => "\":\""
      TK_SEMICOLON => "\";\""
      TK_FAT_ARROW => "\"=>\""
      TK_BAR => "\"|\""
      TK_STAR => "\"*\""
      TK_PLUS => "\"+\""
      TK_QUESTION => "\"?\""
      TK_MINUS => "\"-\""
      TK_CARET => "\"^\""
      TK_BACKSLASH => "BACKSLASH"
      TK_RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE => "RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE"
      TK_LBRACE_CODE_RBRACE => "LBRACE_CODE_RBRACE"
      TK_LC_IDENT => "LC_IDENT"
      TK_CHAR => "CHAR"
      TK_STRING => "STRING"
    }
  )
}

pub type! ParseError {
  UnexpectedToken(Token, (Position, Position), Array[TokenKind])
} derive(Show)

typealias YYObj = Error

priv type! YYObj_Void

priv type! YYObj_Char Char

priv type! YYObj_Unit Unit

priv type! YYObj_String String

priv type! YYObj__type_Lex @type.Lex

priv type! YYObj__type_Rule @type.Rule

priv type! YYObj__type_Regex @type.Regex

priv type! YYObj__char_set_T @char_set.T

priv type! YYObj__immut_list_T__type_Rule_ @immut/list.T[@type.Rule]

priv type! YYObj__immut_list_T___type_Regex___type_CodeBlock__ @immut/list.T[(@type.Regex, @type.CodeBlock)]

priv type! YYObj__String__String_ (String, String)

priv type! YYObj___type_Regex___type_CodeBlock_ (@type.Regex, @type.CodeBlock)

typealias YYState = (YYSymbol) -> YYDecision

typealias YYAction = (Position, ArrayView[(YYObj, Position, Position)]) -> YYObj

priv enum YYDecision {
  Accept
  Shift(YYState)
  Reduce(Int, YYSymbol, YYAction)
  ReduceNoLookahead(Int, YYSymbol, YYAction)
  Error
}

priv enum YYSymbol {
  T_EOI
  T_EOF
  T_PARSE_LBRACE
  T_REGEX
  T_AS
  T_UNDERSCORE
  T_RBRACE
  T_LPAREN
  T_RPAREN
  T_LBRACKET
  T_RBRACKET
  T_EQ
  T_COLON
  T_SEMICOLON
  T_FAT_ARROW
  T_BAR
  T_STAR
  T_PLUS
  T_QUESTION
  T_MINUS
  T_CARET
  T_BACKSLASH
  T_RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE
  T_LBRACE_CODE_RBRACE
  T_LC_IDENT
  T_CHAR
  T_STRING
  NT_lex_eoi
  NT_cleanup
  NT_regex_eoi
  NT_lex
  NT_header
  NT_trailer
  NT_named_regex_list
  NT_named_regex
  NT_nonempty_rule_list
  NT_rule
  NT_rule_item_list
  NT_rule_item
  NT_regex
  NT_alias
  NT_alternation
  NT_concatenation
  NT_differentiation
  NT_repetition
  NT_atom
  NT_character_class
  NT_character_class_inner
  NT_character_class_item
  EOI
}

// Workaround for EOI unused warning
fn init {
  match (EOI : YYSymbol) {
    EOI => ()
    _ => ()
  }
}

// file:///./parser.mbty
// 70|                                        { "" }
fn yy_action_0(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "" })
}

// file:///./parser.mbty
// 160|    UNDERSCORE                          { @regex.char_class(@char_set.any) }
fn yy_action_1(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj__type_Regex({();  @regex.char_class(@char_set.any) })
}

// file:///./parser.mbty
// 62|    header named_regex_list nonempty_rule_list trailer 
// 63|                                        {
// 64|                                          { header: $1, rules: $3.to_array(), trailer: $4 }
// 65|                                        }
fn yy_action_2(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  guard _args[2].0 is YYObj__immut_list_T__type_Rule_(_dollar3)
  guard _args[3].0 is YYObj_String(_dollar4)
  YYObj__type_Lex({(); 
                                          { header: _dollar1, rules: _dollar3.to_array(), trailer: _dollar4 }
                                        })
}

// file:///./parser.mbty
// 80|                                        {}
fn yy_action_3(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 109|    alias                               { $1 }
fn yy_action_4(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__type_Regex(_dollar1)
  YYObj__type_Regex({();  _dollar1 })
}

// file:///./parser.mbty
// 105|    regex "=>" LBRACE_CODE_RBRACE       { ($1, $3) }
fn yy_action_5(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__type_Regex(_dollar1)
  guard _args[2].0 is YYObj_String(_dollar3)
  YYObj___type_Regex___type_CodeBlock_({();  (_dollar1, _dollar3) })
}

// file:///./parser.mbty
// 101|                                        { Nil }
fn yy_action_6(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj__immut_list_T___type_Regex___type_CodeBlock__({();  Nil })
}

// file:///./parser.mbty
// 165|    "[" character_class_inner "]"       { $2 }
fn yy_action_7(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj__char_set_T(_dollar2)
  YYObj__char_set_T({();  _dollar2 })
}

// file:///./parser.mbty
// 172|    character_class_item                { $1 }
fn yy_action_8(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__char_set_T(_dollar1)
  YYObj__char_set_T({();  _dollar1 })
}

// file:///./parser.mbty
// 47|    lex cleanup EOI                     { $1 }
fn yy_action_9(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__type_Lex(_dollar1)
  YYObj__type_Lex({();  _dollar1 })
}

// file:///./parser.mbty
// 113|    alternation                         { $1 }
fn yy_action_10(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__type_Regex(_dollar1)
  YYObj__type_Regex({();  _dollar1 })
}

// file:///./parser.mbty
// 158|    CHAR                                { @regex.char_class(@char_set.singleton($1)) }
fn yy_action_11(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Char(_dollar1)
  YYObj__type_Regex({();  @regex.char_class(@char_set.singleton(_dollar1)) })
}

// file:///./parser.mbty
// 124|    repetition concatenation            { @regex.seq($1, $2) }
fn yy_action_12(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__type_Regex(_dollar1)
  guard _args[1].0 is YYObj__type_Regex(_dollar2)
  YYObj__type_Regex({();  @regex.seq(_dollar1, _dollar2) })
}

// file:///./parser.mbty
// 161|    EOF                                 { @regex.eof }
fn yy_action_13(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj__type_Regex({();  @regex.eof })
}

// file:///./parser.mbty
// 89|    rule nonempty_rule_list             { Cons($1, $2) }
fn yy_action_14(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__type_Rule(_dollar1)
  guard _args[1].0 is YYObj__immut_list_T__type_Rule_(_dollar2)
  YYObj__immut_list_T__type_Rule_({();  Cons(_dollar1, _dollar2) })
}

// file:///./parser.mbty
// 159|    STRING                              { $1.iter().fold(init=@regex.epsilon, fn(acc, c) { @regex.seq(acc, @regex.char_class(@char_set.singleton(c))) }) }
fn yy_action_15(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj__type_Regex({();  _dollar1.iter().fold(init=@regex.epsilon, fn(acc, c) { @regex.seq(acc, @regex.char_class(@char_set.singleton(c))) }) })
}

// file:///./parser.mbty
// 170|    character_class_item character_class_inner 
// 171|                                        { $1 + $2 }
fn yy_action_16(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__char_set_T(_dollar1)
  guard _args[1].0 is YYObj__char_set_T(_dollar2)
  YYObj__char_set_T({();  _dollar1 + _dollar2 })
}

// file:///./parser.mbty
// 79|    named_regex named_regex_list        {}
fn yy_action_17(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 177|    CHAR "-" CHAR                       { @char_set.range($1, $3)}
fn yy_action_18(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Char(_dollar1)
  guard _args[2].0 is YYObj_Char(_dollar3)
  YYObj__char_set_T({();  @char_set.range(_dollar1, _dollar3)})
}

// file:///./parser.mbty
// 59|                                        {
// 60|                                          { header: "", rules: [],  trailer: "" }
// 61|                                        }
fn yy_action_19(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj__type_Lex({(); 
                                          { header: "", rules: [],  trailer: "" }
                                        })
}

// file:///./parser.mbty
// 93|    RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE "parse {" rule_item_list "}" "}" 
// 94|                                        {
// 95|                                          { name: $1.0, signature: $1.1, patterns: $3.to_array() }
// 96|                                        }
fn yy_action_20(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__String__String_(_dollar1)
  guard _args[2].0 is YYObj__immut_list_T___type_Regex___type_CodeBlock__(_dollar3)
  YYObj__type_Rule({(); 
                                          { name: _dollar1.0, signature: _dollar1.1, patterns: _dollar3.to_array() }
                                        })
}

// file:///./parser.mbty
// 74|    LBRACE_CODE_RBRACE                  { $1 }
fn yy_action_21(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_String({();  _dollar1 })
}

// file:///./parser.mbty
// 75|                                        { "" }
fn yy_action_22(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "" })
}

// file:///./parser.mbty
// 69|    LBRACE_CODE_RBRACE                  { $1 }
fn yy_action_23(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_String({();  _dollar1 })
}

// file:///./parser.mbty
// 123|    repetition                          { $1 }
fn yy_action_24(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__type_Regex(_dollar1)
  YYObj__type_Regex({();  _dollar1 })
}

// file:///./parser.mbty
// 51|                                        { cleanup() }
fn yy_action_25(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({();  cleanup() })
}

// file:///./parser.mbty
// 118|    concatenation                       { $1 }
fn yy_action_26(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__type_Regex(_dollar1)
  YYObj__type_Regex({();  _dollar1 })
}

// file:///./parser.mbty
// 143|    atom "?"                            { @regex.opt($1) }
fn yy_action_27(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__type_Regex(_dollar1)
  YYObj__type_Regex({();  @regex.opt(_dollar1) })
}

// file:///./parser.mbty
// 100|    rule_item rule_item_list            { Cons($1, $2) }
fn yy_action_28(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj___type_Regex___type_CodeBlock_(_dollar1)
  guard _args[1].0 is YYObj__immut_list_T___type_Regex___type_CodeBlock__(_dollar2)
  YYObj__immut_list_T___type_Regex___type_CodeBlock__({();  Cons(_dollar1, _dollar2) })
}

// file:///./parser.mbty
// 157|    LC_IDENT                            { named_regexes.get($1).unwrap() }
fn yy_action_29(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj__type_Regex({();  named_regexes.get(_dollar1).unwrap() })
}

// file:///./parser.mbty
// 114|    alternation "as" LC_IDENT           { @regex.bind($1, $3) }
fn yy_action_30(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__type_Regex(_dollar1)
  guard _args[2].0 is YYObj_String(_dollar3)
  YYObj__type_Regex({();  @regex.bind(_dollar1, _dollar3) })
}

// file:///./parser.mbty
// 55|    regex EOI                           { $1 }
fn yy_action_31(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__type_Regex(_dollar1)
  YYObj__type_Regex({();  _dollar1 })
}

// file:///./parser.mbty
// 88|    rule                                { Cons($1, Nil) }
fn yy_action_32(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__type_Rule(_dollar1)
  YYObj__immut_list_T__type_Rule_({();  Cons(_dollar1, Nil) })
}

// file:///./parser.mbty
// 148|    "(" LC_IDENT ":" alias ")"          { 
// 149|                                          match $2 {
// 150|                                            "ascii" => @regex.embed($4, encoding=Ascii)
// 151|                                            "latin1" => @regex.embed($4, encoding=Latin1)
// 152|                                            "utf8" => @regex.embed($4, encoding=Utf8)
// 153|                                            _ => panic()
// 154|                                          } 
// 155|                                        }
fn yy_action_33(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_String(_dollar2)
  guard _args[3].0 is YYObj__type_Regex(_dollar4)
  YYObj__type_Regex({();  
                                          match _dollar2 {
                                            "ascii" => @regex.embed(_dollar4, encoding=Ascii)
                                            "latin1" => @regex.embed(_dollar4, encoding=Latin1)
                                            "utf8" => @regex.embed(_dollar4, encoding=Utf8)
                                            _ => panic()
                                          } 
                                        })
}

// file:///./parser.mbty
// 119|    concatenation "|" alternation       { @regex.alt($1, $3) }
fn yy_action_34(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__type_Regex(_dollar1)
  guard _args[2].0 is YYObj__type_Regex(_dollar3)
  YYObj__type_Regex({();  @regex.alt(_dollar1, _dollar3) })
}

// file:///./parser.mbty
// 142|    atom "+"                            { @regex.plus($1) }
fn yy_action_35(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__type_Regex(_dollar1)
  YYObj__type_Regex({();  @regex.plus(_dollar1) })
}

// file:///./parser.mbty
// 176|    CHAR                                { @char_set.singleton($1) }
fn yy_action_36(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Char(_dollar1)
  YYObj__char_set_T({();  @char_set.singleton(_dollar1) })
}

// file:///./parser.mbty
// 156|    character_class                     { @regex.char_class($1) }
fn yy_action_37(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__char_set_T(_dollar1)
  YYObj__type_Regex({();  @regex.char_class(_dollar1) })
}

// file:///./parser.mbty
// 141|    atom "*"                            { @regex.star($1) }
fn yy_action_38(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__type_Regex(_dollar1)
  YYObj__type_Regex({();  @regex.star(_dollar1) })
}

// file:///./parser.mbty
// 129|    atom BACKSLASH atom                 {
// 130|                                          guard $1 is Character(cset1) && $3 is Character(cset2)
// 131|                                          @regex.char_class(cset1.difference(cset2))
// 132|                                        }
fn yy_action_39(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__type_Regex(_dollar1)
  guard _args[2].0 is YYObj__type_Regex(_dollar3)
  YYObj__type_Regex({(); 
                                          guard _dollar1 is Character(cset1) && _dollar3 is Character(cset2)
                                          @regex.char_class(cset1.difference(cset2))
                                        })
}

// file:///./parser.mbty
// 140|    atom                                { $1 }
fn yy_action_40(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__type_Regex(_dollar1)
  YYObj__type_Regex({();  _dollar1 })
}

// file:///./parser.mbty
// 147|    "(" alias ")"                       { $2 }
fn yy_action_41(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj__type_Regex(_dollar2)
  YYObj__type_Regex({();  _dollar2 })
}

// file:///./parser.mbty
// 125|    differentiation                     { $1 }
fn yy_action_42(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__type_Regex(_dollar1)
  YYObj__type_Regex({();  _dollar1 })
}

// file:///./parser.mbty
// 84|    "regex" LC_IDENT "=" regex ";"        { named_regexes.set($2, $4) }
fn yy_action_43(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_String(_dollar2)
  guard _args[3].0 is YYObj__type_Regex(_dollar4)
  YYObj_Unit({();  named_regexes.set(_dollar2, _dollar4) })
}

// file:///./parser.mbty
// 133|    differentiation BACKSLASH atom      { 
// 134|                                          guard $1 is Character(cset1) && $3 is Character(cset2)
// 135|                                          @regex.char_class(cset1.difference(cset2))
// 136|                                        }
fn yy_action_44(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__type_Regex(_dollar1)
  guard _args[2].0 is YYObj__type_Regex(_dollar3)
  YYObj__type_Regex({();  
                                          guard _dollar1 is Character(cset1) && _dollar3 is Character(cset2)
                                          @regex.char_class(cset1.difference(cset2))
                                        })
}

// file:///./parser.mbty
// 166|    "[" "^" character_class_inner "]"   { $3.negated() }
fn yy_action_45(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj__char_set_T(_dollar3)
  YYObj__char_set_T({();  _dollar3.negated() })
}

fn yy_input(token : Token, _start_pos : Position, _end_pos : Position) -> (YYSymbol, YYObj) {
  match token {
    EOI => (T_EOI, YYObj_Void)
    EOF => (T_EOF, YYObj_Void)
    PARSE_LBRACE => (T_PARSE_LBRACE, YYObj_Void)
    REGEX => (T_REGEX, YYObj_Void)
    AS => (T_AS, YYObj_Void)
    UNDERSCORE => (T_UNDERSCORE, YYObj_Void)
    RBRACE => (T_RBRACE, YYObj_Void)
    LPAREN => (T_LPAREN, YYObj_Void)
    RPAREN => (T_RPAREN, YYObj_Void)
    LBRACKET => (T_LBRACKET, YYObj_Void)
    RBRACKET => (T_RBRACKET, YYObj_Void)
    EQ => (T_EQ, YYObj_Void)
    COLON => (T_COLON, YYObj_Void)
    SEMICOLON => (T_SEMICOLON, YYObj_Void)
    FAT_ARROW => (T_FAT_ARROW, YYObj_Void)
    BAR => (T_BAR, YYObj_Void)
    STAR => (T_STAR, YYObj_Void)
    PLUS => (T_PLUS, YYObj_Void)
    QUESTION => (T_QUESTION, YYObj_Void)
    MINUS => (T_MINUS, YYObj_Void)
    CARET => (T_CARET, YYObj_Void)
    BACKSLASH => (T_BACKSLASH, YYObj_Void)
    RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE(data) => (T_RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE, YYObj__String__String_(data))
    LBRACE_CODE_RBRACE(data) => (T_LBRACE_CODE_RBRACE, YYObj_String(data))
    LC_IDENT(data) => (T_LC_IDENT, YYObj_String(data))
    CHAR(data) => (T_CHAR, YYObj_Char(data))
    STRING(data) => (T_STRING, YYObj_String(data))
  }
}

// [2, regex_eoi → • regex EOI, $]
// [18, regex → • alias, EOI]
// [19, alias → • alternation, EOI]
// [20, alias → • alternation AS LC_IDENT, EOI]
// [21, alternation → • concatenation, EOI / AS]
// [22, alternation → • concatenation BAR alternation, EOI / AS]
// [23, concatenation → • repetition, EOI / AS / BAR]
// [24, concatenation → • repetition concatenation, EOI / AS / BAR]
// [25, concatenation → • differentiation, EOI / AS / BAR]
// [26, differentiation → • atom BACKSLASH atom, EOI / AS / BAR / BACKSLASH]
// [27, differentiation → • differentiation BACKSLASH atom, EOI / AS / BAR / BACKSLASH]
// [28, repetition → • atom, EOI / EOF / AS / UNDERSCORE / LPAREN / LBRACKET / BAR / LC_IDENT / CHAR / STRING]
// [29, repetition → • atom STAR, EOI / EOF / AS / UNDERSCORE / LPAREN / LBRACKET / BAR / LC_IDENT / CHAR / STRING]
// [30, repetition → • atom PLUS, EOI / EOF / AS / UNDERSCORE / LPAREN / LBRACKET / BAR / LC_IDENT / CHAR / STRING]
// [31, repetition → • atom QUESTION, EOI / EOF / AS / UNDERSCORE / LPAREN / LBRACKET / BAR / LC_IDENT / CHAR / STRING]
// [32, atom → • LPAREN alias RPAREN, EOI / EOF / AS / UNDERSCORE / LPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [33, atom → • LPAREN LC_IDENT COLON alias RPAREN, EOI / EOF / AS / UNDERSCORE / LPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [34, atom → • character_class, EOI / EOF / AS / UNDERSCORE / LPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [35, atom → • LC_IDENT, EOI / EOF / AS / UNDERSCORE / LPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [36, atom → • CHAR, EOI / EOF / AS / UNDERSCORE / LPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [37, atom → • STRING, EOI / EOF / AS / UNDERSCORE / LPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [38, atom → • UNDERSCORE, EOI / EOF / AS / UNDERSCORE / LPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [39, atom → • EOF, EOI / EOF / AS / UNDERSCORE / LPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [40, character_class → • LBRACKET character_class_inner RBRACKET, EOI / EOF / AS / UNDERSCORE / LPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [41, character_class → • LBRACKET CARET character_class_inner RBRACKET, EOI / EOF / AS / UNDERSCORE / LPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [47, regex_eoi_prime → • regex_eoi, $]
fn yy_state_0(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    NT_regex_eoi => Shift(yy_state_1)
    T_LBRACKET => Shift(yy_state_2)
    T_EOF => Shift(yy_state_13)
    T_UNDERSCORE => Shift(yy_state_14)
    T_STRING => Shift(yy_state_15)
    T_CHAR => Shift(yy_state_16)
    T_LC_IDENT => Shift(yy_state_17)
    NT_character_class => Shift(yy_state_18)
    T_LPAREN => Shift(yy_state_19)
    NT_atom => Shift(yy_state_24)
    NT_differentiation => Shift(yy_state_30)
    NT_repetition => Shift(yy_state_33)
    NT_concatenation => Shift(yy_state_35)
    NT_alternation => Shift(yy_state_38)
    NT_alias => Shift(yy_state_43)
    NT_regex => Shift(yy_state_44)
    _ => Error
  }
}

// [47, regex_eoi_prime → regex_eoi •, $]
fn yy_state_1(_lookahead : YYSymbol) -> YYDecision {
  Accept
}

// [40, character_class → LBRACKET • character_class_inner RBRACKET, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [41, character_class → LBRACKET • CARET character_class_inner RBRACKET, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [42, character_class_inner → • character_class_item character_class_inner, RBRACKET]
// [43, character_class_inner → • character_class_item, RBRACKET]
// [44, character_class_item → • CHAR, RBRACKET / CHAR]
// [45, character_class_item → • CHAR MINUS CHAR, RBRACKET / CHAR]
fn yy_state_2(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_CHAR => Shift(yy_state_3)
    NT_character_class_item => Shift(yy_state_6)
    T_CARET => Shift(yy_state_8)
    NT_character_class_inner => Shift(yy_state_11)
    _ => Error
  }
}

// [44, character_class_item → CHAR •, RBRACKET / CHAR]
// [45, character_class_item → CHAR • MINUS CHAR, RBRACKET / CHAR]
fn yy_state_3(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_MINUS => Shift(yy_state_4)
    T_RBRACKET | T_CHAR => Reduce(1, NT_character_class_item, yy_action_36)
    _ => Error
  }
}

// [45, character_class_item → CHAR MINUS • CHAR, RBRACKET / CHAR]
fn yy_state_4(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_CHAR => Shift(yy_state_5)
    _ => Error
  }
}

// [45, character_class_item → CHAR MINUS CHAR •, RBRACKET / CHAR]
fn yy_state_5(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_character_class_item, yy_action_18)
}

// [42, character_class_inner → • character_class_item character_class_inner, RBRACKET]
// [42, character_class_inner → character_class_item • character_class_inner, RBRACKET]
// [43, character_class_inner → • character_class_item, RBRACKET]
// [43, character_class_inner → character_class_item •, RBRACKET]
// [44, character_class_item → • CHAR, RBRACKET / CHAR]
// [45, character_class_item → • CHAR MINUS CHAR, RBRACKET / CHAR]
fn yy_state_6(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_CHAR => Shift(yy_state_3)
    NT_character_class_item => Shift(yy_state_6)
    NT_character_class_inner => Shift(yy_state_7)
    T_RBRACKET => Reduce(1, NT_character_class_inner, yy_action_8)
    _ => Error
  }
}

// [42, character_class_inner → character_class_item character_class_inner •, RBRACKET]
fn yy_state_7(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_character_class_inner, yy_action_16)
}

// [41, character_class → LBRACKET CARET • character_class_inner RBRACKET, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [42, character_class_inner → • character_class_item character_class_inner, RBRACKET]
// [43, character_class_inner → • character_class_item, RBRACKET]
// [44, character_class_item → • CHAR, RBRACKET / CHAR]
// [45, character_class_item → • CHAR MINUS CHAR, RBRACKET / CHAR]
fn yy_state_8(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_CHAR => Shift(yy_state_3)
    NT_character_class_item => Shift(yy_state_6)
    NT_character_class_inner => Shift(yy_state_9)
    _ => Error
  }
}

// [41, character_class → LBRACKET CARET character_class_inner • RBRACKET, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_9(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACKET => Shift(yy_state_10)
    _ => Error
  }
}

// [41, character_class → LBRACKET CARET character_class_inner RBRACKET •, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_10(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_character_class, yy_action_45)
}

// [40, character_class → LBRACKET character_class_inner • RBRACKET, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_11(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACKET => Shift(yy_state_12)
    _ => Error
  }
}

// [40, character_class → LBRACKET character_class_inner RBRACKET •, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_12(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_character_class, yy_action_7)
}

// [39, atom → EOF •, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_13(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_atom, yy_action_13)
}

// [38, atom → UNDERSCORE •, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_14(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_atom, yy_action_1)
}

// [37, atom → STRING •, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_15(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_atom, yy_action_15)
}

// [36, atom → CHAR •, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_16(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_atom, yy_action_11)
}

// [35, atom → LC_IDENT •, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_17(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_atom, yy_action_29)
}

// [34, atom → character_class •, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_18(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_atom, yy_action_37)
}

// [19, alias → • alternation, RPAREN]
// [20, alias → • alternation AS LC_IDENT, RPAREN]
// [21, alternation → • concatenation, AS / RPAREN]
// [22, alternation → • concatenation BAR alternation, AS / RPAREN]
// [23, concatenation → • repetition, AS / RPAREN / BAR]
// [24, concatenation → • repetition concatenation, AS / RPAREN / BAR]
// [25, concatenation → • differentiation, AS / RPAREN / BAR]
// [26, differentiation → • atom BACKSLASH atom, AS / RPAREN / BAR / BACKSLASH]
// [27, differentiation → • differentiation BACKSLASH atom, AS / RPAREN / BAR / BACKSLASH]
// [28, repetition → • atom, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / LC_IDENT / CHAR / STRING]
// [29, repetition → • atom STAR, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / LC_IDENT / CHAR / STRING]
// [30, repetition → • atom PLUS, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / LC_IDENT / CHAR / STRING]
// [31, repetition → • atom QUESTION, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / LC_IDENT / CHAR / STRING]
// [32, atom → • LPAREN alias RPAREN, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [32, atom → LPAREN • alias RPAREN, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [33, atom → • LPAREN LC_IDENT COLON alias RPAREN, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [33, atom → LPAREN • LC_IDENT COLON alias RPAREN, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [34, atom → • character_class, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [35, atom → • LC_IDENT, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [36, atom → • CHAR, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [37, atom → • STRING, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [38, atom → • UNDERSCORE, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [39, atom → • EOF, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [40, character_class → • LBRACKET character_class_inner RBRACKET, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [41, character_class → • LBRACKET CARET character_class_inner RBRACKET, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_19(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_EOF => Shift(yy_state_13)
    T_UNDERSCORE => Shift(yy_state_14)
    T_STRING => Shift(yy_state_15)
    T_CHAR => Shift(yy_state_16)
    NT_character_class => Shift(yy_state_18)
    T_LPAREN => Shift(yy_state_19)
    T_LC_IDENT => Shift(yy_state_20)
    NT_atom => Shift(yy_state_24)
    NT_differentiation => Shift(yy_state_30)
    NT_repetition => Shift(yy_state_33)
    NT_concatenation => Shift(yy_state_35)
    NT_alternation => Shift(yy_state_38)
    NT_alias => Shift(yy_state_41)
    _ => Error
  }
}

// [33, atom → LPAREN LC_IDENT • COLON alias RPAREN, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [35, atom → LC_IDENT •, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_20(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COLON => Shift(yy_state_21)
    T_EOF | T_AS | T_UNDERSCORE | T_LPAREN | T_RPAREN | T_LBRACKET | T_BAR | T_STAR | T_PLUS | T_QUESTION | T_BACKSLASH | T_LC_IDENT | T_CHAR | T_STRING => Reduce(1, NT_atom, yy_action_29)
    _ => Error
  }
}

// [19, alias → • alternation, RPAREN]
// [20, alias → • alternation AS LC_IDENT, RPAREN]
// [21, alternation → • concatenation, AS / RPAREN]
// [22, alternation → • concatenation BAR alternation, AS / RPAREN]
// [23, concatenation → • repetition, AS / RPAREN / BAR]
// [24, concatenation → • repetition concatenation, AS / RPAREN / BAR]
// [25, concatenation → • differentiation, AS / RPAREN / BAR]
// [26, differentiation → • atom BACKSLASH atom, AS / RPAREN / BAR / BACKSLASH]
// [27, differentiation → • differentiation BACKSLASH atom, AS / RPAREN / BAR / BACKSLASH]
// [28, repetition → • atom, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / LC_IDENT / CHAR / STRING]
// [29, repetition → • atom STAR, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / LC_IDENT / CHAR / STRING]
// [30, repetition → • atom PLUS, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / LC_IDENT / CHAR / STRING]
// [31, repetition → • atom QUESTION, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / LC_IDENT / CHAR / STRING]
// [32, atom → • LPAREN alias RPAREN, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [33, atom → • LPAREN LC_IDENT COLON alias RPAREN, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [33, atom → LPAREN LC_IDENT COLON • alias RPAREN, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [34, atom → • character_class, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [35, atom → • LC_IDENT, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [36, atom → • CHAR, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [37, atom → • STRING, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [38, atom → • UNDERSCORE, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [39, atom → • EOF, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [40, character_class → • LBRACKET character_class_inner RBRACKET, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [41, character_class → • LBRACKET CARET character_class_inner RBRACKET, EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_21(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_EOF => Shift(yy_state_13)
    T_UNDERSCORE => Shift(yy_state_14)
    T_STRING => Shift(yy_state_15)
    T_CHAR => Shift(yy_state_16)
    T_LC_IDENT => Shift(yy_state_17)
    NT_character_class => Shift(yy_state_18)
    T_LPAREN => Shift(yy_state_19)
    NT_alias => Shift(yy_state_22)
    NT_atom => Shift(yy_state_24)
    NT_differentiation => Shift(yy_state_30)
    NT_repetition => Shift(yy_state_33)
    NT_concatenation => Shift(yy_state_35)
    NT_alternation => Shift(yy_state_38)
    _ => Error
  }
}

// [33, atom → LPAREN LC_IDENT COLON alias • RPAREN, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_22(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_23)
    _ => Error
  }
}

// [33, atom → LPAREN LC_IDENT COLON alias RPAREN •, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_23(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_atom, yy_action_33)
}

// [26, differentiation → atom • BACKSLASH atom, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [28, repetition → atom •, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
// [29, repetition → atom • STAR, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
// [30, repetition → atom • PLUS, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
// [31, repetition → atom • QUESTION, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
fn yy_state_24(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_QUESTION => Shift(yy_state_25)
    T_PLUS => Shift(yy_state_26)
    T_STAR => Shift(yy_state_27)
    T_BACKSLASH => Shift(yy_state_28)
    T_EOI | T_EOF | T_AS | T_UNDERSCORE | T_LPAREN | T_RPAREN | T_LBRACKET | T_SEMICOLON | T_FAT_ARROW | T_BAR | T_LC_IDENT | T_CHAR | T_STRING => Reduce(1, NT_repetition, yy_action_40)
    _ => Error
  }
}

// [31, repetition → atom QUESTION •, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
fn yy_state_25(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_repetition, yy_action_27)
}

// [30, repetition → atom PLUS •, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
fn yy_state_26(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_repetition, yy_action_35)
}

// [29, repetition → atom STAR •, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
fn yy_state_27(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_repetition, yy_action_38)
}

// [26, differentiation → atom BACKSLASH • atom, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [32, atom → • LPAREN alias RPAREN, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [33, atom → • LPAREN LC_IDENT COLON alias RPAREN, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [34, atom → • character_class, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [35, atom → • LC_IDENT, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [36, atom → • CHAR, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [37, atom → • STRING, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [38, atom → • UNDERSCORE, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [39, atom → • EOF, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [40, character_class → • LBRACKET character_class_inner RBRACKET, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [41, character_class → • LBRACKET CARET character_class_inner RBRACKET, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
fn yy_state_28(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_EOF => Shift(yy_state_13)
    T_UNDERSCORE => Shift(yy_state_14)
    T_STRING => Shift(yy_state_15)
    T_CHAR => Shift(yy_state_16)
    T_LC_IDENT => Shift(yy_state_17)
    NT_character_class => Shift(yy_state_18)
    T_LPAREN => Shift(yy_state_19)
    NT_atom => Shift(yy_state_29)
    _ => Error
  }
}

// [26, differentiation → atom BACKSLASH atom •, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
fn yy_state_29(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_differentiation, yy_action_39)
}

// [25, concatenation → differentiation •, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR]
// [27, differentiation → differentiation • BACKSLASH atom, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
fn yy_state_30(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_BACKSLASH => Shift(yy_state_31)
    T_EOI | T_AS | T_RPAREN | T_SEMICOLON | T_FAT_ARROW | T_BAR => Reduce(1, NT_concatenation, yy_action_42)
    _ => Error
  }
}

// [27, differentiation → differentiation BACKSLASH • atom, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [32, atom → • LPAREN alias RPAREN, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [33, atom → • LPAREN LC_IDENT COLON alias RPAREN, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [34, atom → • character_class, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [35, atom → • LC_IDENT, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [36, atom → • CHAR, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [37, atom → • STRING, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [38, atom → • UNDERSCORE, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [39, atom → • EOF, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [40, character_class → • LBRACKET character_class_inner RBRACKET, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [41, character_class → • LBRACKET CARET character_class_inner RBRACKET, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
fn yy_state_31(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_EOF => Shift(yy_state_13)
    T_UNDERSCORE => Shift(yy_state_14)
    T_STRING => Shift(yy_state_15)
    T_CHAR => Shift(yy_state_16)
    T_LC_IDENT => Shift(yy_state_17)
    NT_character_class => Shift(yy_state_18)
    T_LPAREN => Shift(yy_state_19)
    NT_atom => Shift(yy_state_32)
    _ => Error
  }
}

// [27, differentiation → differentiation BACKSLASH atom •, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
fn yy_state_32(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_differentiation, yy_action_44)
}

// [23, concatenation → • repetition, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR]
// [23, concatenation → repetition •, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR]
// [24, concatenation → • repetition concatenation, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR]
// [24, concatenation → repetition • concatenation, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR]
// [25, concatenation → • differentiation, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR]
// [26, differentiation → • atom BACKSLASH atom, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [27, differentiation → • differentiation BACKSLASH atom, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [28, repetition → • atom, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
// [29, repetition → • atom STAR, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
// [30, repetition → • atom PLUS, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
// [31, repetition → • atom QUESTION, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
// [32, atom → • LPAREN alias RPAREN, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [33, atom → • LPAREN LC_IDENT COLON alias RPAREN, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [34, atom → • character_class, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [35, atom → • LC_IDENT, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [36, atom → • CHAR, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [37, atom → • STRING, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [38, atom → • UNDERSCORE, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [39, atom → • EOF, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [40, character_class → • LBRACKET character_class_inner RBRACKET, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [41, character_class → • LBRACKET CARET character_class_inner RBRACKET, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_33(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_EOF => Shift(yy_state_13)
    T_UNDERSCORE => Shift(yy_state_14)
    T_STRING => Shift(yy_state_15)
    T_CHAR => Shift(yy_state_16)
    T_LC_IDENT => Shift(yy_state_17)
    NT_character_class => Shift(yy_state_18)
    T_LPAREN => Shift(yy_state_19)
    NT_atom => Shift(yy_state_24)
    NT_differentiation => Shift(yy_state_30)
    NT_repetition => Shift(yy_state_33)
    NT_concatenation => Shift(yy_state_34)
    T_EOI | T_AS | T_RPAREN | T_SEMICOLON | T_FAT_ARROW | T_BAR => Reduce(1, NT_concatenation, yy_action_24)
    _ => Error
  }
}

// [24, concatenation → repetition concatenation •, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR]
fn yy_state_34(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_concatenation, yy_action_12)
}

// [21, alternation → concatenation •, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW]
// [22, alternation → concatenation • BAR alternation, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW]
fn yy_state_35(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_BAR => Shift(yy_state_36)
    T_EOI | T_AS | T_RPAREN | T_SEMICOLON | T_FAT_ARROW => Reduce(1, NT_alternation, yy_action_26)
    _ => Error
  }
}

// [21, alternation → • concatenation, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW]
// [22, alternation → • concatenation BAR alternation, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW]
// [22, alternation → concatenation BAR • alternation, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW]
// [23, concatenation → • repetition, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR]
// [24, concatenation → • repetition concatenation, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR]
// [25, concatenation → • differentiation, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR]
// [26, differentiation → • atom BACKSLASH atom, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [27, differentiation → • differentiation BACKSLASH atom, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW / BAR / BACKSLASH]
// [28, repetition → • atom, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
// [29, repetition → • atom STAR, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
// [30, repetition → • atom PLUS, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
// [31, repetition → • atom QUESTION, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
// [32, atom → • LPAREN alias RPAREN, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [33, atom → • LPAREN LC_IDENT COLON alias RPAREN, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [34, atom → • character_class, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [35, atom → • LC_IDENT, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [36, atom → • CHAR, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [37, atom → • STRING, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [38, atom → • UNDERSCORE, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [39, atom → • EOF, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [40, character_class → • LBRACKET character_class_inner RBRACKET, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [41, character_class → • LBRACKET CARET character_class_inner RBRACKET, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_36(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_EOF => Shift(yy_state_13)
    T_UNDERSCORE => Shift(yy_state_14)
    T_STRING => Shift(yy_state_15)
    T_CHAR => Shift(yy_state_16)
    T_LC_IDENT => Shift(yy_state_17)
    NT_character_class => Shift(yy_state_18)
    T_LPAREN => Shift(yy_state_19)
    NT_atom => Shift(yy_state_24)
    NT_differentiation => Shift(yy_state_30)
    NT_repetition => Shift(yy_state_33)
    NT_concatenation => Shift(yy_state_35)
    NT_alternation => Shift(yy_state_37)
    _ => Error
  }
}

// [22, alternation → concatenation BAR alternation •, EOI / AS / RPAREN / SEMICOLON / FAT_ARROW]
fn yy_state_37(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_alternation, yy_action_34)
}

// [19, alias → alternation •, EOI / RPAREN / SEMICOLON / FAT_ARROW]
// [20, alias → alternation • AS LC_IDENT, EOI / RPAREN / SEMICOLON / FAT_ARROW]
fn yy_state_38(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_AS => Shift(yy_state_39)
    T_EOI | T_RPAREN | T_SEMICOLON | T_FAT_ARROW => Reduce(1, NT_alias, yy_action_10)
    _ => Error
  }
}

// [20, alias → alternation AS • LC_IDENT, EOI / RPAREN / SEMICOLON / FAT_ARROW]
fn yy_state_39(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LC_IDENT => Shift(yy_state_40)
    _ => Error
  }
}

// [20, alias → alternation AS LC_IDENT •, EOI / RPAREN / SEMICOLON / FAT_ARROW]
fn yy_state_40(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_alias, yy_action_30)
}

// [32, atom → LPAREN alias • RPAREN, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_41(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_42)
    _ => Error
  }
}

// [32, atom → LPAREN alias RPAREN •, EOI / EOF / AS / UNDERSCORE / LPAREN / RPAREN / LBRACKET / SEMICOLON / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_42(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_atom, yy_action_41)
}

// [18, regex → alias •, EOI / SEMICOLON / FAT_ARROW]
fn yy_state_43(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_regex, yy_action_4)
}

// [2, regex_eoi → regex • EOI, $]
fn yy_state_44(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_EOI => Shift(yy_state_45)
    _ => Error
  }
}

// [2, regex_eoi → regex EOI •, $]
fn yy_state_45(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_regex_eoi, yy_action_31)
}

// [0, lex_eoi → • lex cleanup EOI, $]
// [3, lex → •, EOI]
// [4, lex → • header named_regex_list nonempty_rule_list trailer, EOI]
// [5, header → • LBRACE_CODE_RBRACE, REGEX / RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE]
// [6, header → •, REGEX / RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE]
// [46, lex_eoi_prime → • lex_eoi, $]
fn yy_state_46(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    NT_lex_eoi => Shift(yy_state_47)
    T_LBRACE_CODE_RBRACE => Shift(yy_state_48)
    NT_header => Shift(yy_state_49)
    NT_lex => Shift(yy_state_73)
    T_EOI => Reduce(0, NT_lex, yy_action_19)
    T_REGEX | T_RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE => Reduce(0, NT_header, yy_action_0)
    _ => Error
  }
}

// [46, lex_eoi_prime → lex_eoi •, $]
fn yy_state_47(_lookahead : YYSymbol) -> YYDecision {
  Accept
}

// [5, header → LBRACE_CODE_RBRACE •, REGEX / RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE]
fn yy_state_48(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_header, yy_action_23)
}

// [4, lex → header • named_regex_list nonempty_rule_list trailer, EOI]
// [9, named_regex_list → • named_regex named_regex_list, RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE]
// [10, named_regex_list → •, RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE]
// [11, named_regex → • REGEX LC_IDENT EQ regex SEMICOLON, REGEX / RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE]
fn yy_state_49(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_REGEX => Shift(yy_state_50)
    NT_named_regex => Shift(yy_state_55)
    NT_named_regex_list => Shift(yy_state_57)
    T_RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE => Reduce(0, NT_named_regex_list, yy_action_3)
    _ => Error
  }
}

// [11, named_regex → REGEX • LC_IDENT EQ regex SEMICOLON, REGEX / RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE]
fn yy_state_50(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LC_IDENT => Shift(yy_state_51)
    _ => Error
  }
}

// [11, named_regex → REGEX LC_IDENT • EQ regex SEMICOLON, REGEX / RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE]
fn yy_state_51(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_EQ => Shift(yy_state_52)
    _ => Error
  }
}

// [11, named_regex → REGEX LC_IDENT EQ • regex SEMICOLON, REGEX / RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE]
// [18, regex → • alias, SEMICOLON]
// [19, alias → • alternation, SEMICOLON]
// [20, alias → • alternation AS LC_IDENT, SEMICOLON]
// [21, alternation → • concatenation, AS / SEMICOLON]
// [22, alternation → • concatenation BAR alternation, AS / SEMICOLON]
// [23, concatenation → • repetition, AS / SEMICOLON / BAR]
// [24, concatenation → • repetition concatenation, AS / SEMICOLON / BAR]
// [25, concatenation → • differentiation, AS / SEMICOLON / BAR]
// [26, differentiation → • atom BACKSLASH atom, AS / SEMICOLON / BAR / BACKSLASH]
// [27, differentiation → • differentiation BACKSLASH atom, AS / SEMICOLON / BAR / BACKSLASH]
// [28, repetition → • atom, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / SEMICOLON / BAR / LC_IDENT / CHAR / STRING]
// [29, repetition → • atom STAR, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / SEMICOLON / BAR / LC_IDENT / CHAR / STRING]
// [30, repetition → • atom PLUS, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / SEMICOLON / BAR / LC_IDENT / CHAR / STRING]
// [31, repetition → • atom QUESTION, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / SEMICOLON / BAR / LC_IDENT / CHAR / STRING]
// [32, atom → • LPAREN alias RPAREN, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / SEMICOLON / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [33, atom → • LPAREN LC_IDENT COLON alias RPAREN, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / SEMICOLON / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [34, atom → • character_class, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / SEMICOLON / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [35, atom → • LC_IDENT, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / SEMICOLON / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [36, atom → • CHAR, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / SEMICOLON / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [37, atom → • STRING, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / SEMICOLON / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [38, atom → • UNDERSCORE, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / SEMICOLON / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [39, atom → • EOF, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / SEMICOLON / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [40, character_class → • LBRACKET character_class_inner RBRACKET, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / SEMICOLON / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [41, character_class → • LBRACKET CARET character_class_inner RBRACKET, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / SEMICOLON / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_52(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_EOF => Shift(yy_state_13)
    T_UNDERSCORE => Shift(yy_state_14)
    T_STRING => Shift(yy_state_15)
    T_CHAR => Shift(yy_state_16)
    T_LC_IDENT => Shift(yy_state_17)
    NT_character_class => Shift(yy_state_18)
    T_LPAREN => Shift(yy_state_19)
    NT_atom => Shift(yy_state_24)
    NT_differentiation => Shift(yy_state_30)
    NT_repetition => Shift(yy_state_33)
    NT_concatenation => Shift(yy_state_35)
    NT_alternation => Shift(yy_state_38)
    NT_alias => Shift(yy_state_43)
    NT_regex => Shift(yy_state_53)
    _ => Error
  }
}

// [11, named_regex → REGEX LC_IDENT EQ regex • SEMICOLON, REGEX / RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE]
fn yy_state_53(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_54)
    _ => Error
  }
}

// [11, named_regex → REGEX LC_IDENT EQ regex SEMICOLON •, REGEX / RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE]
fn yy_state_54(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_named_regex, yy_action_43)
}

// [9, named_regex_list → • named_regex named_regex_list, RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE]
// [9, named_regex_list → named_regex • named_regex_list, RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE]
// [10, named_regex_list → •, RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE]
// [11, named_regex → • REGEX LC_IDENT EQ regex SEMICOLON, REGEX / RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE]
fn yy_state_55(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_REGEX => Shift(yy_state_50)
    NT_named_regex => Shift(yy_state_55)
    NT_named_regex_list => Shift(yy_state_56)
    T_RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE => Reduce(0, NT_named_regex_list, yy_action_3)
    _ => Error
  }
}

// [9, named_regex_list → named_regex named_regex_list •, RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE]
fn yy_state_56(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_named_regex_list, yy_action_17)
}

// [4, lex → header named_regex_list • nonempty_rule_list trailer, EOI]
// [12, nonempty_rule_list → • rule, EOI / LBRACE_CODE_RBRACE]
// [13, nonempty_rule_list → • rule nonempty_rule_list, EOI / LBRACE_CODE_RBRACE]
// [14, rule → • RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE PARSE_LBRACE rule_item_list RBRACE RBRACE, EOI / RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE / LBRACE_CODE_RBRACE]
fn yy_state_57(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE => Shift(yy_state_58)
    NT_rule => Shift(yy_state_68)
    NT_nonempty_rule_list => Shift(yy_state_70)
    _ => Error
  }
}

// [14, rule → RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE • PARSE_LBRACE rule_item_list RBRACE RBRACE, EOI / RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE / LBRACE_CODE_RBRACE]
fn yy_state_58(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_PARSE_LBRACE => Shift(yy_state_59)
    _ => Error
  }
}

// [14, rule → RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE PARSE_LBRACE • rule_item_list RBRACE RBRACE, EOI / RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE / LBRACE_CODE_RBRACE]
// [15, rule_item_list → • rule_item rule_item_list, RBRACE]
// [16, rule_item_list → •, RBRACE]
// [17, rule_item → • regex FAT_ARROW LBRACE_CODE_RBRACE, EOF / UNDERSCORE / RBRACE / LPAREN / LBRACKET / LC_IDENT / CHAR / STRING]
// [18, regex → • alias, FAT_ARROW]
// [19, alias → • alternation, FAT_ARROW]
// [20, alias → • alternation AS LC_IDENT, FAT_ARROW]
// [21, alternation → • concatenation, AS / FAT_ARROW]
// [22, alternation → • concatenation BAR alternation, AS / FAT_ARROW]
// [23, concatenation → • repetition, AS / FAT_ARROW / BAR]
// [24, concatenation → • repetition concatenation, AS / FAT_ARROW / BAR]
// [25, concatenation → • differentiation, AS / FAT_ARROW / BAR]
// [26, differentiation → • atom BACKSLASH atom, AS / FAT_ARROW / BAR / BACKSLASH]
// [27, differentiation → • differentiation BACKSLASH atom, AS / FAT_ARROW / BAR / BACKSLASH]
// [28, repetition → • atom, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
// [29, repetition → • atom STAR, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
// [30, repetition → • atom PLUS, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
// [31, repetition → • atom QUESTION, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
// [32, atom → • LPAREN alias RPAREN, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [33, atom → • LPAREN LC_IDENT COLON alias RPAREN, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [34, atom → • character_class, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [35, atom → • LC_IDENT, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [36, atom → • CHAR, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [37, atom → • STRING, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [38, atom → • UNDERSCORE, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [39, atom → • EOF, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [40, character_class → • LBRACKET character_class_inner RBRACKET, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [41, character_class → • LBRACKET CARET character_class_inner RBRACKET, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_59(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_EOF => Shift(yy_state_13)
    T_UNDERSCORE => Shift(yy_state_14)
    T_STRING => Shift(yy_state_15)
    T_CHAR => Shift(yy_state_16)
    T_LC_IDENT => Shift(yy_state_17)
    NT_character_class => Shift(yy_state_18)
    T_LPAREN => Shift(yy_state_19)
    NT_atom => Shift(yy_state_24)
    NT_differentiation => Shift(yy_state_30)
    NT_repetition => Shift(yy_state_33)
    NT_concatenation => Shift(yy_state_35)
    NT_alternation => Shift(yy_state_38)
    NT_alias => Shift(yy_state_43)
    NT_regex => Shift(yy_state_60)
    NT_rule_item => Shift(yy_state_63)
    NT_rule_item_list => Shift(yy_state_65)
    T_RBRACE => Reduce(0, NT_rule_item_list, yy_action_6)
    _ => Error
  }
}

// [17, rule_item → regex • FAT_ARROW LBRACE_CODE_RBRACE, EOF / UNDERSCORE / RBRACE / LPAREN / LBRACKET / LC_IDENT / CHAR / STRING]
fn yy_state_60(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FAT_ARROW => Shift(yy_state_61)
    _ => Error
  }
}

// [17, rule_item → regex FAT_ARROW • LBRACE_CODE_RBRACE, EOF / UNDERSCORE / RBRACE / LPAREN / LBRACKET / LC_IDENT / CHAR / STRING]
fn yy_state_61(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE_CODE_RBRACE => Shift(yy_state_62)
    _ => Error
  }
}

// [17, rule_item → regex FAT_ARROW LBRACE_CODE_RBRACE •, EOF / UNDERSCORE / RBRACE / LPAREN / LBRACKET / LC_IDENT / CHAR / STRING]
fn yy_state_62(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_rule_item, yy_action_5)
}

// [15, rule_item_list → • rule_item rule_item_list, RBRACE]
// [15, rule_item_list → rule_item • rule_item_list, RBRACE]
// [16, rule_item_list → •, RBRACE]
// [17, rule_item → • regex FAT_ARROW LBRACE_CODE_RBRACE, EOF / UNDERSCORE / RBRACE / LPAREN / LBRACKET / LC_IDENT / CHAR / STRING]
// [18, regex → • alias, FAT_ARROW]
// [19, alias → • alternation, FAT_ARROW]
// [20, alias → • alternation AS LC_IDENT, FAT_ARROW]
// [21, alternation → • concatenation, AS / FAT_ARROW]
// [22, alternation → • concatenation BAR alternation, AS / FAT_ARROW]
// [23, concatenation → • repetition, AS / FAT_ARROW / BAR]
// [24, concatenation → • repetition concatenation, AS / FAT_ARROW / BAR]
// [25, concatenation → • differentiation, AS / FAT_ARROW / BAR]
// [26, differentiation → • atom BACKSLASH atom, AS / FAT_ARROW / BAR / BACKSLASH]
// [27, differentiation → • differentiation BACKSLASH atom, AS / FAT_ARROW / BAR / BACKSLASH]
// [28, repetition → • atom, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
// [29, repetition → • atom STAR, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
// [30, repetition → • atom PLUS, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
// [31, repetition → • atom QUESTION, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / LC_IDENT / CHAR / STRING]
// [32, atom → • LPAREN alias RPAREN, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [33, atom → • LPAREN LC_IDENT COLON alias RPAREN, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [34, atom → • character_class, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [35, atom → • LC_IDENT, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [36, atom → • CHAR, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [37, atom → • STRING, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [38, atom → • UNDERSCORE, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [39, atom → • EOF, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [40, character_class → • LBRACKET character_class_inner RBRACKET, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
// [41, character_class → • LBRACKET CARET character_class_inner RBRACKET, EOF / AS / UNDERSCORE / LPAREN / LBRACKET / FAT_ARROW / BAR / STAR / PLUS / QUESTION / BACKSLASH / LC_IDENT / CHAR / STRING]
fn yy_state_63(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_EOF => Shift(yy_state_13)
    T_UNDERSCORE => Shift(yy_state_14)
    T_STRING => Shift(yy_state_15)
    T_CHAR => Shift(yy_state_16)
    T_LC_IDENT => Shift(yy_state_17)
    NT_character_class => Shift(yy_state_18)
    T_LPAREN => Shift(yy_state_19)
    NT_atom => Shift(yy_state_24)
    NT_differentiation => Shift(yy_state_30)
    NT_repetition => Shift(yy_state_33)
    NT_concatenation => Shift(yy_state_35)
    NT_alternation => Shift(yy_state_38)
    NT_alias => Shift(yy_state_43)
    NT_regex => Shift(yy_state_60)
    NT_rule_item => Shift(yy_state_63)
    NT_rule_item_list => Shift(yy_state_64)
    T_RBRACE => Reduce(0, NT_rule_item_list, yy_action_6)
    _ => Error
  }
}

// [15, rule_item_list → rule_item rule_item_list •, RBRACE]
fn yy_state_64(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_rule_item_list, yy_action_28)
}

// [14, rule → RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE PARSE_LBRACE rule_item_list • RBRACE RBRACE, EOI / RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE / LBRACE_CODE_RBRACE]
fn yy_state_65(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_66)
    _ => Error
  }
}

// [14, rule → RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE PARSE_LBRACE rule_item_list RBRACE • RBRACE, EOI / RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE / LBRACE_CODE_RBRACE]
fn yy_state_66(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_67)
    _ => Error
  }
}

// [14, rule → RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE PARSE_LBRACE rule_item_list RBRACE RBRACE •, EOI / RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE / LBRACE_CODE_RBRACE]
fn yy_state_67(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_rule, yy_action_20)
}

// [12, nonempty_rule_list → • rule, EOI / LBRACE_CODE_RBRACE]
// [12, nonempty_rule_list → rule •, EOI / LBRACE_CODE_RBRACE]
// [13, nonempty_rule_list → • rule nonempty_rule_list, EOI / LBRACE_CODE_RBRACE]
// [13, nonempty_rule_list → rule • nonempty_rule_list, EOI / LBRACE_CODE_RBRACE]
// [14, rule → • RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE PARSE_LBRACE rule_item_list RBRACE RBRACE, EOI / RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE / LBRACE_CODE_RBRACE]
fn yy_state_68(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE => Shift(yy_state_58)
    NT_rule => Shift(yy_state_68)
    NT_nonempty_rule_list => Shift(yy_state_69)
    T_EOI | T_LBRACE_CODE_RBRACE => Reduce(1, NT_nonempty_rule_list, yy_action_32)
    _ => Error
  }
}

// [13, nonempty_rule_list → rule nonempty_rule_list •, EOI / LBRACE_CODE_RBRACE]
fn yy_state_69(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_nonempty_rule_list, yy_action_14)
}

// [4, lex → header named_regex_list nonempty_rule_list • trailer, EOI]
// [7, trailer → • LBRACE_CODE_RBRACE, EOI]
// [8, trailer → •, EOI]
fn yy_state_70(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE_CODE_RBRACE => Shift(yy_state_71)
    NT_trailer => Shift(yy_state_72)
    T_EOI => Reduce(0, NT_trailer, yy_action_22)
    _ => Error
  }
}

// [7, trailer → LBRACE_CODE_RBRACE •, EOI]
fn yy_state_71(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_trailer, yy_action_21)
}

// [4, lex → header named_regex_list nonempty_rule_list trailer •, EOI]
fn yy_state_72(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_lex, yy_action_2)
}

// [0, lex_eoi → lex • cleanup EOI, $]
// [1, cleanup → •, EOI]
fn yy_state_73(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    NT_cleanup => Shift(yy_state_74)
    T_EOI => Reduce(0, NT_cleanup, yy_action_25)
    _ => Error
  }
}

// [0, lex_eoi → lex cleanup • EOI, $]
fn yy_state_74(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_EOI => Shift(yy_state_75)
    _ => Error
  }
}

// [0, lex_eoi → lex cleanup EOI •, $]
fn yy_state_75(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_lex_eoi, yy_action_9)
}

fn yy_parse[T](
  read_token : () -> (Token, Position, Position),
  start_pos : Position,
  start : YYState,
  return_ : (YYObj) -> T
) -> T!ParseError {
  let mut state_stack : @immut/list.T[YYState] = Cons(start, Nil)
  let data_stack : Array[(YYObj, Position, Position)] = []
  let mut last_pos = start_pos
  let mut state = start
  let mut lookahead : Option[(YYSymbol, (YYObj, Position, Position), Token)] = None
  let mut last_shifted_state_stack = state_stack
  while true {
    let decision = match state(EOI) {
      ReduceNoLookahead(_) | Accept as t => t
      _ => {
        match lookahead {
          Some(la) => state(la.0)
          None => {
            let (token, start_pos, end_pos) = read_token()
            let (symbol, data) = yy_input(token, start_pos, end_pos)
            lookahead = Some((symbol, (data, start_pos, end_pos), token))
            state(symbol)
          }
        }
      }
    }
    match decision {
      Accept => return return_(data_stack.unsafe_pop().0)
      Shift(next_state) => {
        guard lookahead is Some(la)
        data_stack.push(la.1)
        state_stack = Cons(next_state, state_stack)
        last_shifted_state_stack = state_stack
        state = next_state
        last_pos = la.1.2
        lookahead = None
      }
      Reduce(count, symbol, action)
      | ReduceNoLookahead(count, symbol, action) => {
        loop (count, symbol, action) {
          _ => {
            let args = data_stack[data_stack.length() - count:]
            let data = action(last_pos, args)
            let (start_pos, end_pos) = if args.length() == 0 {
              (last_pos, last_pos)
            } else {
              (args[0].1, args[args.length() - 1].2)
            }
            for i in 0..<count {
              ignore(data_stack.unsafe_pop())
              state_stack = state_stack.tail()
            }
            state = state_stack.unsafe_head()
            data_stack.push((data, start_pos, end_pos))
            match state(symbol) {
              Accept => return return_(data_stack.unsafe_pop().0)
              Shift(next_state) => {
                state_stack = Cons(next_state, state_stack)
                state = next_state
              }
              Reduce(count, symbol, action)
              | ReduceNoLookahead(count, symbol, action) => continue (count, symbol, action)
              _ => panic()
            }
          }
        }
      }
      Error => {
        let (_, (_, start_pos, end_pos), token) = lookahead.unwrap()
        error!(last_shifted_state_stack, token, (start_pos, end_pos))
      }
    }
  }
  panic()
}

fn error(stack : @immut/list.T[YYState], token : Token, loc : (Position, Position)) -> Unit!ParseError {
  let expected = []
  fn try_add(symbol : YYSymbol, kind : TokenKind) {
    fn go(stack : @immut/list.T[YYState]) {
      match stack {
        Nil => ()
        Cons(state, _) => {
          match state(symbol) {
            Accept | Shift(_) => expected.push(kind)
            Reduce(count, symbol, _) | ReduceNoLookahead(count, symbol, _) => {
              fn inner_go(stack : @immut/list.T[YYState], count, symbol) {
                let stack = stack.drop(count)
                guard stack is Cons(state, _)
                match state(symbol) {
                  Shift(state) => go(Cons(state, stack))
                  Reduce(count, symbol, _) | ReduceNoLookahead(count, symbol, _) => inner_go(stack, count, symbol)
                  _ => panic()
                }
              }
              inner_go(stack, count, symbol)
            }
            Error => ()
          }
        }
      }
    }
    go(stack)
  }
  for term in ([(T_EOI, TK_EOI), (T_EOF, TK_EOF), (T_PARSE_LBRACE, TK_PARSE_LBRACE), (T_REGEX, TK_REGEX), (T_AS, TK_AS), (T_UNDERSCORE, TK_UNDERSCORE), (T_RBRACE, TK_RBRACE), (T_LPAREN, TK_LPAREN), (T_RPAREN, TK_RPAREN), (T_LBRACKET, TK_LBRACKET), (T_RBRACKET, TK_RBRACKET), (T_EQ, TK_EQ), (T_COLON, TK_COLON), (T_SEMICOLON, TK_SEMICOLON), (T_FAT_ARROW, TK_FAT_ARROW), (T_BAR, TK_BAR), (T_STAR, TK_STAR), (T_PLUS, TK_PLUS), (T_QUESTION, TK_QUESTION), (T_MINUS, TK_MINUS), (T_CARET, TK_CARET), (T_BACKSLASH, TK_BACKSLASH), (T_RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE, TK_RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE), (T_LBRACE_CODE_RBRACE, TK_LBRACE_CODE_RBRACE), (T_LC_IDENT, TK_LC_IDENT), (T_CHAR, TK_CHAR), (T_STRING, TK_STRING)] : Array[(YYSymbol, TokenKind)]) {
    try_add(term.0, term.1)
  }
  raise UnexpectedToken(token, loc, expected)
}

pub fn lex_eoi(read_token : () -> (Token, Position, Position), start_pos : Position) -> @type.Lex!ParseError {
  yy_parse!(
    read_token,
    start_pos,
    yy_state_46,
    fn {
      YYObj__type_Lex(result) => result
      _ => panic()
    },
  )
}
pub fn regex_eoi(read_token : () -> (Token, Position, Position), start_pos : Position) -> @type.Regex!ParseError {
  yy_parse!(
    read_token,
    start_pos,
    yy_state_0,
    fn {
      YYObj__type_Regex(result) => result
      _ => panic()
    },
  )
}
