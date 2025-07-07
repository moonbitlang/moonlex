
pub suberror ParseError {
  UnexpectedToken(Token, (Position, Position), Array[TokenKind])
  UnexpectedEndOfInput(Position, Array[TokenKind])
} derive(Show)

typealias Error as YYObj

priv suberror YYObj_Void

priv suberror YYObj_Char Char

priv suberror YYObj_String String

priv suberror YYObj__char_set_T @char_set.T

priv suberror YYObj__Int__Int__ (Int, Int?)

priv suberror YYObj__Char__String_ (Char, String)

priv suberror YYObj__Context_____Regex (Context) -> Regex

typealias (YYSymbol) -> YYDecision as YYState

typealias (Position, ArrayView[(YYObj, Position, Position)]) -> YYObj as YYAction

priv enum YYDecision {
  Accept
  Shift(YYState)
  Reduce(Int, YYSymbol, YYAction)
  ReduceNoLookahead(Int, YYSymbol, YYAction)
  Error
}

priv enum YYSymbol {
  T_EOF
  T_CHAR
  T_CHAR_ESCAPE
  T_DOT
  T_DOLLAR
  T_LBRACKET
  T_RBRACKET
  T_CARET
  T_MINUS
  T_STAR
  T_PLUS
  T_QUESTION
  T_REPEAT
  T_LPAREN
  T_RPAREN
  T_BAR
  T_TOKEN
  NT_parse_regex
  NT_alternation
  NT_concatenation
  NT_repetition
  NT_primary
  NT_character_class
  NT_character_class_inner
  NT_character_class_item
  NT_character
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
// 53|    character { _ctx => @regex.char_class(@char_set.singleton($1)) }
fn yy_action_0(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Char(_dollar1)
  YYObj__Context_____Regex({();  _ctx => @regex.char_class(@char_set.singleton(_dollar1)) })
}

// file:///./parser.mbty
// 71|    character "-" character { @char_set.range($1, $3) }
fn yy_action_1(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Char(_dollar1)
  guard _args[2].0 is YYObj_Char(_dollar3)
  YYObj__char_set_T({();  @char_set.range(_dollar1, _dollar3) })
}

// file:///./parser.mbty
// 43|    primary "*" { ctx => @regex.star($1(ctx)) }
fn yy_action_2(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__Context_____Regex(_dollar1)
  YYObj__Context_____Regex({();  ctx => @regex.star(_dollar1(ctx)) })
}

// file:///./parser.mbty
// 55|    "." { _ctx => @regex.char_class(@char_set.any) }
fn yy_action_3(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj__Context_____Regex({();  _ctx => @regex.char_class(@char_set.any) })
}

// file:///./parser.mbty
// 50|    "(" alternation ")" { ctx => $2(ctx) }
fn yy_action_4(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj__Context_____Regex(_dollar2)
  YYObj__Context_____Regex({();  ctx => _dollar2(ctx) })
}

// file:///./parser.mbty
// 61|    "[" "^" character_class_inner "]" { $3.complement() }
fn yy_action_5(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj__char_set_T(_dollar3)
  YYObj__char_set_T({();  _dollar3.complement() })
}

// file:///./parser.mbty
// 75|    CHAR { $1 }
fn yy_action_6(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Char(_dollar1)
  YYObj_Char({();  _dollar1 })
}

// file:///./parser.mbty
// 51|    TOKEN { ctx => ctx.named_regexes.get($1).unwrap() }
fn yy_action_7(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj__Context_____Regex({();  ctx => ctx.named_regexes.get(_dollar1).unwrap() })
}

// file:///./parser.mbty
// 45|    primary "?" { ctx => @regex.opt($1(ctx)) }
fn yy_action_8(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__Context_____Regex(_dollar1)
  YYObj__Context_____Regex({();  ctx => @regex.opt(_dollar1(ctx)) })
}

// file:///./parser.mbty
// 70|    character { @char_set.singleton($1) }
fn yy_action_9(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Char(_dollar1)
  YYObj__char_set_T({();  @char_set.singleton(_dollar1) })
}

// file:///./parser.mbty
// 76|    CHAR_ESCAPE { $1.0 }
fn yy_action_10(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__Char__String_(_dollar1)
  YYObj_Char({();  _dollar1.0 })
}

// file:///./parser.mbty
// 54|    "-" { _ctx => @regex.char_class(@char_set.singleton('-')) }
fn yy_action_11(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj__Context_____Regex({();  _ctx => @regex.char_class(@char_set.singleton('-')) })
}

// file:///./parser.mbty
// 42|    primary { $1 }
fn yy_action_12(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__Context_____Regex(_dollar1)
  YYObj__Context_____Regex({();  _dollar1 })
}

// file:///./parser.mbty
// 60|    "[" character_class_inner "]" { $2 }
fn yy_action_13(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj__char_set_T(_dollar2)
  YYObj__char_set_T({();  _dollar2 })
}

// file:///./parser.mbty
// 52|    character_class { _ctx => @regex.char_class($1) }
fn yy_action_14(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__char_set_T(_dollar1)
  YYObj__Context_____Regex({();  _ctx => @regex.char_class(_dollar1) })
}

// file:///./parser.mbty
// 66|    character_class_item character_class_inner { $1.union($2) }
fn yy_action_15(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__char_set_T(_dollar1)
  guard _args[1].0 is YYObj__char_set_T(_dollar2)
  YYObj__char_set_T({();  _dollar1.union(_dollar2) })
}

// file:///./parser.mbty
// 65|    { @char_set.empty }
fn yy_action_16(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj__char_set_T({();  @char_set.empty })
}

// file:///./parser.mbty
// 46|    primary REPEAT { ctx => @regex.repeat($1(ctx), min_times=$2.0, max_times?=$2.1) }
fn yy_action_17(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__Context_____Regex(_dollar1)
  guard _args[1].0 is YYObj__Int__Int__(_dollar2)
  YYObj__Context_____Regex({();  ctx => @regex.repeat(_dollar1(ctx), min_times=_dollar2.0, max_times?=_dollar2.1) })
}

// file:///./parser.mbty
// 38|    repetition concatenation { ctx => @regex.seq($1(ctx), $2(ctx)) }
fn yy_action_18(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__Context_____Regex(_dollar1)
  guard _args[1].0 is YYObj__Context_____Regex(_dollar2)
  YYObj__Context_____Regex({();  ctx => @regex.seq(_dollar1(ctx), _dollar2(ctx)) })
}

// file:///./parser.mbty
// 37|    repetition { $1 }
fn yy_action_19(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__Context_____Regex(_dollar1)
  YYObj__Context_____Regex({();  _dollar1 })
}

// file:///./parser.mbty
// 32|    concatenation { $1 }
fn yy_action_20(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__Context_____Regex(_dollar1)
  YYObj__Context_____Regex({();  _dollar1 })
}

// file:///./parser.mbty
// 44|    primary "+" { ctx => @regex.plus($1(ctx)) }
fn yy_action_21(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__Context_____Regex(_dollar1)
  YYObj__Context_____Regex({();  ctx => @regex.plus(_dollar1(ctx)) })
}

// file:///./parser.mbty
// 28|    alternation { $1 }
fn yy_action_22(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__Context_____Regex(_dollar1)
  YYObj__Context_____Regex({();  _dollar1 })
}

// file:///./parser.mbty
// 33|    concatenation "|" alternation { ctx => @regex.alt($1(ctx), $3(ctx)) }
fn yy_action_23(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__Context_____Regex(_dollar1)
  guard _args[2].0 is YYObj__Context_____Regex(_dollar3)
  YYObj__Context_____Regex({();  ctx => @regex.alt(_dollar1(ctx), _dollar3(ctx)) })
}

// file:///./parser.mbty
// 56|    "$" { _ctx => @regex.eof }
fn yy_action_24(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj__Context_____Regex({();  _ctx => @regex.eof })
}

fn yy_input(token : Token, _start_pos : Position, _end_pos : Position) -> (YYSymbol, YYObj) {
  match token {
    EOF => (T_EOF, YYObj_Void)
    CHAR(data) => (T_CHAR, YYObj_Char(data))
    CHAR_ESCAPE(data) => (T_CHAR_ESCAPE, YYObj__Char__String_(data))
    DOT => (T_DOT, YYObj_Void)
    DOLLAR => (T_DOLLAR, YYObj_Void)
    LBRACKET => (T_LBRACKET, YYObj_Void)
    RBRACKET => (T_RBRACKET, YYObj_Void)
    CARET => (T_CARET, YYObj_Void)
    MINUS => (T_MINUS, YYObj_Void)
    STAR => (T_STAR, YYObj_Void)
    PLUS => (T_PLUS, YYObj_Void)
    QUESTION => (T_QUESTION, YYObj_Void)
    REPEAT(data) => (T_REPEAT, YYObj__Int__Int__(data))
    LPAREN => (T_LPAREN, YYObj_Void)
    RPAREN => (T_RPAREN, YYObj_Void)
    BAR => (T_BAR, YYObj_Void)
    TOKEN(data) => (T_TOKEN, YYObj_String(data))
  }
}

// [0, parse_regex → • alternation, $]
// [1, alternation → • concatenation, $]
// [2, alternation → • concatenation BAR alternation, $]
// [3, concatenation → • repetition, $ / BAR]
// [4, concatenation → • repetition concatenation, $ / BAR]
// [5, repetition → • primary, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / BAR / TOKEN]
// [6, repetition → • primary STAR, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / BAR / TOKEN]
// [7, repetition → • primary PLUS, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / BAR / TOKEN]
// [8, repetition → • primary QUESTION, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / BAR / TOKEN]
// [9, repetition → • primary REPEAT, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / BAR / TOKEN]
// [10, primary → • LPAREN alternation RPAREN, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / BAR / TOKEN]
// [11, primary → • TOKEN, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / BAR / TOKEN]
// [12, primary → • character_class, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / BAR / TOKEN]
// [13, primary → • character, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / BAR / TOKEN]
// [14, primary → • MINUS, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / BAR / TOKEN]
// [15, primary → • DOT, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / BAR / TOKEN]
// [16, primary → • DOLLAR, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / BAR / TOKEN]
// [17, character_class → • LBRACKET character_class_inner RBRACKET, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / BAR / TOKEN]
// [18, character_class → • LBRACKET CARET character_class_inner RBRACKET, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / BAR / TOKEN]
// [23, character → • CHAR, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / BAR / TOKEN]
// [24, character → • CHAR_ESCAPE, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / BAR / TOKEN]
// [25, parse_regex_prime → • parse_regex, $]
fn yy_state_0(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    NT_parse_regex => Shift(yy_state_1)
    T_CHAR_ESCAPE => Shift(yy_state_2)
    T_CHAR => Shift(yy_state_3)
    T_LBRACKET => Shift(yy_state_4)
    T_DOLLAR => Shift(yy_state_15)
    T_DOT => Shift(yy_state_16)
    T_MINUS => Shift(yy_state_17)
    NT_character => Shift(yy_state_18)
    NT_character_class => Shift(yy_state_19)
    T_TOKEN => Shift(yy_state_20)
    T_LPAREN => Shift(yy_state_21)
    NT_primary => Shift(yy_state_24)
    NT_repetition => Shift(yy_state_29)
    NT_concatenation => Shift(yy_state_31)
    NT_alternation => Shift(yy_state_34)
    _ => Error
  }
}

