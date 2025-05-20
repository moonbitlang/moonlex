
fn mkloc(loc : (Position, Position)) -> Location {
  {start: loc.0, end: loc.1}
}

fn normalize(terms : Array[@ast.Term]) -> Array[@ast.Term] {
  terms
    .iter()
    .flat_map(fn (term) {
      if term is Nested(terms, ..) {
        terms.iter()
      } else {
        Iter::singleton(term)
      }
    })
    .to_array()
    .chunk_by(fn (term1, term2) {
      (term1, term2) is (Code(_), Code(_))
    })
    .map(fn (terms) {
      match terms {
        [Code(_) as c1, .., Code(_) as c2] => {
          Code(loc={start: c1.loc.start, end: c2.loc.end})
        }
        [term] => term
        _ => panic()
      }
    })
}
pub(all) typealias Position = @ast_types.Position

pub type! ParseError {
  UnexpectedToken(Token, (Position, Position), Array[TokenKind])
  UnexpectedEndOfInput(Position, Array[TokenKind])
} derive(Show)

typealias YYObj = Error

priv type! YYObj_Void

priv type! YYObj_Int Int

priv type! YYObj_Bool Bool

priv type! YYObj_Unit Unit

priv type! YYObj_Array__ast_Term_ Array[@ast.Term]

priv type! YYObj_String String

priv type! YYObj_Comment Comment

priv type! YYObj_CharLiteral CharLiteral

priv type! YYObj_InterpLiteral InterpLiteral

priv type! YYObj_StringLiteral StringLiteral

priv type! YYObj__ast_Term @ast.Term

priv type! YYObj__ast_Ident @ast.Ident

priv type! YYObj__ast_Regex @ast.Regex

priv type! YYObj__ast_LexCase @ast.LexCase

priv type! YYObj__ast_Program @ast.Program

priv type! YYObj__ast_LexPatternItem @ast.LexPatternItem

priv type! YYObj__list_T__ast_Term_ @list.T[@ast.Term]

priv type! YYObj__list_T__ast_LexCase_ @list.T[@ast.LexCase]

priv type! YYObj__list_T__ast_LexPatternItem_ @list.T[@ast.LexPatternItem]