// [25, parse_regex_prime → parse_regex •, $]
fn yy_state_1(_lookahead : YYSymbol) -> YYDecision {
  Accept
}

// [24, character → CHAR_ESCAPE •, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / RBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_2(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_character, yy_action_10)
}

// [23, character → CHAR •, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / RBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_3(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_character, yy_action_6)
}

// [17, character_class → LBRACKET • character_class_inner RBRACKET, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [18, character_class → LBRACKET • CARET character_class_inner RBRACKET, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [19, character_class_inner → •, RBRACKET]
// [20, character_class_inner → • character_class_item character_class_inner, RBRACKET]
// [21, character_class_item → • character, CHAR / CHAR_ESCAPE / RBRACKET]
// [22, character_class_item → • character MINUS character, CHAR / CHAR_ESCAPE / RBRACKET]
// [23, character → • CHAR, CHAR / CHAR_ESCAPE / RBRACKET / MINUS]
// [24, character → • CHAR_ESCAPE, CHAR / CHAR_ESCAPE / RBRACKET / MINUS]
fn yy_state_4(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_CHAR_ESCAPE => Shift(yy_state_2)
    T_CHAR => Shift(yy_state_3)
    NT_character => Shift(yy_state_5)
    NT_character_class_item => Shift(yy_state_8)
    T_CARET => Shift(yy_state_10)
    NT_character_class_inner => Shift(yy_state_13)
    T_RBRACKET => Reduce(0, NT_character_class_inner, yy_action_16)
    _ => Error
  }
}

// [21, character_class_item → character •, CHAR / CHAR_ESCAPE / RBRACKET]
// [22, character_class_item → character • MINUS character, CHAR / CHAR_ESCAPE / RBRACKET]
fn yy_state_5(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_MINUS => Shift(yy_state_6)
    T_CHAR | T_CHAR_ESCAPE | T_RBRACKET => Reduce(1, NT_character_class_item, yy_action_9)
    _ => Error
  }
}

// [22, character_class_item → character MINUS • character, CHAR / CHAR_ESCAPE / RBRACKET]
// [23, character → • CHAR, CHAR / CHAR_ESCAPE / RBRACKET]
// [24, character → • CHAR_ESCAPE, CHAR / CHAR_ESCAPE / RBRACKET]
fn yy_state_6(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_CHAR_ESCAPE => Shift(yy_state_2)
    T_CHAR => Shift(yy_state_3)
    NT_character => Shift(yy_state_7)
    _ => Error
  }
}

// [22, character_class_item → character MINUS character •, CHAR / CHAR_ESCAPE / RBRACKET]
fn yy_state_7(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_character_class_item, yy_action_1)
}

// [19, character_class_inner → •, RBRACKET]
// [20, character_class_inner → • character_class_item character_class_inner, RBRACKET]
// [20, character_class_inner → character_class_item • character_class_inner, RBRACKET]
// [21, character_class_item → • character, CHAR / CHAR_ESCAPE / RBRACKET]
// [22, character_class_item → • character MINUS character, CHAR / CHAR_ESCAPE / RBRACKET]
// [23, character → • CHAR, CHAR / CHAR_ESCAPE / RBRACKET / MINUS]
// [24, character → • CHAR_ESCAPE, CHAR / CHAR_ESCAPE / RBRACKET / MINUS]
fn yy_state_8(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_CHAR_ESCAPE => Shift(yy_state_2)
    T_CHAR => Shift(yy_state_3)
    NT_character => Shift(yy_state_5)
    NT_character_class_item => Shift(yy_state_8)
    NT_character_class_inner => Shift(yy_state_9)
    T_RBRACKET => Reduce(0, NT_character_class_inner, yy_action_16)
    _ => Error
  }
}