priv type! YYObj__Location__Array__ast_Term___Location_ (Location, Array[@ast.Term], Location)

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
  T_CHAR
  T_INT
  T_BYTE
  T_BYTES
  T_FLOAT
  T_STRING
  T_MULTILINE_STRING
  T_MULTILINE_INTERP
  T_INTERP
  T_ATTRIBUTE
  T_LIDENT
  T_UIDENT
  T_LIDENT_LEX
  T_UIDENT_BYTES_REGEX
  T_POST_LABEL
  T_COMMENT
  T_NEWLINE
  T_INFIX1
  T_INFIX2
  T_INFIX3
  T_INFIX4
  T_AUGMENTED_ASSIGNMENT
  T_EOF
  T_FALSE
  T_TRUE
  T_PUB
  T_PRIV
  T_READONLY
  T_IMPORT
  T_EXTERN
  T_BREAK
  T_CONTINUE
  T_STRUCT
  T_ENUM
  T_TRAIT
  T_DERIVE
  T_IMPL
  T_WITH
  T_RAISE
  T_THROW
  T_TRY
  T_CATCH
  T_ASYNC
  T_TYPEALIAS
  T_TRAITALIAS
  T_FNALIAS
  T_EQUAL
  T_LPAREN
  T_RPAREN
  T_COMMA
  T_MINUS
  T_QUESTION
  T_EXCLAMATION
  T_DOT_LIDENT
  T_DOT_UIDENT
  T_DOT_INT
  T_DOT_LPAREN
  T_COLONCOLON
  T_COLON
  T_SEMI
  T_LBRACKET
  T_PLUS
  T_RBRACKET
  T_UNDERSCORE
  T_BAR
  T_LBRACE
  T_RBRACE
  T_AMPERAMPER
  T_AMPER
  T_CARET
  T_BARBAR
  T_PACKAGE_NAME
  T_AS
  T_PIPE
  T_ELSE
  T_FN
  T_IF
  T_LET
  T_CONST
  T_MATCH
  T_MUTABLE
  T_TYPE
  T_FAT_ARROW
  T_THIN_ARROW
  T_WHILE
  T_RETURN
  T_DOTDOT
  T_RANGE_INCLUSIVE
  T_RANGE_EXCLUSIVE
  T_ELLIPSIS
  T_TEST
  T_LOOP
  T_GUARD
  T_FOR
  T_IN
  T_IS
  NT_start
  NT_terms
  NT_term_list
  NT_term
  NT_lex_cases
  NT_lex_case
  NT_regex_pattern
  NT_regex_pattern_item
  NT_regex
  NT_braced_term
  NT_grouped_term
  NT_uident
  NT_lident
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
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_0(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_1(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_2(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_3(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_4(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_5(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 236|    PRIV {}
fn yy_action_6(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_7(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_8(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_9(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_10(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_11(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_12(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_13(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_14(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 253|    TYPEALIAS {}
fn yy_action_15(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 285|    FN {}
fn yy_action_16(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_17(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_18(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 244|    TRAIT {}
fn yy_action_19(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 262|    EXCLAMATION {}
fn yy_action_20(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_21(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_22(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_23(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_24(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_25(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_26(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 231|    AUGMENTED_ASSIGNMENT {}
fn yy_action_1(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_27(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_28(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 274|    BAR {}
fn yy_action_29(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 282|    AS {}
fn yy_action_30(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 291|    TYPE {}
fn yy_action_31(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 243|    ENUM {}
fn yy_action_32(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 185|    regex "as" lident { RegexAs($1, $3, loc=mkloc($sloc)) }
fn yy_action_33(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__ast_Regex(_dollar1)
  guard _args[2].0 is YYObj__ast_Ident(_dollar3)
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_LexPatternItem({();  RegexAs(_dollar1, _dollar3, loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 289|    MATCH {}
fn yy_action_34(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_35(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_36(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 179|    regex_pattern_item { @list.singleton($1) }
fn yy_action_37(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__ast_LexPatternItem(_dollar1)
  YYObj__list_T__ast_LexPatternItem_({();  @list.singleton(_dollar1) })
}

// file:///./parser.mbty
// 219|    ATTRIBUTE {}
fn yy_action_38(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_39(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_40(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_41(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_42(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_43(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_44(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 273|    UNDERSCORE {}
fn yy_action_44(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 252|    ASYNC {}
fn yy_action_45(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_46(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_47(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 301|    LOOP {}
fn yy_action_10(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 304|    IN {}
fn yy_action_48(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_49(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_50(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 286|    IF {}
fn yy_action_24(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 251|    CATCH {}
fn yy_action_47(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_51(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_48(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_52(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_53(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 205|    "{" terms "}" { (mkloc($loc($1)), $2, mkloc($loc($3))) }
fn yy_action_54(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _start_pos_of_item0 = _args[0].1
  let _end_pos_of_item0 = _args[0].2
  guard _args[1].0 is YYObj_Array__ast_Term_(_dollar2)
  let _start_pos_of_item2 = _args[2].1
  let _end_pos_of_item2 = _args[2].2
  YYObj__Location__Array__ast_Term___Location_({();  (mkloc((_start_pos_of_item0, _end_pos_of_item0)), _dollar2, mkloc((_start_pos_of_item2, _end_pos_of_item2))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_55(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_15(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 175|    regex_pattern "=>" braced_term { {pattern: $1.to_array(), action: $3, loc: mkloc($sloc)} }
fn yy_action_56(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__list_T__ast_LexPatternItem_(_dollar1)
  guard _args[2].0 is YYObj__ast_Term(_dollar3)
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_LexCase({();  {pattern: _dollar1.to_array(), action: _dollar3, loc: mkloc((_symbol_start_pos, _end_pos))} })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_57(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_58(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 151|    { @list.empty() }
fn yy_action_59(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj__list_T__ast_Term_({();  @list.empty() })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_60(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_61(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 238|    IMPORT {}
fn yy_action_62(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 269|    SEMI {}
fn yy_action_63(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 235|    PUB {}
fn yy_action_64(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 299|    ELLIPSIS {}
fn yy_action_65(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 292|    FAT_ARROW {}
fn yy_action_66(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_67(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_68(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 189|    STRING { Literal($1, loc=mkloc($sloc)) }
fn yy_action_69(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_StringLiteral(_dollar1)
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Regex({();  Literal(_dollar1, loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_70(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_38(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_71(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_62(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_72(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_73(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_74(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_75(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 237|    READONLY {}
fn yy_action_76(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_77(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_78(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 147|    term_list { normalize($1.to_array()) }
fn yy_action_79(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__list_T__ast_Term_(_dollar1)
  YYObj_Array__ast_Term_({();  normalize(_dollar1.to_array()) })
}

// file:///./parser.mbty
// 265|    DOT_INT {}
fn yy_action_80(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 284|    ELSE {}
fn yy_action_81(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 240|    BREAK {}
fn yy_action_82(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_83(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_29(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 220|    LIDENT {}
fn yy_action_84(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_85(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_86(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_87(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_76(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 260|    MINUS {}
fn yy_action_88(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_89(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_63(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 264|    DOT_UIDENT {}
fn yy_action_53(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 247|    WITH {}
fn yy_action_90(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_91(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_92(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 180|    regex_pattern_item "," regex_pattern { @list.prepend($3, $1) }
fn yy_action_93(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj__list_T__ast_LexPatternItem_(_dollar3)
  guard _args[0].0 is YYObj__ast_LexPatternItem(_dollar1)
  YYObj__list_T__ast_LexPatternItem_({();  @list.prepend(_dollar3, _dollar1) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_94(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_95(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 287|    LET {}
fn yy_action_18(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 242|    STRUCT {}
fn yy_action_96(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_97(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_98(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_99(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_100(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 215|    STRING {}
fn yy_action_5(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 191|    uident { Named($1) }
fn yy_action_101(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__ast_Ident(_dollar1)
  YYObj__ast_Regex({();  Named(_dollar1) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_102(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_32(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 212|    BYTE {}
fn yy_action_103(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_104(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_31(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 170|    lex_case ";" { @list.singleton($1) }
fn yy_action_105(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__ast_LexCase(_dollar1)
  YYObj__list_T__ast_LexCase_({();  @list.singleton(_dollar1) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_106(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_107(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_108(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_45(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 169|    lex_case { @list.singleton($1) }
fn yy_action_109(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__ast_LexCase(_dollar1)
  YYObj__list_T__ast_LexCase_({();  @list.singleton(_dollar1) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_110(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_20(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 234|    TRUE {}
fn yy_action_50(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 216|    MULTILINE_STRING {}
fn yy_action_111(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 267|    COLONCOLON {}
fn yy_action_26(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 222|    LIDENT_LEX {}
fn yy_action_112(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 280|    BARBAR {}
fn yy_action_113(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 152|    term term_list { @list.prepend($2, $1) }
fn yy_action_114(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj__list_T__ast_Term_(_dollar2)
  guard _args[0].0 is YYObj__ast_Term(_dollar1)
  YYObj__list_T__ast_Term_({();  @list.prepend(_dollar2, _dollar1) })
}

// file:///./parser.mbty
// 214|    FLOAT {}
fn yy_action_98(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_115(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_116(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 232|    EOF {}
fn yy_action_73(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 239|    EXTERN {}
fn yy_action_117(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_118(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_6(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 224|    POST_LABEL {}
fn yy_action_119(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 283|    PIPE {}
fn yy_action_28(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_120(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_121(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 302|    GUARD {}
fn yy_action_122(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 204|    "(" terms ")" { (mkloc($loc($1)), $2, mkloc($loc($3))) }
fn yy_action_123(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _start_pos_of_item0 = _args[0].1
  let _end_pos_of_item0 = _args[0].2
  guard _args[1].0 is YYObj_Array__ast_Term_(_dollar2)
  let _start_pos_of_item2 = _args[2].1
  let _end_pos_of_item2 = _args[2].2
  YYObj__Location__Array__ast_Term___Location_({();  (mkloc((_start_pos_of_item0, _end_pos_of_item0)), _dollar2, mkloc((_start_pos_of_item2, _end_pos_of_item2))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_124(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_125(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_126(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_127(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 190|    INTERP { Interp($1, loc=mkloc($sloc)) }
fn yy_action_128(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_InterpLiteral(_dollar1)
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Regex({();  Interp(_dollar1, loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_129(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_122(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_130(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_96(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 184|    regex { Regex($1) }
fn yy_action_131(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__ast_Regex(_dollar1)
  YYObj__ast_LexPatternItem({();  Regex(_dollar1) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_132(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_34(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 225|    COMMENT {}
fn yy_action_133(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 281|    PACKAGE_NAME {}
fn yy_action_134(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 298|    RANGE_EXCLUSIVE {}
fn yy_action_135(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 305|    IS {}
fn yy_action_95(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 261|    QUESTION {}
fn yy_action_136(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_137(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_138(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 294|    WHILE {}
fn yy_action_139(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_140(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_141(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 293|    THIN_ARROW {}
fn yy_action_8(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 143|    terms { {body: $1, loc: mkloc($sloc)} }
fn yy_action_142(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array__ast_Term_(_dollar1)
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Program({();  {body: _dollar1, loc: mkloc((_symbol_start_pos, _end_pos))} })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_143(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_144(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 271|    PLUS {}
fn yy_action_12(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 256|    EQUAL {}
fn yy_action_107(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 254|    TRAITALIAS {}
fn yy_action_92(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_145(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_84(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_146(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_147(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_148(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_119(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_149(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_66(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_150(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_30(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_151(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_152(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_153(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_133(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 227|    INFIX1 {}
fn yy_action_141(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_154(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_111(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_155(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_156(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 206|    "[" terms "]" { (mkloc($loc($1)), $2, mkloc($loc($3))) }
fn yy_action_157(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _start_pos_of_item0 = _args[0].1
  let _end_pos_of_item0 = _args[0].2
  guard _args[1].0 is YYObj_Array__ast_Term_(_dollar2)
  let _start_pos_of_item2 = _args[2].1
  let _end_pos_of_item2 = _args[2].2
  YYObj__Location__Array__ast_Term___Location_({();  (mkloc((_start_pos_of_item0, _end_pos_of_item0)), _dollar2, mkloc((_start_pos_of_item2, _end_pos_of_item2))) })
}

// file:///./parser.mbty
// 213|    BYTES {}
fn yy_action_158(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 266|    DOT_LPAREN {}
fn yy_action_152(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_159(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_160(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_161(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_139(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_162(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_163(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_164(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_82(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 249|    THROW {}
fn yy_action_42(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 279|    CARET {}
fn yy_action_86(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_165(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_166(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 229|    INFIX3 {}
fn yy_action_75(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 277|    AMPERAMPER {}
fn yy_action_36(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_167(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_136(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 290|    MUTABLE {}
fn yy_action_168(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 241|    CONTINUE {}
fn yy_action_169(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_170(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_88(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_171(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_158(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 230|    INFIX4 {}
fn yy_action_40(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 288|    CONST {}
fn yy_action_121(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 217|    MULTILINE_INTERP {}
fn yy_action_78(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 303|    FOR {}
fn yy_action_138(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 313|    LIDENT { {name: $1, loc: mkloc($sloc)} }
fn yy_action_172(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Ident({();  {name: _dollar1, loc: mkloc((_symbol_start_pos, _end_pos))} })
}

// file:///./parser.mbty
// 195|    "{" terms "}" { 
// 196|    match normalize([Code(loc=mkloc($loc($1))), ..$2, Code(loc=mkloc($loc($3)))]) {
// 197|      [Code(_)] => Code(loc=mkloc($sloc))
// 198|      terms => Nested(terms, loc=mkloc($sloc))
// 199|    }
// 200|  }
fn yy_action_173(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _start_pos_of_item0 = _args[0].1
  let _end_pos_of_item0 = _args[0].2
  guard _args[1].0 is YYObj_Array__ast_Term_(_dollar2)
  let _start_pos_of_item2 = _args[2].1
  let _end_pos_of_item2 = _args[2].2
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  
    match normalize([Code(loc=mkloc((_start_pos_of_item0, _end_pos_of_item0))), .._dollar2, Code(loc=mkloc((_start_pos_of_item2, _end_pos_of_item2)))]) {
      [Code(_)] => Code(loc=mkloc((_symbol_start_pos, _end_pos)))
      terms => Nested(terms, loc=mkloc((_symbol_start_pos, _end_pos)))
    }
  })
}

// file:///./parser.mbty
// 156|    "const" uident ":" "BytesRegex" "=" regex ";" %prec prec_HIGHEST { NamedRegex($2, $6, loc=mkloc($sloc)) }
fn yy_action_174(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj__ast_Ident(_dollar2)
  guard _args[5].0 is YYObj__ast_Regex(_dollar6)
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  NamedRegex(_dollar2, _dollar6, loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_175(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_169(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 300|    TEST {}
fn yy_action_127(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 171|    lex_case ";" lex_cases { @list.prepend($3, $1) }
fn yy_action_176(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj__list_T__ast_LexCase_(_dollar3)
  guard _args[0].0 is YYObj__ast_LexCase(_dollar1)
  YYObj__list_T__ast_LexCase_({();  @list.prepend(_dollar3, _dollar1) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_177(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_90(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_178(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_80(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 268|    COLON {}
fn yy_action_156(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 157|    "lex" lident "{" lex_cases "}" { LexDef($2, $4.to_array(), loc=mkloc($sloc)) }
fn yy_action_179(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj__ast_Ident(_dollar2)
  guard _args[3].0 is YYObj__list_T__ast_LexCase_(_dollar4)
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  LexDef(_dollar2, _dollar4.to_array(), loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 259|    COMMA {}
fn yy_action_3(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_180(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_181(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 233|    FALSE {}
fn yy_action_61(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_182(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_16(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 263|    DOT_LIDENT {}
fn yy_action_14(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 228|    INFIX2 {}
fn yy_action_68(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_183(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_81(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 250|    TRY {}
fn yy_action_184(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 246|    IMPL {}
fn yy_action_185(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 295|    RETURN {}
fn yy_action_144(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_186(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_65(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_187(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_168(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_188(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_64(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 278|    AMPER {}
fn yy_action_22(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 210|    CHAR {}
fn yy_action_116(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_189(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_134(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 296|    DOTDOT {}
fn yy_action_160(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_190(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_103(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 211|    INT {}
fn yy_action_191(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_192(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_135(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_193(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_19(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 218|    INTERP {}
fn yy_action_147(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_194(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_195(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 221|    UIDENT {}
fn yy_action_195(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 309|    UIDENT { {name: $1, loc: mkloc($sloc)} }
fn yy_action_196(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Ident({();  {name: _dollar1, loc: mkloc((_symbol_start_pos, _end_pos))} })
}

// file:///./parser.mbty
// 248|    RAISE {}
fn yy_action_163(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 159|    grouped_term {
// 160|    let (loc1, terms, loc2) = $1
// 161|    match normalize([Code(loc=loc1), ..terms, Code(loc=loc2)]) {
// 162|      [Code(_)] => Code(loc=mkloc($sloc))
// 163|      terms => Nested(terms, loc=mkloc($sloc))
// 164|    }
// 165|  }
fn yy_action_197(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__Location__Array__ast_Term___Location_(_dollar1)
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({(); 
    let (loc1, terms, loc2) = _dollar1
    match normalize([Code(loc=loc1), ..terms, Code(loc=loc2)]) {
      [Code(_)] => Code(loc=mkloc((_symbol_start_pos, _end_pos)))
      terms => Nested(terms, loc=mkloc((_symbol_start_pos, _end_pos)))
    }
  })
}

// file:///./parser.mbty
// 226|    NEWLINE {}
fn yy_action_100(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_198(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_117(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_199(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_113(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 245|    DERIVE {}
fn yy_action_125(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_200(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_185(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_201(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_184(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 255|    FNALIAS {}
fn yy_action_58(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 297|    RANGE_INCLUSIVE {}
fn yy_action_166(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_202(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_191(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

// file:///./parser.mbty
// 223|    UIDENT_BYTES_REGEX {}
fn yy_action_181(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Unit({(); })
}

// file:///./parser.mbty
// 158|    simple_term { Code(loc=mkloc($sloc)) }
fn yy_action_203(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  let _sub_action_0_result = yy_action_112(_last_pos, _args[0:1])
  let _symbol_start_pos = _get_symbol_start_pos(_args, _last_pos)
  let _end_pos = if _args.length() == 0 { _last_pos } else { _args[_args.length() - 1].2 }
  YYObj__ast_Term({();  Code(loc=mkloc((_symbol_start_pos, _end_pos))) })
}

fn yy_input(token : Token, _start_pos : Position, _end_pos : Position) -> (YYSymbol, YYObj) {
  match token {
    CHAR(data) => (T_CHAR, YYObj_CharLiteral(data))
    INT(data) => (T_INT, YYObj_String(data))
    BYTE(data) => (T_BYTE, YYObj_CharLiteral(data))
    BYTES(data) => (T_BYTES, YYObj_StringLiteral(data))
    FLOAT(data) => (T_FLOAT, YYObj_String(data))
    STRING(data) => (T_STRING, YYObj_StringLiteral(data))
    MULTILINE_STRING(data) => (T_MULTILINE_STRING, YYObj_String(data))
    MULTILINE_INTERP(data) => (T_MULTILINE_INTERP, YYObj_InterpLiteral(data))
    INTERP(data) => (T_INTERP, YYObj_InterpLiteral(data))
    ATTRIBUTE(data) => (T_ATTRIBUTE, YYObj_String(data))
    LIDENT(data) => (T_LIDENT, YYObj_String(data))
    UIDENT(data) => (T_UIDENT, YYObj_String(data))
    LIDENT_LEX => (T_LIDENT_LEX, YYObj_Void)
    UIDENT_BYTES_REGEX => (T_UIDENT_BYTES_REGEX, YYObj_Void)
    POST_LABEL(data) => (T_POST_LABEL, YYObj_String(data))
    COMMENT(data) => (T_COMMENT, YYObj_Comment(data))
    NEWLINE => (T_NEWLINE, YYObj_Void)
    INFIX1(data) => (T_INFIX1, YYObj_String(data))
    INFIX2(data) => (T_INFIX2, YYObj_String(data))
    INFIX3(data) => (T_INFIX3, YYObj_String(data))
    INFIX4(data) => (T_INFIX4, YYObj_String(data))
    AUGMENTED_ASSIGNMENT(data) => (T_AUGMENTED_ASSIGNMENT, YYObj_String(data))
    EOF => (T_EOF, YYObj_Void)
    FALSE => (T_FALSE, YYObj_Void)
    TRUE => (T_TRUE, YYObj_Void)
    PUB => (T_PUB, YYObj_Void)
    PRIV => (T_PRIV, YYObj_Void)
    READONLY => (T_READONLY, YYObj_Void)
    IMPORT => (T_IMPORT, YYObj_Void)
    EXTERN => (T_EXTERN, YYObj_Void)
    BREAK => (T_BREAK, YYObj_Void)
    CONTINUE => (T_CONTINUE, YYObj_Void)
    STRUCT => (T_STRUCT, YYObj_Void)
    ENUM => (T_ENUM, YYObj_Void)
    TRAIT => (T_TRAIT, YYObj_Void)
    DERIVE => (T_DERIVE, YYObj_Void)
    IMPL => (T_IMPL, YYObj_Void)
    WITH => (T_WITH, YYObj_Void)
    RAISE => (T_RAISE, YYObj_Void)
    THROW => (T_THROW, YYObj_Void)
    TRY => (T_TRY, YYObj_Void)
    CATCH => (T_CATCH, YYObj_Void)
    ASYNC => (T_ASYNC, YYObj_Void)
    TYPEALIAS => (T_TYPEALIAS, YYObj_Void)
    TRAITALIAS => (T_TRAITALIAS, YYObj_Void)
    FNALIAS => (T_FNALIAS, YYObj_Void)
    EQUAL => (T_EQUAL, YYObj_Void)
    LPAREN => (T_LPAREN, YYObj_Void)
    RPAREN => (T_RPAREN, YYObj_Void)
    COMMA => (T_COMMA, YYObj_Void)
    MINUS => (T_MINUS, YYObj_Void)
    QUESTION => (T_QUESTION, YYObj_Void)
    EXCLAMATION => (T_EXCLAMATION, YYObj_Void)
    DOT_LIDENT(data) => (T_DOT_LIDENT, YYObj_String(data))
    DOT_UIDENT(data) => (T_DOT_UIDENT, YYObj_String(data))
    DOT_INT(data) => (T_DOT_INT, YYObj_Int(data))
    DOT_LPAREN => (T_DOT_LPAREN, YYObj_Void)
    COLONCOLON => (T_COLONCOLON, YYObj_Void)
    COLON => (T_COLON, YYObj_Void)
    SEMI(data) => (T_SEMI, YYObj_Bool(data))
    LBRACKET => (T_LBRACKET, YYObj_Void)
    PLUS => (T_PLUS, YYObj_Void)
    RBRACKET => (T_RBRACKET, YYObj_Void)
    UNDERSCORE => (T_UNDERSCORE, YYObj_Void)
    BAR => (T_BAR, YYObj_Void)
    LBRACE => (T_LBRACE, YYObj_Void)
    RBRACE => (T_RBRACE, YYObj_Void)
    AMPERAMPER => (T_AMPERAMPER, YYObj_Void)
    AMPER => (T_AMPER, YYObj_Void)
    CARET => (T_CARET, YYObj_Void)
    BARBAR => (T_BARBAR, YYObj_Void)
    PACKAGE_NAME(data) => (T_PACKAGE_NAME, YYObj_String(data))
    AS => (T_AS, YYObj_Void)
    PIPE => (T_PIPE, YYObj_Void)
    ELSE => (T_ELSE, YYObj_Void)
    FN => (T_FN, YYObj_Void)
    IF => (T_IF, YYObj_Void)
    LET => (T_LET, YYObj_Void)
    CONST => (T_CONST, YYObj_Void)
    MATCH => (T_MATCH, YYObj_Void)
    MUTABLE => (T_MUTABLE, YYObj_Void)
    TYPE => (T_TYPE, YYObj_Void)
    FAT_ARROW => (T_FAT_ARROW, YYObj_Void)
    THIN_ARROW => (T_THIN_ARROW, YYObj_Void)
    WHILE => (T_WHILE, YYObj_Void)
    RETURN => (T_RETURN, YYObj_Void)
    DOTDOT => (T_DOTDOT, YYObj_Void)
    RANGE_INCLUSIVE => (T_RANGE_INCLUSIVE, YYObj_Void)
    RANGE_EXCLUSIVE => (T_RANGE_EXCLUSIVE, YYObj_Void)
    ELLIPSIS => (T_ELLIPSIS, YYObj_Void)
    TEST => (T_TEST, YYObj_Void)
    LOOP => (T_LOOP, YYObj_Void)
    GUARD => (T_GUARD, YYObj_Void)
    FOR => (T_FOR, YYObj_Void)
    IN => (T_IN, YYObj_Void)
    IS => (T_IS, YYObj_Void)
  }
}

// [0, start → • terms, $]
// [1, terms → • term_list, $]
// [2, term_list → •, $]
// [3, term_list → • term term_list, $]
// [4, term → • CONST uident COLON UIDENT_BYTES_REGEX EQUAL regex SEMI, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [5, term → • LIDENT_LEX lident LBRACE lex_cases RBRACE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [6, term → • CHAR, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [7, term → • INT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [8, term → • BYTE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [9, term → • BYTES, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [10, term → • FLOAT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [11, term → • STRING, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [12, term → • MULTILINE_STRING, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [13, term → • MULTILINE_INTERP, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [14, term → • INTERP, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [15, term → • ATTRIBUTE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [16, term → • LIDENT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [17, term → • UIDENT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [18, term → • LIDENT_LEX, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [19, term → • UIDENT_BYTES_REGEX, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [20, term → • POST_LABEL, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [21, term → • COMMENT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [22, term → • NEWLINE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [23, term → • INFIX1, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [24, term → • INFIX2, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [25, term → • INFIX3, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [26, term → • INFIX4, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [27, term → • AUGMENTED_ASSIGNMENT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [28, term → • EOF, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [29, term → • FALSE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [30, term → • TRUE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [31, term → • PUB, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [32, term → • PRIV, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [33, term → • READONLY, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [34, term → • IMPORT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [35, term → • EXTERN, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [36, term → • BREAK, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [37, term → • CONTINUE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [38, term → • STRUCT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [39, term → • ENUM, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [40, term → • TRAIT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [41, term → • DERIVE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [42, term → • IMPL, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [43, term → • WITH, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [44, term → • RAISE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [45, term → • THROW, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [46, term → • TRY, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [47, term → • CATCH, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [48, term → • ASYNC, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [49, term → • TYPEALIAS, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [50, term → • TRAITALIAS, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [51, term → • FNALIAS, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [52, term → • EQUAL, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [53, term → • COMMA, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [54, term → • MINUS, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [55, term → • QUESTION, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [56, term → • EXCLAMATION, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [57, term → • DOT_LIDENT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [58, term → • DOT_UIDENT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [59, term → • DOT_INT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [60, term → • DOT_LPAREN, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [61, term → • COLONCOLON, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [62, term → • COLON, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [63, term → • SEMI, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [64, term → • PLUS, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [65, term → • UNDERSCORE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [66, term → • BAR, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [67, term → • AMPERAMPER, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [68, term → • AMPER, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [69, term → • CARET, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [70, term → • BARBAR, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [71, term → • PACKAGE_NAME, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [72, term → • AS, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [73, term → • PIPE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [74, term → • ELSE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [75, term → • FN, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [76, term → • IF, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [77, term → • LET, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [78, term → • CONST, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [79, term → • MATCH, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [80, term → • MUTABLE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [81, term → • TYPE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [82, term → • FAT_ARROW, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [83, term → • THIN_ARROW, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [84, term → • WHILE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [85, term → • RETURN, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [86, term → • DOTDOT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [87, term → • RANGE_INCLUSIVE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [88, term → • RANGE_EXCLUSIVE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [89, term → • ELLIPSIS, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [90, term → • TEST, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [91, term → • LOOP, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [92, term → • GUARD, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [93, term → • FOR, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [94, term → • IN, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [95, term → • IS, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [96, term → • grouped_term, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [109, grouped_term → • LPAREN terms RPAREN, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [110, grouped_term → • LBRACE terms RBRACE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [111, grouped_term → • LBRACKET terms RBRACKET, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [114, start_prime → • start, $]
fn yy_state_0(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    NT_start => Shift(yy_state_1)
    T_LBRACKET => Shift(yy_state_2)
    T_LBRACE => Shift(yy_state_5)
    T_LPAREN => Shift(yy_state_8)
    NT_grouped_term => Shift(yy_state_11)
    T_IS => Shift(yy_state_12)
    T_IN => Shift(yy_state_13)
    T_FOR => Shift(yy_state_14)
    T_GUARD => Shift(yy_state_15)
    T_LOOP => Shift(yy_state_16)
    T_TEST => Shift(yy_state_17)
    T_ELLIPSIS => Shift(yy_state_18)
    T_RANGE_EXCLUSIVE => Shift(yy_state_19)
    T_RANGE_INCLUSIVE => Shift(yy_state_20)
    T_DOTDOT => Shift(yy_state_21)
    T_RETURN => Shift(yy_state_22)
    T_WHILE => Shift(yy_state_23)
    T_THIN_ARROW => Shift(yy_state_24)
    T_FAT_ARROW => Shift(yy_state_25)
    T_TYPE => Shift(yy_state_26)
    T_MUTABLE => Shift(yy_state_27)
    T_MATCH => Shift(yy_state_28)
    T_LET => Shift(yy_state_29)
    T_IF => Shift(yy_state_30)
    T_FN => Shift(yy_state_31)
    T_ELSE => Shift(yy_state_32)
    T_PIPE => Shift(yy_state_33)
    T_AS => Shift(yy_state_34)
    T_PACKAGE_NAME => Shift(yy_state_35)
    T_BARBAR => Shift(yy_state_36)
    T_CARET => Shift(yy_state_37)
    T_AMPER => Shift(yy_state_38)
    T_AMPERAMPER => Shift(yy_state_39)
    T_BAR => Shift(yy_state_40)
    T_UNDERSCORE => Shift(yy_state_41)
    T_PLUS => Shift(yy_state_42)
    T_SEMI => Shift(yy_state_43)
    T_COLON => Shift(yy_state_44)
    T_COLONCOLON => Shift(yy_state_45)
    T_DOT_LPAREN => Shift(yy_state_46)
    T_DOT_INT => Shift(yy_state_47)
    T_DOT_UIDENT => Shift(yy_state_48)
    T_DOT_LIDENT => Shift(yy_state_49)
    T_EXCLAMATION => Shift(yy_state_50)
    T_QUESTION => Shift(yy_state_51)
    T_MINUS => Shift(yy_state_52)
    T_COMMA => Shift(yy_state_53)
    T_EQUAL => Shift(yy_state_54)
    T_FNALIAS => Shift(yy_state_55)
    T_TRAITALIAS => Shift(yy_state_56)
    T_TYPEALIAS => Shift(yy_state_57)
    T_ASYNC => Shift(yy_state_58)
    T_CATCH => Shift(yy_state_59)
    T_TRY => Shift(yy_state_60)
    T_THROW => Shift(yy_state_61)
    T_RAISE => Shift(yy_state_62)
    T_WITH => Shift(yy_state_63)
    T_IMPL => Shift(yy_state_64)
    T_DERIVE => Shift(yy_state_65)
    T_TRAIT => Shift(yy_state_66)
    T_ENUM => Shift(yy_state_67)
    T_STRUCT => Shift(yy_state_68)
    T_CONTINUE => Shift(yy_state_69)
    T_BREAK => Shift(yy_state_70)
    T_EXTERN => Shift(yy_state_71)
    T_IMPORT => Shift(yy_state_72)
    T_READONLY => Shift(yy_state_73)
    T_PRIV => Shift(yy_state_74)
    T_PUB => Shift(yy_state_75)
    T_TRUE => Shift(yy_state_76)
    T_FALSE => Shift(yy_state_77)
    T_EOF => Shift(yy_state_78)
    T_AUGMENTED_ASSIGNMENT => Shift(yy_state_79)
    T_INFIX4 => Shift(yy_state_80)
    T_INFIX3 => Shift(yy_state_81)
    T_INFIX2 => Shift(yy_state_82)
    T_INFIX1 => Shift(yy_state_83)
    T_NEWLINE => Shift(yy_state_84)
    T_COMMENT => Shift(yy_state_85)
    T_POST_LABEL => Shift(yy_state_86)
    T_UIDENT_BYTES_REGEX => Shift(yy_state_87)
    T_UIDENT => Shift(yy_state_88)
    T_LIDENT => Shift(yy_state_89)
    T_ATTRIBUTE => Shift(yy_state_90)
    T_INTERP => Shift(yy_state_91)
    T_MULTILINE_INTERP => Shift(yy_state_92)
    T_MULTILINE_STRING => Shift(yy_state_93)
    T_STRING => Shift(yy_state_94)
    T_FLOAT => Shift(yy_state_95)
    T_BYTES => Shift(yy_state_96)
    T_BYTE => Shift(yy_state_97)
    T_INT => Shift(yy_state_98)
    T_CHAR => Shift(yy_state_99)
    T_LIDENT_LEX => Shift(yy_state_100)
    T_CONST => Shift(yy_state_119)
    NT_term => Shift(yy_state_126)
    NT_term_list => Shift(yy_state_128)
    NT_terms => Shift(yy_state_135)
    EOI => Reduce(0, NT_term_list, yy_action_59)
    _ => Error
  }
}

// [114, start_prime → start •, $]
fn yy_state_1(_lookahead : YYSymbol) -> YYDecision {
  Accept
}

// [1, terms → • term_list, RBRACKET]
// [2, term_list → •, RBRACKET]
// [3, term_list → • term term_list, RBRACKET]
// [4, term → • CONST uident COLON UIDENT_BYTES_REGEX EQUAL regex SEMI, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [5, term → • LIDENT_LEX lident LBRACE lex_cases RBRACE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [6, term → • CHAR, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [7, term → • INT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [8, term → • BYTE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [9, term → • BYTES, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [10, term → • FLOAT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [11, term → • STRING, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [12, term → • MULTILINE_STRING, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [13, term → • MULTILINE_INTERP, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [14, term → • INTERP, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [15, term → • ATTRIBUTE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [16, term → • LIDENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [17, term → • UIDENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [18, term → • LIDENT_LEX, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [19, term → • UIDENT_BYTES_REGEX, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [20, term → • POST_LABEL, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [21, term → • COMMENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [22, term → • NEWLINE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [23, term → • INFIX1, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [24, term → • INFIX2, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [25, term → • INFIX3, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [26, term → • INFIX4, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [27, term → • AUGMENTED_ASSIGNMENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [28, term → • EOF, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [29, term → • FALSE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [30, term → • TRUE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [31, term → • PUB, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [32, term → • PRIV, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [33, term → • READONLY, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [34, term → • IMPORT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [35, term → • EXTERN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [36, term → • BREAK, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [37, term → • CONTINUE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [38, term → • STRUCT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [39, term → • ENUM, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [40, term → • TRAIT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [41, term → • DERIVE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [42, term → • IMPL, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [43, term → • WITH, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [44, term → • RAISE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [45, term → • THROW, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [46, term → • TRY, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [47, term → • CATCH, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [48, term → • ASYNC, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [49, term → • TYPEALIAS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [50, term → • TRAITALIAS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [51, term → • FNALIAS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [52, term → • EQUAL, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [53, term → • COMMA, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [54, term → • MINUS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [55, term → • QUESTION, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [56, term → • EXCLAMATION, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [57, term → • DOT_LIDENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [58, term → • DOT_UIDENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [59, term → • DOT_INT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [60, term → • DOT_LPAREN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [61, term → • COLONCOLON, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [62, term → • COLON, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [63, term → • SEMI, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [64, term → • PLUS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [65, term → • UNDERSCORE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [66, term → • BAR, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [67, term → • AMPERAMPER, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [68, term → • AMPER, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [69, term → • CARET, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [70, term → • BARBAR, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [71, term → • PACKAGE_NAME, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [72, term → • AS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [73, term → • PIPE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [74, term → • ELSE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [75, term → • FN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [76, term → • IF, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [77, term → • LET, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [78, term → • CONST, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [79, term → • MATCH, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [80, term → • MUTABLE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [81, term → • TYPE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [82, term → • FAT_ARROW, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [83, term → • THIN_ARROW, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [84, term → • WHILE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [85, term → • RETURN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [86, term → • DOTDOT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [87, term → • RANGE_INCLUSIVE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [88, term → • RANGE_EXCLUSIVE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [89, term → • ELLIPSIS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [90, term → • TEST, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [91, term → • LOOP, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [92, term → • GUARD, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [93, term → • FOR, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [94, term → • IN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [95, term → • IS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [96, term → • grouped_term, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [109, grouped_term → • LPAREN terms RPAREN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [110, grouped_term → • LBRACE terms RBRACE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [111, grouped_term → • LBRACKET terms RBRACKET, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [111, grouped_term → LBRACKET • terms RBRACKET, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_2(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_terms => Shift(yy_state_3)
    T_LBRACE => Shift(yy_state_5)
    T_LPAREN => Shift(yy_state_8)
    NT_grouped_term => Shift(yy_state_11)
    T_IS => Shift(yy_state_12)
    T_IN => Shift(yy_state_13)
    T_FOR => Shift(yy_state_14)
    T_GUARD => Shift(yy_state_15)
    T_LOOP => Shift(yy_state_16)
    T_TEST => Shift(yy_state_17)
    T_ELLIPSIS => Shift(yy_state_18)
    T_RANGE_EXCLUSIVE => Shift(yy_state_19)
    T_RANGE_INCLUSIVE => Shift(yy_state_20)
    T_DOTDOT => Shift(yy_state_21)
    T_RETURN => Shift(yy_state_22)
    T_WHILE => Shift(yy_state_23)
    T_THIN_ARROW => Shift(yy_state_24)
    T_FAT_ARROW => Shift(yy_state_25)
    T_TYPE => Shift(yy_state_26)
    T_MUTABLE => Shift(yy_state_27)
    T_MATCH => Shift(yy_state_28)
    T_LET => Shift(yy_state_29)
    T_IF => Shift(yy_state_30)
    T_FN => Shift(yy_state_31)
    T_ELSE => Shift(yy_state_32)
    T_PIPE => Shift(yy_state_33)
    T_AS => Shift(yy_state_34)
    T_PACKAGE_NAME => Shift(yy_state_35)
    T_BARBAR => Shift(yy_state_36)
    T_CARET => Shift(yy_state_37)
    T_AMPER => Shift(yy_state_38)
    T_AMPERAMPER => Shift(yy_state_39)
    T_BAR => Shift(yy_state_40)
    T_UNDERSCORE => Shift(yy_state_41)
    T_PLUS => Shift(yy_state_42)
    T_SEMI => Shift(yy_state_43)
    T_COLON => Shift(yy_state_44)
    T_COLONCOLON => Shift(yy_state_45)
    T_DOT_LPAREN => Shift(yy_state_46)
    T_DOT_INT => Shift(yy_state_47)
    T_DOT_UIDENT => Shift(yy_state_48)
    T_DOT_LIDENT => Shift(yy_state_49)
    T_EXCLAMATION => Shift(yy_state_50)
    T_QUESTION => Shift(yy_state_51)
    T_MINUS => Shift(yy_state_52)
    T_COMMA => Shift(yy_state_53)
    T_EQUAL => Shift(yy_state_54)
    T_FNALIAS => Shift(yy_state_55)
    T_TRAITALIAS => Shift(yy_state_56)
    T_TYPEALIAS => Shift(yy_state_57)
    T_ASYNC => Shift(yy_state_58)
    T_CATCH => Shift(yy_state_59)
    T_TRY => Shift(yy_state_60)
    T_THROW => Shift(yy_state_61)
    T_RAISE => Shift(yy_state_62)
    T_WITH => Shift(yy_state_63)
    T_IMPL => Shift(yy_state_64)
    T_DERIVE => Shift(yy_state_65)
    T_TRAIT => Shift(yy_state_66)
    T_ENUM => Shift(yy_state_67)
    T_STRUCT => Shift(yy_state_68)
    T_CONTINUE => Shift(yy_state_69)
    T_BREAK => Shift(yy_state_70)
    T_EXTERN => Shift(yy_state_71)
    T_IMPORT => Shift(yy_state_72)
    T_READONLY => Shift(yy_state_73)
    T_PRIV => Shift(yy_state_74)
    T_PUB => Shift(yy_state_75)
    T_TRUE => Shift(yy_state_76)
    T_FALSE => Shift(yy_state_77)
    T_EOF => Shift(yy_state_78)
    T_AUGMENTED_ASSIGNMENT => Shift(yy_state_79)
    T_INFIX4 => Shift(yy_state_80)
    T_INFIX3 => Shift(yy_state_81)
    T_INFIX2 => Shift(yy_state_82)
    T_INFIX1 => Shift(yy_state_83)
    T_NEWLINE => Shift(yy_state_84)
    T_COMMENT => Shift(yy_state_85)
    T_POST_LABEL => Shift(yy_state_86)
    T_UIDENT_BYTES_REGEX => Shift(yy_state_87)
    T_UIDENT => Shift(yy_state_88)
    T_LIDENT => Shift(yy_state_89)
    T_ATTRIBUTE => Shift(yy_state_90)
    T_INTERP => Shift(yy_state_91)
    T_MULTILINE_INTERP => Shift(yy_state_92)
    T_MULTILINE_STRING => Shift(yy_state_93)
    T_STRING => Shift(yy_state_94)
    T_FLOAT => Shift(yy_state_95)
    T_BYTES => Shift(yy_state_96)
    T_BYTE => Shift(yy_state_97)
    T_INT => Shift(yy_state_98)
    T_CHAR => Shift(yy_state_99)
    T_LIDENT_LEX => Shift(yy_state_100)
    T_CONST => Shift(yy_state_119)
    NT_term => Shift(yy_state_126)
    NT_term_list => Shift(yy_state_128)
    T_RBRACKET => Reduce(0, NT_term_list, yy_action_59)
    _ => Error
  }
}

// [111, grouped_term → LBRACKET terms • RBRACKET, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_3(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACKET => Shift(yy_state_4)
    _ => Error
  }
}

// [111, grouped_term → LBRACKET terms RBRACKET •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_4(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_grouped_term, yy_action_157)
}

// [1, terms → • term_list, RBRACE]
// [2, term_list → •, RBRACE]
// [3, term_list → • term term_list, RBRACE]
// [4, term → • CONST uident COLON UIDENT_BYTES_REGEX EQUAL regex SEMI, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [5, term → • LIDENT_LEX lident LBRACE lex_cases RBRACE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [6, term → • CHAR, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [7, term → • INT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [8, term → • BYTE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [9, term → • BYTES, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [10, term → • FLOAT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [11, term → • STRING, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [12, term → • MULTILINE_STRING, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [13, term → • MULTILINE_INTERP, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [14, term → • INTERP, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [15, term → • ATTRIBUTE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [16, term → • LIDENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [17, term → • UIDENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [18, term → • LIDENT_LEX, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [19, term → • UIDENT_BYTES_REGEX, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [20, term → • POST_LABEL, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [21, term → • COMMENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [22, term → • NEWLINE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [23, term → • INFIX1, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [24, term → • INFIX2, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [25, term → • INFIX3, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [26, term → • INFIX4, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [27, term → • AUGMENTED_ASSIGNMENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [28, term → • EOF, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [29, term → • FALSE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [30, term → • TRUE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [31, term → • PUB, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [32, term → • PRIV, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [33, term → • READONLY, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [34, term → • IMPORT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [35, term → • EXTERN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [36, term → • BREAK, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [37, term → • CONTINUE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [38, term → • STRUCT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [39, term → • ENUM, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [40, term → • TRAIT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [41, term → • DERIVE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [42, term → • IMPL, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [43, term → • WITH, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [44, term → • RAISE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [45, term → • THROW, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [46, term → • TRY, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [47, term → • CATCH, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [48, term → • ASYNC, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [49, term → • TYPEALIAS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [50, term → • TRAITALIAS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [51, term → • FNALIAS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [52, term → • EQUAL, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [53, term → • COMMA, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [54, term → • MINUS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [55, term → • QUESTION, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [56, term → • EXCLAMATION, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [57, term → • DOT_LIDENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [58, term → • DOT_UIDENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [59, term → • DOT_INT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [60, term → • DOT_LPAREN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [61, term → • COLONCOLON, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [62, term → • COLON, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [63, term → • SEMI, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [64, term → • PLUS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [65, term → • UNDERSCORE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [66, term → • BAR, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [67, term → • AMPERAMPER, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [68, term → • AMPER, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [69, term → • CARET, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [70, term → • BARBAR, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [71, term → • PACKAGE_NAME, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [72, term → • AS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [73, term → • PIPE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [74, term → • ELSE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [75, term → • FN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [76, term → • IF, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [77, term → • LET, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [78, term → • CONST, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [79, term → • MATCH, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [80, term → • MUTABLE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [81, term → • TYPE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [82, term → • FAT_ARROW, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [83, term → • THIN_ARROW, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [84, term → • WHILE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [85, term → • RETURN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [86, term → • DOTDOT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [87, term → • RANGE_INCLUSIVE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [88, term → • RANGE_EXCLUSIVE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [89, term → • ELLIPSIS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [90, term → • TEST, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [91, term → • LOOP, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [92, term → • GUARD, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [93, term → • FOR, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [94, term → • IN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [95, term → • IS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [96, term → • grouped_term, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [109, grouped_term → • LPAREN terms RPAREN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [110, grouped_term → • LBRACE terms RBRACE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [110, grouped_term → LBRACE • terms RBRACE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [111, grouped_term → • LBRACKET terms RBRACKET, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_5(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_LBRACE => Shift(yy_state_5)
    NT_terms => Shift(yy_state_6)
    T_LPAREN => Shift(yy_state_8)
    NT_grouped_term => Shift(yy_state_11)
    T_IS => Shift(yy_state_12)
    T_IN => Shift(yy_state_13)
    T_FOR => Shift(yy_state_14)
    T_GUARD => Shift(yy_state_15)
    T_LOOP => Shift(yy_state_16)
    T_TEST => Shift(yy_state_17)
    T_ELLIPSIS => Shift(yy_state_18)
    T_RANGE_EXCLUSIVE => Shift(yy_state_19)
    T_RANGE_INCLUSIVE => Shift(yy_state_20)
    T_DOTDOT => Shift(yy_state_21)
    T_RETURN => Shift(yy_state_22)
    T_WHILE => Shift(yy_state_23)
    T_THIN_ARROW => Shift(yy_state_24)
    T_FAT_ARROW => Shift(yy_state_25)
    T_TYPE => Shift(yy_state_26)
    T_MUTABLE => Shift(yy_state_27)
    T_MATCH => Shift(yy_state_28)
    T_LET => Shift(yy_state_29)
    T_IF => Shift(yy_state_30)
    T_FN => Shift(yy_state_31)
    T_ELSE => Shift(yy_state_32)
    T_PIPE => Shift(yy_state_33)
    T_AS => Shift(yy_state_34)
    T_PACKAGE_NAME => Shift(yy_state_35)
    T_BARBAR => Shift(yy_state_36)
    T_CARET => Shift(yy_state_37)
    T_AMPER => Shift(yy_state_38)
    T_AMPERAMPER => Shift(yy_state_39)
    T_BAR => Shift(yy_state_40)
    T_UNDERSCORE => Shift(yy_state_41)
    T_PLUS => Shift(yy_state_42)
    T_SEMI => Shift(yy_state_43)
    T_COLON => Shift(yy_state_44)
    T_COLONCOLON => Shift(yy_state_45)
    T_DOT_LPAREN => Shift(yy_state_46)
    T_DOT_INT => Shift(yy_state_47)
    T_DOT_UIDENT => Shift(yy_state_48)
    T_DOT_LIDENT => Shift(yy_state_49)
    T_EXCLAMATION => Shift(yy_state_50)
    T_QUESTION => Shift(yy_state_51)
    T_MINUS => Shift(yy_state_52)
    T_COMMA => Shift(yy_state_53)
    T_EQUAL => Shift(yy_state_54)
    T_FNALIAS => Shift(yy_state_55)
    T_TRAITALIAS => Shift(yy_state_56)
    T_TYPEALIAS => Shift(yy_state_57)
    T_ASYNC => Shift(yy_state_58)
    T_CATCH => Shift(yy_state_59)
    T_TRY => Shift(yy_state_60)
    T_THROW => Shift(yy_state_61)
    T_RAISE => Shift(yy_state_62)
    T_WITH => Shift(yy_state_63)
    T_IMPL => Shift(yy_state_64)
    T_DERIVE => Shift(yy_state_65)
    T_TRAIT => Shift(yy_state_66)
    T_ENUM => Shift(yy_state_67)
    T_STRUCT => Shift(yy_state_68)
    T_CONTINUE => Shift(yy_state_69)
    T_BREAK => Shift(yy_state_70)
    T_EXTERN => Shift(yy_state_71)
    T_IMPORT => Shift(yy_state_72)
    T_READONLY => Shift(yy_state_73)
    T_PRIV => Shift(yy_state_74)
    T_PUB => Shift(yy_state_75)
    T_TRUE => Shift(yy_state_76)
    T_FALSE => Shift(yy_state_77)
    T_EOF => Shift(yy_state_78)
    T_AUGMENTED_ASSIGNMENT => Shift(yy_state_79)
    T_INFIX4 => Shift(yy_state_80)
    T_INFIX3 => Shift(yy_state_81)
    T_INFIX2 => Shift(yy_state_82)
    T_INFIX1 => Shift(yy_state_83)
    T_NEWLINE => Shift(yy_state_84)
    T_COMMENT => Shift(yy_state_85)
    T_POST_LABEL => Shift(yy_state_86)
    T_UIDENT_BYTES_REGEX => Shift(yy_state_87)
    T_UIDENT => Shift(yy_state_88)
    T_LIDENT => Shift(yy_state_89)
    T_ATTRIBUTE => Shift(yy_state_90)
    T_INTERP => Shift(yy_state_91)
    T_MULTILINE_INTERP => Shift(yy_state_92)
    T_MULTILINE_STRING => Shift(yy_state_93)
    T_STRING => Shift(yy_state_94)
    T_FLOAT => Shift(yy_state_95)
    T_BYTES => Shift(yy_state_96)
    T_BYTE => Shift(yy_state_97)
    T_INT => Shift(yy_state_98)
    T_CHAR => Shift(yy_state_99)
    T_LIDENT_LEX => Shift(yy_state_100)
    T_CONST => Shift(yy_state_119)
    NT_term => Shift(yy_state_126)
    NT_term_list => Shift(yy_state_128)
    T_RBRACE => Reduce(0, NT_term_list, yy_action_59)
    _ => Error
  }
}

// [110, grouped_term → LBRACE terms • RBRACE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_6(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_7)
    _ => Error
  }
}

// [110, grouped_term → LBRACE terms RBRACE •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_7(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_grouped_term, yy_action_54)
}

// [1, terms → • term_list, RPAREN]
// [2, term_list → •, RPAREN]
// [3, term_list → • term term_list, RPAREN]
// [4, term → • CONST uident COLON UIDENT_BYTES_REGEX EQUAL regex SEMI, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [5, term → • LIDENT_LEX lident LBRACE lex_cases RBRACE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [6, term → • CHAR, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [7, term → • INT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [8, term → • BYTE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [9, term → • BYTES, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [10, term → • FLOAT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [11, term → • STRING, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [12, term → • MULTILINE_STRING, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [13, term → • MULTILINE_INTERP, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [14, term → • INTERP, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [15, term → • ATTRIBUTE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [16, term → • LIDENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [17, term → • UIDENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [18, term → • LIDENT_LEX, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [19, term → • UIDENT_BYTES_REGEX, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [20, term → • POST_LABEL, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [21, term → • COMMENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [22, term → • NEWLINE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [23, term → • INFIX1, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [24, term → • INFIX2, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [25, term → • INFIX3, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [26, term → • INFIX4, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [27, term → • AUGMENTED_ASSIGNMENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [28, term → • EOF, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [29, term → • FALSE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [30, term → • TRUE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [31, term → • PUB, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [32, term → • PRIV, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [33, term → • READONLY, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [34, term → • IMPORT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [35, term → • EXTERN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [36, term → • BREAK, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [37, term → • CONTINUE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [38, term → • STRUCT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [39, term → • ENUM, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [40, term → • TRAIT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [41, term → • DERIVE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [42, term → • IMPL, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [43, term → • WITH, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [44, term → • RAISE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [45, term → • THROW, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [46, term → • TRY, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [47, term → • CATCH, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [48, term → • ASYNC, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [49, term → • TYPEALIAS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [50, term → • TRAITALIAS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [51, term → • FNALIAS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [52, term → • EQUAL, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [53, term → • COMMA, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [54, term → • MINUS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [55, term → • QUESTION, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [56, term → • EXCLAMATION, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [57, term → • DOT_LIDENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [58, term → • DOT_UIDENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [59, term → • DOT_INT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [60, term → • DOT_LPAREN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [61, term → • COLONCOLON, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [62, term → • COLON, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [63, term → • SEMI, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [64, term → • PLUS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [65, term → • UNDERSCORE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [66, term → • BAR, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [67, term → • AMPERAMPER, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [68, term → • AMPER, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [69, term → • CARET, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [70, term → • BARBAR, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [71, term → • PACKAGE_NAME, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [72, term → • AS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [73, term → • PIPE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [74, term → • ELSE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [75, term → • FN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [76, term → • IF, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [77, term → • LET, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [78, term → • CONST, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [79, term → • MATCH, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [80, term → • MUTABLE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [81, term → • TYPE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [82, term → • FAT_ARROW, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [83, term → • THIN_ARROW, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [84, term → • WHILE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [85, term → • RETURN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [86, term → • DOTDOT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [87, term → • RANGE_INCLUSIVE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [88, term → • RANGE_EXCLUSIVE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [89, term → • ELLIPSIS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [90, term → • TEST, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [91, term → • LOOP, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [92, term → • GUARD, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [93, term → • FOR, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [94, term → • IN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [95, term → • IS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [96, term → • grouped_term, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [109, grouped_term → • LPAREN terms RPAREN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [109, grouped_term → LPAREN • terms RPAREN, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [110, grouped_term → • LBRACE terms RBRACE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [111, grouped_term → • LBRACKET terms RBRACKET, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_8(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_LBRACE => Shift(yy_state_5)
    T_LPAREN => Shift(yy_state_8)
    NT_terms => Shift(yy_state_9)
    NT_grouped_term => Shift(yy_state_11)
    T_IS => Shift(yy_state_12)
    T_IN => Shift(yy_state_13)
    T_FOR => Shift(yy_state_14)
    T_GUARD => Shift(yy_state_15)
    T_LOOP => Shift(yy_state_16)
    T_TEST => Shift(yy_state_17)
    T_ELLIPSIS => Shift(yy_state_18)
    T_RANGE_EXCLUSIVE => Shift(yy_state_19)
    T_RANGE_INCLUSIVE => Shift(yy_state_20)
    T_DOTDOT => Shift(yy_state_21)
    T_RETURN => Shift(yy_state_22)
    T_WHILE => Shift(yy_state_23)
    T_THIN_ARROW => Shift(yy_state_24)
    T_FAT_ARROW => Shift(yy_state_25)
    T_TYPE => Shift(yy_state_26)
    T_MUTABLE => Shift(yy_state_27)
    T_MATCH => Shift(yy_state_28)
    T_LET => Shift(yy_state_29)
    T_IF => Shift(yy_state_30)
    T_FN => Shift(yy_state_31)
    T_ELSE => Shift(yy_state_32)
    T_PIPE => Shift(yy_state_33)
    T_AS => Shift(yy_state_34)
    T_PACKAGE_NAME => Shift(yy_state_35)
    T_BARBAR => Shift(yy_state_36)
    T_CARET => Shift(yy_state_37)
    T_AMPER => Shift(yy_state_38)
    T_AMPERAMPER => Shift(yy_state_39)
    T_BAR => Shift(yy_state_40)
    T_UNDERSCORE => Shift(yy_state_41)
    T_PLUS => Shift(yy_state_42)
    T_SEMI => Shift(yy_state_43)
    T_COLON => Shift(yy_state_44)
    T_COLONCOLON => Shift(yy_state_45)
    T_DOT_LPAREN => Shift(yy_state_46)
    T_DOT_INT => Shift(yy_state_47)
    T_DOT_UIDENT => Shift(yy_state_48)
    T_DOT_LIDENT => Shift(yy_state_49)
    T_EXCLAMATION => Shift(yy_state_50)
    T_QUESTION => Shift(yy_state_51)
    T_MINUS => Shift(yy_state_52)
    T_COMMA => Shift(yy_state_53)
    T_EQUAL => Shift(yy_state_54)
    T_FNALIAS => Shift(yy_state_55)
    T_TRAITALIAS => Shift(yy_state_56)
    T_TYPEALIAS => Shift(yy_state_57)
    T_ASYNC => Shift(yy_state_58)
    T_CATCH => Shift(yy_state_59)
    T_TRY => Shift(yy_state_60)
    T_THROW => Shift(yy_state_61)
    T_RAISE => Shift(yy_state_62)
    T_WITH => Shift(yy_state_63)
    T_IMPL => Shift(yy_state_64)
    T_DERIVE => Shift(yy_state_65)
    T_TRAIT => Shift(yy_state_66)
    T_ENUM => Shift(yy_state_67)
    T_STRUCT => Shift(yy_state_68)
    T_CONTINUE => Shift(yy_state_69)
    T_BREAK => Shift(yy_state_70)
    T_EXTERN => Shift(yy_state_71)
    T_IMPORT => Shift(yy_state_72)
    T_READONLY => Shift(yy_state_73)
    T_PRIV => Shift(yy_state_74)
    T_PUB => Shift(yy_state_75)
    T_TRUE => Shift(yy_state_76)
    T_FALSE => Shift(yy_state_77)
    T_EOF => Shift(yy_state_78)
    T_AUGMENTED_ASSIGNMENT => Shift(yy_state_79)
    T_INFIX4 => Shift(yy_state_80)
    T_INFIX3 => Shift(yy_state_81)
    T_INFIX2 => Shift(yy_state_82)
    T_INFIX1 => Shift(yy_state_83)
    T_NEWLINE => Shift(yy_state_84)
    T_COMMENT => Shift(yy_state_85)
    T_POST_LABEL => Shift(yy_state_86)
    T_UIDENT_BYTES_REGEX => Shift(yy_state_87)
    T_UIDENT => Shift(yy_state_88)
    T_LIDENT => Shift(yy_state_89)
    T_ATTRIBUTE => Shift(yy_state_90)
    T_INTERP => Shift(yy_state_91)
    T_MULTILINE_INTERP => Shift(yy_state_92)
    T_MULTILINE_STRING => Shift(yy_state_93)
    T_STRING => Shift(yy_state_94)
    T_FLOAT => Shift(yy_state_95)
    T_BYTES => Shift(yy_state_96)
    T_BYTE => Shift(yy_state_97)
    T_INT => Shift(yy_state_98)
    T_CHAR => Shift(yy_state_99)
    T_LIDENT_LEX => Shift(yy_state_100)
    T_CONST => Shift(yy_state_119)
    NT_term => Shift(yy_state_126)
    NT_term_list => Shift(yy_state_128)
    T_RPAREN => Reduce(0, NT_term_list, yy_action_59)
    _ => Error
  }
}

// [109, grouped_term → LPAREN terms • RPAREN, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_9(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_10)
    _ => Error
  }
}

// [109, grouped_term → LPAREN terms RPAREN •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_10(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_grouped_term, yy_action_123)
}

// [96, term → grouped_term •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_11(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_197)
}

// [95, term → IS •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_12(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_94)
}

// [94, term → IN •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_13(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_51)
}

// [93, term → FOR •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_14(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_137)
}

// [92, term → GUARD •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_15(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_129)
}

// [91, term → LOOP •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_16(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_9)
}

// [90, term → TEST •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_17(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_126)
}

// [89, term → ELLIPSIS •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_18(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_186)
}

// [88, term → RANGE_EXCLUSIVE •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_19(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_192)
}

// [87, term → RANGE_INCLUSIVE •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_20(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_165)
}

// [86, term → DOTDOT •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_21(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_159)
}

// [85, term → RETURN •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_22(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_143)
}

// [84, term → WHILE •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_23(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_161)
}

// [83, term → THIN_ARROW •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_24(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_7)
}

// [82, term → FAT_ARROW •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_25(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_149)
}

// [81, term → TYPE •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_26(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_104)
}

// [80, term → MUTABLE •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_27(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_187)
}

// [79, term → MATCH •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_28(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_132)
}

// [77, term → LET •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_29(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_17)
}

// [76, term → IF •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_30(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_23)
}

// [75, term → FN •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_31(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_182)
}

// [74, term → ELSE •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_32(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_183)
}

// [73, term → PIPE •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_33(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_27)
}

// [72, term → AS •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_34(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_150)
}

// [71, term → PACKAGE_NAME •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_35(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_189)
}

// [70, term → BARBAR •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_36(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_199)
}

// [69, term → CARET •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_37(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_85)
}

// [68, term → AMPER •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_38(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_21)
}

// [67, term → AMPERAMPER •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_39(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_35)
}

// [66, term → BAR •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_40(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_83)
}

// [65, term → UNDERSCORE •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_41(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_43)
}

// [64, term → PLUS •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_42(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_11)
}

// [63, term → SEMI •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_43(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_89)
}

// [62, term → COLON •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_44(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_155)
}

// [61, term → COLONCOLON •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_45(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_25)
}

// [60, term → DOT_LPAREN •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_46(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_151)
}

// [59, term → DOT_INT •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_47(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_178)
}

// [58, term → DOT_UIDENT •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_48(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_52)
}

// [57, term → DOT_LIDENT •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_49(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_13)
}

// [56, term → EXCLAMATION •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_50(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_110)
}

// [55, term → QUESTION •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_51(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_167)
}

// [54, term → MINUS •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_52(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_170)
}

// [53, term → COMMA •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_53(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_2)
}

// [52, term → EQUAL •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_54(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_106)
}

// [51, term → FNALIAS •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_55(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_57)
}

// [50, term → TRAITALIAS •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_56(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_91)
}

// [49, term → TYPEALIAS •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_57(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_55)
}

// [48, term → ASYNC •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_58(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_108)
}

// [47, term → CATCH •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_59(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_46)
}

// [46, term → TRY •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_60(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_201)
}

// [45, term → THROW •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_61(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_41)
}

// [44, term → RAISE •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_62(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_162)
}

// [43, term → WITH •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_63(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_177)
}

// [42, term → IMPL •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_64(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_200)
}

// [41, term → DERIVE •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_65(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_124)
}

// [40, term → TRAIT •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_66(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_193)
}

// [39, term → ENUM •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_67(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_102)
}

// [38, term → STRUCT •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_68(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_130)
}

// [37, term → CONTINUE •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_69(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_175)
}

// [36, term → BREAK •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_70(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_164)
}

// [35, term → EXTERN •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_71(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_198)
}

// [34, term → IMPORT •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_72(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_71)
}

// [33, term → READONLY •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_73(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_87)
}

// [32, term → PRIV •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_74(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_118)
}

// [31, term → PUB •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_75(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_188)
}

// [30, term → TRUE •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_76(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_49)
}

// [29, term → FALSE •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_77(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_60)
}

// [28, term → EOF •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_78(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_72)
}

// [27, term → AUGMENTED_ASSIGNMENT •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_79(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_0)
}

// [26, term → INFIX4 •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_80(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_39)
}

// [25, term → INFIX3 •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_81(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_74)
}

// [24, term → INFIX2 •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_82(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_67)
}

// [23, term → INFIX1 •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_83(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_140)
}

// [22, term → NEWLINE •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_84(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_99)
}

// [21, term → COMMENT •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_85(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_153)
}

// [20, term → POST_LABEL •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_86(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_148)
}

// [19, term → UIDENT_BYTES_REGEX •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_87(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_180)
}

// [17, term → UIDENT •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_88(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_194)
}

// [16, term → LIDENT •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_89(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_145)
}

// [15, term → ATTRIBUTE •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_90(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_70)
}

// [14, term → INTERP •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_91(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_146)
}

// [13, term → MULTILINE_INTERP •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_92(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_77)
}

// [12, term → MULTILINE_STRING •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_93(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_154)
}

// [11, term → STRING •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_94(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_4)
}

// [10, term → FLOAT •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_95(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_97)
}

// [9, term → BYTES •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_96(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_171)
}

// [8, term → BYTE •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_97(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_190)
}

// [7, term → INT •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_98(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_202)
}

// [6, term → CHAR •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_99(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_term, yy_action_115)
}

// [5, term → LIDENT_LEX • lident LBRACE lex_cases RBRACE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [18, term → LIDENT_LEX •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [113, lident → • LIDENT, LBRACE]
fn yy_state_100(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LIDENT => Shift(yy_state_101)
    NT_lident => Shift(yy_state_102)
    T_CHAR | T_INT | T_BYTE | T_BYTES | T_FLOAT | T_STRING | T_MULTILINE_STRING | T_MULTILINE_INTERP | T_INTERP | T_ATTRIBUTE | T_UIDENT | T_LIDENT_LEX | T_UIDENT_BYTES_REGEX | T_POST_LABEL | T_COMMENT | T_NEWLINE | T_INFIX1 | T_INFIX2 | T_INFIX3 | T_INFIX4 | T_AUGMENTED_ASSIGNMENT | T_EOF | T_FALSE | T_TRUE | T_PUB | T_PRIV | T_READONLY | T_IMPORT | T_EXTERN | T_BREAK | T_CONTINUE | T_STRUCT | T_ENUM | T_TRAIT | T_DERIVE | T_IMPL | T_WITH | T_RAISE | T_THROW | T_TRY | T_CATCH | T_ASYNC | T_TYPEALIAS | T_TRAITALIAS | T_FNALIAS | T_EQUAL | T_LPAREN | T_RPAREN | T_COMMA | T_MINUS | T_QUESTION | T_EXCLAMATION | T_DOT_LIDENT | T_DOT_UIDENT | T_DOT_INT | T_DOT_LPAREN | T_COLONCOLON | T_COLON | T_SEMI | T_LBRACKET | T_PLUS | T_RBRACKET | T_UNDERSCORE | T_BAR | T_LBRACE | T_RBRACE | T_AMPERAMPER | T_AMPER | T_CARET | T_BARBAR | T_PACKAGE_NAME | T_AS | T_PIPE | T_ELSE | T_FN | T_IF | T_LET | T_CONST | T_MATCH | T_MUTABLE | T_TYPE | T_FAT_ARROW | T_THIN_ARROW | T_WHILE | T_RETURN | T_DOTDOT | T_RANGE_INCLUSIVE | T_RANGE_EXCLUSIVE | T_ELLIPSIS | T_TEST | T_LOOP | T_GUARD | T_FOR | T_IN | T_IS | EOI => Reduce(1, NT_term, yy_action_203)
    _ => Error
  }
}

// [113, lident → LIDENT •, COMMA / LBRACE / FAT_ARROW]
fn yy_state_101(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_lident, yy_action_172)
}

// [5, term → LIDENT_LEX lident • LBRACE lex_cases RBRACE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_102(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_103)
    _ => Error
  }
}

// [5, term → LIDENT_LEX lident LBRACE • lex_cases RBRACE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [97, lex_cases → • lex_case, RBRACE]
// [98, lex_cases → • lex_case SEMI, RBRACE]
// [99, lex_cases → • lex_case SEMI lex_cases, RBRACE]
// [100, lex_case → • regex_pattern FAT_ARROW braced_term, SEMI / RBRACE]
// [101, regex_pattern → • regex_pattern_item, FAT_ARROW]
// [102, regex_pattern → • regex_pattern_item COMMA regex_pattern, FAT_ARROW]
// [103, regex_pattern_item → • regex, COMMA / FAT_ARROW]
// [104, regex_pattern_item → • regex AS lident, COMMA / FAT_ARROW]
// [105, regex → • STRING, COMMA / AS / FAT_ARROW]
// [106, regex → • INTERP, COMMA / AS / FAT_ARROW]
// [107, regex → • uident, COMMA / AS / FAT_ARROW]
// [112, uident → • UIDENT, COMMA / AS / FAT_ARROW]
fn yy_state_103(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_UIDENT => Shift(yy_state_104)
    NT_uident => Shift(yy_state_105)
    T_INTERP => Shift(yy_state_106)
    T_STRING => Shift(yy_state_107)
    NT_regex => Shift(yy_state_108)
    NT_regex_pattern_item => Shift(yy_state_111)
    NT_regex_pattern => Shift(yy_state_114)
    NT_lex_case => Shift(yy_state_130)
    NT_lex_cases => Shift(yy_state_133)
    _ => Error
  }
}

// [112, uident → UIDENT •, COMMA / COLON / SEMI / AS / FAT_ARROW]
fn yy_state_104(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_uident, yy_action_196)
}

// [107, regex → uident •, COMMA / SEMI / AS / FAT_ARROW]
fn yy_state_105(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_regex, yy_action_101)
}

// [106, regex → INTERP •, COMMA / SEMI / AS / FAT_ARROW]
fn yy_state_106(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_regex, yy_action_128)
}

// [105, regex → STRING •, COMMA / SEMI / AS / FAT_ARROW]
fn yy_state_107(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_regex, yy_action_69)
}

// [103, regex_pattern_item → regex •, COMMA / FAT_ARROW]
// [104, regex_pattern_item → regex • AS lident, COMMA / FAT_ARROW]
fn yy_state_108(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_AS => Shift(yy_state_109)
    T_COMMA | T_FAT_ARROW => Reduce(1, NT_regex_pattern_item, yy_action_131)
    _ => Error
  }
}

// [104, regex_pattern_item → regex AS • lident, COMMA / FAT_ARROW]
// [113, lident → • LIDENT, COMMA / FAT_ARROW]
fn yy_state_109(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LIDENT => Shift(yy_state_101)
    NT_lident => Shift(yy_state_110)
    _ => Error
  }
}

// [104, regex_pattern_item → regex AS lident •, COMMA / FAT_ARROW]
fn yy_state_110(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_regex_pattern_item, yy_action_33)
}

// [101, regex_pattern → regex_pattern_item •, FAT_ARROW]
// [102, regex_pattern → regex_pattern_item • COMMA regex_pattern, FAT_ARROW]
fn yy_state_111(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_112)
    T_FAT_ARROW => Reduce(1, NT_regex_pattern, yy_action_37)
    _ => Error
  }
}

// [101, regex_pattern → • regex_pattern_item, FAT_ARROW]
// [102, regex_pattern → • regex_pattern_item COMMA regex_pattern, FAT_ARROW]
// [102, regex_pattern → regex_pattern_item COMMA • regex_pattern, FAT_ARROW]
// [103, regex_pattern_item → • regex, COMMA / FAT_ARROW]
// [104, regex_pattern_item → • regex AS lident, COMMA / FAT_ARROW]
// [105, regex → • STRING, COMMA / AS / FAT_ARROW]
// [106, regex → • INTERP, COMMA / AS / FAT_ARROW]
// [107, regex → • uident, COMMA / AS / FAT_ARROW]
// [112, uident → • UIDENT, COMMA / AS / FAT_ARROW]
fn yy_state_112(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_UIDENT => Shift(yy_state_104)
    NT_uident => Shift(yy_state_105)
    T_INTERP => Shift(yy_state_106)
    T_STRING => Shift(yy_state_107)
    NT_regex => Shift(yy_state_108)
    NT_regex_pattern_item => Shift(yy_state_111)
    NT_regex_pattern => Shift(yy_state_113)
    _ => Error
  }
}

// [102, regex_pattern → regex_pattern_item COMMA regex_pattern •, FAT_ARROW]
fn yy_state_113(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_regex_pattern, yy_action_93)
}

// [100, lex_case → regex_pattern • FAT_ARROW braced_term, SEMI / RBRACE]
fn yy_state_114(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FAT_ARROW => Shift(yy_state_115)
    _ => Error
  }
}

// [100, lex_case → regex_pattern FAT_ARROW • braced_term, SEMI / RBRACE]
// [108, braced_term → • LBRACE terms RBRACE, SEMI / RBRACE]
fn yy_state_115(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_116)
    NT_braced_term => Shift(yy_state_129)
    _ => Error
  }
}

// [1, terms → • term_list, RBRACE]
// [2, term_list → •, RBRACE]
// [3, term_list → • term term_list, RBRACE]
// [4, term → • CONST uident COLON UIDENT_BYTES_REGEX EQUAL regex SEMI, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [5, term → • LIDENT_LEX lident LBRACE lex_cases RBRACE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [6, term → • CHAR, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [7, term → • INT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [8, term → • BYTE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [9, term → • BYTES, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [10, term → • FLOAT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [11, term → • STRING, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [12, term → • MULTILINE_STRING, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [13, term → • MULTILINE_INTERP, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [14, term → • INTERP, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [15, term → • ATTRIBUTE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [16, term → • LIDENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [17, term → • UIDENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [18, term → • LIDENT_LEX, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [19, term → • UIDENT_BYTES_REGEX, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [20, term → • POST_LABEL, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [21, term → • COMMENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [22, term → • NEWLINE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [23, term → • INFIX1, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [24, term → • INFIX2, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [25, term → • INFIX3, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [26, term → • INFIX4, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [27, term → • AUGMENTED_ASSIGNMENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [28, term → • EOF, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [29, term → • FALSE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [30, term → • TRUE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [31, term → • PUB, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [32, term → • PRIV, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [33, term → • READONLY, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [34, term → • IMPORT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [35, term → • EXTERN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [36, term → • BREAK, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [37, term → • CONTINUE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [38, term → • STRUCT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [39, term → • ENUM, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [40, term → • TRAIT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [41, term → • DERIVE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [42, term → • IMPL, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [43, term → • WITH, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [44, term → • RAISE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [45, term → • THROW, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [46, term → • TRY, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [47, term → • CATCH, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [48, term → • ASYNC, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [49, term → • TYPEALIAS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [50, term → • TRAITALIAS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [51, term → • FNALIAS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [52, term → • EQUAL, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [53, term → • COMMA, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [54, term → • MINUS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [55, term → • QUESTION, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [56, term → • EXCLAMATION, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [57, term → • DOT_LIDENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [58, term → • DOT_UIDENT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [59, term → • DOT_INT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [60, term → • DOT_LPAREN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [61, term → • COLONCOLON, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [62, term → • COLON, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [63, term → • SEMI, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [64, term → • PLUS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [65, term → • UNDERSCORE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [66, term → • BAR, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [67, term → • AMPERAMPER, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [68, term → • AMPER, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [69, term → • CARET, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [70, term → • BARBAR, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [71, term → • PACKAGE_NAME, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [72, term → • AS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [73, term → • PIPE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [74, term → • ELSE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [75, term → • FN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [76, term → • IF, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [77, term → • LET, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [78, term → • CONST, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [79, term → • MATCH, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [80, term → • MUTABLE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [81, term → • TYPE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [82, term → • FAT_ARROW, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [83, term → • THIN_ARROW, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [84, term → • WHILE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [85, term → • RETURN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [86, term → • DOTDOT, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [87, term → • RANGE_INCLUSIVE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [88, term → • RANGE_EXCLUSIVE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [89, term → • ELLIPSIS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [90, term → • TEST, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [91, term → • LOOP, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [92, term → • GUARD, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [93, term → • FOR, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [94, term → • IN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [95, term → • IS, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [96, term → • grouped_term, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [108, braced_term → LBRACE • terms RBRACE, SEMI / RBRACE]
// [109, grouped_term → • LPAREN terms RPAREN, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [110, grouped_term → • LBRACE terms RBRACE, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [111, grouped_term → • LBRACKET terms RBRACKET, CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_116(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_LBRACE => Shift(yy_state_5)
    T_LPAREN => Shift(yy_state_8)
    NT_grouped_term => Shift(yy_state_11)
    T_IS => Shift(yy_state_12)
    T_IN => Shift(yy_state_13)
    T_FOR => Shift(yy_state_14)
    T_GUARD => Shift(yy_state_15)
    T_LOOP => Shift(yy_state_16)
    T_TEST => Shift(yy_state_17)
    T_ELLIPSIS => Shift(yy_state_18)
    T_RANGE_EXCLUSIVE => Shift(yy_state_19)
    T_RANGE_INCLUSIVE => Shift(yy_state_20)
    T_DOTDOT => Shift(yy_state_21)
    T_RETURN => Shift(yy_state_22)
    T_WHILE => Shift(yy_state_23)
    T_THIN_ARROW => Shift(yy_state_24)
    T_FAT_ARROW => Shift(yy_state_25)
    T_TYPE => Shift(yy_state_26)
    T_MUTABLE => Shift(yy_state_27)
    T_MATCH => Shift(yy_state_28)
    T_LET => Shift(yy_state_29)
    T_IF => Shift(yy_state_30)
    T_FN => Shift(yy_state_31)
    T_ELSE => Shift(yy_state_32)
    T_PIPE => Shift(yy_state_33)
    T_AS => Shift(yy_state_34)
    T_PACKAGE_NAME => Shift(yy_state_35)
    T_BARBAR => Shift(yy_state_36)
    T_CARET => Shift(yy_state_37)
    T_AMPER => Shift(yy_state_38)
    T_AMPERAMPER => Shift(yy_state_39)
    T_BAR => Shift(yy_state_40)
    T_UNDERSCORE => Shift(yy_state_41)
    T_PLUS => Shift(yy_state_42)
    T_SEMI => Shift(yy_state_43)
    T_COLON => Shift(yy_state_44)
    T_COLONCOLON => Shift(yy_state_45)
    T_DOT_LPAREN => Shift(yy_state_46)
    T_DOT_INT => Shift(yy_state_47)
    T_DOT_UIDENT => Shift(yy_state_48)
    T_DOT_LIDENT => Shift(yy_state_49)
    T_EXCLAMATION => Shift(yy_state_50)
    T_QUESTION => Shift(yy_state_51)
    T_MINUS => Shift(yy_state_52)
    T_COMMA => Shift(yy_state_53)
    T_EQUAL => Shift(yy_state_54)
    T_FNALIAS => Shift(yy_state_55)
    T_TRAITALIAS => Shift(yy_state_56)
    T_TYPEALIAS => Shift(yy_state_57)
    T_ASYNC => Shift(yy_state_58)
    T_CATCH => Shift(yy_state_59)
    T_TRY => Shift(yy_state_60)
    T_THROW => Shift(yy_state_61)
    T_RAISE => Shift(yy_state_62)
    T_WITH => Shift(yy_state_63)
    T_IMPL => Shift(yy_state_64)
    T_DERIVE => Shift(yy_state_65)
    T_TRAIT => Shift(yy_state_66)
    T_ENUM => Shift(yy_state_67)
    T_STRUCT => Shift(yy_state_68)
    T_CONTINUE => Shift(yy_state_69)
    T_BREAK => Shift(yy_state_70)
    T_EXTERN => Shift(yy_state_71)
    T_IMPORT => Shift(yy_state_72)
    T_READONLY => Shift(yy_state_73)
    T_PRIV => Shift(yy_state_74)
    T_PUB => Shift(yy_state_75)
    T_TRUE => Shift(yy_state_76)
    T_FALSE => Shift(yy_state_77)
    T_EOF => Shift(yy_state_78)
    T_AUGMENTED_ASSIGNMENT => Shift(yy_state_79)
    T_INFIX4 => Shift(yy_state_80)
    T_INFIX3 => Shift(yy_state_81)
    T_INFIX2 => Shift(yy_state_82)
    T_INFIX1 => Shift(yy_state_83)
    T_NEWLINE => Shift(yy_state_84)
    T_COMMENT => Shift(yy_state_85)
    T_POST_LABEL => Shift(yy_state_86)
    T_UIDENT_BYTES_REGEX => Shift(yy_state_87)
    T_UIDENT => Shift(yy_state_88)
    T_LIDENT => Shift(yy_state_89)
    T_ATTRIBUTE => Shift(yy_state_90)
    T_INTERP => Shift(yy_state_91)
    T_MULTILINE_INTERP => Shift(yy_state_92)
    T_MULTILINE_STRING => Shift(yy_state_93)
    T_STRING => Shift(yy_state_94)
    T_FLOAT => Shift(yy_state_95)
    T_BYTES => Shift(yy_state_96)
    T_BYTE => Shift(yy_state_97)
    T_INT => Shift(yy_state_98)
    T_CHAR => Shift(yy_state_99)
    T_LIDENT_LEX => Shift(yy_state_100)
    NT_terms => Shift(yy_state_117)
    T_CONST => Shift(yy_state_119)
    NT_term => Shift(yy_state_126)
    NT_term_list => Shift(yy_state_128)
    T_RBRACE => Reduce(0, NT_term_list, yy_action_59)
    _ => Error
  }
}

// [108, braced_term → LBRACE terms • RBRACE, SEMI / RBRACE]
fn yy_state_117(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_118)
    _ => Error
  }
}

// [108, braced_term → LBRACE terms RBRACE •, SEMI / RBRACE]
fn yy_state_118(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_braced_term, yy_action_173)
}

// [4, term → CONST • uident COLON UIDENT_BYTES_REGEX EQUAL regex SEMI, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [78, term → CONST •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [112, uident → • UIDENT, COLON]
fn yy_state_119(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_UIDENT => Shift(yy_state_104)
    NT_uident => Shift(yy_state_120)
    T_CHAR | T_INT | T_BYTE | T_BYTES | T_FLOAT | T_STRING | T_MULTILINE_STRING | T_MULTILINE_INTERP | T_INTERP | T_ATTRIBUTE | T_LIDENT | T_LIDENT_LEX | T_UIDENT_BYTES_REGEX | T_POST_LABEL | T_COMMENT | T_NEWLINE | T_INFIX1 | T_INFIX2 | T_INFIX3 | T_INFIX4 | T_AUGMENTED_ASSIGNMENT | T_EOF | T_FALSE | T_TRUE | T_PUB | T_PRIV | T_READONLY | T_IMPORT | T_EXTERN | T_BREAK | T_CONTINUE | T_STRUCT | T_ENUM | T_TRAIT | T_DERIVE | T_IMPL | T_WITH | T_RAISE | T_THROW | T_TRY | T_CATCH | T_ASYNC | T_TYPEALIAS | T_TRAITALIAS | T_FNALIAS | T_EQUAL | T_LPAREN | T_RPAREN | T_COMMA | T_MINUS | T_QUESTION | T_EXCLAMATION | T_DOT_LIDENT | T_DOT_UIDENT | T_DOT_INT | T_DOT_LPAREN | T_COLONCOLON | T_COLON | T_SEMI | T_LBRACKET | T_PLUS | T_RBRACKET | T_UNDERSCORE | T_BAR | T_LBRACE | T_RBRACE | T_AMPERAMPER | T_AMPER | T_CARET | T_BARBAR | T_PACKAGE_NAME | T_AS | T_PIPE | T_ELSE | T_FN | T_IF | T_LET | T_CONST | T_MATCH | T_MUTABLE | T_TYPE | T_FAT_ARROW | T_THIN_ARROW | T_WHILE | T_RETURN | T_DOTDOT | T_RANGE_INCLUSIVE | T_RANGE_EXCLUSIVE | T_ELLIPSIS | T_TEST | T_LOOP | T_GUARD | T_FOR | T_IN | T_IS | EOI => Reduce(1, NT_term, yy_action_120)
    _ => Error
  }
}

// [4, term → CONST uident • COLON UIDENT_BYTES_REGEX EQUAL regex SEMI, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_120(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COLON => Shift(yy_state_121)
    _ => Error
  }
}

// [4, term → CONST uident COLON • UIDENT_BYTES_REGEX EQUAL regex SEMI, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_121(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_UIDENT_BYTES_REGEX => Shift(yy_state_122)
    _ => Error
  }
}

// [4, term → CONST uident COLON UIDENT_BYTES_REGEX • EQUAL regex SEMI, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_122(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_EQUAL => Shift(yy_state_123)
    _ => Error
  }
}

// [4, term → CONST uident COLON UIDENT_BYTES_REGEX EQUAL • regex SEMI, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [105, regex → • STRING, SEMI]
// [106, regex → • INTERP, SEMI]
// [107, regex → • uident, SEMI]
// [112, uident → • UIDENT, SEMI]
fn yy_state_123(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_UIDENT => Shift(yy_state_104)
    NT_uident => Shift(yy_state_105)
    T_INTERP => Shift(yy_state_106)
    T_STRING => Shift(yy_state_107)
    NT_regex => Shift(yy_state_124)
    _ => Error
  }
}

// [4, term → CONST uident COLON UIDENT_BYTES_REGEX EQUAL regex • SEMI, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_124(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_125)
    _ => Error
  }
}

// [4, term → CONST uident COLON UIDENT_BYTES_REGEX EQUAL regex SEMI •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_125(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_term, yy_action_174)
}

// [2, term_list → •, $ / RPAREN / RBRACKET / RBRACE]
// [3, term_list → • term term_list, $ / RPAREN / RBRACKET / RBRACE]
// [3, term_list → term • term_list, $ / RPAREN / RBRACKET / RBRACE]
// [4, term → • CONST uident COLON UIDENT_BYTES_REGEX EQUAL regex SEMI, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [5, term → • LIDENT_LEX lident LBRACE lex_cases RBRACE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [6, term → • CHAR, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [7, term → • INT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [8, term → • BYTE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [9, term → • BYTES, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [10, term → • FLOAT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [11, term → • STRING, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [12, term → • MULTILINE_STRING, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [13, term → • MULTILINE_INTERP, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [14, term → • INTERP, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [15, term → • ATTRIBUTE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [16, term → • LIDENT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [17, term → • UIDENT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [18, term → • LIDENT_LEX, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [19, term → • UIDENT_BYTES_REGEX, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [20, term → • POST_LABEL, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [21, term → • COMMENT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [22, term → • NEWLINE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [23, term → • INFIX1, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [24, term → • INFIX2, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [25, term → • INFIX3, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [26, term → • INFIX4, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [27, term → • AUGMENTED_ASSIGNMENT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [28, term → • EOF, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [29, term → • FALSE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [30, term → • TRUE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [31, term → • PUB, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [32, term → • PRIV, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [33, term → • READONLY, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [34, term → • IMPORT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [35, term → • EXTERN, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [36, term → • BREAK, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [37, term → • CONTINUE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [38, term → • STRUCT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [39, term → • ENUM, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [40, term → • TRAIT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [41, term → • DERIVE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [42, term → • IMPL, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [43, term → • WITH, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [44, term → • RAISE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [45, term → • THROW, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [46, term → • TRY, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [47, term → • CATCH, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [48, term → • ASYNC, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [49, term → • TYPEALIAS, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [50, term → • TRAITALIAS, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [51, term → • FNALIAS, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [52, term → • EQUAL, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [53, term → • COMMA, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [54, term → • MINUS, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [55, term → • QUESTION, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [56, term → • EXCLAMATION, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [57, term → • DOT_LIDENT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [58, term → • DOT_UIDENT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [59, term → • DOT_INT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [60, term → • DOT_LPAREN, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [61, term → • COLONCOLON, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [62, term → • COLON, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [63, term → • SEMI, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [64, term → • PLUS, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [65, term → • UNDERSCORE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [66, term → • BAR, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [67, term → • AMPERAMPER, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [68, term → • AMPER, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [69, term → • CARET, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [70, term → • BARBAR, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [71, term → • PACKAGE_NAME, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [72, term → • AS, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [73, term → • PIPE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [74, term → • ELSE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [75, term → • FN, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [76, term → • IF, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [77, term → • LET, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [78, term → • CONST, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [79, term → • MATCH, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [80, term → • MUTABLE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [81, term → • TYPE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [82, term → • FAT_ARROW, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [83, term → • THIN_ARROW, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [84, term → • WHILE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [85, term → • RETURN, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [86, term → • DOTDOT, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [87, term → • RANGE_INCLUSIVE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [88, term → • RANGE_EXCLUSIVE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [89, term → • ELLIPSIS, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [90, term → • TEST, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [91, term → • LOOP, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [92, term → • GUARD, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [93, term → • FOR, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [94, term → • IN, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [95, term → • IS, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [96, term → • grouped_term, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [109, grouped_term → • LPAREN terms RPAREN, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [110, grouped_term → • LBRACE terms RBRACE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
// [111, grouped_term → • LBRACKET terms RBRACKET, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_126(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_LBRACE => Shift(yy_state_5)
    T_LPAREN => Shift(yy_state_8)
    NT_grouped_term => Shift(yy_state_11)
    T_IS => Shift(yy_state_12)
    T_IN => Shift(yy_state_13)
    T_FOR => Shift(yy_state_14)
    T_GUARD => Shift(yy_state_15)
    T_LOOP => Shift(yy_state_16)
    T_TEST => Shift(yy_state_17)
    T_ELLIPSIS => Shift(yy_state_18)
    T_RANGE_EXCLUSIVE => Shift(yy_state_19)
    T_RANGE_INCLUSIVE => Shift(yy_state_20)
    T_DOTDOT => Shift(yy_state_21)
    T_RETURN => Shift(yy_state_22)
    T_WHILE => Shift(yy_state_23)
    T_THIN_ARROW => Shift(yy_state_24)
    T_FAT_ARROW => Shift(yy_state_25)
    T_TYPE => Shift(yy_state_26)
    T_MUTABLE => Shift(yy_state_27)
    T_MATCH => Shift(yy_state_28)
    T_LET => Shift(yy_state_29)
    T_IF => Shift(yy_state_30)
    T_FN => Shift(yy_state_31)
    T_ELSE => Shift(yy_state_32)
    T_PIPE => Shift(yy_state_33)
    T_AS => Shift(yy_state_34)
    T_PACKAGE_NAME => Shift(yy_state_35)
    T_BARBAR => Shift(yy_state_36)
    T_CARET => Shift(yy_state_37)
    T_AMPER => Shift(yy_state_38)
    T_AMPERAMPER => Shift(yy_state_39)
    T_BAR => Shift(yy_state_40)
    T_UNDERSCORE => Shift(yy_state_41)
    T_PLUS => Shift(yy_state_42)
    T_SEMI => Shift(yy_state_43)
    T_COLON => Shift(yy_state_44)
    T_COLONCOLON => Shift(yy_state_45)
    T_DOT_LPAREN => Shift(yy_state_46)
    T_DOT_INT => Shift(yy_state_47)
    T_DOT_UIDENT => Shift(yy_state_48)
    T_DOT_LIDENT => Shift(yy_state_49)
    T_EXCLAMATION => Shift(yy_state_50)
    T_QUESTION => Shift(yy_state_51)
    T_MINUS => Shift(yy_state_52)
    T_COMMA => Shift(yy_state_53)
    T_EQUAL => Shift(yy_state_54)
    T_FNALIAS => Shift(yy_state_55)
    T_TRAITALIAS => Shift(yy_state_56)
    T_TYPEALIAS => Shift(yy_state_57)
    T_ASYNC => Shift(yy_state_58)
    T_CATCH => Shift(yy_state_59)
    T_TRY => Shift(yy_state_60)
    T_THROW => Shift(yy_state_61)
    T_RAISE => Shift(yy_state_62)
    T_WITH => Shift(yy_state_63)
    T_IMPL => Shift(yy_state_64)
    T_DERIVE => Shift(yy_state_65)
    T_TRAIT => Shift(yy_state_66)
    T_ENUM => Shift(yy_state_67)
    T_STRUCT => Shift(yy_state_68)
    T_CONTINUE => Shift(yy_state_69)
    T_BREAK => Shift(yy_state_70)
    T_EXTERN => Shift(yy_state_71)
    T_IMPORT => Shift(yy_state_72)
    T_READONLY => Shift(yy_state_73)
    T_PRIV => Shift(yy_state_74)
    T_PUB => Shift(yy_state_75)
    T_TRUE => Shift(yy_state_76)
    T_FALSE => Shift(yy_state_77)
    T_EOF => Shift(yy_state_78)
    T_AUGMENTED_ASSIGNMENT => Shift(yy_state_79)
    T_INFIX4 => Shift(yy_state_80)
    T_INFIX3 => Shift(yy_state_81)
    T_INFIX2 => Shift(yy_state_82)
    T_INFIX1 => Shift(yy_state_83)
    T_NEWLINE => Shift(yy_state_84)
    T_COMMENT => Shift(yy_state_85)
    T_POST_LABEL => Shift(yy_state_86)
    T_UIDENT_BYTES_REGEX => Shift(yy_state_87)
    T_UIDENT => Shift(yy_state_88)
    T_LIDENT => Shift(yy_state_89)
    T_ATTRIBUTE => Shift(yy_state_90)
    T_INTERP => Shift(yy_state_91)
    T_MULTILINE_INTERP => Shift(yy_state_92)
    T_MULTILINE_STRING => Shift(yy_state_93)
    T_STRING => Shift(yy_state_94)
    T_FLOAT => Shift(yy_state_95)
    T_BYTES => Shift(yy_state_96)
    T_BYTE => Shift(yy_state_97)
    T_INT => Shift(yy_state_98)
    T_CHAR => Shift(yy_state_99)
    T_LIDENT_LEX => Shift(yy_state_100)
    T_CONST => Shift(yy_state_119)
    NT_term => Shift(yy_state_126)
    NT_term_list => Shift(yy_state_127)
    T_RPAREN | T_RBRACKET | T_RBRACE | EOI => Reduce(0, NT_term_list, yy_action_59)
    _ => Error
  }
}

// [3, term_list → term term_list •, $ / RPAREN / RBRACKET / RBRACE]
fn yy_state_127(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_term_list, yy_action_114)
}

// [1, terms → term_list •, $ / RPAREN / RBRACKET / RBRACE]
fn yy_state_128(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_terms, yy_action_79)
}

// [100, lex_case → regex_pattern FAT_ARROW braced_term •, SEMI / RBRACE]
fn yy_state_129(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_lex_case, yy_action_56)
}

// [97, lex_cases → lex_case •, RBRACE]
// [98, lex_cases → lex_case • SEMI, RBRACE]
// [99, lex_cases → lex_case • SEMI lex_cases, RBRACE]
fn yy_state_130(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_131)
    T_RBRACE => Reduce(1, NT_lex_cases, yy_action_109)
    _ => Error
  }
}

// [97, lex_cases → • lex_case, RBRACE]
// [98, lex_cases → • lex_case SEMI, RBRACE]
// [98, lex_cases → lex_case SEMI •, RBRACE]
// [99, lex_cases → • lex_case SEMI lex_cases, RBRACE]
// [99, lex_cases → lex_case SEMI • lex_cases, RBRACE]
// [100, lex_case → • regex_pattern FAT_ARROW braced_term, SEMI / RBRACE]
// [101, regex_pattern → • regex_pattern_item, FAT_ARROW]
// [102, regex_pattern → • regex_pattern_item COMMA regex_pattern, FAT_ARROW]
// [103, regex_pattern_item → • regex, COMMA / FAT_ARROW]
// [104, regex_pattern_item → • regex AS lident, COMMA / FAT_ARROW]
// [105, regex → • STRING, COMMA / AS / FAT_ARROW]
// [106, regex → • INTERP, COMMA / AS / FAT_ARROW]
// [107, regex → • uident, COMMA / AS / FAT_ARROW]
// [112, uident → • UIDENT, COMMA / AS / FAT_ARROW]
fn yy_state_131(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_UIDENT => Shift(yy_state_104)
    NT_uident => Shift(yy_state_105)
    T_INTERP => Shift(yy_state_106)
    T_STRING => Shift(yy_state_107)
    NT_regex => Shift(yy_state_108)
    NT_regex_pattern_item => Shift(yy_state_111)
    NT_regex_pattern => Shift(yy_state_114)
    NT_lex_case => Shift(yy_state_130)
    NT_lex_cases => Shift(yy_state_132)
    T_RBRACE => Reduce(2, NT_lex_cases, yy_action_105)
    _ => Error
  }
}

// [99, lex_cases → lex_case SEMI lex_cases •, RBRACE]
fn yy_state_132(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_lex_cases, yy_action_176)
}

// [5, term → LIDENT_LEX lident LBRACE lex_cases • RBRACE, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_133(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_134)
    _ => Error
  }
}

// [5, term → LIDENT_LEX lident LBRACE lex_cases RBRACE •, $ / CHAR / INT / BYTE / BYTES / FLOAT / STRING / MULTILINE_STRING / MULTILINE_INTERP / INTERP / ATTRIBUTE / LIDENT / UIDENT / LIDENT_LEX / UIDENT_BYTES_REGEX / POST_LABEL / COMMENT / NEWLINE / INFIX1 / INFIX2 / INFIX3 / INFIX4 / AUGMENTED_ASSIGNMENT / EOF / FALSE / TRUE / PUB / PRIV / READONLY / IMPORT / EXTERN / BREAK / CONTINUE / STRUCT / ENUM / TRAIT / DERIVE / IMPL / WITH / RAISE / THROW / TRY / CATCH / ASYNC / TYPEALIAS / TRAITALIAS / FNALIAS / EQUAL / LPAREN / RPAREN / COMMA / MINUS / QUESTION / EXCLAMATION / DOT_LIDENT / DOT_UIDENT / DOT_INT / DOT_LPAREN / COLONCOLON / COLON / SEMI / LBRACKET / PLUS / RBRACKET / UNDERSCORE / BAR / LBRACE / RBRACE / AMPERAMPER / AMPER / CARET / BARBAR / PACKAGE_NAME / AS / PIPE / ELSE / FN / IF / LET / CONST / MATCH / MUTABLE / TYPE / FAT_ARROW / THIN_ARROW / WHILE / RETURN / DOTDOT / RANGE_INCLUSIVE / RANGE_EXCLUSIVE / ELLIPSIS / TEST / LOOP / GUARD / FOR / IN / IS]
fn yy_state_134(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_term, yy_action_179)
}

// [0, start → terms •, $]
fn yy_state_135(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_start, yy_action_142)
}

fn yy_parse[T](
  tokens : Array[(Token, Position, Position)],
  start : YYState,
  return_ : (YYObj) -> T,
  initial_pos? : Position,
) -> T!ParseError {
  let mut cursor = 0
  let mut state_stack : @immut/list.T[YYState] = Cons(start, Nil)
  let data_stack : Array[(YYObj, Position, Position)] = []
  let mut last_pos = initial_pos.or(tokens[0].1)
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

fn error(stack : @immut/list.T[YYState], token : Token?, loc : (Position, Position)) -> Unit!ParseError {
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
  for term in ([(T_CHAR, TK_CHAR), (T_INT, TK_INT), (T_BYTE, TK_BYTE), (T_BYTES, TK_BYTES), (T_FLOAT, TK_FLOAT), (T_STRING, TK_STRING), (T_MULTILINE_STRING, TK_MULTILINE_STRING), (T_MULTILINE_INTERP, TK_MULTILINE_INTERP), (T_INTERP, TK_INTERP), (T_ATTRIBUTE, TK_ATTRIBUTE), (T_LIDENT, TK_LIDENT), (T_UIDENT, TK_UIDENT), (T_LIDENT_LEX, TK_LIDENT_LEX), (T_UIDENT_BYTES_REGEX, TK_UIDENT_BYTES_REGEX), (T_POST_LABEL, TK_POST_LABEL), (T_COMMENT, TK_COMMENT), (T_NEWLINE, TK_NEWLINE), (T_INFIX1, TK_INFIX1), (T_INFIX2, TK_INFIX2), (T_INFIX3, TK_INFIX3), (T_INFIX4, TK_INFIX4), (T_AUGMENTED_ASSIGNMENT, TK_AUGMENTED_ASSIGNMENT), (T_EOF, TK_EOF), (T_FALSE, TK_FALSE), (T_TRUE, TK_TRUE), (T_PUB, TK_PUB), (T_PRIV, TK_PRIV), (T_READONLY, TK_READONLY), (T_IMPORT, TK_IMPORT), (T_EXTERN, TK_EXTERN), (T_BREAK, TK_BREAK), (T_CONTINUE, TK_CONTINUE), (T_STRUCT, TK_STRUCT), (T_ENUM, TK_ENUM), (T_TRAIT, TK_TRAIT), (T_DERIVE, TK_DERIVE), (T_IMPL, TK_IMPL), (T_WITH, TK_WITH), (T_RAISE, TK_RAISE), (T_THROW, TK_THROW), (T_TRY, TK_TRY), (T_CATCH, TK_CATCH), (T_ASYNC, TK_ASYNC), (T_TYPEALIAS, TK_TYPEALIAS), (T_TRAITALIAS, TK_TRAITALIAS), (T_FNALIAS, TK_FNALIAS), (T_EQUAL, TK_EQUAL), (T_LPAREN, TK_LPAREN), (T_RPAREN, TK_RPAREN), (T_COMMA, TK_COMMA), (T_MINUS, TK_MINUS), (T_QUESTION, TK_QUESTION), (T_EXCLAMATION, TK_EXCLAMATION), (T_DOT_LIDENT, TK_DOT_LIDENT), (T_DOT_UIDENT, TK_DOT_UIDENT), (T_DOT_INT, TK_DOT_INT), (T_DOT_LPAREN, TK_DOT_LPAREN), (T_COLONCOLON, TK_COLONCOLON), (T_COLON, TK_COLON), (T_SEMI, TK_SEMI), (T_LBRACKET, TK_LBRACKET), (T_PLUS, TK_PLUS), (T_RBRACKET, TK_RBRACKET), (T_UNDERSCORE, TK_UNDERSCORE), (T_BAR, TK_BAR), (T_LBRACE, TK_LBRACE), (T_RBRACE, TK_RBRACE), (T_AMPERAMPER, TK_AMPERAMPER), (T_AMPER, TK_AMPER), (T_CARET, TK_CARET), (T_BARBAR, TK_BARBAR), (T_PACKAGE_NAME, TK_PACKAGE_NAME), (T_AS, TK_AS), (T_PIPE, TK_PIPE), (T_ELSE, TK_ELSE), (T_FN, TK_FN), (T_IF, TK_IF), (T_LET, TK_LET), (T_CONST, TK_CONST), (T_MATCH, TK_MATCH), (T_MUTABLE, TK_MUTABLE), (T_TYPE, TK_TYPE), (T_FAT_ARROW, TK_FAT_ARROW), (T_THIN_ARROW, TK_THIN_ARROW), (T_WHILE, TK_WHILE), (T_RETURN, TK_RETURN), (T_DOTDOT, TK_DOTDOT), (T_RANGE_INCLUSIVE, TK_RANGE_INCLUSIVE), (T_RANGE_EXCLUSIVE, TK_RANGE_EXCLUSIVE), (T_ELLIPSIS, TK_ELLIPSIS), (T_TEST, TK_TEST), (T_LOOP, TK_LOOP), (T_GUARD, TK_GUARD), (T_FOR, TK_FOR), (T_IN, TK_IN), (T_IS, TK_IS)] : Array[(YYSymbol, TokenKind)]) {
    try_add(term.0, term.1)
  }
  match token {
    None => raise UnexpectedEndOfInput(loc.1, expected)
    Some(token) => raise UnexpectedToken(token, loc, expected)
  }
}

pub fn start(tokens : Array[(Token, Position, Position)], initial_pos? : Position) -> @ast.Program!ParseError {
  yy_parse!(
    tokens,
    yy_state_0,
    fn {
      YYObj__ast_Program(result) => result
      _ => panic()
    },
    initial_pos?,
  )
}

fn _get_symbol_start_pos(args : ArrayView[(YYObj, Position, Position)], last_pos : Position) -> Position {
  if args.length() == 0 {
    last_pos
  } else {
    for i = 0; i < args.length(); i = i + 1 {
      let (_, start_pos, end_pos) = args[i]
      if start_pos == end_pos {
        continue
      }
      return start_pos
    }
    args[args.length() - 1].2
  }
}