// [20, character_class_inner → character_class_item character_class_inner •, RBRACKET]
fn yy_state_9(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_character_class_inner, yy_action_15)
}

// [18, character_class → LBRACKET CARET • character_class_inner RBRACKET, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [19, character_class_inner → •, RBRACKET]
// [20, character_class_inner → • character_class_item character_class_inner, RBRACKET]
// [21, character_class_item → • character, CHAR / CHAR_ESCAPE / RBRACKET]
// [22, character_class_item → • character MINUS character, CHAR / CHAR_ESCAPE / RBRACKET]
// [23, character → • CHAR, CHAR / CHAR_ESCAPE / RBRACKET / MINUS]
// [24, character → • CHAR_ESCAPE, CHAR / CHAR_ESCAPE / RBRACKET / MINUS]
fn yy_state_10(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_CHAR_ESCAPE => Shift(yy_state_2)
    T_CHAR => Shift(yy_state_3)
    NT_character => Shift(yy_state_5)
    NT_character_class_item => Shift(yy_state_8)
    NT_character_class_inner => Shift(yy_state_11)
    T_RBRACKET => Reduce(0, NT_character_class_inner, yy_action_16)
    _ => Error
  }
}

// [18, character_class → LBRACKET CARET character_class_inner • RBRACKET, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_11(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACKET => Shift(yy_state_12)
    _ => Error
  }
}

// [18, character_class → LBRACKET CARET character_class_inner RBRACKET •, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_12(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_character_class, yy_action_5)
}

// [17, character_class → LBRACKET character_class_inner • RBRACKET, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_13(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACKET => Shift(yy_state_14)
    _ => Error
  }
}

// [17, character_class → LBRACKET character_class_inner RBRACKET •, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_14(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_character_class, yy_action_13)
}

// [16, primary → DOLLAR •, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_15(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primary, yy_action_24)
}

// [15, primary → DOT •, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_16(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primary, yy_action_3)
}

// [14, primary → MINUS •, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_17(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primary, yy_action_11)
}

// [13, primary → character •, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_18(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primary, yy_action_0)
}

// [12, primary → character_class •, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_19(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primary, yy_action_14)
}

// [11, primary → TOKEN •, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_20(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primary, yy_action_7)
}

// [1, alternation → • concatenation, RPAREN]
// [2, alternation → • concatenation BAR alternation, RPAREN]
// [3, concatenation → • repetition, RPAREN / BAR]
// [4, concatenation → • repetition concatenation, RPAREN / BAR]
// [5, repetition → • primary, CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
// [6, repetition → • primary STAR, CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
// [7, repetition → • primary PLUS, CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
// [8, repetition → • primary QUESTION, CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
// [9, repetition → • primary REPEAT, CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
// [10, primary → • LPAREN alternation RPAREN, CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [10, primary → LPAREN • alternation RPAREN, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [11, primary → • TOKEN, CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [12, primary → • character_class, CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [13, primary → • character, CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [14, primary → • MINUS, CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [15, primary → • DOT, CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [16, primary → • DOLLAR, CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [17, character_class → • LBRACKET character_class_inner RBRACKET, CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [18, character_class → • LBRACKET CARET character_class_inner RBRACKET, CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [23, character → • CHAR, CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [24, character → • CHAR_ESCAPE, CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_21(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_CHAR_ESCAPE => Shift(yy_state_2)
    T_CHAR => Shift(yy_state_3)
    T_LBRACKET => Shift(yy_state_4)
    T_DOLLAR => Shift(yy_state_15)
    T_DOT => Shift(yy_state_16)
    T_MINUS => Shift(yy_state_17)
    NT_character => Shift(yy_state_18)
    NT_character_class => Shift(yy_state_19)
    T_TOKEN => Shift(yy_state_20)
    T_LPAREN => Shift(yy_state_21)
    NT_alternation => Shift(yy_state_22)
    NT_primary => Shift(yy_state_24)
    NT_repetition => Shift(yy_state_29)
    NT_concatenation => Shift(yy_state_31)
    _ => Error
  }
}

// [10, primary → LPAREN alternation • RPAREN, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_22(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_23)
    _ => Error
  }
}

// [10, primary → LPAREN alternation RPAREN •, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_23(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_primary, yy_action_4)
}

// [5, repetition → primary •, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
// [6, repetition → primary • STAR, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
// [7, repetition → primary • PLUS, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
// [8, repetition → primary • QUESTION, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
// [9, repetition → primary • REPEAT, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_24(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_REPEAT => Shift(yy_state_25)
    T_QUESTION => Shift(yy_state_26)
    T_PLUS => Shift(yy_state_27)
    T_STAR => Shift(yy_state_28)
    T_CHAR | T_CHAR_ESCAPE | T_DOT | T_DOLLAR | T_LBRACKET | T_MINUS | T_LPAREN | T_RPAREN | T_BAR | T_TOKEN | EOI => Reduce(1, NT_repetition, yy_action_12)
    _ => Error
  }
}

// [9, repetition → primary REPEAT •, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_25(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_repetition, yy_action_17)
}

// [8, repetition → primary QUESTION •, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_26(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_repetition, yy_action_8)
}

// [7, repetition → primary PLUS •, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_27(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_repetition, yy_action_21)
}

// [6, repetition → primary STAR •, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_28(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_repetition, yy_action_2)
}

// [3, concatenation → • repetition, $ / RPAREN / BAR]
// [3, concatenation → repetition •, $ / RPAREN / BAR]
// [4, concatenation → • repetition concatenation, $ / RPAREN / BAR]
// [4, concatenation → repetition • concatenation, $ / RPAREN / BAR]
// [5, repetition → • primary, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
// [6, repetition → • primary STAR, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
// [7, repetition → • primary PLUS, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
// [8, repetition → • primary QUESTION, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
// [9, repetition → • primary REPEAT, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
// [10, primary → • LPAREN alternation RPAREN, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [11, primary → • TOKEN, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [12, primary → • character_class, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [13, primary → • character, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [14, primary → • MINUS, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [15, primary → • DOT, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [16, primary → • DOLLAR, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [17, character_class → • LBRACKET character_class_inner RBRACKET, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [18, character_class → • LBRACKET CARET character_class_inner RBRACKET, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [23, character → • CHAR, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [24, character → • CHAR_ESCAPE, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_29(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_CHAR_ESCAPE => Shift(yy_state_2)
    T_CHAR => Shift(yy_state_3)
    T_LBRACKET => Shift(yy_state_4)
    T_DOLLAR => Shift(yy_state_15)
    T_DOT => Shift(yy_state_16)
    T_MINUS => Shift(yy_state_17)
    NT_character => Shift(yy_state_18)
    NT_character_class => Shift(yy_state_19)
    T_TOKEN => Shift(yy_state_20)
    T_LPAREN => Shift(yy_state_21)
    NT_primary => Shift(yy_state_24)
    NT_repetition => Shift(yy_state_29)
    NT_concatenation => Shift(yy_state_30)
    T_RPAREN | T_BAR | EOI => Reduce(1, NT_concatenation, yy_action_19)
    _ => Error
  }
}

// [4, concatenation → repetition concatenation •, $ / RPAREN / BAR]
fn yy_state_30(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_concatenation, yy_action_18)
}

// [1, alternation → concatenation •, $ / RPAREN]
// [2, alternation → concatenation • BAR alternation, $ / RPAREN]
fn yy_state_31(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_BAR => Shift(yy_state_32)
    T_RPAREN | EOI => Reduce(1, NT_alternation, yy_action_20)
    _ => Error
  }
}

// [1, alternation → • concatenation, $ / RPAREN]
// [2, alternation → • concatenation BAR alternation, $ / RPAREN]
// [2, alternation → concatenation BAR • alternation, $ / RPAREN]
// [3, concatenation → • repetition, $ / RPAREN / BAR]
// [4, concatenation → • repetition concatenation, $ / RPAREN / BAR]
// [5, repetition → • primary, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
// [6, repetition → • primary STAR, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
// [7, repetition → • primary PLUS, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
// [8, repetition → • primary QUESTION, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
// [9, repetition → • primary REPEAT, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / LPAREN / RPAREN / BAR / TOKEN]
// [10, primary → • LPAREN alternation RPAREN, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [11, primary → • TOKEN, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [12, primary → • character_class, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [13, primary → • character, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [14, primary → • MINUS, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [15, primary → • DOT, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [16, primary → • DOLLAR, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [17, character_class → • LBRACKET character_class_inner RBRACKET, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [18, character_class → • LBRACKET CARET character_class_inner RBRACKET, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [23, character → • CHAR, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
// [24, character → • CHAR_ESCAPE, $ / CHAR / CHAR_ESCAPE / DOT / DOLLAR / LBRACKET / MINUS / STAR / PLUS / QUESTION / REPEAT / LPAREN / RPAREN / BAR / TOKEN]
fn yy_state_32(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_CHAR_ESCAPE => Shift(yy_state_2)
    T_CHAR => Shift(yy_state_3)
    T_LBRACKET => Shift(yy_state_4)
    T_DOLLAR => Shift(yy_state_15)
    T_DOT => Shift(yy_state_16)
    T_MINUS => Shift(yy_state_17)
    NT_character => Shift(yy_state_18)
    NT_character_class => Shift(yy_state_19)
    T_TOKEN => Shift(yy_state_20)
    T_LPAREN => Shift(yy_state_21)
    NT_primary => Shift(yy_state_24)
    NT_repetition => Shift(yy_state_29)
    NT_concatenation => Shift(yy_state_31)
    NT_alternation => Shift(yy_state_33)
    _ => Error
  }
}

// [2, alternation → concatenation BAR alternation •, $ / RPAREN]
fn yy_state_33(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_alternation, yy_action_23)
}

// [0, parse_regex → alternation •, $]
fn yy_state_34(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_parse_regex, yy_action_22)
}

fn[T] yy_parse(
  tokens : Array[(Token, Position, Position)],
  start : YYState,
  return_ : (YYObj) -> T,
  initial_pos? : Position,
) -> T raise ParseError {
  let mut cursor = 0
  let mut state_stack : @list.T[YYState] = @list.construct(start, @list.empty())
  let data_stack : Array[(YYObj, Position, Position)] = []
  let mut last_pos = initial_pos.unwrap_or(tokens[0].1)
  let mut state = start
  let mut lookahead : Option[(YYSymbol, (YYObj, Position, Position), Token?)] = None
  let mut last_shifted_state_stack = state_stack
  while true {
    let decision = match state(EOI) {
      ReduceNoLookahead(_) | Accept as t => t
      _ => {
        match lookahead {
          Some(la) => state(la.0)
          None => {
            if cursor < tokens.length() {
              let (token, start_pos, end_pos) = tokens[cursor]
              cursor += 1
              let (symbol, data) = yy_input(token, start_pos, end_pos)
              lookahead = Some((symbol, (data, start_pos, end_pos), Some(token)))
              state(symbol)
            } else {
              lookahead = Some((EOI, (YYObj_Void, last_pos, last_pos), None))
              state(EOI)
            }
          }
        }
      }
    }
    match decision {
      Accept => return return_(data_stack.unsafe_pop().0)
      Shift(next_state) => {
        guard lookahead is Some(la)
        data_stack.push(la.1)
        state_stack = @list.construct(next_state, state_stack)
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
              state_stack = state_stack.unsafe_tail()
            }
            state = state_stack.unsafe_head()
            data_stack.push((data, start_pos, end_pos))
            match state(symbol) {
              Accept => return return_(data_stack.unsafe_pop().0)
              Shift(next_state) => {
                state_stack = @list.construct(next_state, state_stack)
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
        error(last_shifted_state_stack, token, (start_pos, end_pos))
      }
    }
  }
  panic()
}

fn error(stack : @list.T[YYState], token : Token?, loc : (Position, Position)) -> Unit raise ParseError {
  let expected = []
  fn try_add(symbol : YYSymbol, kind : TokenKind) {
    fn go(stack : @list.T[YYState]) {
      match stack {
        Empty => ()
        More(state, ..) => {
          match state(symbol) {
            Accept | Shift(_) => expected.push(kind)
            Reduce(count, symbol, _) | ReduceNoLookahead(count, symbol, _) => {
              fn inner_go(stack : @list.T[YYState], count, symbol) {
                let stack = stack.drop(count)
                guard stack is More(state, ..)
                match state(symbol) {
                  Shift(state) => go(@list.construct(state, stack))
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
  for term in ([(T_EOF, TK_EOF), (T_CHAR, TK_CHAR), (T_CHAR_ESCAPE, TK_CHAR_ESCAPE), (T_DOT, TK_DOT), (T_DOLLAR, TK_DOLLAR), (T_LBRACKET, TK_LBRACKET), (T_RBRACKET, TK_RBRACKET), (T_CARET, TK_CARET), (T_MINUS, TK_MINUS), (T_STAR, TK_STAR), (T_PLUS, TK_PLUS), (T_QUESTION, TK_QUESTION), (T_REPEAT, TK_REPEAT), (T_LPAREN, TK_LPAREN), (T_RPAREN, TK_RPAREN), (T_BAR, TK_BAR), (T_TOKEN, TK_TOKEN)] : Array[(YYSymbol, TokenKind)]) {
    try_add(term.0, term.1)
  }
  match token {
    None => raise UnexpectedEndOfInput(loc.1, expected)
    Some(token) => raise UnexpectedToken(token, loc, expected)
  }
}

pub fn parse_regex(tokens : Array[(Token, Position, Position)], initial_pos? : Position) -> ((Context) -> Regex) raise ParseError {
  yy_parse(
    tokens,
    yy_state_0,
    (it) => {
      guard it is YYObj__Context_____Regex(result)
      result
    },
    initial_pos?,
  )
}
