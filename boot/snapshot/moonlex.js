function $i32_popcnt(a) {
  a = a - ((a >>> 1) & 0x55555555);
  a = (a & 0x33333333) + ((a >>> 2) & 0x33333333);
  a = (a + (a >>> 4)) & 0x0f0f0f0f;
  a = a + (a >>> 8);
  a = a + (a >>> 16);
  return a & 0x3f;
}
function $bound_check(arr, index) {
  if (index < 0 || index >= arr.length) throw new Error("Index out of bounds");
}
function $make_array_len_and_init(a, b) {
  const arr = new Array(a);
  for (let i = 0; i < a; i++) {
    arr[i] = b;
  }
  return arr;
}
function $compare_int(a, b) {
  return (a >= b) - (a <= b);
}
const $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$0$ = { $tag: 0 };
function $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$0$(param0, param1, param2, param3) {
  this._0 = param0;
  this._1 = param1;
  this._2 = param2;
  this._3 = param3;
}
$64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$0$.prototype.$tag = 1;
const $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$1$ = { $tag: 0 };
function $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$1$(param0, param1, param2, param3) {
  this._0 = param0;
  this._1 = param1;
  this._2 = param2;
  this._3 = param3;
}
$64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$1$.prototype.$tag = 1;
const $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$2$ = { $tag: 0 };
function $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$2$(param0, param1, param2, param3) {
  this._0 = param0;
  this._1 = param1;
  this._2 = param2;
  this._3 = param3;
}
$64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$2$.prototype.$tag = 1;
const $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$3$ = { $tag: 0 };
function $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$3$(param0, param1, param2, param3) {
  this._0 = param0;
  this._1 = param1;
  this._2 = param2;
  this._3 = param3;
}
$64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$3$.prototype.$tag = 1;
const $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$4$ = { $tag: 0 };
function $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$4$(param0, param1, param2, param3) {
  this._0 = param0;
  this._1 = param1;
  this._2 = param2;
  this._3 = param3;
}
$64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$4$.prototype.$tag = 1;
const $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$5$ = { $tag: 0 };
function $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$5$(param0, param1, param2, param3) {
  this._0 = param0;
  this._1 = param1;
  this._2 = param2;
  this._3 = param3;
}
$64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$5$.prototype.$tag = 1;
class $PanicError extends Error {}
function $panic() {
  throw new $PanicError();
}
function Result$Err$6$(param0) {
  this._0 = param0;
}
Result$Err$6$.prototype.$tag = 0;
function Result$Ok$6$(param0) {
  this._0 = param0;
}
Result$Ok$6$.prototype.$tag = 1;
function Error$moonbitlang$47$x$47$fs$46$IOError$46$IOError(param0) {
  this._0 = param0;
}
Error$moonbitlang$47$x$47$fs$46$IOError$46$IOError.prototype.$tag = 14;
function Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__immut_list_T__type_Rule_$46$YYObj__immut_list_T__type_Rule_(param0) {
  this._0 = param0;
}
Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__immut_list_T__type_Rule_$46$YYObj__immut_list_T__type_Rule_.prototype.$tag = 13;
function Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Rule$46$YYObj__type_Rule(param0) {
  this._0 = param0;
}
Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Rule$46$YYObj__type_Rule.prototype.$tag = 12;
function Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj___type_Regex___type_CodeBlock_$46$YYObj___type_Regex___type_CodeBlock_(param0) {
  this._0 = param0;
}
Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj___type_Regex___type_CodeBlock_$46$YYObj___type_Regex___type_CodeBlock_.prototype.$tag = 11;
function Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__immut_list_T___type_Regex___type_CodeBlock__$46$YYObj__immut_list_T___type_Regex___type_CodeBlock__(param0) {
  this._0 = param0;
}
Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__immut_list_T___type_Regex___type_CodeBlock__$46$YYObj__immut_list_T___type_Regex___type_CodeBlock__.prototype.$tag = 10;
function Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__eof_char_set_T$46$YYObj__eof_char_set_T(param0) {
  this._0 = param0;
}
Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__eof_char_set_T$46$YYObj__eof_char_set_T.prototype.$tag = 9;
function Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(param0) {
  this._0 = param0;
}
Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex.prototype.$tag = 8;
function Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Unit$46$YYObj_Unit(param0) {
  this._0 = param0;
}
Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Unit$46$YYObj_Unit.prototype.$tag = 7;
function Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Lex$46$YYObj__type_Lex(param0) {
  this._0 = param0;
}
Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Lex$46$YYObj__type_Lex.prototype.$tag = 6;
function Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Char$46$YYObj_Char(param0) {
  this._0 = param0;
}
Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Char$46$YYObj_Char.prototype.$tag = 5;
function Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_String$46$YYObj_String(param0) {
  this._0 = param0;
}
Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_String$46$YYObj_String.prototype.$tag = 4;
function Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__String__String_$46$YYObj__String__String_(param0) {
  this._0 = param0;
}
Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__String__String_$46$YYObj__String__String_.prototype.$tag = 3;
const Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void = { $tag: 2 };
function Error$moonbitlang$47$ulex$47$lib$47$parser$46$ParseError$46$UnexpectedToken(param0, param1, param2) {
  this._0 = param0;
  this._1 = param1;
  this._2 = param2;
}
Error$moonbitlang$47$ulex$47$lib$47$parser$46$ParseError$46$UnexpectedToken.prototype.$tag = 1;
function Error$moonbitlang$47$core$47$strconv$46$StrConvError$46$StrConvError(param0) {
  this._0 = param0;
}
Error$moonbitlang$47$core$47$strconv$46$StrConvError$46$StrConvError.prototype.$tag = 0;
const $9223372036854775807L = { hi: 2147483647, lo: -1 };
const $10L = { hi: 0, lo: 10 };
const $1L = { hi: 0, lo: 1 };
const $16L = { hi: 0, lo: 16 };
const $_9223372036854775808L = { hi: -2147483648, lo: 0 };
function Result$Err$7$(param0) {
  this._0 = param0;
}
Result$Err$7$.prototype.$tag = 0;
function Result$Ok$7$(param0) {
  this._0 = param0;
}
Result$Ok$7$.prototype.$tag = 1;
function Result$Err$8$(param0) {
  this._0 = param0;
}
Result$Err$8$.prototype.$tag = 0;
function Result$Ok$8$(param0) {
  this._0 = param0;
}
Result$Ok$8$.prototype.$tag = 1;
function Result$Err$9$(param0) {
  this._0 = param0;
}
Result$Err$9$.prototype.$tag = 0;
function Result$Ok$9$(param0) {
  this._0 = param0;
}
Result$Ok$9$.prototype.$tag = 1;
const $0L = { hi: 0, lo: 0 };
const moonbitlang$core$array$$JSArray$copy = (arr) => arr.slice(0);
const $64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Empty$10$ = { $tag: 0 };
function $64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Tree$10$(param0, param1, param2, param3, param4) {
  this._0 = param0;
  this._1 = param1;
  this._2 = param2;
  this._3 = param3;
  this._4 = param4;
}
$64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Tree$10$.prototype.$tag = 1;
const $64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Empty$11$ = { $tag: 0 };
function $64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Tree$11$(param0, param1, param2, param3, param4) {
  this._0 = param0;
  this._1 = param1;
  this._2 = param2;
  this._3 = param3;
  this._4 = param4;
}
$64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Tree$11$.prototype.$tag = 1;
const $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Empty$12$ = { $tag: 0 };
function $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Leaf$12$(param0, param1) {
  this._0 = param0;
  this._1 = param1;
}
$64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Leaf$12$.prototype.$tag = 1;
function $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Collision$12$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Collision$12$.prototype.$tag = 2;
function $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Branch$12$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Branch$12$.prototype.$tag = 3;
const $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Empty$13$ = { $tag: 0 };
function $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Leaf$13$(param0, param1) {
  this._0 = param0;
  this._1 = param1;
}
$64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Leaf$13$.prototype.$tag = 1;
function $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Collision$13$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Collision$13$.prototype.$tag = 2;
function $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Branch$13$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Branch$13$.prototype.$tag = 3;
const Option$None$14$ = { $tag: 0 };
function Option$Some$14$(param0) {
  this._0 = param0;
}
Option$Some$14$.prototype.$tag = 1;
function $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$Just_One$12$(param0, param1) {
  this._0 = param0;
  this._1 = param1;
}
$64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$Just_One$12$.prototype.$tag = 0;
function $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$12$(param0, param1, param2) {
  this._0 = param0;
  this._1 = param1;
  this._2 = param2;
}
$64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$12$.prototype.$tag = 1;
function $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$Just_One$13$(param0, param1) {
  this._0 = param0;
  this._1 = param1;
}
$64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$Just_One$13$.prototype.$tag = 0;
function $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$13$(param0, param1, param2) {
  this._0 = param0;
  this._1 = param1;
  this._2 = param2;
}
$64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$13$.prototype.$tag = 1;
const $64$moonbitlang$47$core$47$builtin$46$ForeachResult$Continue$15$ = { $tag: 0 };
function $64$moonbitlang$47$core$47$builtin$46$ForeachResult$Break$15$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$builtin$46$ForeachResult$Break$15$.prototype.$tag = 1;
function $64$moonbitlang$47$core$47$builtin$46$ForeachResult$Return$15$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$builtin$46$ForeachResult$Return$15$.prototype.$tag = 2;
function $64$moonbitlang$47$core$47$builtin$46$ForeachResult$Error$15$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$builtin$46$ForeachResult$Error$15$.prototype.$tag = 3;
function $64$moonbitlang$47$core$47$builtin$46$ForeachResult$JumpOuter$15$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$builtin$46$ForeachResult$JumpOuter$15$.prototype.$tag = 4;
const $64$moonbitlang$47$core$47$immut$47$list$46$T$Nil$16$ = { $tag: 0 };
function $64$moonbitlang$47$core$47$immut$47$list$46$T$Cons$16$(param0, param1) {
  this._0 = param0;
  this._1 = param1;
}
$64$moonbitlang$47$core$47$immut$47$list$46$T$Cons$16$.prototype.$tag = 1;
const $bytes_literal$0 = new Uint8Array();
function $unsafe_make_string(a, b) {
  return String.fromCodePoint(b).repeat(a);
}
const Option$None$17$ = { $tag: 0 };
function Option$Some$17$(param0) {
  this._0 = param0;
}
Option$Some$17$.prototype.$tag = 1;
const moonbitlang$core$builtin$$JSArray$set_length = (arr, len) => { arr.length = len; };
const moonbitlang$core$builtin$$JSArray$push = (arr, val) => { arr.push(val); };
const moonbitlang$core$builtin$$JSArray$pop = (arr) => arr.pop();
function $makebytes(a, b) {
  const arr = new Uint8Array(a);
  for (let i = 0; i < a; i++) {
    arr[i] = b;
  }
  return arr;
}
const moonbitlang$core$builtin$$get_int64_wasm_helper = function f() {   if (f._exports) return f._exports;   return f._exports = new WebAssembly.Instance(new WebAssembly.Module(new Uint8Array([0, 97, 115, 109, 1, 0, 0, 0, 1, 13, 2, 96, 0, 1, 127, 96, 4, 127, 127, 127, 127, 1, 127, 3, 7, 6, 0, 1, 1, 1, 1, 1, 6, 6, 1, 127, 1, 65, 0, 11, 7, 50, 6, 3, 109, 117, 108, 0, 1, 5, 100, 105, 118, 95, 115, 0, 2, 5, 100, 105, 118, 95, 117, 0, 3, 5, 114, 101, 109, 95, 115, 0, 4, 5, 114, 101, 109, 95, 117, 0, 5, 8, 103, 101, 116, 95, 104, 105, 103, 104, 0, 0, 10, 191, 1, 6, 4, 0, 35, 0, 11, 36, 1, 1, 126, 32, 0, 173, 32, 1, 173, 66, 32, 134, 132, 32, 2, 173, 32, 3, 173, 66, 32, 134, 132, 126, 34, 4, 66, 32, 135, 167, 36, 0, 32, 4, 167, 11, 36, 1, 1, 126, 32, 0, 173, 32, 1, 173, 66, 32, 134, 132, 32, 2, 173, 32, 3, 173, 66, 32, 134, 132, 127, 34, 4, 66, 32, 135, 167, 36, 0, 32, 4, 167, 11, 36, 1, 1, 126, 32, 0, 173, 32, 1, 173, 66, 32, 134, 132, 32, 2, 173, 32, 3, 173, 66, 32, 134, 132, 128, 34, 4, 66, 32, 135, 167, 36, 0, 32, 4, 167, 11, 36, 1, 1, 126, 32, 0, 173, 32, 1, 173, 66, 32, 134, 132, 32, 2, 173, 32, 3, 173, 66, 32, 134, 132, 129, 34, 4, 66, 32, 135, 167, 36, 0, 32, 4, 167, 11, 36, 1, 1, 126, 32, 0, 173, 32, 1, 173, 66, 32, 134, 132, 32, 2, 173, 32, 3, 173, 66, 32, 134, 132, 130, 34, 4, 66, 32, 135, 167, 36, 0, 32, 4, 167, 11])), {}).exports; };
const moonbitlang$core$builtin$$MyInt64$compare = (a, b) => {   const ahi = a.hi;   const bhi = b.hi;   if (ahi < bhi) {     return -1;   }   if (ahi > bhi) {     return 1;   }   const alo = a.lo >>> 0;   const blo = b.lo >>> 0;   if (alo < blo) {     return -1;   }   if (alo > blo) {     return 1;   }   return 0; };
const $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Empty$18$ = { $tag: 0 };
function $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Node$18$(param0, param1, param2, param3, param4) {
  this._0 = param0;
  this._1 = param1;
  this._2 = param2;
  this._3 = param3;
  this._4 = param4;
}
$64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Node$18$.prototype.$tag = 1;
const $64$moonbitlang$47$ulex$47$lib$47$util$47$eof_char_set$46$EofCharRepr$Eof = { $tag: 0 };
function $64$moonbitlang$47$ulex$47$lib$47$util$47$eof_char_set$46$EofCharRepr$Char(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$ulex$47$lib$47$util$47$eof_char_set$46$EofCharRepr$Char.prototype.$tag = 1;
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$EOI = { $tag: 0 };
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$EOF = { $tag: 1 };
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$PARSE_LBRACE = { $tag: 2 };
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$REGEX = { $tag: 3 };
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$AS = { $tag: 4 };
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$UNDERSCORE = { $tag: 5 };
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$RBRACE = { $tag: 6 };
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$LPAREN = { $tag: 7 };
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$RPAREN = { $tag: 8 };
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$LBRACKET = { $tag: 9 };
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$RBRACKET = { $tag: 10 };
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$EQ = { $tag: 11 };
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$COLON = { $tag: 12 };
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$SEMICOLON = { $tag: 13 };
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$FAT_ARROW = { $tag: 14 };
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$BAR = { $tag: 15 };
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$STAR = { $tag: 16 };
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$PLUS = { $tag: 17 };
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$QUESTION = { $tag: 18 };
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$MINUS = { $tag: 19 };
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$CARET = { $tag: 20 };
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$BACKSLASH = { $tag: 21 };
function $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE.prototype.$tag = 22;
function $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$LBRACE_CODE_RBRACE(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$LBRACE_CODE_RBRACE.prototype.$tag = 23;
function $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$LC_IDENT(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$LC_IDENT.prototype.$tag = 24;
function $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$CHAR(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$CHAR.prototype.$tag = 25;
function $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$STRING(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$STRING.prototype.$tag = 26;
function Result$Err$19$(param0) {
  this._0 = param0;
}
Result$Err$19$.prototype.$tag = 0;
function Result$Ok$19$(param0) {
  this._0 = param0;
}
Result$Ok$19$.prototype.$tag = 1;
function Result$Err$20$(param0) {
  this._0 = param0;
}
Result$Err$20$.prototype.$tag = 0;
function Result$Ok$20$(param0) {
  this._0 = param0;
}
Result$Ok$20$.prototype.$tag = 1;
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Accept = { $tag: 0 };
function $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift.prototype.$tag = 1;
function $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Reduce(param0, param1, param2) {
  this._0 = param0;
  this._1 = param1;
  this._2 = param2;
}
$64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Reduce.prototype.$tag = 2;
function $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(param0, param1, param2) {
  this._0 = param0;
  this._1 = param1;
  this._2 = param2;
}
$64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead.prototype.$tag = 3;
const $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error = { $tag: 4 };
const $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$EOF = { $tag: 0 };
function $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Character(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Character.prototype.$tag = 1;
function $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Repetition(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Repetition.prototype.$tag = 2;
const $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Epsilon = { $tag: 3 };
function $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Alter(param0, param1) {
  this._0 = param0;
  this._1 = param1;
}
$64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Alter.prototype.$tag = 4;
function $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Concat(param0, param1) {
  this._0 = param0;
  this._1 = param1;
}
$64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Concat.prototype.$tag = 5;
function $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Capture(param0, param1) {
  this._0 = param0;
  this._1 = param1;
}
$64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Capture.prototype.$tag = 6;
function $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Bytes(param0, param1) {
  this._0 = param0;
  this._1 = param1;
}
$64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Bytes.prototype.$tag = 7;
const $64$moonbitlang$47$core$47$immut$47$list$46$T$Nil$21$ = { $tag: 0 };
function $64$moonbitlang$47$core$47$immut$47$list$46$T$Cons$21$(param0, param1) {
  this._0 = param0;
  this._1 = param1;
}
$64$moonbitlang$47$core$47$immut$47$list$46$T$Cons$21$.prototype.$tag = 1;
const $64$moonbitlang$47$core$47$immut$47$list$46$T$Nil$22$ = { $tag: 0 };
function $64$moonbitlang$47$core$47$immut$47$list$46$T$Cons$22$(param0, param1) {
  this._0 = param0;
  this._1 = param1;
}
$64$moonbitlang$47$core$47$immut$47$list$46$T$Cons$22$.prototype.$tag = 1;
const $64$moonbitlang$47$x$47$encoding$46$Decode$End = { $tag: 0 };
function $64$moonbitlang$47$x$47$encoding$46$Decode$Refill(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$x$47$encoding$46$Decode$Refill.prototype.$tag = 1;
function $64$moonbitlang$47$x$47$encoding$46$Decode$Malformed(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$x$47$encoding$46$Decode$Malformed.prototype.$tag = 2;
function $64$moonbitlang$47$x$47$encoding$46$Decode$Uchar(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$x$47$encoding$46$Decode$Uchar.prototype.$tag = 3;
function $64$moonbitlang$47$x$47$encoding$46$UTF16Decode$Hi(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$x$47$encoding$46$UTF16Decode$Hi.prototype.$tag = 0;
function $64$moonbitlang$47$x$47$encoding$46$UTF16Decode$UTF16Malformed(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$x$47$encoding$46$UTF16Decode$UTF16Malformed.prototype.$tag = 1;
function $64$moonbitlang$47$x$47$encoding$46$UTF16Decode$UTF16Uchar(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$x$47$encoding$46$UTF16Decode$UTF16Uchar.prototype.$tag = 2;
function $64$moonbitlang$47$ulex$47$lib$47$automaton$46$TagOp$Set(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$ulex$47$lib$47$automaton$46$TagOp$Set.prototype.$tag = 0;
function $64$moonbitlang$47$ulex$47$lib$47$automaton$46$TagOp$Copy(param0, param1) {
  this._0 = param0;
  this._1 = param1;
}
$64$moonbitlang$47$ulex$47$lib$47$automaton$46$TagOp$Copy.prototype.$tag = 1;
const $64$moonbitlang$47$core$47$builtin$46$ForeachResult$Continue$23$ = { $tag: 0 };
function $64$moonbitlang$47$core$47$builtin$46$ForeachResult$Break$23$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$builtin$46$ForeachResult$Break$23$.prototype.$tag = 1;
function $64$moonbitlang$47$core$47$builtin$46$ForeachResult$Return$23$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$builtin$46$ForeachResult$Return$23$.prototype.$tag = 2;
function $64$moonbitlang$47$core$47$builtin$46$ForeachResult$Error$23$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$builtin$46$ForeachResult$Error$23$.prototype.$tag = 3;
function $64$moonbitlang$47$core$47$builtin$46$ForeachResult$JumpOuter$23$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$builtin$46$ForeachResult$JumpOuter$23$.prototype.$tag = 4;
function $bytes_equal(a, b) {
    if (a.length !== b.length) return false;
  for (let i = 0; i < a.length; i++) {
    if (a[i] !== b[i]) return false;
  }
  return true;
}
const $64$moonbitlang$47$ulex$47$lib$47$automaton$46$Input$Eps = { $tag: 0 };
function $64$moonbitlang$47$ulex$47$lib$47$automaton$46$Input$EChar(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$ulex$47$lib$47$automaton$46$Input$EChar.prototype.$tag = 1;
function $64$moonbitlang$47$ulex$47$lib$47$codegen$47$internal$47$codeblock_parser$46$SubstItemDesc$StartPosOf(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$ulex$47$lib$47$codegen$47$internal$47$codeblock_parser$46$SubstItemDesc$StartPosOf.prototype.$tag = 0;
function $64$moonbitlang$47$ulex$47$lib$47$codegen$47$internal$47$codeblock_parser$46$SubstItemDesc$EndPosOf(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$ulex$47$lib$47$codegen$47$internal$47$codeblock_parser$46$SubstItemDesc$EndPosOf.prototype.$tag = 1;
const $64$moonbitlang$47$ulex$47$lib$47$codegen$47$internal$47$codeblock_parser$46$SubstItemDesc$StartPos = { $tag: 2 };
const $64$moonbitlang$47$ulex$47$lib$47$codegen$47$internal$47$codeblock_parser$46$SubstItemDesc$EndPos = { $tag: 3 };
function $64$Yoorkin$47$ArgParser$46$Spec$Unit(param0) {
  this._0 = param0;
}
$64$Yoorkin$47$ArgParser$46$Spec$Unit.prototype.$tag = 0;
function $64$Yoorkin$47$ArgParser$46$Spec$String(param0) {
  this._0 = param0;
}
$64$Yoorkin$47$ArgParser$46$Spec$String.prototype.$tag = 1;
function $64$Yoorkin$47$ArgParser$46$Spec$Set_string(param0) {
  this._0 = param0;
}
$64$Yoorkin$47$ArgParser$46$Spec$Set_string.prototype.$tag = 2;
function $64$Yoorkin$47$ArgParser$46$Spec$Set(param0) {
  this._0 = param0;
}
$64$Yoorkin$47$ArgParser$46$Spec$Set.prototype.$tag = 3;
function $64$Yoorkin$47$ArgParser$46$Spec$Clear(param0) {
  this._0 = param0;
}
$64$Yoorkin$47$ArgParser$46$Spec$Clear.prototype.$tag = 4;
const moonbitlang$x$sys$internal$ffi$$get_cli_args_internal = function() {   return process.argv;  };
const moonbitlang$x$fs$$read_file_ffi = function(path) {    var fs = require('fs');    try {      const content = fs.readFileSync(path);      globalThis.fileContent = content;      return 0;    } catch (error) {      globalThis.errorMessage = error.message;      return -1;    }  };
const moonbitlang$x$fs$$write_file_ffi = function(path, content) {    var fs = require('fs');    try {      fs.writeFileSync(path, Buffer.from(content));      return 0;    } catch (error) {      globalThis.errorMessage = error.message;      return -1;    }  };
const moonbitlang$x$fs$$get_file_content_ffi = function() {    return globalThis.fileContent;  };
const moonbitlang$x$fs$$get_error_message_ffi = function() {    return globalThis.errorMessage || '';  };
function Result$Err$24$(param0) {
  this._0 = param0;
}
Result$Err$24$.prototype.$tag = 0;
function Result$Ok$24$(param0) {
  this._0 = param0;
}
Result$Ok$24$.prototype.$tag = 1;
function Result$Err$25$(param0) {
  this._0 = param0;
}
Result$Err$25$.prototype.$tag = 0;
function Result$Ok$25$(param0) {
  this._0 = param0;
}
Result$Ok$25$.prototype.$tag = 1;
function Result$Err$26$(param0) {
  this._0 = param0;
}
Result$Err$26$.prototype.$tag = 0;
function Result$Ok$26$(param0) {
  this._0 = param0;
}
Result$Ok$26$.prototype.$tag = 1;
function Result$Err$27$(param0) {
  this._0 = param0;
}
Result$Err$27$.prototype.$tag = 0;
function Result$Ok$27$(param0) {
  this._0 = param0;
}
Result$Ok$27$.prototype.$tag = 1;
function Result$Err$28$(param0) {
  this._0 = param0;
}
Result$Err$28$.prototype.$tag = 0;
function Result$Ok$28$(param0) {
  this._0 = param0;
}
Result$Ok$28$.prototype.$tag = 1;
function Result$Err$29$(param0) {
  this._0 = param0;
}
Result$Err$29$.prototype.$tag = 0;
function Result$Ok$29$(param0) {
  this._0 = param0;
}
Result$Ok$29$.prototype.$tag = 1;
const moonbitlang$ulex$main$util$$ffi_exit = (code) => { process.exit(code); };
const moonbitlang$ulex$main$util$$println_to_stderr = (msg) => { console.error("%s", msg); };
const moonbitlang$core$strconv$$base_err_str = "invalid base";
const moonbitlang$core$strconv$$range_err_str = "value out of range";
const moonbitlang$core$strconv$$syntax_err_str = "invalid syntax";
const moonbitlang$core$int$$max_value = 2147483647;
const moonbitlang$x$encoding$$utf_8_len = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
const moonbitlang$ulex$main$$_init$42$46$usage$124$1 = "Usage: moonlex [options] <input-file>";
const moonbitlang$ulex$lib$parser$$named_regexes = moonbitlang$core$builtin$$Map$from_array$0$([]);
const moonbitlang$ulex$lib$util$eof_char_set$$eof = moonbitlang$ulex$lib$util$diet$$singleton$1$(moonbitlang$ulex$lib$util$eof_char_set$$EofChar$eof());
const moonbitlang$ulex$lib$util$eof_char_set$$any = moonbitlang$ulex$lib$util$eof_char_set$$range(0, 1114111);
const moonbitlang$ulex$lib$util$eof_char_set$$empty = moonbitlang$ulex$lib$util$diet$$empty$1$();
function moonbitlang$core$immut$internal$sparse_array$$Bitset$has(self, idx) {
  return (self & 1 << idx) !== 0;
}
function moonbitlang$core$immut$internal$sparse_array$$Bitset$index_of(self, idx) {
  return $i32_popcnt(self & ((1 << idx >>> 0) - (1 >>> 0) | 0));
}
function moonbitlang$core$immut$internal$sparse_array$$Bitset$add(self, idx) {
  return self | 1 << idx;
}
function moonbitlang$core$immut$internal$sparse_array$$Bitset$size(self) {
  return $i32_popcnt(self);
}
function moonbitlang$core$immut$internal$sparse_array$$singleton$2$(idx, value) {
  return { elem_info: moonbitlang$core$immut$internal$sparse_array$$Bitset$add(0, idx), data: [value] };
}
function moonbitlang$core$immut$internal$sparse_array$$singleton$3$(idx, value) {
  return { elem_info: moonbitlang$core$immut$internal$sparse_array$$Bitset$add(0, idx), data: [value] };
}
function moonbitlang$core$immut$internal$sparse_array$$SparseArray$op_get$2$(self, idx) {
  if (moonbitlang$core$immut$internal$sparse_array$$Bitset$has(self.elem_info, idx)) {
    const _tmp = self.data;
    const _tmp$2 = moonbitlang$core$immut$internal$sparse_array$$Bitset$index_of(self.elem_info, idx);
    $bound_check(_tmp, _tmp$2);
    return _tmp[_tmp$2];
  } else {
    return undefined;
  }
}
function moonbitlang$core$immut$internal$sparse_array$$SparseArray$op_get$3$(self, idx) {
  if (moonbitlang$core$immut$internal$sparse_array$$Bitset$has(self.elem_info, idx)) {
    const _tmp = self.data;
    const _tmp$2 = moonbitlang$core$immut$internal$sparse_array$$Bitset$index_of(self.elem_info, idx);
    $bound_check(_tmp, _tmp$2);
    return _tmp[_tmp$2];
  } else {
    return undefined;
  }
}
function moonbitlang$core$immut$internal$sparse_array$$SparseArray$add$2$(self, idx, value) {
  const old_data = self.data;
  const old_len = old_data.length;
  const new_len = old_len + 1 | 0;
  const pos_of_new_item = moonbitlang$core$immut$internal$sparse_array$$Bitset$index_of(self.elem_info, idx);
  const new_data = $make_array_len_and_init(new_len, value);
  moonbitlang$core$array$$FixedArray$blit_to$2$(old_data, new_data, pos_of_new_item, moonbitlang$core$array$$FixedArray$blit_to$46$src_offset$46$default$2$(), moonbitlang$core$array$$FixedArray$blit_to$46$dst_offset$46$default$2$());
  moonbitlang$core$array$$FixedArray$blit_to$2$(old_data, new_data, old_len - pos_of_new_item | 0, pos_of_new_item, pos_of_new_item + 1 | 0);
  return { elem_info: moonbitlang$core$immut$internal$sparse_array$$Bitset$add(self.elem_info, idx), data: new_data };
}
function moonbitlang$core$immut$internal$sparse_array$$SparseArray$add$3$(self, idx, value) {
  const old_data = self.data;
  const old_len = old_data.length;
  const new_len = old_len + 1 | 0;
  const pos_of_new_item = moonbitlang$core$immut$internal$sparse_array$$Bitset$index_of(self.elem_info, idx);
  const new_data = $make_array_len_and_init(new_len, value);
  moonbitlang$core$array$$FixedArray$blit_to$3$(old_data, new_data, pos_of_new_item, moonbitlang$core$array$$FixedArray$blit_to$46$src_offset$46$default$3$(), moonbitlang$core$array$$FixedArray$blit_to$46$dst_offset$46$default$3$());
  moonbitlang$core$array$$FixedArray$blit_to$3$(old_data, new_data, old_len - pos_of_new_item | 0, pos_of_new_item, pos_of_new_item + 1 | 0);
  return { elem_info: moonbitlang$core$immut$internal$sparse_array$$Bitset$add(self.elem_info, idx), data: new_data };
}
function moonbitlang$core$immut$internal$sparse_array$$SparseArray$replace$2$(self, idx, value) {
  const new_data = moonbitlang$core$array$$FixedArray$copy$2$(self.data);
  const _tmp = moonbitlang$core$immut$internal$sparse_array$$Bitset$index_of(self.elem_info, idx);
  $bound_check(new_data, _tmp);
  new_data[_tmp] = value;
  return { elem_info: self.elem_info, data: new_data };
}
function moonbitlang$core$immut$internal$sparse_array$$SparseArray$replace$3$(self, idx, value) {
  const new_data = moonbitlang$core$array$$FixedArray$copy$3$(self.data);
  const _tmp = moonbitlang$core$immut$internal$sparse_array$$Bitset$index_of(self.elem_info, idx);
  $bound_check(new_data, _tmp);
  new_data[_tmp] = value;
  return { elem_info: self.elem_info, data: new_data };
}
function moonbitlang$core$immut$internal$sparse_array$$SparseArray$each$2$(self, f) {
  const _end4 = moonbitlang$core$immut$internal$sparse_array$$Bitset$size(self.elem_info);
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i < _end4) {
      const _tmp$2 = self.data;
      $bound_check(_tmp$2, i);
      f(_tmp$2[i]);
      _tmp = i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$tuple$$curry$4$(f) {
  return (x) => (y) => f(x, y);
}
function moonbitlang$core$tuple$$curry$5$(f) {
  return (x) => (y) => f(x, y);
}
function moonbitlang$core$sorted_set$$new$6$() {
  return { root: undefined, size: 0 };
}
function moonbitlang$core$sorted_set$$new$7$() {
  return { root: undefined, size: 0 };
}
function moonbitlang$core$sorted_set$$new$8$() {
  return { root: undefined, size: 0 };
}
function moonbitlang$core$sorted_set$$height$6$(node) {
  if (node === undefined) {
    return 0;
  } else {
    const _Some = node;
    const _n = _Some;
    return _n.height;
  }
}
function moonbitlang$core$sorted_set$$height$7$(node) {
  if (node === undefined) {
    return 0;
  } else {
    const _Some = node;
    const _n = _Some;
    return _n.height;
  }
}
function moonbitlang$core$sorted_set$$height$8$(node) {
  if (node === undefined) {
    return 0;
  } else {
    const _Some = node;
    const _n = _Some;
    return _n.height;
  }
}
function moonbitlang$core$sorted_set$$height_ge$6$(x1, x2) {
  if (x2 === undefined) {
    return true;
  } else {
    const _Some = x2;
    const _n2 = _Some;
    if (x1 === undefined) {
      return false;
    } else {
      const _Some$2 = x1;
      const _n1 = _Some$2;
      return _n1.height >= _n2.height;
    }
  }
}
function moonbitlang$core$sorted_set$$height_ge$7$(x1, x2) {
  if (x2 === undefined) {
    return true;
  } else {
    const _Some = x2;
    const _n2 = _Some;
    if (x1 === undefined) {
      return false;
    } else {
      const _Some$2 = x1;
      const _n1 = _Some$2;
      return _n1.height >= _n2.height;
    }
  }
}
function moonbitlang$core$sorted_set$$height_ge$8$(x1, x2) {
  if (x2 === undefined) {
    return true;
  } else {
    const _Some = x2;
    const _n2 = _Some;
    if (x1 === undefined) {
      return false;
    } else {
      const _Some$2 = x1;
      const _n1 = _Some$2;
      return _n1.height >= _n2.height;
    }
  }
}
function moonbitlang$core$sorted_set$$max(x, y) {
  return x > y ? x : y;
}
function moonbitlang$core$sorted_set$$Node$update_height$6$(self) {
  self.height = 1 + moonbitlang$core$sorted_set$$max(moonbitlang$core$sorted_set$$height$6$(self.left), moonbitlang$core$sorted_set$$height$6$(self.right)) | 0;
}
function moonbitlang$core$sorted_set$$Node$update_height$7$(self) {
  self.height = 1 + moonbitlang$core$sorted_set$$max(moonbitlang$core$sorted_set$$height$7$(self.left), moonbitlang$core$sorted_set$$height$7$(self.right)) | 0;
}
function moonbitlang$core$sorted_set$$Node$update_height$8$(self) {
  self.height = 1 + moonbitlang$core$sorted_set$$max(moonbitlang$core$sorted_set$$height$8$(self.left), moonbitlang$core$sorted_set$$height$8$(self.right)) | 0;
}
function moonbitlang$core$sorted_set$$rotate_l$6$(n) {
  const r = moonbitlang$core$option$$Option$unwrap$9$(n.right);
  n.right = r.left;
  r.left = n;
  moonbitlang$core$sorted_set$$Node$update_height$6$(n);
  moonbitlang$core$sorted_set$$Node$update_height$6$(r);
  return r;
}
function moonbitlang$core$sorted_set$$rotate_l$7$(n) {
  const r = moonbitlang$core$option$$Option$unwrap$10$(n.right);
  n.right = r.left;
  r.left = n;
  moonbitlang$core$sorted_set$$Node$update_height$7$(n);
  moonbitlang$core$sorted_set$$Node$update_height$7$(r);
  return r;
}
function moonbitlang$core$sorted_set$$rotate_l$8$(n) {
  const r = moonbitlang$core$option$$Option$unwrap$11$(n.right);
  n.right = r.left;
  r.left = n;
  moonbitlang$core$sorted_set$$Node$update_height$8$(n);
  moonbitlang$core$sorted_set$$Node$update_height$8$(r);
  return r;
}
function moonbitlang$core$sorted_set$$rotate_r$6$(n) {
  const l = moonbitlang$core$option$$Option$unwrap$9$(n.left);
  n.left = l.right;
  l.right = n;
  moonbitlang$core$sorted_set$$Node$update_height$6$(n);
  moonbitlang$core$sorted_set$$Node$update_height$6$(l);
  return l;
}
function moonbitlang$core$sorted_set$$rotate_r$7$(n) {
  const l = moonbitlang$core$option$$Option$unwrap$10$(n.left);
  n.left = l.right;
  l.right = n;
  moonbitlang$core$sorted_set$$Node$update_height$7$(n);
  moonbitlang$core$sorted_set$$Node$update_height$7$(l);
  return l;
}
function moonbitlang$core$sorted_set$$rotate_r$8$(n) {
  const l = moonbitlang$core$option$$Option$unwrap$11$(n.left);
  n.left = l.right;
  l.right = n;
  moonbitlang$core$sorted_set$$Node$update_height$8$(n);
  moonbitlang$core$sorted_set$$Node$update_height$8$(l);
  return l;
}
function moonbitlang$core$sorted_set$$rotate_lr$6$(n) {
  const l = moonbitlang$core$option$$Option$unwrap$9$(n.left);
  const v = moonbitlang$core$sorted_set$$rotate_l$6$(l);
  n.left = v;
  return moonbitlang$core$sorted_set$$rotate_r$6$(n);
}
function moonbitlang$core$sorted_set$$rotate_lr$7$(n) {
  const l = moonbitlang$core$option$$Option$unwrap$10$(n.left);
  const v = moonbitlang$core$sorted_set$$rotate_l$7$(l);
  n.left = v;
  return moonbitlang$core$sorted_set$$rotate_r$7$(n);
}
function moonbitlang$core$sorted_set$$rotate_lr$8$(n) {
  const l = moonbitlang$core$option$$Option$unwrap$11$(n.left);
  const v = moonbitlang$core$sorted_set$$rotate_l$8$(l);
  n.left = v;
  return moonbitlang$core$sorted_set$$rotate_r$8$(n);
}
function moonbitlang$core$sorted_set$$rotate_rl$6$(n) {
  const r = moonbitlang$core$option$$Option$unwrap$9$(n.right);
  const v = moonbitlang$core$sorted_set$$rotate_r$6$(r);
  n.right = v;
  return moonbitlang$core$sorted_set$$rotate_l$6$(n);
}
function moonbitlang$core$sorted_set$$rotate_rl$7$(n) {
  const r = moonbitlang$core$option$$Option$unwrap$10$(n.right);
  const v = moonbitlang$core$sorted_set$$rotate_r$7$(r);
  n.right = v;
  return moonbitlang$core$sorted_set$$rotate_l$7$(n);
}
function moonbitlang$core$sorted_set$$rotate_rl$8$(n) {
  const r = moonbitlang$core$option$$Option$unwrap$11$(n.right);
  const v = moonbitlang$core$sorted_set$$rotate_r$8$(r);
  n.right = v;
  return moonbitlang$core$sorted_set$$rotate_l$8$(n);
}
function moonbitlang$core$sorted_set$$balance$6$(root) {
  const l = root.left;
  const r = root.right;
  const hl = moonbitlang$core$sorted_set$$height$6$(l);
  const hr = moonbitlang$core$sorted_set$$height$6$(r);
  let new_root;
  if (hl > (hr + 1 | 0)) {
    const _bind = moonbitlang$core$option$$Option$unwrap$9$(l);
    const _ll = _bind.left;
    const _lr = _bind.right;
    new_root = moonbitlang$core$sorted_set$$height_ge$6$(_ll, _lr) ? moonbitlang$core$sorted_set$$rotate_r$6$(root) : moonbitlang$core$sorted_set$$rotate_lr$6$(root);
  } else {
    if (hr > (hl + 1 | 0)) {
      const _bind = moonbitlang$core$option$$Option$unwrap$9$(r);
      const _rl = _bind.left;
      const _rr = _bind.right;
      new_root = moonbitlang$core$sorted_set$$height_ge$6$(_rr, _rl) ? moonbitlang$core$sorted_set$$rotate_l$6$(root) : moonbitlang$core$sorted_set$$rotate_rl$6$(root);
    } else {
      new_root = root;
    }
  }
  moonbitlang$core$sorted_set$$Node$update_height$6$(new_root);
  return new_root;
}
function moonbitlang$core$sorted_set$$balance$7$(root) {
  const l = root.left;
  const r = root.right;
  const hl = moonbitlang$core$sorted_set$$height$7$(l);
  const hr = moonbitlang$core$sorted_set$$height$7$(r);
  let new_root;
  if (hl > (hr + 1 | 0)) {
    const _bind = moonbitlang$core$option$$Option$unwrap$10$(l);
    const _ll = _bind.left;
    const _lr = _bind.right;
    new_root = moonbitlang$core$sorted_set$$height_ge$7$(_ll, _lr) ? moonbitlang$core$sorted_set$$rotate_r$7$(root) : moonbitlang$core$sorted_set$$rotate_lr$7$(root);
  } else {
    if (hr > (hl + 1 | 0)) {
      const _bind = moonbitlang$core$option$$Option$unwrap$10$(r);
      const _rl = _bind.left;
      const _rr = _bind.right;
      new_root = moonbitlang$core$sorted_set$$height_ge$7$(_rr, _rl) ? moonbitlang$core$sorted_set$$rotate_l$7$(root) : moonbitlang$core$sorted_set$$rotate_rl$7$(root);
    } else {
      new_root = root;
    }
  }
  moonbitlang$core$sorted_set$$Node$update_height$7$(new_root);
  return new_root;
}
function moonbitlang$core$sorted_set$$balance$8$(root) {
  const l = root.left;
  const r = root.right;
  const hl = moonbitlang$core$sorted_set$$height$8$(l);
  const hr = moonbitlang$core$sorted_set$$height$8$(r);
  let new_root;
  if (hl > (hr + 1 | 0)) {
    const _bind = moonbitlang$core$option$$Option$unwrap$11$(l);
    const _ll = _bind.left;
    const _lr = _bind.right;
    new_root = moonbitlang$core$sorted_set$$height_ge$8$(_ll, _lr) ? moonbitlang$core$sorted_set$$rotate_r$8$(root) : moonbitlang$core$sorted_set$$rotate_lr$8$(root);
  } else {
    if (hr > (hl + 1 | 0)) {
      const _bind = moonbitlang$core$option$$Option$unwrap$11$(r);
      const _rl = _bind.left;
      const _rr = _bind.right;
      new_root = moonbitlang$core$sorted_set$$height_ge$8$(_rr, _rl) ? moonbitlang$core$sorted_set$$rotate_l$8$(root) : moonbitlang$core$sorted_set$$rotate_rl$8$(root);
    } else {
      new_root = root;
    }
  }
  moonbitlang$core$sorted_set$$Node$update_height$8$(new_root);
  return new_root;
}
function moonbitlang$core$sorted_set$$new_node$6$(value, left, right, height) {
  return { value: value, left: left, right: right, height: height };
}
function moonbitlang$core$sorted_set$$new_node$7$(value, left, right, height) {
  return { value: value, left: left, right: right, height: height };
}
function moonbitlang$core$sorted_set$$new_node$8$(value, left, right, height) {
  return { value: value, left: left, right: right, height: height };
}
function moonbitlang$core$sorted_set$$new_node$46$left$46$default$6$() {
  return undefined;
}
function moonbitlang$core$sorted_set$$new_node$46$left$46$default$7$() {
  return undefined;
}
function moonbitlang$core$sorted_set$$new_node$46$left$46$default$8$() {
  return undefined;
}
function moonbitlang$core$sorted_set$$new_node$46$right$46$default$6$() {
  return undefined;
}
function moonbitlang$core$sorted_set$$new_node$46$right$46$default$7$() {
  return undefined;
}
function moonbitlang$core$sorted_set$$new_node$46$right$46$default$8$() {
  return undefined;
}
function moonbitlang$core$sorted_set$$new_node$46$height$46$default$6$() {
  return 1;
}
function moonbitlang$core$sorted_set$$new_node$46$height$46$default$7$() {
  return 1;
}
function moonbitlang$core$sorted_set$$new_node$46$height$46$default$8$() {
  return 1;
}
function moonbitlang$core$sorted_set$$add_node$6$(root, value) {
  if (root === undefined) {
    return { _0: moonbitlang$core$sorted_set$$new_node$6$(value, moonbitlang$core$sorted_set$$new_node$46$left$46$default$6$(), moonbitlang$core$sorted_set$$new_node$46$right$46$default$6$(), moonbitlang$core$sorted_set$$new_node$46$height$46$default$6$()), _1: true };
  } else {
    const _Some = root;
    const _n = _Some;
    const comp = moonbitlang$core$builtin$$Compare$compare$6$(value, _n.value);
    if (comp === 0) {
      _n.value = value;
      return { _0: _n, _1: false };
    } else {
      const l = _n.left;
      const r = _n.right;
      if (comp < 0) {
        const _bind = moonbitlang$core$sorted_set$$add_node$6$(l, value);
        const _nl = _bind._0;
        const _inserted = _bind._1;
        _n.left = _nl;
        return { _0: moonbitlang$core$sorted_set$$balance$6$(_n), _1: _inserted };
      } else {
        const _bind = moonbitlang$core$sorted_set$$add_node$6$(r, value);
        const _nr = _bind._0;
        const _inserted = _bind._1;
        _n.right = _nr;
        return { _0: moonbitlang$core$sorted_set$$balance$6$(_n), _1: _inserted };
      }
    }
  }
}
function moonbitlang$core$sorted_set$$add_node$7$(root, value) {
  if (root === undefined) {
    return { _0: moonbitlang$core$sorted_set$$new_node$7$(value, moonbitlang$core$sorted_set$$new_node$46$left$46$default$7$(), moonbitlang$core$sorted_set$$new_node$46$right$46$default$7$(), moonbitlang$core$sorted_set$$new_node$46$height$46$default$7$()), _1: true };
  } else {
    const _Some = root;
    const _n = _Some;
    const comp = moonbitlang$core$builtin$$Compare$compare$12$(value, _n.value);
    if (comp === 0) {
      _n.value = value;
      return { _0: _n, _1: false };
    } else {
      const l = _n.left;
      const r = _n.right;
      if (comp < 0) {
        const _bind = moonbitlang$core$sorted_set$$add_node$7$(l, value);
        const _nl = _bind._0;
        const _inserted = _bind._1;
        _n.left = _nl;
        return { _0: moonbitlang$core$sorted_set$$balance$7$(_n), _1: _inserted };
      } else {
        const _bind = moonbitlang$core$sorted_set$$add_node$7$(r, value);
        const _nr = _bind._0;
        const _inserted = _bind._1;
        _n.right = _nr;
        return { _0: moonbitlang$core$sorted_set$$balance$7$(_n), _1: _inserted };
      }
    }
  }
}
function moonbitlang$core$sorted_set$$add_node$8$(root, value) {
  if (root === undefined) {
    return { _0: moonbitlang$core$sorted_set$$new_node$8$(value, moonbitlang$core$sorted_set$$new_node$46$left$46$default$8$(), moonbitlang$core$sorted_set$$new_node$46$right$46$default$8$(), moonbitlang$core$sorted_set$$new_node$46$height$46$default$8$()), _1: true };
  } else {
    const _Some = root;
    const _n = _Some;
    const comp = $compare_int(value, _n.value);
    if (comp === 0) {
      _n.value = value;
      return { _0: _n, _1: false };
    } else {
      const l = _n.left;
      const r = _n.right;
      if (comp < 0) {
        const _bind = moonbitlang$core$sorted_set$$add_node$8$(l, value);
        const _nl = _bind._0;
        const _inserted = _bind._1;
        _n.left = _nl;
        return { _0: moonbitlang$core$sorted_set$$balance$8$(_n), _1: _inserted };
      } else {
        const _bind = moonbitlang$core$sorted_set$$add_node$8$(r, value);
        const _nr = _bind._0;
        const _inserted = _bind._1;
        _n.right = _nr;
        return { _0: moonbitlang$core$sorted_set$$balance$8$(_n), _1: _inserted };
      }
    }
  }
}
function moonbitlang$core$sorted_set$$T$add$6$(self, value) {
  const _bind = moonbitlang$core$sorted_set$$add_node$6$(self.root, value);
  const _new_root = _bind._0;
  const _inserted = _bind._1;
  if (moonbitlang$core$builtin$$op_notequal$13$(self.root, _new_root)) {
    self.root = _new_root;
  }
  if (_inserted) {
    self.size = self.size + 1 | 0;
    return;
  } else {
    return;
  }
}
function moonbitlang$core$sorted_set$$T$add$7$(self, value) {
  const _bind = moonbitlang$core$sorted_set$$add_node$7$(self.root, value);
  const _new_root = _bind._0;
  const _inserted = _bind._1;
  if (moonbitlang$core$builtin$$op_notequal$14$(self.root, _new_root)) {
    self.root = _new_root;
  }
  if (_inserted) {
    self.size = self.size + 1 | 0;
    return;
  } else {
    return;
  }
}
function moonbitlang$core$sorted_set$$T$add$8$(self, value) {
  const _bind = moonbitlang$core$sorted_set$$add_node$8$(self.root, value);
  const _new_root = _bind._0;
  const _inserted = _bind._1;
  if (moonbitlang$core$builtin$$op_notequal$15$(self.root, _new_root)) {
    self.root = _new_root;
  }
  if (_inserted) {
    self.size = self.size + 1 | 0;
    return;
  } else {
    return;
  }
}
function moonbitlang$core$sorted_set$$to_array$46$dfs$47$215(_env, root) {
  const arr = _env._1;
  const i = _env._0;
  let _tmp = root;
  while (true) {
    const root$2 = _tmp;
    if (root$2 === undefined) {
      return;
    } else {
      const _Some = root$2;
      const _root = _Some;
      moonbitlang$core$sorted_set$$to_array$46$dfs$47$215(_env, _root.left);
      moonbitlang$core$array$$Array$op_set$8$(arr, i.val, _root.value);
      i.val = i.val + 1 | 0;
      _tmp = _root.right;
      continue;
    }
  }
}
function moonbitlang$core$sorted_set$$T$to_array$8$(self) {
  if (self.size === 0) {
    return [];
  } else {
    const padding = moonbitlang$core$option$$Option$unwrap$11$(self.root).value;
    const arr = moonbitlang$core$array$$Array$make$8$(self.size, padding);
    const i = { val: 0 };
    const _env = { _0: i, _1: arr };
    moonbitlang$core$sorted_set$$to_array$46$dfs$47$215(_env, self.root);
    return arr;
  }
}
function moonbitlang$core$sorted_set$$Node$iter$6$(self) {
  return moonbitlang$core$builtin$$Iter$new$6$((yield_) => {
    const _bind = self.left;
    if (_bind === undefined) {
    } else {
      const _Some = _bind;
      const _l = _Some;
      const _bind$2 = moonbitlang$core$builtin$$Iter$run$6$(moonbitlang$core$sorted_set$$Node$iter$6$(_l), yield_);
      if (_bind$2 === 1) {
      } else {
        return 0;
      }
    }
    const _bind$2 = yield_(self.value);
    if (_bind$2 === 1) {
      const _bind$3 = self.right;
      if (_bind$3 === undefined) {
      } else {
        const _Some = _bind$3;
        const _r = _Some;
        const _bind$4 = moonbitlang$core$builtin$$Iter$run$6$(moonbitlang$core$sorted_set$$Node$iter$6$(_r), yield_);
        if (_bind$4 === 1) {
        } else {
          return 0;
        }
      }
      return 1;
    } else {
      return 0;
    }
  });
}
function moonbitlang$core$sorted_set$$Node$iter$7$(self) {
  return moonbitlang$core$builtin$$Iter$new$7$((yield_) => {
    const _bind = self.left;
    if (_bind === undefined) {
    } else {
      const _Some = _bind;
      const _l = _Some;
      const _bind$2 = moonbitlang$core$builtin$$Iter$run$7$(moonbitlang$core$sorted_set$$Node$iter$7$(_l), yield_);
      if (_bind$2 === 1) {
      } else {
        return 0;
      }
    }
    const _bind$2 = yield_(self.value);
    if (_bind$2 === 1) {
      const _bind$3 = self.right;
      if (_bind$3 === undefined) {
      } else {
        const _Some = _bind$3;
        const _r = _Some;
        const _bind$4 = moonbitlang$core$builtin$$Iter$run$7$(moonbitlang$core$sorted_set$$Node$iter$7$(_r), yield_);
        if (_bind$4 === 1) {
        } else {
          return 0;
        }
      }
      return 1;
    } else {
      return 0;
    }
  });
}
function moonbitlang$core$sorted_set$$Node$iter$8$(self) {
  return moonbitlang$core$builtin$$Iter$new$8$((yield_) => {
    const _bind = self.left;
    if (_bind === undefined) {
    } else {
      const _Some = _bind;
      const _l = _Some;
      const _bind$2 = moonbitlang$core$builtin$$Iter$run$8$(moonbitlang$core$sorted_set$$Node$iter$8$(_l), yield_);
      if (_bind$2 === 1) {
      } else {
        return 0;
      }
    }
    const _bind$2 = yield_(self.value);
    if (_bind$2 === 1) {
      const _bind$3 = self.right;
      if (_bind$3 === undefined) {
      } else {
        const _Some = _bind$3;
        const _r = _Some;
        const _bind$4 = moonbitlang$core$builtin$$Iter$run$8$(moonbitlang$core$sorted_set$$Node$iter$8$(_r), yield_);
        if (_bind$4 === 1) {
        } else {
          return 0;
        }
      }
      return 1;
    } else {
      return 0;
    }
  });
}
function moonbitlang$core$sorted_set$$T$iter$6$(self) {
  return moonbitlang$core$builtin$$Iter$new$6$((yield_) => {
    const _bind = self.root;
    if (_bind === undefined) {
      return 1;
    } else {
      const _Some = _bind;
      const _root = _Some;
      return moonbitlang$core$builtin$$Iter$run$6$(moonbitlang$core$sorted_set$$Node$iter$6$(_root), yield_);
    }
  });
}
function moonbitlang$core$sorted_set$$T$iter$7$(self) {
  return moonbitlang$core$builtin$$Iter$new$7$((yield_) => {
    const _bind = self.root;
    if (_bind === undefined) {
      return 1;
    } else {
      const _Some = _bind;
      const _root = _Some;
      return moonbitlang$core$builtin$$Iter$run$7$(moonbitlang$core$sorted_set$$Node$iter$7$(_root), yield_);
    }
  });
}
function moonbitlang$core$sorted_set$$T$iter$8$(self) {
  return moonbitlang$core$builtin$$Iter$new$8$((yield_) => {
    const _bind = self.root;
    if (_bind === undefined) {
      return 1;
    } else {
      const _Some = _bind;
      const _root = _Some;
      return moonbitlang$core$builtin$$Iter$run$8$(moonbitlang$core$sorted_set$$Node$iter$8$(_root), yield_);
    }
  });
}
function moonbitlang$core$sorted_set$$from_iter$8$(iter) {
  const s = moonbitlang$core$sorted_set$$new$8$();
  iter((_p) => {
    moonbitlang$core$sorted_set$$T$add$8$(s, _p);
    return 1;
  });
  return s;
}
function moonbitlang$core$builtin$$Eq$op_equal$16$(self, other) {
  return moonbitlang$core$builtin$$Eq$op_equal$6$(self.value, other.value);
}
function moonbitlang$core$builtin$$Eq$op_equal$17$(self, other) {
  return moonbitlang$core$builtin$$Eq$op_equal$12$(self.value, other.value);
}
function moonbitlang$core$builtin$$Eq$op_equal$18$(self, other) {
  return self.value === other.value;
}
function moonbitlang$core$string$$String$view(self, start_offset, end_offset) {
  return start_offset >= 0 && (start_offset <= end_offset && end_offset <= self.length) ? { str: self, start: start_offset, end: end_offset } : moonbitlang$core$builtin$$abort$19$("Invalid index for View");
}
function moonbitlang$core$string$$String$view$46$start_offset$46$default() {
  return 0;
}
function moonbitlang$core$string$$String$view$46$end_offset$46$default(self) {
  return self.length;
}
function moonbitlang$core$string$$is_trailing_surrogate(c) {
  return 56320 <= c && c <= 57343;
}
function moonbitlang$core$string$$String$offset_of_nth_char_backward(self, n, start_offset, end_offset) {
  let char_count = 0;
  let utf16_offset = end_offset;
  while (true) {
    if ((utf16_offset - 1 | 0) >= start_offset && char_count < n) {
      const _tmp = utf16_offset - 1 | 0;
      const c = self.charCodeAt(_tmp);
      if (moonbitlang$core$string$$is_trailing_surrogate(c)) {
        utf16_offset = utf16_offset - 2 | 0;
      } else {
        utf16_offset = utf16_offset - 1 | 0;
      }
      char_count = char_count + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return char_count < n || utf16_offset < start_offset ? undefined : utf16_offset;
}
function moonbitlang$core$string$$is_leading_surrogate(c) {
  return 55296 <= c && c <= 56319;
}
function moonbitlang$core$string$$String$offset_of_nth_char_forward(self, n, start_offset, end_offset) {
  if (start_offset >= 0 && start_offset <= end_offset) {
    let utf16_offset = start_offset;
    let char_count = 0;
    while (true) {
      if (utf16_offset < end_offset && char_count < n) {
        const _tmp = utf16_offset;
        const c = self.charCodeAt(_tmp);
        if (moonbitlang$core$string$$is_leading_surrogate(c)) {
          utf16_offset = utf16_offset + 2 | 0;
        } else {
          utf16_offset = utf16_offset + 1 | 0;
        }
        char_count = char_count + 1 | 0;
        continue;
      } else {
        break;
      }
    }
    return char_count < n || utf16_offset >= end_offset ? undefined : utf16_offset;
  } else {
    return moonbitlang$core$builtin$$abort$20$("Invalid start index");
  }
}
function moonbitlang$core$string$$String$offset_of_nth_char(self, i, start_offset, end_offset) {
  return i >= 0 ? moonbitlang$core$string$$String$offset_of_nth_char_forward(self, i, start_offset, end_offset) : moonbitlang$core$string$$String$offset_of_nth_char_backward(self, -i, start_offset, end_offset);
}
function moonbitlang$core$string$$String$char_length_eq(self, len, start_offset, end_offset) {
  let _tmp = start_offset;
  let _tmp$2 = 0;
  while (true) {
    const index = _tmp;
    const count = _tmp$2;
    if (index < end_offset && count < len) {
      const c1 = self.charCodeAt(index);
      if (moonbitlang$core$string$$is_leading_surrogate(c1) && (index + 1 | 0) < end_offset) {
        const _tmp$3 = index + 1 | 0;
        const c2 = self.charCodeAt(_tmp$3);
        if (moonbitlang$core$string$$is_trailing_surrogate(c2)) {
          const _tmp$4 = index + 2 | 0;
          const _tmp$5 = count + 1 | 0;
          _tmp = _tmp$4;
          _tmp$2 = _tmp$5;
          continue;
        } else {
          moonbitlang$core$builtin$$abort$21$("invalid surrogate pair");
        }
      }
      const _tmp$3 = index + 1 | 0;
      const _tmp$4 = count + 1 | 0;
      _tmp = _tmp$3;
      _tmp$2 = _tmp$4;
      continue;
    } else {
      return count === len && index === end_offset;
    }
  }
}
function moonbitlang$core$string$$String$char_length_ge(self, len, start_offset, end_offset) {
  let _tmp = start_offset;
  let _tmp$2 = 0;
  while (true) {
    const index = _tmp;
    const count = _tmp$2;
    if (index < end_offset && count < len) {
      const c1 = self.charCodeAt(index);
      if (moonbitlang$core$string$$is_leading_surrogate(c1) && (index + 1 | 0) < end_offset) {
        const _tmp$3 = index + 1 | 0;
        const c2 = self.charCodeAt(_tmp$3);
        if (moonbitlang$core$string$$is_trailing_surrogate(c2)) {
          const _tmp$4 = index + 2 | 0;
          const _tmp$5 = count + 1 | 0;
          _tmp = _tmp$4;
          _tmp$2 = _tmp$5;
          continue;
        } else {
          moonbitlang$core$builtin$$abort$21$("invalid surrogate pair");
        }
      }
      const _tmp$3 = index + 1 | 0;
      const _tmp$4 = count + 1 | 0;
      _tmp = _tmp$3;
      _tmp$2 = _tmp$4;
      continue;
    } else {
      return count >= len;
    }
  }
}
function moonbitlang$core$string$$code_point_of_surrogate_pair(leading, trailing) {
  return (((Math.imul(leading - 55296 | 0, 1024) | 0) + trailing | 0) - 56320 | 0) + 65536 | 0;
}
function moonbitlang$core$string$$String$from_array(chars) {
  const buf = moonbitlang$core$builtin$$StringBuilder$new(Math.imul(chars.length, 4) | 0);
  const _len = chars.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const c = chars[_i];
      moonbitlang$core$builtin$$Logger$write_char$22$(buf, c);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return moonbitlang$core$builtin$$StringBuilder$to_string(buf);
}
function moonbitlang$core$string$$concat(strings, separator) {
  if (strings.length === 0) {
    return "";
  } else {
    const _hd = strings[0];
    const _x = moonbitlang$core$array$$Array$op_as_view$23$(strings, 1, strings.length);
    let size_hint = _hd.length;
    const _len = moonbitlang$core$array$$ArrayView$length$23$(_x);
    let _tmp = 0;
    while (true) {
      const _i = _tmp;
      if (_i < _len) {
        const s = _x.buf[_x.start + _i | 0];
        size_hint = size_hint + (s.length + separator.length | 0) | 0;
        _tmp = _i + 1 | 0;
        continue;
      } else {
        break;
      }
    }
    size_hint = size_hint << 1;
    const buf = moonbitlang$core$builtin$$StringBuilder$new(size_hint);
    moonbitlang$core$builtin$$Logger$write_string$22$(buf, _hd);
    if (separator === "") {
      const _len$2 = moonbitlang$core$array$$ArrayView$length$23$(_x);
      let _tmp$2 = 0;
      while (true) {
        const _i = _tmp$2;
        if (_i < _len$2) {
          const s = _x.buf[_x.start + _i | 0];
          moonbitlang$core$builtin$$Logger$write_string$22$(buf, s);
          _tmp$2 = _i + 1 | 0;
          continue;
        } else {
          break;
        }
      }
    } else {
      const _len$2 = moonbitlang$core$array$$ArrayView$length$23$(_x);
      let _tmp$2 = 0;
      while (true) {
        const _i = _tmp$2;
        if (_i < _len$2) {
          const s = _x.buf[_x.start + _i | 0];
          moonbitlang$core$builtin$$Logger$write_string$22$(buf, separator);
          moonbitlang$core$builtin$$Logger$write_string$22$(buf, s);
          _tmp$2 = _i + 1 | 0;
          continue;
        } else {
          break;
        }
      }
    }
    return moonbitlang$core$builtin$$StringBuilder$to_string(buf);
  }
}
function moonbitlang$core$builtin$$Compare$compare$23$(self, other) {
  const len = self.length;
  const _bind = $compare_int(len, other.length);
  if (_bind === 0) {
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < len) {
        const order = $compare_int(self.charCodeAt(i), other.charCodeAt(i));
        if (order !== 0) {
          return order;
        }
        _tmp = i + 1 | 0;
        continue;
      } else {
        break;
      }
    }
    return 0;
  } else {
    return _bind;
  }
}
function moonbitlang$core$builtin$$Default$default$23$() {
  return "";
}
function moonbitlang$core$string$$String$to_bytes(self) {
  return moonbitlang$core$bytes$$Bytes$of_string(self);
}
function moonbitlang$core$string$$String$iter(self) {
  return moonbitlang$core$builtin$$Iter$new$24$((yield_) => {
    const len = self.length;
    let _tmp = 0;
    while (true) {
      const index = _tmp;
      if (index < len) {
        const c1 = self.charCodeAt(index);
        if (moonbitlang$core$string$$is_leading_surrogate(c1) && (index + 1 | 0) < len) {
          const _tmp$2 = index + 1 | 0;
          const c2 = self.charCodeAt(_tmp$2);
          if (moonbitlang$core$string$$is_trailing_surrogate(c2)) {
            const c = moonbitlang$core$string$$code_point_of_surrogate_pair(c1, c2);
            const _bind = yield_(c);
            if (_bind === 1) {
              _tmp = index + 2 | 0;
              continue;
            } else {
              return 0;
            }
          }
        }
        const _bind = yield_(c1);
        if (_bind === 1) {
        } else {
          return 0;
        }
        _tmp = index + 1 | 0;
        continue;
      } else {
        return 1;
      }
    }
  });
}
function moonbitlang$core$string$$String$to_array(self) {
  const _bind = moonbitlang$core$string$$String$iter(self);
  const _bind$2 = moonbitlang$core$array$$Array$new$24$(self.length);
  const _acc = { val: _bind$2 };
  _bind((_p) => {
    const rv = _acc.val;
    moonbitlang$core$array$$Array$push$24$(rv, _p);
    _acc.val = rv;
    return 1;
  });
  return _acc.val;
}
function moonbitlang$core$set$$calc_grow_threshold(capacity) {
  return (Math.imul(capacity, 13) | 0) / 16 | 0;
}
function moonbitlang$core$set$$power_2_above(x, n) {
  let _tmp = x;
  while (true) {
    const i = _tmp;
    if (i >= n) {
      return i;
    }
    const next = i << 1;
    if (next < 0) {
      return i;
    }
    _tmp = next;
    continue;
  }
}
function moonbitlang$core$set$$Set$new$25$(capacity) {
  const capacity$2 = moonbitlang$core$set$$power_2_above(8, capacity);
  const _bind = capacity$2 - 1 | 0;
  const _bind$2 = moonbitlang$core$set$$calc_grow_threshold(capacity$2);
  const _bind$3 = $make_array_len_and_init(capacity$2, undefined);
  const _bind$4 = $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined });
  const _bind$5 = undefined;
  const _bind$6 = undefined;
  return { entries: _bind$3, list: _bind$4, size: 0, capacity: capacity$2, capacity_mask: _bind, growAt: _bind$2, head: _bind$5, tail: _bind$6 };
}
function moonbitlang$core$set$$Set$new$46$capacity$46$default$25$() {
  return 8;
}
function moonbitlang$core$set$$Set$add_entry_to_tail$25$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _tail = _Some;
    const _tmp = self.list;
    const _tmp$2 = _tail.idx;
    $bound_check(_tmp, _tmp$2);
    _tmp[_tmp$2].next = entry;
    const _tmp$3 = self.list;
    const _tmp$4 = entry.idx;
    $bound_check(_tmp$3, _tmp$4);
    _tmp$3[_tmp$4].prev = _tail;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$set$$Set$add$25$(self, key) {
  if (self.size >= self.growAt) {
    moonbitlang$core$set$$Set$grow$25$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$26$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const entry = _tmp$3;
    const node = _tmp$4;
    const _tmp$5 = self.entries;
    $bound_check(_tmp$5, idx);
    const _bind = _tmp$5[idx];
    if (_bind === undefined) {
      const _tmp$6 = self.entries;
      $bound_check(_tmp$6, idx);
      _tmp$6[idx] = entry;
      const _tmp$7 = self.list;
      $bound_check(_tmp$7, idx);
      _tmp$7[idx] = node;
      entry.idx = idx;
      moonbitlang$core$set$$Set$add_entry_to_tail$25$(self, insert_entry);
      self.size = self.size + 1 | 0;
      break;
    } else {
      const _Some = _bind;
      const _curr_entry = _Some;
      const _tmp$6 = self.list;
      const _tmp$7 = _curr_entry.idx;
      $bound_check(_tmp$6, _tmp$7);
      const curr_node = _tmp$6[_tmp$7];
      if (_curr_entry.hash === entry.hash && moonbitlang$core$builtin$$Eq$op_equal$27$(_curr_entry.key, entry.key)) {
        break;
      }
      if (entry.psl > _curr_entry.psl) {
        const _tmp$8 = self.entries;
        $bound_check(_tmp$8, idx);
        _tmp$8[idx] = entry;
        const _tmp$9 = self.list;
        $bound_check(_tmp$9, idx);
        _tmp$9[idx] = node;
        entry.idx = idx;
        _curr_entry.psl = _curr_entry.psl + 1 | 0;
        const _tmp$10 = i + 1 | 0;
        const _tmp$11 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$10;
        _tmp$2 = _tmp$11;
        _tmp$3 = _curr_entry;
        _tmp$4 = curr_node;
        continue;
      } else {
        entry.psl = entry.psl + 1 | 0;
        const _tmp$8 = i + 1 | 0;
        const _tmp$9 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$8;
        _tmp$2 = _tmp$9;
        continue;
      }
    }
  }
}
function moonbitlang$core$set$$Set$grow$25$(self) {
  const old_head = self.head;
  const old_list = self.list;
  const new_capacity = self.capacity << 1;
  self.entries = $make_array_len_and_init(new_capacity, undefined);
  self.list = $make_array_len_and_init(new_capacity, { prev: undefined, next: undefined });
  self.capacity = new_capacity;
  self.capacity_mask = new_capacity - 1 | 0;
  self.growAt = moonbitlang$core$set$$calc_grow_threshold(self.capacity);
  self.size = 0;
  self.head = undefined;
  self.tail = undefined;
  let _tmp = old_head;
  while (true) {
    const _param = _tmp;
    if (_param === undefined) {
      return;
    } else {
      const _Some = _param;
      const _x = _Some;
      const _idx = _x.idx;
      const _key = _x.key;
      moonbitlang$core$set$$Set$add$25$(self, _key);
      $bound_check(old_list, _idx);
      _tmp = old_list[_idx].next;
      continue;
    }
  }
}
function moonbitlang$core$set$$Set$add_and_check$25$(self, key) {
  if (self.size >= self.growAt) {
    moonbitlang$core$set$$Set$grow$25$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$26$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const entry = _tmp$3;
    const node = _tmp$4;
    const _tmp$5 = self.entries;
    $bound_check(_tmp$5, idx);
    const _bind = _tmp$5[idx];
    if (_bind === undefined) {
      const _tmp$6 = self.entries;
      $bound_check(_tmp$6, idx);
      _tmp$6[idx] = entry;
      const _tmp$7 = self.list;
      $bound_check(_tmp$7, idx);
      _tmp$7[idx] = node;
      entry.idx = idx;
      moonbitlang$core$set$$Set$add_entry_to_tail$25$(self, insert_entry);
      self.size = self.size + 1 | 0;
      return true;
    } else {
      const _Some = _bind;
      const _curr_entry = _Some;
      const _tmp$6 = self.list;
      const _tmp$7 = _curr_entry.idx;
      $bound_check(_tmp$6, _tmp$7);
      const curr_node = _tmp$6[_tmp$7];
      if (_curr_entry.hash === entry.hash && moonbitlang$core$builtin$$Eq$op_equal$27$(_curr_entry.key, entry.key)) {
        return false;
      }
      if (entry.psl > _curr_entry.psl) {
        const _tmp$8 = self.entries;
        $bound_check(_tmp$8, idx);
        _tmp$8[idx] = entry;
        const _tmp$9 = self.list;
        $bound_check(_tmp$9, idx);
        _tmp$9[idx] = node;
        entry.idx = idx;
        _curr_entry.psl = _curr_entry.psl + 1 | 0;
        const _tmp$10 = i + 1 | 0;
        const _tmp$11 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$10;
        _tmp$2 = _tmp$11;
        _tmp$3 = _curr_entry;
        _tmp$4 = curr_node;
        continue;
      } else {
        entry.psl = entry.psl + 1 | 0;
        const _tmp$8 = i + 1 | 0;
        const _tmp$9 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$8;
        _tmp$2 = _tmp$9;
        continue;
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$new$28$() {
  return $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$0$;
}
function moonbitlang$core$immut$sorted_set$$new$8$() {
  return $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$1$;
}
function moonbitlang$core$immut$sorted_set$$new$29$() {
  return $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$2$;
}
function moonbitlang$core$immut$sorted_set$$new$30$() {
  return $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$3$;
}
function moonbitlang$core$immut$sorted_set$$new$23$() {
  return $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$4$;
}
function moonbitlang$core$immut$sorted_set$$singleton$31$(value) {
  return new $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$5$($64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$5$, $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$5$, 1, value);
}
function moonbitlang$core$immut$sorted_set$$singleton$8$(value) {
  return new $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$1$($64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$1$, $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$1$, 1, value);
}
function moonbitlang$core$immut$sorted_set$$singleton$23$(value) {
  return new $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$4$($64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$4$, $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$4$, 1, value);
}
function moonbitlang$core$immut$sorted_set$$T$size$8$(self) {
  if (self.$tag === 0) {
    return 0;
  } else {
    const _Node = self;
    const _size = _Node._2;
    return _size;
  }
}
function moonbitlang$core$immut$sorted_set$$T$size$28$(self) {
  if (self.$tag === 0) {
    return 0;
  } else {
    const _Node = self;
    const _size = _Node._2;
    return _size;
  }
}
function moonbitlang$core$immut$sorted_set$$T$size$30$(self) {
  if (self.$tag === 0) {
    return 0;
  } else {
    const _Node = self;
    const _size = _Node._2;
    return _size;
  }
}
function moonbitlang$core$immut$sorted_set$$T$size$31$(self) {
  if (self.$tag === 0) {
    return 0;
  } else {
    const _Node = self;
    const _size = _Node._2;
    return _size;
  }
}
function moonbitlang$core$immut$sorted_set$$T$size$23$(self) {
  if (self.$tag === 0) {
    return 0;
  } else {
    const _Node = self;
    const _size = _Node._2;
    return _size;
  }
}
function moonbitlang$core$immut$sorted_set$$T$size$29$(self) {
  if (self.$tag === 0) {
    return 0;
  } else {
    const _Node = self;
    const _size = _Node._2;
    return _size;
  }
}
function moonbitlang$core$immut$sorted_set$$create$8$(left, value, right) {
  return new $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$1$(left, right, (moonbitlang$core$immut$sorted_set$$T$size$8$(left) + moonbitlang$core$immut$sorted_set$$T$size$8$(right) | 0) + 1 | 0, value);
}
function moonbitlang$core$immut$sorted_set$$create$28$(left, value, right) {
  return new $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$0$(left, right, (moonbitlang$core$immut$sorted_set$$T$size$28$(left) + moonbitlang$core$immut$sorted_set$$T$size$28$(right) | 0) + 1 | 0, value);
}
function moonbitlang$core$immut$sorted_set$$create$31$(left, value, right) {
  return new $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$5$(left, right, (moonbitlang$core$immut$sorted_set$$T$size$31$(left) + moonbitlang$core$immut$sorted_set$$T$size$31$(right) | 0) + 1 | 0, value);
}
function moonbitlang$core$immut$sorted_set$$create$30$(left, value, right) {
  return new $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$3$(left, right, (moonbitlang$core$immut$sorted_set$$T$size$30$(left) + moonbitlang$core$immut$sorted_set$$T$size$30$(right) | 0) + 1 | 0, value);
}
function moonbitlang$core$immut$sorted_set$$create$23$(left, value, right) {
  return new $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$4$(left, right, (moonbitlang$core$immut$sorted_set$$T$size$23$(left) + moonbitlang$core$immut$sorted_set$$T$size$23$(right) | 0) + 1 | 0, value);
}
function moonbitlang$core$immut$sorted_set$$create$29$(left, value, right) {
  return new $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$2$(left, right, (moonbitlang$core$immut$sorted_set$$T$size$29$(left) + moonbitlang$core$immut$sorted_set$$T$size$29$(right) | 0) + 1 | 0, value);
}
function moonbitlang$core$immut$sorted_set$$balance$8$(left, value, right) {
  const left_size = moonbitlang$core$immut$sorted_set$$T$size$8$(left);
  const right_size = moonbitlang$core$immut$sorted_set$$T$size$8$(right);
  if ((left_size + right_size | 0) < 2) {
    return moonbitlang$core$immut$sorted_set$$create$8$(left, value, right);
  } else {
    if (left_size > (Math.imul(right_size, 5) | 0)) {
      if (left.$tag === 0) {
        return moonbitlang$core$builtin$$abort$28$("balance: left is empty.");
      } else {
        const _Node = left;
        const _ll = _Node._0;
        const _lv = _Node._3;
        const _lr = _Node._1;
        if (moonbitlang$core$immut$sorted_set$$T$size$8$(_ll) >= moonbitlang$core$immut$sorted_set$$T$size$8$(_lr)) {
          return moonbitlang$core$immut$sorted_set$$create$8$(_ll, _lv, moonbitlang$core$immut$sorted_set$$create$8$(_lr, value, right));
        } else {
          if (_lr.$tag === 0) {
            return moonbitlang$core$builtin$$abort$28$("balance: right left.right is empty.");
          } else {
            const _Node$2 = _lr;
            const _lrl = _Node$2._0;
            const _lrv = _Node$2._3;
            const _lrr = _Node$2._1;
            return moonbitlang$core$immut$sorted_set$$create$8$(moonbitlang$core$immut$sorted_set$$create$8$(_ll, _lv, _lrl), _lrv, moonbitlang$core$immut$sorted_set$$create$8$(_lrr, value, right));
          }
        }
      }
    } else {
      if (right_size > (Math.imul(left_size, 5) | 0)) {
        if (right.$tag === 0) {
          return moonbitlang$core$builtin$$abort$28$("balance: right is empty");
        } else {
          const _Node = right;
          const _rl = _Node._0;
          const _rv = _Node._3;
          const _rr = _Node._1;
          if (moonbitlang$core$immut$sorted_set$$T$size$8$(_rr) >= moonbitlang$core$immut$sorted_set$$T$size$8$(_rl)) {
            return moonbitlang$core$immut$sorted_set$$create$8$(moonbitlang$core$immut$sorted_set$$create$8$(left, value, _rl), _rv, _rr);
          } else {
            if (_rl.$tag === 0) {
              return moonbitlang$core$builtin$$abort$28$("balance: right.left is empty");
            } else {
              const _Node$2 = _rl;
              const _rll = _Node$2._0;
              const _rlv = _Node$2._3;
              const _rlr = _Node$2._1;
              return moonbitlang$core$immut$sorted_set$$create$8$(moonbitlang$core$immut$sorted_set$$create$8$(left, value, _rll), _rlv, moonbitlang$core$immut$sorted_set$$create$8$(_rlr, _rv, _rr));
            }
          }
        }
      } else {
        return moonbitlang$core$immut$sorted_set$$create$8$(left, value, right);
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$balance$28$(left, value, right) {
  const left_size = moonbitlang$core$immut$sorted_set$$T$size$28$(left);
  const right_size = moonbitlang$core$immut$sorted_set$$T$size$28$(right);
  if ((left_size + right_size | 0) < 2) {
    return moonbitlang$core$immut$sorted_set$$create$28$(left, value, right);
  } else {
    if (left_size > (Math.imul(right_size, 5) | 0)) {
      if (left.$tag === 0) {
        return moonbitlang$core$builtin$$abort$32$("balance: left is empty.");
      } else {
        const _Node = left;
        const _ll = _Node._0;
        const _lv = _Node._3;
        const _lr = _Node._1;
        if (moonbitlang$core$immut$sorted_set$$T$size$28$(_ll) >= moonbitlang$core$immut$sorted_set$$T$size$28$(_lr)) {
          return moonbitlang$core$immut$sorted_set$$create$28$(_ll, _lv, moonbitlang$core$immut$sorted_set$$create$28$(_lr, value, right));
        } else {
          if (_lr.$tag === 0) {
            return moonbitlang$core$builtin$$abort$32$("balance: right left.right is empty.");
          } else {
            const _Node$2 = _lr;
            const _lrl = _Node$2._0;
            const _lrv = _Node$2._3;
            const _lrr = _Node$2._1;
            return moonbitlang$core$immut$sorted_set$$create$28$(moonbitlang$core$immut$sorted_set$$create$28$(_ll, _lv, _lrl), _lrv, moonbitlang$core$immut$sorted_set$$create$28$(_lrr, value, right));
          }
        }
      }
    } else {
      if (right_size > (Math.imul(left_size, 5) | 0)) {
        if (right.$tag === 0) {
          return moonbitlang$core$builtin$$abort$32$("balance: right is empty");
        } else {
          const _Node = right;
          const _rl = _Node._0;
          const _rv = _Node._3;
          const _rr = _Node._1;
          if (moonbitlang$core$immut$sorted_set$$T$size$28$(_rr) >= moonbitlang$core$immut$sorted_set$$T$size$28$(_rl)) {
            return moonbitlang$core$immut$sorted_set$$create$28$(moonbitlang$core$immut$sorted_set$$create$28$(left, value, _rl), _rv, _rr);
          } else {
            if (_rl.$tag === 0) {
              return moonbitlang$core$builtin$$abort$32$("balance: right.left is empty");
            } else {
              const _Node$2 = _rl;
              const _rll = _Node$2._0;
              const _rlv = _Node$2._3;
              const _rlr = _Node$2._1;
              return moonbitlang$core$immut$sorted_set$$create$28$(moonbitlang$core$immut$sorted_set$$create$28$(left, value, _rll), _rlv, moonbitlang$core$immut$sorted_set$$create$28$(_rlr, _rv, _rr));
            }
          }
        }
      } else {
        return moonbitlang$core$immut$sorted_set$$create$28$(left, value, right);
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$balance$30$(left, value, right) {
  const left_size = moonbitlang$core$immut$sorted_set$$T$size$30$(left);
  const right_size = moonbitlang$core$immut$sorted_set$$T$size$30$(right);
  if ((left_size + right_size | 0) < 2) {
    return moonbitlang$core$immut$sorted_set$$create$30$(left, value, right);
  } else {
    if (left_size > (Math.imul(right_size, 5) | 0)) {
      if (left.$tag === 0) {
        return moonbitlang$core$builtin$$abort$33$("balance: left is empty.");
      } else {
        const _Node = left;
        const _ll = _Node._0;
        const _lv = _Node._3;
        const _lr = _Node._1;
        if (moonbitlang$core$immut$sorted_set$$T$size$30$(_ll) >= moonbitlang$core$immut$sorted_set$$T$size$30$(_lr)) {
          return moonbitlang$core$immut$sorted_set$$create$30$(_ll, _lv, moonbitlang$core$immut$sorted_set$$create$30$(_lr, value, right));
        } else {
          if (_lr.$tag === 0) {
            return moonbitlang$core$builtin$$abort$33$("balance: right left.right is empty.");
          } else {
            const _Node$2 = _lr;
            const _lrl = _Node$2._0;
            const _lrv = _Node$2._3;
            const _lrr = _Node$2._1;
            return moonbitlang$core$immut$sorted_set$$create$30$(moonbitlang$core$immut$sorted_set$$create$30$(_ll, _lv, _lrl), _lrv, moonbitlang$core$immut$sorted_set$$create$30$(_lrr, value, right));
          }
        }
      }
    } else {
      if (right_size > (Math.imul(left_size, 5) | 0)) {
        if (right.$tag === 0) {
          return moonbitlang$core$builtin$$abort$33$("balance: right is empty");
        } else {
          const _Node = right;
          const _rl = _Node._0;
          const _rv = _Node._3;
          const _rr = _Node._1;
          if (moonbitlang$core$immut$sorted_set$$T$size$30$(_rr) >= moonbitlang$core$immut$sorted_set$$T$size$30$(_rl)) {
            return moonbitlang$core$immut$sorted_set$$create$30$(moonbitlang$core$immut$sorted_set$$create$30$(left, value, _rl), _rv, _rr);
          } else {
            if (_rl.$tag === 0) {
              return moonbitlang$core$builtin$$abort$33$("balance: right.left is empty");
            } else {
              const _Node$2 = _rl;
              const _rll = _Node$2._0;
              const _rlv = _Node$2._3;
              const _rlr = _Node$2._1;
              return moonbitlang$core$immut$sorted_set$$create$30$(moonbitlang$core$immut$sorted_set$$create$30$(left, value, _rll), _rlv, moonbitlang$core$immut$sorted_set$$create$30$(_rlr, _rv, _rr));
            }
          }
        }
      } else {
        return moonbitlang$core$immut$sorted_set$$create$30$(left, value, right);
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$balance$31$(left, value, right) {
  const left_size = moonbitlang$core$immut$sorted_set$$T$size$31$(left);
  const right_size = moonbitlang$core$immut$sorted_set$$T$size$31$(right);
  if ((left_size + right_size | 0) < 2) {
    return moonbitlang$core$immut$sorted_set$$create$31$(left, value, right);
  } else {
    if (left_size > (Math.imul(right_size, 5) | 0)) {
      if (left.$tag === 0) {
        return moonbitlang$core$builtin$$abort$34$("balance: left is empty.");
      } else {
        const _Node = left;
        const _ll = _Node._0;
        const _lv = _Node._3;
        const _lr = _Node._1;
        if (moonbitlang$core$immut$sorted_set$$T$size$31$(_ll) >= moonbitlang$core$immut$sorted_set$$T$size$31$(_lr)) {
          return moonbitlang$core$immut$sorted_set$$create$31$(_ll, _lv, moonbitlang$core$immut$sorted_set$$create$31$(_lr, value, right));
        } else {
          if (_lr.$tag === 0) {
            return moonbitlang$core$builtin$$abort$34$("balance: right left.right is empty.");
          } else {
            const _Node$2 = _lr;
            const _lrl = _Node$2._0;
            const _lrv = _Node$2._3;
            const _lrr = _Node$2._1;
            return moonbitlang$core$immut$sorted_set$$create$31$(moonbitlang$core$immut$sorted_set$$create$31$(_ll, _lv, _lrl), _lrv, moonbitlang$core$immut$sorted_set$$create$31$(_lrr, value, right));
          }
        }
      }
    } else {
      if (right_size > (Math.imul(left_size, 5) | 0)) {
        if (right.$tag === 0) {
          return moonbitlang$core$builtin$$abort$34$("balance: right is empty");
        } else {
          const _Node = right;
          const _rl = _Node._0;
          const _rv = _Node._3;
          const _rr = _Node._1;
          if (moonbitlang$core$immut$sorted_set$$T$size$31$(_rr) >= moonbitlang$core$immut$sorted_set$$T$size$31$(_rl)) {
            return moonbitlang$core$immut$sorted_set$$create$31$(moonbitlang$core$immut$sorted_set$$create$31$(left, value, _rl), _rv, _rr);
          } else {
            if (_rl.$tag === 0) {
              return moonbitlang$core$builtin$$abort$34$("balance: right.left is empty");
            } else {
              const _Node$2 = _rl;
              const _rll = _Node$2._0;
              const _rlv = _Node$2._3;
              const _rlr = _Node$2._1;
              return moonbitlang$core$immut$sorted_set$$create$31$(moonbitlang$core$immut$sorted_set$$create$31$(left, value, _rll), _rlv, moonbitlang$core$immut$sorted_set$$create$31$(_rlr, _rv, _rr));
            }
          }
        }
      } else {
        return moonbitlang$core$immut$sorted_set$$create$31$(left, value, right);
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$balance$23$(left, value, right) {
  const left_size = moonbitlang$core$immut$sorted_set$$T$size$23$(left);
  const right_size = moonbitlang$core$immut$sorted_set$$T$size$23$(right);
  if ((left_size + right_size | 0) < 2) {
    return moonbitlang$core$immut$sorted_set$$create$23$(left, value, right);
  } else {
    if (left_size > (Math.imul(right_size, 5) | 0)) {
      if (left.$tag === 0) {
        return moonbitlang$core$builtin$$abort$35$("balance: left is empty.");
      } else {
        const _Node = left;
        const _ll = _Node._0;
        const _lv = _Node._3;
        const _lr = _Node._1;
        if (moonbitlang$core$immut$sorted_set$$T$size$23$(_ll) >= moonbitlang$core$immut$sorted_set$$T$size$23$(_lr)) {
          return moonbitlang$core$immut$sorted_set$$create$23$(_ll, _lv, moonbitlang$core$immut$sorted_set$$create$23$(_lr, value, right));
        } else {
          if (_lr.$tag === 0) {
            return moonbitlang$core$builtin$$abort$35$("balance: right left.right is empty.");
          } else {
            const _Node$2 = _lr;
            const _lrl = _Node$2._0;
            const _lrv = _Node$2._3;
            const _lrr = _Node$2._1;
            return moonbitlang$core$immut$sorted_set$$create$23$(moonbitlang$core$immut$sorted_set$$create$23$(_ll, _lv, _lrl), _lrv, moonbitlang$core$immut$sorted_set$$create$23$(_lrr, value, right));
          }
        }
      }
    } else {
      if (right_size > (Math.imul(left_size, 5) | 0)) {
        if (right.$tag === 0) {
          return moonbitlang$core$builtin$$abort$35$("balance: right is empty");
        } else {
          const _Node = right;
          const _rl = _Node._0;
          const _rv = _Node._3;
          const _rr = _Node._1;
          if (moonbitlang$core$immut$sorted_set$$T$size$23$(_rr) >= moonbitlang$core$immut$sorted_set$$T$size$23$(_rl)) {
            return moonbitlang$core$immut$sorted_set$$create$23$(moonbitlang$core$immut$sorted_set$$create$23$(left, value, _rl), _rv, _rr);
          } else {
            if (_rl.$tag === 0) {
              return moonbitlang$core$builtin$$abort$35$("balance: right.left is empty");
            } else {
              const _Node$2 = _rl;
              const _rll = _Node$2._0;
              const _rlv = _Node$2._3;
              const _rlr = _Node$2._1;
              return moonbitlang$core$immut$sorted_set$$create$23$(moonbitlang$core$immut$sorted_set$$create$23$(left, value, _rll), _rlv, moonbitlang$core$immut$sorted_set$$create$23$(_rlr, _rv, _rr));
            }
          }
        }
      } else {
        return moonbitlang$core$immut$sorted_set$$create$23$(left, value, right);
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$balance$29$(left, value, right) {
  const left_size = moonbitlang$core$immut$sorted_set$$T$size$29$(left);
  const right_size = moonbitlang$core$immut$sorted_set$$T$size$29$(right);
  if ((left_size + right_size | 0) < 2) {
    return moonbitlang$core$immut$sorted_set$$create$29$(left, value, right);
  } else {
    if (left_size > (Math.imul(right_size, 5) | 0)) {
      if (left.$tag === 0) {
        return moonbitlang$core$builtin$$abort$36$("balance: left is empty.");
      } else {
        const _Node = left;
        const _ll = _Node._0;
        const _lv = _Node._3;
        const _lr = _Node._1;
        if (moonbitlang$core$immut$sorted_set$$T$size$29$(_ll) >= moonbitlang$core$immut$sorted_set$$T$size$29$(_lr)) {
          return moonbitlang$core$immut$sorted_set$$create$29$(_ll, _lv, moonbitlang$core$immut$sorted_set$$create$29$(_lr, value, right));
        } else {
          if (_lr.$tag === 0) {
            return moonbitlang$core$builtin$$abort$36$("balance: right left.right is empty.");
          } else {
            const _Node$2 = _lr;
            const _lrl = _Node$2._0;
            const _lrv = _Node$2._3;
            const _lrr = _Node$2._1;
            return moonbitlang$core$immut$sorted_set$$create$29$(moonbitlang$core$immut$sorted_set$$create$29$(_ll, _lv, _lrl), _lrv, moonbitlang$core$immut$sorted_set$$create$29$(_lrr, value, right));
          }
        }
      }
    } else {
      if (right_size > (Math.imul(left_size, 5) | 0)) {
        if (right.$tag === 0) {
          return moonbitlang$core$builtin$$abort$36$("balance: right is empty");
        } else {
          const _Node = right;
          const _rl = _Node._0;
          const _rv = _Node._3;
          const _rr = _Node._1;
          if (moonbitlang$core$immut$sorted_set$$T$size$29$(_rr) >= moonbitlang$core$immut$sorted_set$$T$size$29$(_rl)) {
            return moonbitlang$core$immut$sorted_set$$create$29$(moonbitlang$core$immut$sorted_set$$create$29$(left, value, _rl), _rv, _rr);
          } else {
            if (_rl.$tag === 0) {
              return moonbitlang$core$builtin$$abort$36$("balance: right.left is empty");
            } else {
              const _Node$2 = _rl;
              const _rll = _Node$2._0;
              const _rlv = _Node$2._3;
              const _rlr = _Node$2._1;
              return moonbitlang$core$immut$sorted_set$$create$29$(moonbitlang$core$immut$sorted_set$$create$29$(left, value, _rll), _rlv, moonbitlang$core$immut$sorted_set$$create$29$(_rlr, _rv, _rr));
            }
          }
        }
      } else {
        return moonbitlang$core$immut$sorted_set$$create$29$(left, value, right);
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$add$8$(self, value) {
  if (self.$tag === 0) {
    return new $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$1$($64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$1$, $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$1$, 1, value);
  } else {
    const _Node = self;
    const _left = _Node._0;
    const _right = _Node._1;
    const _node_value = _Node._3;
    const compare_result = $compare_int(value, _node_value);
    if (compare_result === 0) {
      return self;
    } else {
      if (compare_result < 0) {
        const ll = moonbitlang$core$immut$sorted_set$$T$add$8$(_left, value);
        return _left === ll ? self : moonbitlang$core$immut$sorted_set$$balance$8$(ll, _node_value, _right);
      } else {
        const rr = moonbitlang$core$immut$sorted_set$$T$add$8$(_right, value);
        return _right === rr ? self : moonbitlang$core$immut$sorted_set$$balance$8$(_left, _node_value, rr);
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$add$28$(self, value) {
  if (self.$tag === 0) {
    return new $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$0$($64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$0$, $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$0$, 1, value);
  } else {
    const _Node = self;
    const _left = _Node._0;
    const _right = _Node._1;
    const _node_value = _Node._3;
    const compare_result = moonbitlang$core$builtin$$Compare$compare$37$(value, _node_value);
    if (compare_result === 0) {
      return self;
    } else {
      if (compare_result < 0) {
        const ll = moonbitlang$core$immut$sorted_set$$T$add$28$(_left, value);
        return _left === ll ? self : moonbitlang$core$immut$sorted_set$$balance$28$(ll, _node_value, _right);
      } else {
        const rr = moonbitlang$core$immut$sorted_set$$T$add$28$(_right, value);
        return _right === rr ? self : moonbitlang$core$immut$sorted_set$$balance$28$(_left, _node_value, rr);
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$add$30$(self, value) {
  if (self.$tag === 0) {
    return new $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$3$($64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$3$, $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$3$, 1, value);
  } else {
    const _Node = self;
    const _left = _Node._0;
    const _right = _Node._1;
    const _node_value = _Node._3;
    const compare_result = moonbitlang$core$builtin$$Compare$compare$30$(value, _node_value);
    if (compare_result === 0) {
      return self;
    } else {
      if (compare_result < 0) {
        const ll = moonbitlang$core$immut$sorted_set$$T$add$30$(_left, value);
        return _left === ll ? self : moonbitlang$core$immut$sorted_set$$balance$30$(ll, _node_value, _right);
      } else {
        const rr = moonbitlang$core$immut$sorted_set$$T$add$30$(_right, value);
        return _right === rr ? self : moonbitlang$core$immut$sorted_set$$balance$30$(_left, _node_value, rr);
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$add$31$(self, value) {
  if (self.$tag === 0) {
    return new $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$5$($64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$5$, $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$5$, 1, value);
  } else {
    const _Node = self;
    const _left = _Node._0;
    const _right = _Node._1;
    const _node_value = _Node._3;
    const compare_result = moonbitlang$core$builtin$$Compare$compare$38$(value, _node_value);
    if (compare_result === 0) {
      return self;
    } else {
      if (compare_result < 0) {
        const ll = moonbitlang$core$immut$sorted_set$$T$add$31$(_left, value);
        return _left === ll ? self : moonbitlang$core$immut$sorted_set$$balance$31$(ll, _node_value, _right);
      } else {
        const rr = moonbitlang$core$immut$sorted_set$$T$add$31$(_right, value);
        return _right === rr ? self : moonbitlang$core$immut$sorted_set$$balance$31$(_left, _node_value, rr);
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$add$23$(self, value) {
  if (self.$tag === 0) {
    return new $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$4$($64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$4$, $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$4$, 1, value);
  } else {
    const _Node = self;
    const _left = _Node._0;
    const _right = _Node._1;
    const _node_value = _Node._3;
    const compare_result = moonbitlang$core$builtin$$Compare$compare$23$(value, _node_value);
    if (compare_result === 0) {
      return self;
    } else {
      if (compare_result < 0) {
        const ll = moonbitlang$core$immut$sorted_set$$T$add$23$(_left, value);
        return _left === ll ? self : moonbitlang$core$immut$sorted_set$$balance$23$(ll, _node_value, _right);
      } else {
        const rr = moonbitlang$core$immut$sorted_set$$T$add$23$(_right, value);
        return _right === rr ? self : moonbitlang$core$immut$sorted_set$$balance$23$(_left, _node_value, rr);
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$add$29$(self, value) {
  if (self.$tag === 0) {
    return new $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Node$2$($64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$2$, $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$2$, 1, value);
  } else {
    const _Node = self;
    const _left = _Node._0;
    const _right = _Node._1;
    const _node_value = _Node._3;
    const compare_result = moonbitlang$core$builtin$$Compare$compare$39$(value, _node_value);
    if (compare_result === 0) {
      return self;
    } else {
      if (compare_result < 0) {
        const ll = moonbitlang$core$immut$sorted_set$$T$add$29$(_left, value);
        return _left === ll ? self : moonbitlang$core$immut$sorted_set$$balance$29$(ll, _node_value, _right);
      } else {
        const rr = moonbitlang$core$immut$sorted_set$$T$add$29$(_right, value);
        return _right === rr ? self : moonbitlang$core$immut$sorted_set$$balance$29$(_left, _node_value, rr);
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$remove_min$28$(self) {
  if (self.$tag === 0) {
    return moonbitlang$core$builtin$$abort$32$("remove_min: empty ImmutableSet");
  } else {
    const _Node = self;
    const _left = _Node._0;
    const _right = _Node._1;
    const _value = _Node._3;
    if (_left.$tag === 0) {
      return _right;
    } else {
      return moonbitlang$core$immut$sorted_set$$balance$28$(moonbitlang$core$immut$sorted_set$$T$remove_min$28$(_left), _value, _right);
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$remove_min$8$(self) {
  if (self.$tag === 0) {
    return moonbitlang$core$builtin$$abort$28$("remove_min: empty ImmutableSet");
  } else {
    const _Node = self;
    const _left = _Node._0;
    const _right = _Node._1;
    const _value = _Node._3;
    if (_left.$tag === 0) {
      return _right;
    } else {
      return moonbitlang$core$immut$sorted_set$$balance$8$(moonbitlang$core$immut$sorted_set$$T$remove_min$8$(_left), _value, _right);
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$remove_min$23$(self) {
  if (self.$tag === 0) {
    return moonbitlang$core$builtin$$abort$35$("remove_min: empty ImmutableSet");
  } else {
    const _Node = self;
    const _left = _Node._0;
    const _right = _Node._1;
    const _value = _Node._3;
    if (_left.$tag === 0) {
      return _right;
    } else {
      return moonbitlang$core$immut$sorted_set$$balance$23$(moonbitlang$core$immut$sorted_set$$T$remove_min$23$(_left), _value, _right);
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$min$28$(self) {
  let _tmp = self;
  while (true) {
    const self$2 = _tmp;
    if (self$2.$tag === 0) {
      return moonbitlang$core$builtin$$abort$28$("min: there are no values in sorted_set.");
    } else {
      const _Node = self$2;
      const _left = _Node._0;
      const _value = _Node._3;
      if (_left.$tag === 0) {
        return _value;
      } else {
        _tmp = _left;
        continue;
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$min$8$(self) {
  let _tmp = self;
  while (true) {
    const self$2 = _tmp;
    if (self$2.$tag === 0) {
      return moonbitlang$core$builtin$$abort$8$("min: there are no values in sorted_set.");
    } else {
      const _Node = self$2;
      const _left = _Node._0;
      const _value = _Node._3;
      if (_left.$tag === 0) {
        return _value;
      } else {
        _tmp = _left;
        continue;
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$min$23$(self) {
  let _tmp = self;
  while (true) {
    const self$2 = _tmp;
    if (self$2.$tag === 0) {
      return moonbitlang$core$builtin$$abort$23$("min: there are no values in sorted_set.");
    } else {
      const _Node = self$2;
      const _left = _Node._0;
      const _value = _Node._3;
      if (_left.$tag === 0) {
        return _value;
      } else {
        _tmp = _left;
        continue;
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$merge$28$(self, other) {
  if (self.$tag === 0) {
    return other;
  } else {
    if (other.$tag === 0) {
      return self;
    } else {
      return moonbitlang$core$immut$sorted_set$$balance$28$(self, moonbitlang$core$immut$sorted_set$$T$min$28$(other), moonbitlang$core$immut$sorted_set$$T$remove_min$28$(other));
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$remove$28$(self, value) {
  if (self.$tag === 0) {
    return $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$0$;
  } else {
    const _Node = self;
    const _left = _Node._0;
    const _right = _Node._1;
    const _node_value = _Node._3;
    const compare_result = moonbitlang$core$builtin$$Compare$compare$37$(value, _node_value);
    if (compare_result === 0) {
      return moonbitlang$core$immut$sorted_set$$T$merge$28$(_left, _right);
    } else {
      if (compare_result < 0) {
        const new_left = moonbitlang$core$immut$sorted_set$$T$remove$28$(_left, value);
        return _left === new_left ? self : moonbitlang$core$immut$sorted_set$$balance$28$(new_left, _node_value, _right);
      } else {
        const new_right = moonbitlang$core$immut$sorted_set$$T$remove$28$(_right, value);
        return _right === new_right ? self : moonbitlang$core$immut$sorted_set$$balance$28$(_left, _node_value, new_right);
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$add_max_value$8$(self, value) {
  if (self.$tag === 0) {
    return moonbitlang$core$immut$sorted_set$$singleton$8$(value);
  } else {
    const _Node = self;
    const _left = _Node._0;
    const _node_value = _Node._3;
    const _right = _Node._1;
    return moonbitlang$core$immut$sorted_set$$balance$8$(_left, _node_value, moonbitlang$core$immut$sorted_set$$T$add_max_value$8$(_right, value));
  }
}
function moonbitlang$core$immut$sorted_set$$T$add_max_value$31$(self, value) {
  if (self.$tag === 0) {
    return moonbitlang$core$immut$sorted_set$$singleton$31$(value);
  } else {
    const _Node = self;
    const _left = _Node._0;
    const _node_value = _Node._3;
    const _right = _Node._1;
    return moonbitlang$core$immut$sorted_set$$balance$31$(_left, _node_value, moonbitlang$core$immut$sorted_set$$T$add_max_value$31$(_right, value));
  }
}
function moonbitlang$core$immut$sorted_set$$T$add_max_value$23$(self, value) {
  if (self.$tag === 0) {
    return moonbitlang$core$immut$sorted_set$$singleton$23$(value);
  } else {
    const _Node = self;
    const _left = _Node._0;
    const _node_value = _Node._3;
    const _right = _Node._1;
    return moonbitlang$core$immut$sorted_set$$balance$23$(_left, _node_value, moonbitlang$core$immut$sorted_set$$T$add_max_value$23$(_right, value));
  }
}
function moonbitlang$core$immut$sorted_set$$T$add_min_value$8$(self, value) {
  if (self.$tag === 0) {
    return moonbitlang$core$immut$sorted_set$$singleton$8$(value);
  } else {
    const _Node = self;
    const _left = _Node._0;
    const _node_value = _Node._3;
    const _right = _Node._1;
    return moonbitlang$core$immut$sorted_set$$balance$8$(moonbitlang$core$immut$sorted_set$$T$add_min_value$8$(_left, value), _node_value, _right);
  }
}
function moonbitlang$core$immut$sorted_set$$T$add_min_value$31$(self, value) {
  if (self.$tag === 0) {
    return moonbitlang$core$immut$sorted_set$$singleton$31$(value);
  } else {
    const _Node = self;
    const _left = _Node._0;
    const _node_value = _Node._3;
    const _right = _Node._1;
    return moonbitlang$core$immut$sorted_set$$balance$31$(moonbitlang$core$immut$sorted_set$$T$add_min_value$31$(_left, value), _node_value, _right);
  }
}
function moonbitlang$core$immut$sorted_set$$T$add_min_value$23$(self, value) {
  if (self.$tag === 0) {
    return moonbitlang$core$immut$sorted_set$$singleton$23$(value);
  } else {
    const _Node = self;
    const _left = _Node._0;
    const _node_value = _Node._3;
    const _right = _Node._1;
    return moonbitlang$core$immut$sorted_set$$balance$23$(moonbitlang$core$immut$sorted_set$$T$add_min_value$23$(_left, value), _node_value, _right);
  }
}
function moonbitlang$core$immut$sorted_set$$join$8$(left, value, right) {
  if (left.$tag === 0) {
    return moonbitlang$core$immut$sorted_set$$T$add_min_value$8$(right, value);
  } else {
    if (right.$tag === 0) {
      return moonbitlang$core$immut$sorted_set$$T$add_max_value$8$(left, value);
    } else {
      const _Node = left;
      const _ll = _Node._0;
      const _lv = _Node._3;
      const _lr = _Node._1;
      const _ls = _Node._2;
      const _Node$2 = right;
      const _rl = _Node$2._0;
      const _rv = _Node$2._3;
      const _rr = _Node$2._1;
      const _rs = _Node$2._2;
      return _ls > (Math.imul(_rs, 5) | 0) ? moonbitlang$core$immut$sorted_set$$balance$8$(_ll, _lv, moonbitlang$core$immut$sorted_set$$join$8$(_lr, value, right)) : _rs > (Math.imul(_ls, 5) | 0) ? moonbitlang$core$immut$sorted_set$$balance$8$(moonbitlang$core$immut$sorted_set$$join$8$(left, value, _rl), _rv, _rr) : moonbitlang$core$immut$sorted_set$$create$8$(left, value, right);
    }
  }
}
function moonbitlang$core$immut$sorted_set$$join$31$(left, value, right) {
  if (left.$tag === 0) {
    return moonbitlang$core$immut$sorted_set$$T$add_min_value$31$(right, value);
  } else {
    if (right.$tag === 0) {
      return moonbitlang$core$immut$sorted_set$$T$add_max_value$31$(left, value);
    } else {
      const _Node = left;
      const _ll = _Node._0;
      const _lv = _Node._3;
      const _lr = _Node._1;
      const _ls = _Node._2;
      const _Node$2 = right;
      const _rl = _Node$2._0;
      const _rv = _Node$2._3;
      const _rr = _Node$2._1;
      const _rs = _Node$2._2;
      return _ls > (Math.imul(_rs, 5) | 0) ? moonbitlang$core$immut$sorted_set$$balance$31$(_ll, _lv, moonbitlang$core$immut$sorted_set$$join$31$(_lr, value, right)) : _rs > (Math.imul(_ls, 5) | 0) ? moonbitlang$core$immut$sorted_set$$balance$31$(moonbitlang$core$immut$sorted_set$$join$31$(left, value, _rl), _rv, _rr) : moonbitlang$core$immut$sorted_set$$create$31$(left, value, right);
    }
  }
}
function moonbitlang$core$immut$sorted_set$$join$23$(left, value, right) {
  if (left.$tag === 0) {
    return moonbitlang$core$immut$sorted_set$$T$add_min_value$23$(right, value);
  } else {
    if (right.$tag === 0) {
      return moonbitlang$core$immut$sorted_set$$T$add_max_value$23$(left, value);
    } else {
      const _Node = left;
      const _ll = _Node._0;
      const _lv = _Node._3;
      const _lr = _Node._1;
      const _ls = _Node._2;
      const _Node$2 = right;
      const _rl = _Node$2._0;
      const _rv = _Node$2._3;
      const _rr = _Node$2._1;
      const _rs = _Node$2._2;
      return _ls > (Math.imul(_rs, 5) | 0) ? moonbitlang$core$immut$sorted_set$$balance$23$(_ll, _lv, moonbitlang$core$immut$sorted_set$$join$23$(_lr, value, right)) : _rs > (Math.imul(_ls, 5) | 0) ? moonbitlang$core$immut$sorted_set$$balance$23$(moonbitlang$core$immut$sorted_set$$join$23$(left, value, _rl), _rv, _rr) : moonbitlang$core$immut$sorted_set$$create$23$(left, value, right);
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$split$8$(self, divide) {
  if (self.$tag === 0) {
    return { _0: $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$1$, _1: false, _2: $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$1$ };
  } else {
    const _Node = self;
    const _left = _Node._0;
    const _right = _Node._1;
    const _value = _Node._3;
    const compare_result = $compare_int(divide, _value);
    if (compare_result === 0) {
      return { _0: _left, _1: true, _2: _right };
    } else {
      if (compare_result < 0) {
        const _bind = moonbitlang$core$immut$sorted_set$$T$split$8$(_left, divide);
        const _left_left = _bind._0;
        const _present = _bind._1;
        const _right_left = _bind._2;
        return { _0: _left_left, _1: _present, _2: moonbitlang$core$immut$sorted_set$$join$8$(_right_left, _value, _right) };
      } else {
        const _bind = moonbitlang$core$immut$sorted_set$$T$split$8$(_right, divide);
        const _left_right = _bind._0;
        const _present = _bind._1;
        const _right_right = _bind._2;
        return { _0: moonbitlang$core$immut$sorted_set$$join$8$(_left, _value, _left_right), _1: _present, _2: _right_right };
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$split$31$(self, divide) {
  if (self.$tag === 0) {
    return { _0: $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$5$, _1: false, _2: $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$5$ };
  } else {
    const _Node = self;
    const _left = _Node._0;
    const _right = _Node._1;
    const _value = _Node._3;
    const compare_result = moonbitlang$core$builtin$$Compare$compare$38$(divide, _value);
    if (compare_result === 0) {
      return { _0: _left, _1: true, _2: _right };
    } else {
      if (compare_result < 0) {
        const _bind = moonbitlang$core$immut$sorted_set$$T$split$31$(_left, divide);
        const _left_left = _bind._0;
        const _present = _bind._1;
        const _right_left = _bind._2;
        return { _0: _left_left, _1: _present, _2: moonbitlang$core$immut$sorted_set$$join$31$(_right_left, _value, _right) };
      } else {
        const _bind = moonbitlang$core$immut$sorted_set$$T$split$31$(_right, divide);
        const _left_right = _bind._0;
        const _present = _bind._1;
        const _right_right = _bind._2;
        return { _0: moonbitlang$core$immut$sorted_set$$join$31$(_left, _value, _left_right), _1: _present, _2: _right_right };
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$split$23$(self, divide) {
  if (self.$tag === 0) {
    return { _0: $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$4$, _1: false, _2: $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$4$ };
  } else {
    const _Node = self;
    const _left = _Node._0;
    const _right = _Node._1;
    const _value = _Node._3;
    const compare_result = moonbitlang$core$builtin$$Compare$compare$23$(divide, _value);
    if (compare_result === 0) {
      return { _0: _left, _1: true, _2: _right };
    } else {
      if (compare_result < 0) {
        const _bind = moonbitlang$core$immut$sorted_set$$T$split$23$(_left, divide);
        const _left_left = _bind._0;
        const _present = _bind._1;
        const _right_left = _bind._2;
        return { _0: _left_left, _1: _present, _2: moonbitlang$core$immut$sorted_set$$join$23$(_right_left, _value, _right) };
      } else {
        const _bind = moonbitlang$core$immut$sorted_set$$T$split$23$(_right, divide);
        const _left_right = _bind._0;
        const _present = _bind._1;
        const _right_right = _bind._2;
        return { _0: moonbitlang$core$immut$sorted_set$$join$23$(_left, _value, _left_right), _1: _present, _2: _right_right };
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$is_empty$28$(self) {
  if (self.$tag === 0) {
    return true;
  } else {
    return false;
  }
}
function moonbitlang$core$immut$sorted_set$$T$is_empty$8$(self) {
  if (self.$tag === 0) {
    return true;
  } else {
    return false;
  }
}
function moonbitlang$core$immut$sorted_set$$T$contains$8$(self, value) {
  let _tmp = self;
  let _tmp$2 = value;
  while (true) {
    const self$2 = _tmp;
    const value$2 = _tmp$2;
    if (self$2.$tag === 0) {
      return false;
    } else {
      const _Node = self$2;
      const _left = _Node._0;
      const _right = _Node._1;
      const _node_value = _Node._3;
      const compare_result = $compare_int(value$2, _node_value);
      if (compare_result === 0) {
        return true;
      } else {
        _tmp = compare_result < 0 ? _left : _right;
        continue;
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$contains$28$(self, value) {
  let _tmp = self;
  let _tmp$2 = value;
  while (true) {
    const self$2 = _tmp;
    const value$2 = _tmp$2;
    if (self$2.$tag === 0) {
      return false;
    } else {
      const _Node = self$2;
      const _left = _Node._0;
      const _right = _Node._1;
      const _node_value = _Node._3;
      const compare_result = moonbitlang$core$builtin$$Compare$compare$37$(value$2, _node_value);
      if (compare_result === 0) {
        return true;
      } else {
        _tmp = compare_result < 0 ? _left : _right;
        continue;
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$contains$23$(self, value) {
  let _tmp = self;
  let _tmp$2 = value;
  while (true) {
    const self$2 = _tmp;
    const value$2 = _tmp$2;
    if (self$2.$tag === 0) {
      return false;
    } else {
      const _Node = self$2;
      const _left = _Node._0;
      const _right = _Node._1;
      const _node_value = _Node._3;
      const compare_result = moonbitlang$core$builtin$$Compare$compare$23$(value$2, _node_value);
      if (compare_result === 0) {
        return true;
      } else {
        _tmp = compare_result < 0 ? _left : _right;
        continue;
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$union$31$(self, other) {
  if (self.$tag === 0) {
    return other;
  } else {
    if (other.$tag === 0) {
      return self;
    } else {
      const _Node = self;
      const _l1 = _Node._0;
      const _v1 = _Node._3;
      const _r1 = _Node._1;
      const _s1 = _Node._2;
      const _Node$2 = other;
      const _l2 = _Node$2._0;
      const _v2 = _Node$2._3;
      const _r2 = _Node$2._1;
      const _s2 = _Node$2._2;
      if (_s1 >= _s2) {
        if (_s2 === 1) {
          return moonbitlang$core$immut$sorted_set$$T$add$31$(self, _v2);
        } else {
          const _bind = moonbitlang$core$immut$sorted_set$$T$split$31$(other, _v1);
          const _l2$2 = _bind._0;
          const _r2$2 = _bind._2;
          return moonbitlang$core$immut$sorted_set$$join$31$(moonbitlang$core$immut$sorted_set$$T$union$31$(_l1, _l2$2), _v1, moonbitlang$core$immut$sorted_set$$T$union$31$(_r1, _r2$2));
        }
      } else {
        if (_s1 === 1) {
          return moonbitlang$core$immut$sorted_set$$T$add$31$(other, _v1);
        } else {
          const _bind = moonbitlang$core$immut$sorted_set$$T$split$31$(self, _v2);
          const _l1$2 = _bind._0;
          const _r1$2 = _bind._2;
          return moonbitlang$core$immut$sorted_set$$join$31$(moonbitlang$core$immut$sorted_set$$T$union$31$(_l1$2, _l2), _v2, moonbitlang$core$immut$sorted_set$$T$union$31$(_r1$2, _r2));
        }
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$union$23$(self, other) {
  if (self.$tag === 0) {
    return other;
  } else {
    if (other.$tag === 0) {
      return self;
    } else {
      const _Node = self;
      const _l1 = _Node._0;
      const _v1 = _Node._3;
      const _r1 = _Node._1;
      const _s1 = _Node._2;
      const _Node$2 = other;
      const _l2 = _Node$2._0;
      const _v2 = _Node$2._3;
      const _r2 = _Node$2._1;
      const _s2 = _Node$2._2;
      if (_s1 >= _s2) {
        if (_s2 === 1) {
          return moonbitlang$core$immut$sorted_set$$T$add$23$(self, _v2);
        } else {
          const _bind = moonbitlang$core$immut$sorted_set$$T$split$23$(other, _v1);
          const _l2$2 = _bind._0;
          const _r2$2 = _bind._2;
          return moonbitlang$core$immut$sorted_set$$join$23$(moonbitlang$core$immut$sorted_set$$T$union$23$(_l1, _l2$2), _v1, moonbitlang$core$immut$sorted_set$$T$union$23$(_r1, _r2$2));
        }
      } else {
        if (_s1 === 1) {
          return moonbitlang$core$immut$sorted_set$$T$add$23$(other, _v1);
        } else {
          const _bind = moonbitlang$core$immut$sorted_set$$T$split$23$(self, _v2);
          const _l1$2 = _bind._0;
          const _r1$2 = _bind._2;
          return moonbitlang$core$immut$sorted_set$$join$23$(moonbitlang$core$immut$sorted_set$$T$union$23$(_l1$2, _l2), _v2, moonbitlang$core$immut$sorted_set$$T$union$23$(_r1$2, _r2));
        }
      }
    }
  }
}
function moonbitlang$core$builtin$$Add$op_add$40$(self, other) {
  return moonbitlang$core$immut$sorted_set$$T$union$31$(self, other);
}
function moonbitlang$core$immut$sorted_set$$T$concat$8$(self, other) {
  if (self.$tag === 0) {
    return other;
  } else {
    if (other.$tag === 0) {
      return self;
    } else {
      return moonbitlang$core$immut$sorted_set$$join$8$(self, moonbitlang$core$immut$sorted_set$$T$min$8$(other), moonbitlang$core$immut$sorted_set$$T$remove_min$8$(other));
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$concat$23$(self, other) {
  if (self.$tag === 0) {
    return other;
  } else {
    if (other.$tag === 0) {
      return self;
    } else {
      return moonbitlang$core$immut$sorted_set$$join$23$(self, moonbitlang$core$immut$sorted_set$$T$min$23$(other), moonbitlang$core$immut$sorted_set$$T$remove_min$23$(other));
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$intersection$8$(self, other) {
  _L: {
    if (self.$tag === 0) {
      break _L;
    } else {
      if (other.$tag === 0) {
        break _L;
      } else {
        const _Node = self;
        const _l1 = _Node._0;
        const _v1 = _Node._3;
        const _r1 = _Node._1;
        const _bind = moonbitlang$core$immut$sorted_set$$T$split$8$(other, _v1);
        const _l2 = _bind._0;
        const _x = _bind._1;
        if (_x === false) {
          const _r2 = _bind._2;
          return moonbitlang$core$immut$sorted_set$$T$concat$8$(moonbitlang$core$immut$sorted_set$$T$intersection$8$(_l1, _l2), moonbitlang$core$immut$sorted_set$$T$intersection$8$(_r1, _r2));
        } else {
          const _r2 = _bind._2;
          return moonbitlang$core$immut$sorted_set$$join$8$(moonbitlang$core$immut$sorted_set$$T$intersection$8$(_l1, _l2), _v1, moonbitlang$core$immut$sorted_set$$T$intersection$8$(_r1, _r2));
        }
      }
    }
  }
  return $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$1$;
}
function moonbitlang$core$immut$sorted_set$$T$difference$8$(self, other) {
  if (self.$tag === 0) {
    return $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$1$;
  } else {
    if (other.$tag === 0) {
      return self;
    } else {
      const _Node = self;
      const _l1 = _Node._0;
      const _v1 = _Node._3;
      const _r1 = _Node._1;
      const _bind = moonbitlang$core$immut$sorted_set$$T$split$8$(other, _v1);
      const _l2 = _bind._0;
      const _x = _bind._1;
      if (_x === false) {
        const _r2 = _bind._2;
        return moonbitlang$core$immut$sorted_set$$join$8$(moonbitlang$core$immut$sorted_set$$T$difference$8$(_l1, _l2), _v1, moonbitlang$core$immut$sorted_set$$T$difference$8$(_r1, _r2));
      } else {
        const _r2 = _bind._2;
        return moonbitlang$core$immut$sorted_set$$T$concat$8$(moonbitlang$core$immut$sorted_set$$T$difference$8$(_l1, _l2), moonbitlang$core$immut$sorted_set$$T$difference$8$(_r1, _r2));
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$difference$23$(self, other) {
  if (self.$tag === 0) {
    return $64$moonbitlang$47$core$47$immut$47$sorted_set$46$T$Empty$4$;
  } else {
    if (other.$tag === 0) {
      return self;
    } else {
      const _Node = self;
      const _l1 = _Node._0;
      const _v1 = _Node._3;
      const _r1 = _Node._1;
      const _bind = moonbitlang$core$immut$sorted_set$$T$split$23$(other, _v1);
      const _l2 = _bind._0;
      const _x = _bind._1;
      if (_x === false) {
        const _r2 = _bind._2;
        return moonbitlang$core$immut$sorted_set$$join$23$(moonbitlang$core$immut$sorted_set$$T$difference$23$(_l1, _l2), _v1, moonbitlang$core$immut$sorted_set$$T$difference$23$(_r1, _r2));
      } else {
        const _r2 = _bind._2;
        return moonbitlang$core$immut$sorted_set$$T$concat$23$(moonbitlang$core$immut$sorted_set$$T$difference$23$(_l1, _l2), moonbitlang$core$immut$sorted_set$$T$difference$23$(_r1, _r2));
      }
    }
  }
}
function moonbitlang$core$immut$sorted_set$$T$iter$31$(self) {
  return moonbitlang$core$builtin$$Iter$new$31$((yield_) => {
    if (self.$tag === 0) {
      return 1;
    } else {
      const _Node = self;
      const _left = _Node._0;
      const _right = _Node._1;
      const _value = _Node._3;
      return moonbitlang$core$builtin$$Eq$op_equal$41$(moonbitlang$core$builtin$$Iter$run$31$(moonbitlang$core$immut$sorted_set$$T$iter$31$(_left), yield_), 0) ? 0 : moonbitlang$core$builtin$$Eq$op_equal$41$(yield_(_value), 0) ? 0 : moonbitlang$core$builtin$$Eq$op_equal$41$(moonbitlang$core$builtin$$Iter$run$31$(moonbitlang$core$immut$sorted_set$$T$iter$31$(_right), yield_), 0) ? 0 : 1;
    }
  });
}
function moonbitlang$core$immut$sorted_set$$T$iter$8$(self) {
  return moonbitlang$core$builtin$$Iter$new$8$((yield_) => {
    if (self.$tag === 0) {
      return 1;
    } else {
      const _Node = self;
      const _left = _Node._0;
      const _right = _Node._1;
      const _value = _Node._3;
      return moonbitlang$core$builtin$$Eq$op_equal$41$(moonbitlang$core$builtin$$Iter$run$8$(moonbitlang$core$immut$sorted_set$$T$iter$8$(_left), yield_), 0) ? 0 : moonbitlang$core$builtin$$Eq$op_equal$41$(yield_(_value), 0) ? 0 : moonbitlang$core$builtin$$Eq$op_equal$41$(moonbitlang$core$builtin$$Iter$run$8$(moonbitlang$core$immut$sorted_set$$T$iter$8$(_right), yield_), 0) ? 0 : 1;
    }
  });
}
function moonbitlang$core$immut$sorted_set$$T$iter$30$(self) {
  return moonbitlang$core$builtin$$Iter$new$30$((yield_) => {
    if (self.$tag === 0) {
      return 1;
    } else {
      const _Node = self;
      const _left = _Node._0;
      const _right = _Node._1;
      const _value = _Node._3;
      return moonbitlang$core$builtin$$Eq$op_equal$41$(moonbitlang$core$builtin$$Iter$run$30$(moonbitlang$core$immut$sorted_set$$T$iter$30$(_left), yield_), 0) ? 0 : moonbitlang$core$builtin$$Eq$op_equal$41$(yield_(_value), 0) ? 0 : moonbitlang$core$builtin$$Eq$op_equal$41$(moonbitlang$core$builtin$$Iter$run$30$(moonbitlang$core$immut$sorted_set$$T$iter$30$(_right), yield_), 0) ? 0 : 1;
    }
  });
}
function moonbitlang$core$immut$sorted_set$$T$iter$28$(self) {
  return moonbitlang$core$builtin$$Iter$new$28$((yield_) => {
    if (self.$tag === 0) {
      return 1;
    } else {
      const _Node = self;
      const _left = _Node._0;
      const _right = _Node._1;
      const _value = _Node._3;
      return moonbitlang$core$builtin$$Eq$op_equal$41$(moonbitlang$core$builtin$$Iter$run$28$(moonbitlang$core$immut$sorted_set$$T$iter$28$(_left), yield_), 0) ? 0 : moonbitlang$core$builtin$$Eq$op_equal$41$(yield_(_value), 0) ? 0 : moonbitlang$core$builtin$$Eq$op_equal$41$(moonbitlang$core$builtin$$Iter$run$28$(moonbitlang$core$immut$sorted_set$$T$iter$28$(_right), yield_), 0) ? 0 : 1;
    }
  });
}
function moonbitlang$core$immut$sorted_set$$T$iter$29$(self) {
  return moonbitlang$core$builtin$$Iter$new$29$((yield_) => {
    if (self.$tag === 0) {
      return 1;
    } else {
      const _Node = self;
      const _left = _Node._0;
      const _right = _Node._1;
      const _value = _Node._3;
      return moonbitlang$core$builtin$$Eq$op_equal$41$(moonbitlang$core$builtin$$Iter$run$29$(moonbitlang$core$immut$sorted_set$$T$iter$29$(_left), yield_), 0) ? 0 : moonbitlang$core$builtin$$Eq$op_equal$41$(yield_(_value), 0) ? 0 : moonbitlang$core$builtin$$Eq$op_equal$41$(moonbitlang$core$builtin$$Iter$run$29$(moonbitlang$core$immut$sorted_set$$T$iter$29$(_right), yield_), 0) ? 0 : 1;
    }
  });
}
function moonbitlang$core$builtin$$Hash$hash_combine$37$(self, hasher) {
  const _bind = moonbitlang$core$immut$sorted_set$$T$iter$8$(self);
  _bind((t) => {
    moonbitlang$core$builtin$$Hash$hash_combine$8$(t, hasher);
    return 1;
  });
}
function moonbitlang$core$immut$sorted_set$$from_iter$8$(iter) {
  const _bind = moonbitlang$core$immut$sorted_set$$new$8$();
  const _acc = { val: _bind };
  iter((_p) => {
    const s = _acc.val;
    _acc.val = moonbitlang$core$immut$sorted_set$$T$add$8$(s, _p);
    return 1;
  });
  return _acc.val;
}
function moonbitlang$core$immut$sorted_set$$InorderIterator$move_left$8$(self, node) {
  let _tmp = node;
  while (true) {
    const _param = _tmp;
    if (_param.$tag === 0) {
      return;
    } else {
      const _Node = _param;
      const _left = _Node._0;
      moonbitlang$core$array$$Array$push$28$(self, _Node);
      _tmp = _left;
      continue;
    }
  }
}
function moonbitlang$core$immut$sorted_set$$InorderIterator$new$8$(root) {
  const _self = [];
  moonbitlang$core$immut$sorted_set$$InorderIterator$move_left$8$(_self, root);
  return _self;
}
function moonbitlang$core$immut$sorted_set$$InorderIterator$next$8$(self) {
  const _bind = moonbitlang$core$array$$Array$pop$28$(self);
  if (_bind === undefined) {
    return undefined;
  } else {
    const _Some = _bind;
    const _curr = _Some;
    if (_curr.$tag === 1) {
      const _Node = _curr;
      const _right = _Node._1;
      const _value = _Node._3;
      moonbitlang$core$immut$sorted_set$$InorderIterator$move_left$8$(self, _right);
      return _value;
    } else {
      return $panic();
    }
  }
}
function moonbitlang$core$builtin$$Eq$op_equal$37$(self, other) {
  const iter = moonbitlang$core$immut$sorted_set$$InorderIterator$new$8$(self);
  const iter1 = moonbitlang$core$immut$sorted_set$$InorderIterator$new$8$(other);
  let _tmp = moonbitlang$core$immut$sorted_set$$InorderIterator$next$8$(iter);
  let _tmp$2 = moonbitlang$core$immut$sorted_set$$InorderIterator$next$8$(iter1);
  while (true) {
    const _param = _tmp;
    const _param$2 = _tmp$2;
    if (_param === undefined) {
      return _param$2 === undefined;
    } else {
      const _Some = _param;
      const _a = _Some;
      if (_param$2 === undefined) {
        return false;
      } else {
        const _Some$2 = _param$2;
        const _b = _Some$2;
        if (_a === _b) {
          const _tmp$3 = moonbitlang$core$immut$sorted_set$$InorderIterator$next$8$(iter);
          const _tmp$4 = moonbitlang$core$immut$sorted_set$$InorderIterator$next$8$(iter1);
          _tmp = _tmp$3;
          _tmp$2 = _tmp$4;
          continue;
        } else {
          return false;
        }
      }
    }
  }
}
function moonbitlang$core$builtin$$Compare$compare$37$(self, other) {
  const iter = moonbitlang$core$immut$sorted_set$$InorderIterator$new$8$(self);
  const iter1 = moonbitlang$core$immut$sorted_set$$InorderIterator$new$8$(other);
  let _tmp = moonbitlang$core$immut$sorted_set$$InorderIterator$next$8$(iter);
  let _tmp$2 = moonbitlang$core$immut$sorted_set$$InorderIterator$next$8$(iter1);
  while (true) {
    const _param = _tmp;
    const _param$2 = _tmp$2;
    if (_param === undefined) {
      return _param$2 === undefined ? 0 : -1;
    } else {
      const _Some = _param;
      const _a = _Some;
      if (_param$2 === undefined) {
        return 1;
      } else {
        const _Some$2 = _param$2;
        const _b = _Some$2;
        const cmp = $compare_int(_a, _b);
        if (cmp === 0) {
          const _tmp$3 = moonbitlang$core$immut$sorted_set$$InorderIterator$next$8$(iter);
          const _tmp$4 = moonbitlang$core$immut$sorted_set$$InorderIterator$next$8$(iter1);
          _tmp = _tmp$3;
          _tmp$2 = _tmp$4;
          continue;
        } else {
          return cmp;
        }
      }
    }
  }
}
function moonbitlang$core$strconv$$base_err$42$() {
  return new Result$Err$6$(new Error$moonbitlang$47$core$47$strconv$46$StrConvError$46$StrConvError(moonbitlang$core$strconv$$base_err_str));
}
function moonbitlang$core$strconv$$check_and_consume_base(view, base) {
  let rest;
  _L: {
    let rest$2;
    _L$2: {
      let rest$3;
      _L$3: {
        let rest$4;
        _L$4: {
          if (moonbitlang$core$string$$String$char_length_ge(view.str, 2, view.start, view.end)) {
            const _x = moonbitlang$core$string$$String$unsafe_char_at(view.str, moonbitlang$core$string$$String$offset_of_nth_char(view.str, 0, view.start, view.end));
            if (_x === 48) {
              const _x$2 = moonbitlang$core$string$$String$unsafe_char_at(view.str, moonbitlang$core$string$$String$offset_of_nth_char(view.str, 1, view.start, view.end));
              switch (_x$2) {
                case 120: {
                  const _tmp = view.str;
                  const _bind = moonbitlang$core$string$$String$offset_of_nth_char(view.str, 2, view.start, view.end);
                  let _tmp$2;
                  if (_bind === undefined) {
                    _tmp$2 = view.end;
                  } else {
                    const _Some = _bind;
                    _tmp$2 = _Some;
                  }
                  const _tmp$3 = _tmp$2;
                  const _x$3 = { str: _tmp, start: _tmp$3, end: view.end };
                  rest$4 = _x$3;
                  break _L$4;
                }
                case 88: {
                  const _tmp$4 = view.str;
                  const _bind$2 = moonbitlang$core$string$$String$offset_of_nth_char(view.str, 2, view.start, view.end);
                  let _tmp$5;
                  if (_bind$2 === undefined) {
                    _tmp$5 = view.end;
                  } else {
                    const _Some = _bind$2;
                    _tmp$5 = _Some;
                  }
                  const _tmp$6 = _tmp$5;
                  const _x$4 = { str: _tmp$4, start: _tmp$6, end: view.end };
                  rest$4 = _x$4;
                  break _L$4;
                }
                case 111: {
                  const _tmp$7 = view.str;
                  const _bind$3 = moonbitlang$core$string$$String$offset_of_nth_char(view.str, 2, view.start, view.end);
                  let _tmp$8;
                  if (_bind$3 === undefined) {
                    _tmp$8 = view.end;
                  } else {
                    const _Some = _bind$3;
                    _tmp$8 = _Some;
                  }
                  const _tmp$9 = _tmp$8;
                  const _x$5 = { str: _tmp$7, start: _tmp$9, end: view.end };
                  rest$3 = _x$5;
                  break _L$3;
                }
                case 79: {
                  const _tmp$10 = view.str;
                  const _bind$4 = moonbitlang$core$string$$String$offset_of_nth_char(view.str, 2, view.start, view.end);
                  let _tmp$11;
                  if (_bind$4 === undefined) {
                    _tmp$11 = view.end;
                  } else {
                    const _Some = _bind$4;
                    _tmp$11 = _Some;
                  }
                  const _tmp$12 = _tmp$11;
                  const _x$6 = { str: _tmp$10, start: _tmp$12, end: view.end };
                  rest$3 = _x$6;
                  break _L$3;
                }
                case 98: {
                  const _tmp$13 = view.str;
                  const _bind$5 = moonbitlang$core$string$$String$offset_of_nth_char(view.str, 2, view.start, view.end);
                  let _tmp$14;
                  if (_bind$5 === undefined) {
                    _tmp$14 = view.end;
                  } else {
                    const _Some = _bind$5;
                    _tmp$14 = _Some;
                  }
                  const _tmp$15 = _tmp$14;
                  const _x$7 = { str: _tmp$13, start: _tmp$15, end: view.end };
                  rest$2 = _x$7;
                  break _L$2;
                }
                case 66: {
                  const _tmp$16 = view.str;
                  const _bind$6 = moonbitlang$core$string$$String$offset_of_nth_char(view.str, 2, view.start, view.end);
                  let _tmp$17;
                  if (_bind$6 === undefined) {
                    _tmp$17 = view.end;
                  } else {
                    const _Some = _bind$6;
                    _tmp$17 = _Some;
                  }
                  const _tmp$18 = _tmp$17;
                  const _x$8 = { str: _tmp$16, start: _tmp$18, end: view.end };
                  rest$2 = _x$8;
                  break _L$2;
                }
                default: {
                  rest = view;
                  break _L;
                }
              }
            } else {
              rest = view;
              break _L;
            }
          } else {
            rest = view;
            break _L;
          }
        }
        _L$5: {
          switch (base) {
            case 0: {
              break _L$5;
            }
            case 16: {
              break _L$5;
            }
            default: {
              return moonbitlang$core$strconv$$base_err$42$();
            }
          }
        }
        return new Result$Ok$6$({ _0: 16, _1: rest$4, _2: true });
      }
      _L$4: {
        switch (base) {
          case 0: {
            break _L$4;
          }
          case 8: {
            break _L$4;
          }
          default: {
            return moonbitlang$core$strconv$$base_err$42$();
          }
        }
      }
      return new Result$Ok$6$({ _0: 8, _1: rest$3, _2: true });
    }
    _L$3: {
      switch (base) {
        case 0: {
          break _L$3;
        }
        case 2: {
          break _L$3;
        }
        default: {
          return moonbitlang$core$strconv$$base_err$42$();
        }
      }
    }
    return new Result$Ok$6$({ _0: 2, _1: rest$2, _2: true });
  }
  return base === 0 ? new Result$Ok$6$({ _0: 10, _1: rest, _2: false }) : base >= 2 && base <= 36 ? new Result$Ok$6$({ _0: base, _1: rest, _2: false }) : moonbitlang$core$strconv$$base_err$42$();
}
function moonbitlang$core$strconv$$overflow_threshold(base, neg) {
  return !neg ? (base === 10 ? moonbitlang$core$builtin$$Add$op_add$43$(moonbitlang$core$builtin$$Div$op_div$43$($9223372036854775807L, $10L), $1L) : base === 16 ? moonbitlang$core$builtin$$Add$op_add$43$(moonbitlang$core$builtin$$Div$op_div$43$($9223372036854775807L, $16L), $1L) : moonbitlang$core$builtin$$Add$op_add$43$(moonbitlang$core$builtin$$Div$op_div$43$($9223372036854775807L, moonbitlang$core$int$$Int$to_int64(base)), $1L)) : base === 10 ? moonbitlang$core$builtin$$Div$op_div$43$($_9223372036854775808L, $10L) : base === 16 ? moonbitlang$core$builtin$$Div$op_div$43$($_9223372036854775808L, $16L) : moonbitlang$core$builtin$$Div$op_div$43$($_9223372036854775808L, moonbitlang$core$int$$Int$to_int64(base));
}
function moonbitlang$core$strconv$$range_err$21$() {
  return new Result$Err$7$(new Error$moonbitlang$47$core$47$strconv$46$StrConvError$46$StrConvError(moonbitlang$core$strconv$$range_err_str));
}
function moonbitlang$core$strconv$$range_err$43$() {
  return new Result$Err$8$(new Error$moonbitlang$47$core$47$strconv$46$StrConvError$46$StrConvError(moonbitlang$core$strconv$$range_err_str));
}
function moonbitlang$core$strconv$$syntax_err$8$() {
  return new Result$Err$9$(new Error$moonbitlang$47$core$47$strconv$46$StrConvError$46$StrConvError(moonbitlang$core$strconv$$syntax_err_str));
}
function moonbitlang$core$strconv$$syntax_err$43$() {
  return new Result$Err$8$(new Error$moonbitlang$47$core$47$strconv$46$StrConvError$46$StrConvError(moonbitlang$core$strconv$$syntax_err_str));
}
function moonbitlang$core$strconv$$parse_int64(str, base) {
  if (moonbitlang$core$builtin$$op_notequal$23$(str, "")) {
    let _bind;
    let rest;
    _L: {
      _L$2: {
        const _arg = moonbitlang$core$string$$String$view$46$start_offset$46$default();
        const _arg$2 = moonbitlang$core$string$$String$view$46$end_offset$46$default(str);
        const _bind$2 = moonbitlang$core$string$$String$view(str, _arg, _arg$2);
        if (moonbitlang$core$string$$String$char_length_ge(_bind$2.str, 1, _bind$2.start, _bind$2.end)) {
          const _x = moonbitlang$core$string$$String$unsafe_char_at(_bind$2.str, moonbitlang$core$string$$String$offset_of_nth_char(_bind$2.str, 0, _bind$2.start, _bind$2.end));
          switch (_x) {
            case 43: {
              const _tmp = _bind$2.str;
              const _bind$3 = moonbitlang$core$string$$String$offset_of_nth_char(_bind$2.str, 1, _bind$2.start, _bind$2.end);
              let _tmp$2;
              if (_bind$3 === undefined) {
                _tmp$2 = _bind$2.end;
              } else {
                const _Some = _bind$3;
                _tmp$2 = _Some;
              }
              const _tmp$3 = _tmp$2;
              const _x$2 = { str: _tmp, start: _tmp$3, end: _bind$2.end };
              _bind = { _0: false, _1: _x$2 };
              break;
            }
            case 45: {
              const _tmp$4 = _bind$2.str;
              const _bind$4 = moonbitlang$core$string$$String$offset_of_nth_char(_bind$2.str, 1, _bind$2.start, _bind$2.end);
              let _tmp$5;
              if (_bind$4 === undefined) {
                _tmp$5 = _bind$2.end;
              } else {
                const _Some = _bind$4;
                _tmp$5 = _Some;
              }
              const _tmp$6 = _tmp$5;
              const _x$3 = { str: _tmp$4, start: _tmp$6, end: _bind$2.end };
              _bind = { _0: true, _1: _x$3 };
              break;
            }
            default: {
              rest = _bind$2;
              break _L$2;
            }
          }
        } else {
          rest = _bind$2;
          break _L$2;
        }
        break _L;
      }
      _bind = { _0: false, _1: rest };
    }
    const _neg = _bind._0;
    const _rest = _bind._1;
    const _bind$2 = moonbitlang$core$strconv$$check_and_consume_base(_rest, base);
    let _bind$3;
    if (_bind$2.$tag === 1) {
      const _ok = _bind$2;
      _bind$3 = _ok._0;
    } else {
      return _bind$2;
    }
    const _num_base = _bind$3._0;
    const _rest$2 = _bind$3._1;
    const _allow_underscore = _bind$3._2;
    const overflow_threshold = moonbitlang$core$strconv$$overflow_threshold(_num_base, _neg);
    let has_digit;
    if (moonbitlang$core$string$$String$char_length_ge(_rest$2.str, 1, _rest$2.start, _rest$2.end)) {
      const _x = moonbitlang$core$string$$String$unsafe_char_at(_rest$2.str, moonbitlang$core$string$$String$offset_of_nth_char(_rest$2.str, 0, _rest$2.start, _rest$2.end));
      if (_x >= 48 && _x <= 57) {
        has_digit = true;
      } else {
        if (_x >= 97 && _x <= 122) {
          has_digit = true;
        } else {
          if (_x >= 65 && _x <= 90) {
            has_digit = true;
          } else {
            if (moonbitlang$core$string$$String$char_length_ge(_rest$2.str, 2, _rest$2.start, _rest$2.end)) {
              if (_x === 95) {
                const _x$2 = moonbitlang$core$string$$String$unsafe_char_at(_rest$2.str, moonbitlang$core$string$$String$offset_of_nth_char(_rest$2.str, 1, _rest$2.start, _rest$2.end));
                has_digit = _x$2 >= 48 && _x$2 <= 57 ? true : _x$2 >= 97 && _x$2 <= 122 ? true : _x$2 >= 65 && _x$2 <= 90;
              } else {
                has_digit = false;
              }
            } else {
              has_digit = false;
            }
          }
        }
      }
    } else {
      has_digit = false;
    }
    if (has_digit) {
      let _tmp;
      let _tmp$2 = _rest$2;
      let _tmp$3 = $0L;
      let _tmp$4 = _allow_underscore;
      while (true) {
        const _param = _tmp$2;
        const _param$2 = _tmp$3;
        const _param$3 = _tmp$4;
        let acc;
        let rest$2;
        let c;
        _L$2: {
          if (moonbitlang$core$string$$String$char_length_eq(_param.str, 1, _param.start, _param.end)) {
            const _x = moonbitlang$core$string$$String$unsafe_char_at(_param.str, moonbitlang$core$string$$String$offset_of_nth_char(_param.str, 0, _param.start, _param.end));
            if (_x === 95) {
              const _bind$4 = moonbitlang$core$strconv$$syntax_err$43$();
              if (_bind$4.$tag === 1) {
                const _ok = _bind$4;
                _tmp = _ok._0;
                break;
              } else {
                return _bind$4;
              }
            } else {
              const _tmp$5 = _param.str;
              const _bind$4 = moonbitlang$core$string$$String$offset_of_nth_char(_param.str, 1, _param.start, _param.end);
              let _tmp$6;
              if (_bind$4 === undefined) {
                _tmp$6 = _param.end;
              } else {
                const _Some = _bind$4;
                _tmp$6 = _Some;
              }
              const _tmp$7 = _tmp$6;
              const _x$2 = { str: _tmp$5, start: _tmp$7, end: _param.end };
              acc = _param$2;
              rest$2 = _x$2;
              c = _x;
              break _L$2;
            }
          } else {
            if (moonbitlang$core$string$$String$char_length_ge(_param.str, 1, _param.start, _param.end)) {
              const _x = moonbitlang$core$string$$String$unsafe_char_at(_param.str, moonbitlang$core$string$$String$offset_of_nth_char(_param.str, 0, _param.start, _param.end));
              if (_x === 95) {
                if (_param$3 === false) {
                  const _bind$4 = moonbitlang$core$strconv$$syntax_err$43$();
                  if (_bind$4.$tag === 1) {
                    const _ok = _bind$4;
                    _tmp = _ok._0;
                    break;
                  } else {
                    return _bind$4;
                  }
                } else {
                  const _tmp$5 = _param.str;
                  const _bind$4 = moonbitlang$core$string$$String$offset_of_nth_char(_param.str, 1, _param.start, _param.end);
                  let _tmp$6;
                  if (_bind$4 === undefined) {
                    _tmp$6 = _param.end;
                  } else {
                    const _Some = _bind$4;
                    _tmp$6 = _Some;
                  }
                  const _tmp$7 = _tmp$6;
                  const _x$2 = { str: _tmp$5, start: _tmp$7, end: _param.end };
                  _tmp$2 = _x$2;
                  _tmp$4 = false;
                  continue;
                }
              } else {
                const _tmp$5 = _param.str;
                const _bind$4 = moonbitlang$core$string$$String$offset_of_nth_char(_param.str, 1, _param.start, _param.end);
                let _tmp$6;
                if (_bind$4 === undefined) {
                  _tmp$6 = _param.end;
                } else {
                  const _Some = _bind$4;
                  _tmp$6 = _Some;
                }
                const _tmp$7 = _tmp$6;
                const _x$2 = { str: _tmp$5, start: _tmp$7, end: _param.end };
                acc = _param$2;
                rest$2 = _x$2;
                c = _x;
                break _L$2;
              }
            } else {
              _tmp = _param$2;
              break;
            }
          }
        }
        const c$2 = c;
        let d;
        if (c$2 >= 48 && c$2 <= 57) {
          d = c$2 - 48 | 0;
        } else {
          if (c$2 >= 97 && c$2 <= 122) {
            d = c$2 + -87 | 0;
          } else {
            if (c$2 >= 65 && c$2 <= 90) {
              d = c$2 + -55 | 0;
            } else {
              const _bind$4 = moonbitlang$core$strconv$$syntax_err$8$();
              if (_bind$4.$tag === 1) {
                const _ok = _bind$4;
                d = _ok._0;
              } else {
                return _bind$4;
              }
            }
          }
        }
        if (d < _num_base) {
          if (_neg) {
            if (moonbitlang$core$builtin$$op_ge$43$(acc, overflow_threshold)) {
              const next_acc = moonbitlang$core$builtin$$Sub$op_sub$43$(moonbitlang$core$builtin$$Mul$op_mul$43$(acc, moonbitlang$core$int$$Int$to_int64(_num_base)), moonbitlang$core$int$$Int$to_int64(d));
              if (moonbitlang$core$builtin$$op_le$43$(next_acc, acc)) {
                _tmp$2 = rest$2;
                _tmp$3 = next_acc;
                _tmp$4 = true;
                continue;
              } else {
                const _bind$4 = moonbitlang$core$strconv$$range_err$43$();
                if (_bind$4.$tag === 1) {
                  const _ok = _bind$4;
                  _tmp = _ok._0;
                  break;
                } else {
                  return _bind$4;
                }
              }
            } else {
              const _bind$4 = moonbitlang$core$strconv$$range_err$43$();
              if (_bind$4.$tag === 1) {
                const _ok = _bind$4;
                _tmp = _ok._0;
                break;
              } else {
                return _bind$4;
              }
            }
          } else {
            if (moonbitlang$core$builtin$$op_lt$43$(acc, overflow_threshold)) {
              const next_acc = moonbitlang$core$builtin$$Add$op_add$43$(moonbitlang$core$builtin$$Mul$op_mul$43$(acc, moonbitlang$core$int$$Int$to_int64(_num_base)), moonbitlang$core$int$$Int$to_int64(d));
              if (moonbitlang$core$builtin$$op_ge$43$(next_acc, acc)) {
                _tmp$2 = rest$2;
                _tmp$3 = next_acc;
                _tmp$4 = true;
                continue;
              } else {
                const _bind$4 = moonbitlang$core$strconv$$range_err$43$();
                if (_bind$4.$tag === 1) {
                  const _ok = _bind$4;
                  _tmp = _ok._0;
                  break;
                } else {
                  return _bind$4;
                }
              }
            } else {
              const _bind$4 = moonbitlang$core$strconv$$range_err$43$();
              if (_bind$4.$tag === 1) {
                const _ok = _bind$4;
                _tmp = _ok._0;
                break;
              } else {
                return _bind$4;
              }
            }
          }
        } else {
          const _bind$4 = moonbitlang$core$strconv$$syntax_err$43$();
          if (_bind$4.$tag === 1) {
            const _ok = _bind$4;
            _tmp = _ok._0;
            break;
          } else {
            return _bind$4;
          }
        }
      }
      return new Result$Ok$8$(_tmp);
    } else {
      return moonbitlang$core$strconv$$syntax_err$43$();
    }
  } else {
    return moonbitlang$core$strconv$$syntax_err$43$();
  }
}
function moonbitlang$core$strconv$$parse_int(str, base) {
  const _bind = moonbitlang$core$strconv$$parse_int64(str, base);
  let n;
  if (_bind.$tag === 1) {
    const _ok = _bind;
    n = _ok._0;
  } else {
    return _bind;
  }
  if (moonbitlang$core$builtin$$op_lt$43$(n, moonbitlang$core$int$$Int$to_int64(-2147483648)) || moonbitlang$core$builtin$$op_gt$43$(n, moonbitlang$core$int$$Int$to_int64(2147483647))) {
    const _bind$2 = moonbitlang$core$strconv$$range_err$21$();
    if (_bind$2.$tag === 1) {
      const _ok = _bind$2;
      _ok._0;
    } else {
      return _bind$2;
    }
  }
  return new Result$Ok$9$(moonbitlang$core$int64$$Int64$to_int(n));
}
function moonbitlang$core$ref$$new$23$(x) {
  return { val: x };
}
function moonbitlang$core$result$$Result$unwrap$44$(self) {
  if (self.$tag === 1) {
    const _Ok = self;
    const _x = _Ok._0;
    return _x;
  } else {
    return moonbitlang$core$builtin$$abort$23$("called `Result::unwrap()` on an `Err` value");
  }
}
function moonbitlang$core$result$$Result$unwrap$45$(self) {
  if (self.$tag === 1) {
    const _Ok = self;
    _Ok._0;
    return;
  } else {
    moonbitlang$core$builtin$$abort$21$("called `Result::unwrap()` on an `Err` value");
    return;
  }
}
function moonbitlang$core$result$$Result$unwrap$46$(self) {
  if (self.$tag === 1) {
    const _Ok = self;
    const _x = _Ok._0;
    return _x;
  } else {
    return moonbitlang$core$builtin$$abort$8$("called `Result::unwrap()` on an `Err` value");
  }
}
function moonbitlang$core$bytes$$Bytes$from_array(arr) {
  return moonbitlang$core$bytes$$Bytes$makei(arr.length, (i) => moonbitlang$core$array$$Array$op_get$47$(arr, i));
}
function moonbitlang$core$bytes$$Bytes$from_fixedarray(arr, len) {
  let len$2;
  if (len === undefined) {
    len$2 = arr.length;
  } else {
    const _Some = len;
    const _x = _Some;
    len$2 = _x;
  }
  return moonbitlang$core$bytes$$Bytes$makei(len$2, (i) => {
    $bound_check(arr, i);
    return arr[i];
  });
}
function moonbitlang$core$bytes$$from_fixedarray(arr, len) {
  return moonbitlang$core$bytes$$Bytes$from_fixedarray(arr, len);
}
function moonbitlang$core$bytes$$Bytes$to_fixedarray(self, len) {
  let len$2;
  if (len === undefined) {
    len$2 = self.length;
  } else {
    const _Some = len;
    const _x = _Some;
    len$2 = _x;
  }
  const arr = $make_array_len_and_init(len$2, moonbitlang$core$builtin$$Default$default$47$());
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i < len$2) {
      $bound_check(self, i);
      $bound_check(arr, i);
      arr[i] = self[i];
      _tmp = i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return arr;
}
function moonbitlang$core$bytes$$Bytes$iter(self) {
  return moonbitlang$core$builtin$$Iter$new$47$((yield_) => {
    let _tmp = 0;
    let _tmp$2 = self.length;
    while (true) {
      const i = _tmp;
      const len = _tmp$2;
      if (i < len) {
        $bound_check(self, i);
        if (moonbitlang$core$builtin$$Eq$op_equal$41$(yield_(self[i]), 0)) {
          return 0;
        }
        _tmp = i + 1 | 0;
        continue;
      } else {
        return 1;
      }
    }
  });
}
function moonbitlang$core$bytes$$View$op_get(self, index) {
  if (index >= 0 && index < self.len) {
    const _tmp = self.bytes;
    const _tmp$2 = self.start + index | 0;
    $bound_check(_tmp, _tmp$2);
    return _tmp[_tmp$2];
  } else {
    return moonbitlang$core$builtin$$abort$47$(`index out of bounds: the len is from 0 to ${moonbitlang$core$builtin$$Show$to_string$8$(self.len)} but the index is ${moonbitlang$core$builtin$$Show$to_string$8$(index)}`);
  }
}
function moonbitlang$core$bytes$$View$unsafe_get(self, index) {
  const _tmp = self.bytes;
  const _tmp$2 = self.start + index | 0;
  $bound_check(_tmp, _tmp$2);
  return _tmp[_tmp$2];
}
function moonbitlang$core$bytes$$Bytes$op_as_view(self, start, end) {
  const len = self.length;
  let end$2;
  if (end === undefined) {
    end$2 = len;
  } else {
    const _Some = end;
    const _end = _Some;
    end$2 = _end < 0 ? len + _end | 0 : _end;
  }
  const start$2 = start < 0 ? len + start | 0 : start;
  return start$2 >= 0 && (start$2 <= end$2 && end$2 <= len) ? { bytes: self, start: start$2, len: end$2 - start$2 | 0 } : moonbitlang$core$builtin$$abort$48$("Invalid index for View");
}
function moonbitlang$core$bytes$$View$iter(self) {
  return moonbitlang$core$builtin$$Iter$new$47$((yield_) => {
    const _end83 = self.len;
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < _end83) {
        const _bind = yield_(moonbitlang$core$bytes$$View$op_get(self, i));
        if (_bind === 1) {
        } else {
          return 0;
        }
        _tmp = i + 1 | 0;
        continue;
      } else {
        return 1;
      }
    }
  });
}
function moonbitlang$core$builtin$$Eq$op_equal$48$(self, other) {
  if (self.len === other.len) {
    const _end54 = self.len;
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < _end54) {
        if (moonbitlang$core$builtin$$Eq$op_equal$47$(moonbitlang$core$bytes$$View$unsafe_get(self, i), moonbitlang$core$bytes$$View$unsafe_get(other, i))) {
        } else {
          return false;
        }
        _tmp = i + 1 | 0;
        continue;
      } else {
        break;
      }
    }
    return true;
  } else {
    return false;
  }
}
function moonbitlang$core$array$$get_limit(len) {
  let len$2 = len;
  let limit = 0;
  while (true) {
    if (len$2 > 0) {
      len$2 = len$2 / 2 | 0;
      limit = limit + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return limit;
}
function moonbitlang$core$array$$ArrayView$rev_inplace$49$(self) {
  const mid_len = moonbitlang$core$array$$ArrayView$length$49$(self) / 2 | 0;
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i < mid_len) {
      const j = (moonbitlang$core$array$$ArrayView$length$49$(self) - i | 0) - 1 | 0;
      moonbitlang$core$array$$ArrayView$swap$49$(self, i, j);
      _tmp = i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$ArrayView$rev_inplace$50$(self) {
  const mid_len = moonbitlang$core$array$$ArrayView$length$50$(self) / 2 | 0;
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i < mid_len) {
      const j = (moonbitlang$core$array$$ArrayView$length$50$(self) - i | 0) - 1 | 0;
      moonbitlang$core$array$$ArrayView$swap$50$(self, i, j);
      _tmp = i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$choose_pivot$46$sort_2$47$1150(_env, a, b) {
  const swaps = _env._1;
  const arr = _env._0;
  if (moonbitlang$core$builtin$$op_gt$49$(moonbitlang$core$array$$ArrayView$op_get$49$(arr, a), moonbitlang$core$array$$ArrayView$op_get$49$(arr, b))) {
    moonbitlang$core$array$$ArrayView$swap$49$(arr, a, b);
    swaps.val = swaps.val + 1 | 0;
    return;
  } else {
    return;
  }
}
function moonbitlang$core$array$$choose_pivot$46$sort_3$47$1151(_env, a, b, c) {
  moonbitlang$core$array$$choose_pivot$46$sort_2$47$1150(_env, a, b);
  moonbitlang$core$array$$choose_pivot$46$sort_2$47$1150(_env, b, c);
  moonbitlang$core$array$$choose_pivot$46$sort_2$47$1150(_env, a, b);
}
function moonbitlang$core$array$$choose_pivot$49$(arr) {
  const len = moonbitlang$core$array$$ArrayView$length$49$(arr);
  const swaps = { val: 0 };
  const b = Math.imul(len / 4 | 0, 2) | 0;
  if (len >= 8) {
    const a = Math.imul(len / 4 | 0, 1) | 0;
    const c = Math.imul(len / 4 | 0, 3) | 0;
    const _env = { _0: arr, _1: swaps };
    if (len > 50) {
      moonbitlang$core$array$$choose_pivot$46$sort_3$47$1151(_env, a - 1 | 0, a, a + 1 | 0);
      moonbitlang$core$array$$choose_pivot$46$sort_3$47$1151(_env, b - 1 | 0, b, b + 1 | 0);
      moonbitlang$core$array$$choose_pivot$46$sort_3$47$1151(_env, c - 1 | 0, c, c + 1 | 0);
    }
    moonbitlang$core$array$$choose_pivot$46$sort_3$47$1151(_env, a, b, c);
  }
  if (swaps.val === 12) {
    moonbitlang$core$array$$ArrayView$rev_inplace$49$(arr);
    return { _0: (len - b | 0) - 1 | 0, _1: true };
  } else {
    return { _0: b, _1: swaps.val === 0 };
  }
}
function moonbitlang$core$array$$choose_pivot$46$sort_2$47$1168(_env, a, b) {
  const swaps = _env._1;
  const arr = _env._0;
  if (moonbitlang$core$builtin$$op_gt$50$(moonbitlang$core$array$$ArrayView$op_get$50$(arr, a), moonbitlang$core$array$$ArrayView$op_get$50$(arr, b))) {
    moonbitlang$core$array$$ArrayView$swap$50$(arr, a, b);
    swaps.val = swaps.val + 1 | 0;
    return;
  } else {
    return;
  }
}
function moonbitlang$core$array$$choose_pivot$46$sort_3$47$1169(_env, a, b, c) {
  moonbitlang$core$array$$choose_pivot$46$sort_2$47$1168(_env, a, b);
  moonbitlang$core$array$$choose_pivot$46$sort_2$47$1168(_env, b, c);
  moonbitlang$core$array$$choose_pivot$46$sort_2$47$1168(_env, a, b);
}
function moonbitlang$core$array$$choose_pivot$50$(arr) {
  const len = moonbitlang$core$array$$ArrayView$length$50$(arr);
  const swaps = { val: 0 };
  const b = Math.imul(len / 4 | 0, 2) | 0;
  if (len >= 8) {
    const a = Math.imul(len / 4 | 0, 1) | 0;
    const c = Math.imul(len / 4 | 0, 3) | 0;
    const _env = { _0: arr, _1: swaps };
    if (len > 50) {
      moonbitlang$core$array$$choose_pivot$46$sort_3$47$1169(_env, a - 1 | 0, a, a + 1 | 0);
      moonbitlang$core$array$$choose_pivot$46$sort_3$47$1169(_env, b - 1 | 0, b, b + 1 | 0);
      moonbitlang$core$array$$choose_pivot$46$sort_3$47$1169(_env, c - 1 | 0, c, c + 1 | 0);
    }
    moonbitlang$core$array$$choose_pivot$46$sort_3$47$1169(_env, a, b, c);
  }
  if (swaps.val === 12) {
    moonbitlang$core$array$$ArrayView$rev_inplace$50$(arr);
    return { _0: (len - b | 0) - 1 | 0, _1: true };
  } else {
    return { _0: b, _1: swaps.val === 0 };
  }
}
function moonbitlang$core$array$$sift_down$49$(arr, index) {
  let index$2 = index;
  const len = moonbitlang$core$array$$ArrayView$length$49$(arr);
  let child = (Math.imul(index$2, 2) | 0) + 1 | 0;
  while (true) {
    if (child < len) {
      if ((child + 1 | 0) < len && moonbitlang$core$builtin$$op_lt$49$(moonbitlang$core$array$$ArrayView$op_get$49$(arr, child), moonbitlang$core$array$$ArrayView$op_get$49$(arr, child + 1 | 0))) {
        child = child + 1 | 0;
      }
      if (moonbitlang$core$builtin$$op_ge$49$(moonbitlang$core$array$$ArrayView$op_get$49$(arr, index$2), moonbitlang$core$array$$ArrayView$op_get$49$(arr, child))) {
        return undefined;
      }
      moonbitlang$core$array$$ArrayView$swap$49$(arr, index$2, child);
      index$2 = child;
      child = (Math.imul(index$2, 2) | 0) + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$sift_down$50$(arr, index) {
  let index$2 = index;
  const len = moonbitlang$core$array$$ArrayView$length$50$(arr);
  let child = (Math.imul(index$2, 2) | 0) + 1 | 0;
  while (true) {
    if (child < len) {
      if ((child + 1 | 0) < len && moonbitlang$core$builtin$$op_lt$50$(moonbitlang$core$array$$ArrayView$op_get$50$(arr, child), moonbitlang$core$array$$ArrayView$op_get$50$(arr, child + 1 | 0))) {
        child = child + 1 | 0;
      }
      if (moonbitlang$core$builtin$$op_ge$50$(moonbitlang$core$array$$ArrayView$op_get$50$(arr, index$2), moonbitlang$core$array$$ArrayView$op_get$50$(arr, child))) {
        return undefined;
      }
      moonbitlang$core$array$$ArrayView$swap$50$(arr, index$2, child);
      index$2 = child;
      child = (Math.imul(index$2, 2) | 0) + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$heap_sort$49$(arr) {
  const len = moonbitlang$core$array$$ArrayView$length$49$(arr);
  let _tmp = (len / 2 | 0) - 1 | 0;
  while (true) {
    const i = _tmp;
    if (i >= 0) {
      moonbitlang$core$array$$sift_down$49$(arr, i);
      _tmp = i - 1 | 0;
      continue;
    } else {
      break;
    }
  }
  let _tmp$2 = len - 1 | 0;
  while (true) {
    const i = _tmp$2;
    if (i > 0) {
      moonbitlang$core$array$$ArrayView$swap$49$(arr, 0, i);
      moonbitlang$core$array$$sift_down$49$(moonbitlang$core$array$$ArrayView$op_as_view$49$(arr, 0, i), 0);
      _tmp$2 = i - 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$heap_sort$50$(arr) {
  const len = moonbitlang$core$array$$ArrayView$length$50$(arr);
  let _tmp = (len / 2 | 0) - 1 | 0;
  while (true) {
    const i = _tmp;
    if (i >= 0) {
      moonbitlang$core$array$$sift_down$50$(arr, i);
      _tmp = i - 1 | 0;
      continue;
    } else {
      break;
    }
  }
  let _tmp$2 = len - 1 | 0;
  while (true) {
    const i = _tmp$2;
    if (i > 0) {
      moonbitlang$core$array$$ArrayView$swap$50$(arr, 0, i);
      moonbitlang$core$array$$sift_down$50$(moonbitlang$core$array$$ArrayView$op_as_view$50$(arr, 0, i), 0);
      _tmp$2 = i - 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$minimum(x, y) {
  return x > y ? y : x;
}
function moonbitlang$core$array$$partition$49$(arr, pivot_index) {
  moonbitlang$core$array$$ArrayView$swap$49$(arr, pivot_index, moonbitlang$core$array$$ArrayView$length$49$(arr) - 1 | 0);
  const pivot = moonbitlang$core$array$$ArrayView$op_get$49$(arr, moonbitlang$core$array$$ArrayView$length$49$(arr) - 1 | 0);
  let i = 0;
  let partitioned = true;
  const _end968 = moonbitlang$core$array$$ArrayView$length$49$(arr) - 1 | 0;
  let _tmp = 0;
  while (true) {
    const j = _tmp;
    if (j < _end968) {
      if (moonbitlang$core$builtin$$op_lt$49$(moonbitlang$core$array$$ArrayView$op_get$49$(arr, j), pivot)) {
        if (i !== j) {
          moonbitlang$core$array$$ArrayView$swap$49$(arr, i, j);
          partitioned = false;
        }
        i = i + 1 | 0;
      }
      _tmp = j + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  moonbitlang$core$array$$ArrayView$swap$49$(arr, i, moonbitlang$core$array$$ArrayView$length$49$(arr) - 1 | 0);
  return { _0: i, _1: partitioned };
}
function moonbitlang$core$array$$partition$50$(arr, pivot_index) {
  moonbitlang$core$array$$ArrayView$swap$50$(arr, pivot_index, moonbitlang$core$array$$ArrayView$length$50$(arr) - 1 | 0);
  const pivot = moonbitlang$core$array$$ArrayView$op_get$50$(arr, moonbitlang$core$array$$ArrayView$length$50$(arr) - 1 | 0);
  let i = 0;
  let partitioned = true;
  const _end968 = moonbitlang$core$array$$ArrayView$length$50$(arr) - 1 | 0;
  let _tmp = 0;
  while (true) {
    const j = _tmp;
    if (j < _end968) {
      if (moonbitlang$core$builtin$$op_lt$50$(moonbitlang$core$array$$ArrayView$op_get$50$(arr, j), pivot)) {
        if (i !== j) {
          moonbitlang$core$array$$ArrayView$swap$50$(arr, i, j);
          partitioned = false;
        }
        i = i + 1 | 0;
      }
      _tmp = j + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  moonbitlang$core$array$$ArrayView$swap$50$(arr, i, moonbitlang$core$array$$ArrayView$length$50$(arr) - 1 | 0);
  return { _0: i, _1: partitioned };
}
function moonbitlang$core$array$$try_bubble_sort$49$(arr) {
  let tries = 0;
  const _end983 = moonbitlang$core$array$$ArrayView$length$49$(arr);
  let _tmp = 1;
  while (true) {
    const i = _tmp;
    if (i < _end983) {
      let sorted = true;
      let _tmp$2 = i;
      while (true) {
        const j = _tmp$2;
        if (j > 0 && moonbitlang$core$builtin$$op_gt$49$(moonbitlang$core$array$$ArrayView$op_get$49$(arr, j - 1 | 0), moonbitlang$core$array$$ArrayView$op_get$49$(arr, j))) {
          sorted = false;
          moonbitlang$core$array$$ArrayView$swap$49$(arr, j, j - 1 | 0);
          _tmp$2 = j - 1 | 0;
          continue;
        } else {
          break;
        }
      }
      if (!sorted) {
        tries = tries + 1 | 0;
        if (tries > 8) {
          return false;
        }
      }
      _tmp = i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return true;
}
function moonbitlang$core$array$$try_bubble_sort$50$(arr) {
  let tries = 0;
  const _end983 = moonbitlang$core$array$$ArrayView$length$50$(arr);
  let _tmp = 1;
  while (true) {
    const i = _tmp;
    if (i < _end983) {
      let sorted = true;
      let _tmp$2 = i;
      while (true) {
        const j = _tmp$2;
        if (j > 0 && moonbitlang$core$builtin$$op_gt$50$(moonbitlang$core$array$$ArrayView$op_get$50$(arr, j - 1 | 0), moonbitlang$core$array$$ArrayView$op_get$50$(arr, j))) {
          sorted = false;
          moonbitlang$core$array$$ArrayView$swap$50$(arr, j, j - 1 | 0);
          _tmp$2 = j - 1 | 0;
          continue;
        } else {
          break;
        }
      }
      if (!sorted) {
        tries = tries + 1 | 0;
        if (tries > 8) {
          return false;
        }
      }
      _tmp = i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return true;
}
function moonbitlang$core$array$$ArrayView$insertion_sort$49$(arr) {
  const _end974 = moonbitlang$core$array$$ArrayView$length$49$(arr);
  let _tmp = 1;
  while (true) {
    const i = _tmp;
    if (i < _end974) {
      let _tmp$2 = i;
      while (true) {
        const j = _tmp$2;
        if (j > 0 && moonbitlang$core$builtin$$op_gt$49$(moonbitlang$core$array$$ArrayView$op_get$49$(arr, j - 1 | 0), moonbitlang$core$array$$ArrayView$op_get$49$(arr, j))) {
          moonbitlang$core$array$$ArrayView$swap$49$(arr, j, j - 1 | 0);
          _tmp$2 = j - 1 | 0;
          continue;
        } else {
          break;
        }
      }
      _tmp = i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$ArrayView$insertion_sort$50$(arr) {
  const _end974 = moonbitlang$core$array$$ArrayView$length$50$(arr);
  let _tmp = 1;
  while (true) {
    const i = _tmp;
    if (i < _end974) {
      let _tmp$2 = i;
      while (true) {
        const j = _tmp$2;
        if (j > 0 && moonbitlang$core$builtin$$op_gt$50$(moonbitlang$core$array$$ArrayView$op_get$50$(arr, j - 1 | 0), moonbitlang$core$array$$ArrayView$op_get$50$(arr, j))) {
          moonbitlang$core$array$$ArrayView$swap$50$(arr, j, j - 1 | 0);
          _tmp$2 = j - 1 | 0;
          continue;
        } else {
          break;
        }
      }
      _tmp = i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$quick_sort$49$(arr, pred, limit) {
  let limit$2 = limit;
  let arr$2 = arr;
  let pred$2 = pred;
  let was_partitioned = true;
  let balanced = true;
  while (true) {
    const len = moonbitlang$core$array$$ArrayView$length$49$(arr$2);
    if (len <= 16) {
      if (len >= 2) {
        moonbitlang$core$array$$ArrayView$insertion_sort$49$(arr$2);
      }
      return undefined;
    }
    if (limit$2 === 0) {
      moonbitlang$core$array$$heap_sort$49$(arr$2);
      return undefined;
    }
    const _bind = moonbitlang$core$array$$choose_pivot$49$(arr$2);
    const _pivot_index = _bind._0;
    const _likely_sorted = _bind._1;
    if (was_partitioned && (balanced && _likely_sorted)) {
      if (moonbitlang$core$array$$try_bubble_sort$49$(arr$2)) {
        return undefined;
      }
    }
    const _bind$2 = moonbitlang$core$array$$partition$49$(arr$2, _pivot_index);
    const _pivot = _bind$2._0;
    const _partitioned = _bind$2._1;
    was_partitioned = _partitioned;
    balanced = moonbitlang$core$array$$minimum(_pivot, len - _pivot | 0) >= (len / 8 | 0);
    if (!balanced) {
      limit$2 = limit$2 - 1 | 0;
    }
    const _bind$3 = pred$2;
    if (_bind$3 === undefined) {
    } else {
      const _Some = _bind$3;
      const _pred = _Some;
      if (moonbitlang$core$builtin$$Eq$op_equal$51$(_pred, moonbitlang$core$array$$ArrayView$op_get$49$(arr$2, _pivot))) {
        let i = _pivot;
        while (true) {
          if (i < len && moonbitlang$core$builtin$$Eq$op_equal$51$(_pred, moonbitlang$core$array$$ArrayView$op_get$49$(arr$2, i))) {
            i = i + 1 | 0;
            continue;
          } else {
            break;
          }
        }
        arr$2 = moonbitlang$core$array$$ArrayView$op_as_view$49$(arr$2, i, len);
        continue;
      }
    }
    const left = moonbitlang$core$array$$ArrayView$op_as_view$49$(arr$2, 0, _pivot);
    const right = moonbitlang$core$array$$ArrayView$op_as_view$49$(arr$2, _pivot + 1 | 0, len);
    if (moonbitlang$core$array$$ArrayView$length$49$(left) < moonbitlang$core$array$$ArrayView$length$49$(right)) {
      moonbitlang$core$array$$quick_sort$49$(left, pred$2, limit$2);
      pred$2 = moonbitlang$core$array$$ArrayView$op_get$49$(arr$2, _pivot);
      arr$2 = right;
    } else {
      moonbitlang$core$array$$quick_sort$49$(right, moonbitlang$core$array$$ArrayView$op_get$49$(arr$2, _pivot), limit$2);
      arr$2 = left;
    }
    continue;
  }
}
function moonbitlang$core$array$$quick_sort$50$(arr, pred, limit) {
  let limit$2 = limit;
  let arr$2 = arr;
  let pred$2 = pred;
  let was_partitioned = true;
  let balanced = true;
  while (true) {
    const len = moonbitlang$core$array$$ArrayView$length$50$(arr$2);
    if (len <= 16) {
      if (len >= 2) {
        moonbitlang$core$array$$ArrayView$insertion_sort$50$(arr$2);
      }
      return undefined;
    }
    if (limit$2 === 0) {
      moonbitlang$core$array$$heap_sort$50$(arr$2);
      return undefined;
    }
    const _bind = moonbitlang$core$array$$choose_pivot$50$(arr$2);
    const _pivot_index = _bind._0;
    const _likely_sorted = _bind._1;
    if (was_partitioned && (balanced && _likely_sorted)) {
      if (moonbitlang$core$array$$try_bubble_sort$50$(arr$2)) {
        return undefined;
      }
    }
    const _bind$2 = moonbitlang$core$array$$partition$50$(arr$2, _pivot_index);
    const _pivot = _bind$2._0;
    const _partitioned = _bind$2._1;
    was_partitioned = _partitioned;
    balanced = moonbitlang$core$array$$minimum(_pivot, len - _pivot | 0) >= (len / 8 | 0);
    if (!balanced) {
      limit$2 = limit$2 - 1 | 0;
    }
    const _bind$3 = pred$2;
    if (_bind$3 === undefined) {
    } else {
      const _Some = _bind$3;
      const _pred = _Some;
      if (moonbitlang$core$builtin$$Eq$op_equal$50$(_pred, moonbitlang$core$array$$ArrayView$op_get$50$(arr$2, _pivot))) {
        let i = _pivot;
        while (true) {
          if (i < len && moonbitlang$core$builtin$$Eq$op_equal$50$(_pred, moonbitlang$core$array$$ArrayView$op_get$50$(arr$2, i))) {
            i = i + 1 | 0;
            continue;
          } else {
            break;
          }
        }
        arr$2 = moonbitlang$core$array$$ArrayView$op_as_view$50$(arr$2, i, len);
        continue;
      }
    }
    const left = moonbitlang$core$array$$ArrayView$op_as_view$50$(arr$2, 0, _pivot);
    const right = moonbitlang$core$array$$ArrayView$op_as_view$50$(arr$2, _pivot + 1 | 0, len);
    if (moonbitlang$core$array$$ArrayView$length$50$(left) < moonbitlang$core$array$$ArrayView$length$50$(right)) {
      moonbitlang$core$array$$quick_sort$50$(left, pred$2, limit$2);
      pred$2 = moonbitlang$core$array$$ArrayView$op_get$50$(arr$2, _pivot);
      arr$2 = right;
    } else {
      moonbitlang$core$array$$quick_sort$50$(right, moonbitlang$core$array$$ArrayView$op_get$50$(arr$2, _pivot), limit$2);
      arr$2 = left;
    }
    continue;
  }
}
function moonbitlang$core$array$$Array$sort$49$(self) {
  const len = self.length;
  moonbitlang$core$array$$quick_sort$49$(moonbitlang$core$array$$Array$op_as_view$49$(self, moonbitlang$core$array$$Array$op_as_view$46$start$46$default$49$(), len), undefined, moonbitlang$core$array$$get_limit(len));
}
function moonbitlang$core$array$$Array$sort$50$(self) {
  const len = self.length;
  moonbitlang$core$array$$quick_sort$50$(moonbitlang$core$array$$Array$op_as_view$50$(self, moonbitlang$core$array$$Array$op_as_view$46$start$46$default$50$(), len), undefined, moonbitlang$core$array$$get_limit(len));
}
function moonbitlang$core$array$$ArrayView$iter$23$(self) {
  return moonbitlang$core$builtin$$Iter$new$23$((yield_) => {
    const _len = moonbitlang$core$array$$ArrayView$length$23$(self);
    let _tmp = 0;
    while (true) {
      const _i = _tmp;
      if (_i < _len) {
        const v = self.buf[self.start + _i | 0];
        const _bind = yield_(v);
        if (_bind === 1) {
        } else {
          return 0;
        }
        _tmp = _i + 1 | 0;
        continue;
      } else {
        return 1;
      }
    }
  });
}
function moonbitlang$core$array$$Array$makei$52$(length, value) {
  if (length <= 0) {
    return [];
  } else {
    const array = moonbitlang$core$array$$Array$make$52$(length, value(0));
    let _tmp = 1;
    while (true) {
      const i = _tmp;
      if (i < length) {
        moonbitlang$core$array$$Array$op_set$52$(array, i, value(i));
        _tmp = i + 1 | 0;
        continue;
      } else {
        break;
      }
    }
    return array;
  }
}
function moonbitlang$core$array$$FixedArray$copy$8$(self) {
  const len = self.length;
  if (len === 0) {
    return [];
  } else {
    $bound_check(self, 0);
    const arr = $make_array_len_and_init(len, self[0]);
    moonbitlang$core$array$$FixedArray$unsafe_blit$8$(arr, 0, self, 0, len);
    return arr;
  }
}
function moonbitlang$core$array$$FixedArray$copy$2$(self) {
  const len = self.length;
  if (len === 0) {
    return [];
  } else {
    $bound_check(self, 0);
    const arr = $make_array_len_and_init(len, self[0]);
    moonbitlang$core$array$$FixedArray$unsafe_blit$2$(arr, 0, self, 0, len);
    return arr;
  }
}
function moonbitlang$core$array$$FixedArray$copy$3$(self) {
  const len = self.length;
  if (len === 0) {
    return [];
  } else {
    $bound_check(self, 0);
    const arr = $make_array_len_and_init(len, self[0]);
    moonbitlang$core$array$$FixedArray$unsafe_blit$3$(arr, 0, self, 0, len);
    return arr;
  }
}
function moonbitlang$core$array$$Array$copy$20$(self) {
  return moonbitlang$core$array$$JSArray$copy(self);
}
function moonbitlang$core$array$$FixedArray$makei$8$(length, value) {
  if (length <= 0) {
    return [];
  } else {
    const array = $make_array_len_and_init(length, value(0));
    let _tmp = 1;
    while (true) {
      const i = _tmp;
      if (i < length) {
        $bound_check(array, i);
        array[i] = value(i);
        _tmp = i + 1 | 0;
        continue;
      } else {
        break;
      }
    }
    return array;
  }
}
function moonbitlang$core$builtin$$Eq$op_equal$53$(self, that) {
  if (self.length !== that.length) {
    return false;
  }
  const _end80 = self.length;
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i < _end80) {
      $bound_check(self, i);
      const _tmp$2 = self[i];
      $bound_check(that, i);
      if (_tmp$2 !== that[i]) {
        return false;
      }
      _tmp = i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return true;
}
function moonbitlang$core$array$$Array$push_iter$23$(self, iter) {
  iter((x) => {
    moonbitlang$core$array$$Array$push$23$(self, x);
    return 1;
  });
}
function moonbitlang$core$array$$Array$push_iter$30$(self, iter) {
  iter((x) => {
    moonbitlang$core$array$$Array$push$30$(self, x);
    return 1;
  });
}
function moonbitlang$core$immut$sorted_map$$T$size$54$(self) {
  if (self.$tag === 0) {
    return 0;
  } else {
    const _Tree = self;
    return _Tree._2;
  }
}
function moonbitlang$core$immut$sorted_map$$T$size$55$(self) {
  if (self.$tag === 0) {
    return 0;
  } else {
    const _Tree = self;
    return _Tree._2;
  }
}
function moonbitlang$core$immut$sorted_map$$make_tree$54$(key, value, l, r) {
  const size = (moonbitlang$core$immut$sorted_map$$T$size$54$(l) + moonbitlang$core$immut$sorted_map$$T$size$54$(r) | 0) + 1 | 0;
  return new $64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Tree$10$(key, value, size, l, r);
}
function moonbitlang$core$immut$sorted_map$$make_tree$55$(key, value, l, r) {
  const size = (moonbitlang$core$immut$sorted_map$$T$size$55$(l) + moonbitlang$core$immut$sorted_map$$T$size$55$(r) | 0) + 1 | 0;
  return new $64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Tree$11$(key, value, size, l, r);
}
function moonbitlang$core$immut$sorted_map$$balance$54$(key, value, l, r) {
  const ln = moonbitlang$core$immut$sorted_map$$T$size$54$(l);
  const rn = moonbitlang$core$immut$sorted_map$$T$size$54$(r);
  if ((ln + rn | 0) < 2) {
    return moonbitlang$core$immut$sorted_map$$make_tree$54$(key, value, l, r);
  } else {
    if (rn > (Math.imul(5, ln) | 0)) {
      if (r.$tag === 1) {
        const _Tree = r;
        const _rl = _Tree._3;
        const _rr = _Tree._4;
        const rln = moonbitlang$core$immut$sorted_map$$T$size$54$(_rl);
        const rrn = moonbitlang$core$immut$sorted_map$$T$size$54$(_rr);
        if (rln < rrn) {
          if (r.$tag === 1) {
            const _Tree$2 = r;
            const _k2 = _Tree$2._0;
            const _v2 = _Tree$2._1;
            const _y = _Tree$2._3;
            const _z = _Tree$2._4;
            return moonbitlang$core$immut$sorted_map$$make_tree$54$(_k2, _v2, moonbitlang$core$immut$sorted_map$$make_tree$54$(key, value, l, _y), _z);
          } else {
            return $panic();
          }
        } else {
          _L: {
            if (r.$tag === 1) {
              const _Tree$2 = r;
              const _k3 = _Tree$2._0;
              const _v3 = _Tree$2._1;
              const _x = _Tree$2._3;
              if (_x.$tag === 1) {
                const _Tree$3 = _x;
                const _k2 = _Tree$3._0;
                const _v2 = _Tree$3._1;
                const _y1 = _Tree$3._3;
                const _y2 = _Tree$3._4;
                const _z = _Tree$2._4;
                return moonbitlang$core$immut$sorted_map$$make_tree$54$(_k2, _v2, moonbitlang$core$immut$sorted_map$$make_tree$54$(key, value, l, _y1), moonbitlang$core$immut$sorted_map$$make_tree$54$(_k3, _v3, _y2, _z));
              } else {
                break _L;
              }
            } else {
              break _L;
            }
          }
          return $panic();
        }
      } else {
        return $panic();
      }
    } else {
      if (ln > (Math.imul(5, rn) | 0)) {
        if (l.$tag === 1) {
          const _Tree = l;
          const _ll = _Tree._3;
          const _lr = _Tree._4;
          const lln = moonbitlang$core$immut$sorted_map$$T$size$54$(_ll);
          const lrn = moonbitlang$core$immut$sorted_map$$T$size$54$(_lr);
          if (lrn < lln) {
            if (l.$tag === 1) {
              const _Tree$2 = l;
              const _k1 = _Tree$2._0;
              const _v1 = _Tree$2._1;
              const _x = _Tree$2._3;
              const _y = _Tree$2._4;
              return moonbitlang$core$immut$sorted_map$$make_tree$54$(_k1, _v1, _x, moonbitlang$core$immut$sorted_map$$make_tree$54$(key, value, _y, r));
            } else {
              return $panic();
            }
          } else {
            _L: {
              if (l.$tag === 1) {
                const _Tree$2 = l;
                const _k1 = _Tree$2._0;
                const _v1 = _Tree$2._1;
                const _x = _Tree$2._3;
                const _x$2 = _Tree$2._4;
                if (_x$2.$tag === 1) {
                  const _Tree$3 = _x$2;
                  const _k2 = _Tree$3._0;
                  const _v2 = _Tree$3._1;
                  const _y1 = _Tree$3._3;
                  const _y2 = _Tree$3._4;
                  return moonbitlang$core$immut$sorted_map$$make_tree$54$(_k2, _v2, moonbitlang$core$immut$sorted_map$$make_tree$54$(_k1, _v1, _x, _y1), moonbitlang$core$immut$sorted_map$$make_tree$54$(key, value, _y2, r));
                } else {
                  break _L;
                }
              } else {
                break _L;
              }
            }
            return $panic();
          }
        } else {
          return $panic();
        }
      } else {
        return moonbitlang$core$immut$sorted_map$$make_tree$54$(key, value, l, r);
      }
    }
  }
}
function moonbitlang$core$immut$sorted_map$$balance$55$(key, value, l, r) {
  const ln = moonbitlang$core$immut$sorted_map$$T$size$55$(l);
  const rn = moonbitlang$core$immut$sorted_map$$T$size$55$(r);
  if ((ln + rn | 0) < 2) {
    return moonbitlang$core$immut$sorted_map$$make_tree$55$(key, value, l, r);
  } else {
    if (rn > (Math.imul(5, ln) | 0)) {
      if (r.$tag === 1) {
        const _Tree = r;
        const _rl = _Tree._3;
        const _rr = _Tree._4;
        const rln = moonbitlang$core$immut$sorted_map$$T$size$55$(_rl);
        const rrn = moonbitlang$core$immut$sorted_map$$T$size$55$(_rr);
        if (rln < rrn) {
          if (r.$tag === 1) {
            const _Tree$2 = r;
            const _k2 = _Tree$2._0;
            const _v2 = _Tree$2._1;
            const _y = _Tree$2._3;
            const _z = _Tree$2._4;
            return moonbitlang$core$immut$sorted_map$$make_tree$55$(_k2, _v2, moonbitlang$core$immut$sorted_map$$make_tree$55$(key, value, l, _y), _z);
          } else {
            return $panic();
          }
        } else {
          _L: {
            if (r.$tag === 1) {
              const _Tree$2 = r;
              const _k3 = _Tree$2._0;
              const _v3 = _Tree$2._1;
              const _x = _Tree$2._3;
              if (_x.$tag === 1) {
                const _Tree$3 = _x;
                const _k2 = _Tree$3._0;
                const _v2 = _Tree$3._1;
                const _y1 = _Tree$3._3;
                const _y2 = _Tree$3._4;
                const _z = _Tree$2._4;
                return moonbitlang$core$immut$sorted_map$$make_tree$55$(_k2, _v2, moonbitlang$core$immut$sorted_map$$make_tree$55$(key, value, l, _y1), moonbitlang$core$immut$sorted_map$$make_tree$55$(_k3, _v3, _y2, _z));
              } else {
                break _L;
              }
            } else {
              break _L;
            }
          }
          return $panic();
        }
      } else {
        return $panic();
      }
    } else {
      if (ln > (Math.imul(5, rn) | 0)) {
        if (l.$tag === 1) {
          const _Tree = l;
          const _ll = _Tree._3;
          const _lr = _Tree._4;
          const lln = moonbitlang$core$immut$sorted_map$$T$size$55$(_ll);
          const lrn = moonbitlang$core$immut$sorted_map$$T$size$55$(_lr);
          if (lrn < lln) {
            if (l.$tag === 1) {
              const _Tree$2 = l;
              const _k1 = _Tree$2._0;
              const _v1 = _Tree$2._1;
              const _x = _Tree$2._3;
              const _y = _Tree$2._4;
              return moonbitlang$core$immut$sorted_map$$make_tree$55$(_k1, _v1, _x, moonbitlang$core$immut$sorted_map$$make_tree$55$(key, value, _y, r));
            } else {
              return $panic();
            }
          } else {
            _L: {
              if (l.$tag === 1) {
                const _Tree$2 = l;
                const _k1 = _Tree$2._0;
                const _v1 = _Tree$2._1;
                const _x = _Tree$2._3;
                const _x$2 = _Tree$2._4;
                if (_x$2.$tag === 1) {
                  const _Tree$3 = _x$2;
                  const _k2 = _Tree$3._0;
                  const _v2 = _Tree$3._1;
                  const _y1 = _Tree$3._3;
                  const _y2 = _Tree$3._4;
                  return moonbitlang$core$immut$sorted_map$$make_tree$55$(_k2, _v2, moonbitlang$core$immut$sorted_map$$make_tree$55$(_k1, _v1, _x, _y1), moonbitlang$core$immut$sorted_map$$make_tree$55$(key, value, _y2, r));
                } else {
                  break _L;
                }
              } else {
                break _L;
              }
            }
            return $panic();
          }
        } else {
          return $panic();
        }
      } else {
        return moonbitlang$core$immut$sorted_map$$make_tree$55$(key, value, l, r);
      }
    }
  }
}
function moonbitlang$core$immut$sorted_map$$singleton$54$(key, value) {
  return new $64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Tree$10$(key, value, 1, $64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Empty$10$, $64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Empty$10$);
}
function moonbitlang$core$immut$sorted_map$$singleton$55$(key, value) {
  return new $64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Tree$11$(key, value, 1, $64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Empty$11$, $64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Empty$11$);
}
function moonbitlang$core$immut$sorted_map$$T$add$54$(self, key, value) {
  if (self.$tag === 0) {
    return moonbitlang$core$immut$sorted_map$$singleton$54$(key, value);
  } else {
    const _Tree = self;
    const _k = _Tree._0;
    const _v = _Tree._1;
    const _l = _Tree._3;
    const _r = _Tree._4;
    const c = $compare_int(key, _k);
    return c === 0 ? moonbitlang$core$immut$sorted_map$$make_tree$54$(_k, value, _l, _r) : c < 0 ? moonbitlang$core$immut$sorted_map$$balance$54$(_k, _v, moonbitlang$core$immut$sorted_map$$T$add$54$(_l, key, value), _r) : moonbitlang$core$immut$sorted_map$$balance$54$(_k, _v, _l, moonbitlang$core$immut$sorted_map$$T$add$54$(_r, key, value));
  }
}
function moonbitlang$core$immut$sorted_map$$T$add$55$(self, key, value) {
  if (self.$tag === 0) {
    return moonbitlang$core$immut$sorted_map$$singleton$55$(key, value);
  } else {
    const _Tree = self;
    const _k = _Tree._0;
    const _v = _Tree._1;
    const _l = _Tree._3;
    const _r = _Tree._4;
    const c = moonbitlang$core$builtin$$Compare$compare$6$(key, _k);
    return c === 0 ? moonbitlang$core$immut$sorted_map$$make_tree$55$(_k, value, _l, _r) : c < 0 ? moonbitlang$core$immut$sorted_map$$balance$55$(_k, _v, moonbitlang$core$immut$sorted_map$$T$add$55$(_l, key, value), _r) : moonbitlang$core$immut$sorted_map$$balance$55$(_k, _v, _l, moonbitlang$core$immut$sorted_map$$T$add$55$(_r, key, value));
  }
}
function moonbitlang$core$immut$sorted_map$$new$54$() {
  return $64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Empty$10$;
}
function moonbitlang$core$immut$sorted_map$$new$55$() {
  return $64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Empty$11$;
}
function moonbitlang$core$immut$sorted_map$$T$get$54$(self, key) {
  let _tmp = self;
  while (true) {
    const _param = _tmp;
    if (_param.$tag === 0) {
      return undefined;
    } else {
      const _Tree = _param;
      const _k = _Tree._0;
      const _value = _Tree._1;
      const _l = _Tree._3;
      const _r = _Tree._4;
      const c = $compare_int(key, _k);
      if (c === 0) {
        return _value;
      } else {
        if (c < 0) {
          _tmp = _l;
          continue;
        } else {
          _tmp = _r;
          continue;
        }
      }
    }
  }
}
function moonbitlang$core$immut$sorted_map$$T$get$55$(self, key) {
  let _tmp = self;
  while (true) {
    const _param = _tmp;
    if (_param.$tag === 0) {
      return undefined;
    } else {
      const _Tree = _param;
      const _k = _Tree._0;
      const _value = _Tree._1;
      const _l = _Tree._3;
      const _r = _Tree._4;
      const c = moonbitlang$core$builtin$$Compare$compare$6$(key, _k);
      if (c === 0) {
        return _value;
      } else {
        if (c < 0) {
          _tmp = _l;
          continue;
        } else {
          _tmp = _r;
          continue;
        }
      }
    }
  }
}
function moonbitlang$core$immut$sorted_map$$T$op_get$54$(self, key) {
  return moonbitlang$core$immut$sorted_map$$T$get$54$(self, key);
}
function moonbitlang$core$immut$sorted_map$$T$op_get$55$(self, key) {
  return moonbitlang$core$immut$sorted_map$$T$get$55$(self, key);
}
function moonbitlang$core$immut$sorted_map$$T$iter2$55$(self) {
  return moonbitlang$core$builtin$$Iter2$new$55$((yield_) => {
    if (self.$tag === 0) {
      return 1;
    } else {
      const _Tree = self;
      const _k = _Tree._0;
      const _value = _Tree._1;
      const _l = _Tree._3;
      const _r = _Tree._4;
      return moonbitlang$core$builtin$$Eq$op_equal$41$(moonbitlang$core$builtin$$Iter2$run$55$(moonbitlang$core$immut$sorted_map$$T$iter2$55$(_l), yield_), 0) ? 0 : moonbitlang$core$builtin$$Eq$op_equal$41$(yield_(_k, _value), 0) ? 0 : moonbitlang$core$builtin$$Eq$op_equal$41$(moonbitlang$core$builtin$$Iter2$run$55$(moonbitlang$core$immut$sorted_map$$T$iter2$55$(_r), yield_), 0) ? 0 : 1;
    }
  });
}
function moonbitlang$core$immut$hashmap$$new$56$() {
  return $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Empty$12$;
}
function moonbitlang$core$immut$hashmap$$new$57$() {
  return $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Empty$13$;
}
function moonbitlang$core$immut$hashmap$$Bucket$find$56$(self, key) {
  let _tmp = self;
  let _tmp$2 = key;
  while (true) {
    const self$2 = _tmp;
    const key$2 = _tmp$2;
    if (self$2.$tag === 0) {
      const _Just_One = self$2;
      const _key1 = _Just_One._0;
      const _value = _Just_One._1;
      return moonbitlang$core$builtin$$Eq$op_equal$58$(key$2, _key1) ? new Option$Some$14$(_value) : Option$None$14$;
    } else {
      const _More = self$2;
      const _key1 = _More._0;
      const _value = _More._1;
      const _rest = _More._2;
      if (moonbitlang$core$builtin$$Eq$op_equal$58$(key$2, _key1)) {
        return new Option$Some$14$(_value);
      } else {
        _tmp = _rest;
        continue;
      }
    }
  }
}
function moonbitlang$core$immut$hashmap$$T$get$56$(self, key) {
  let _tmp = self;
  let _tmp$2 = moonbitlang$core$builtin$$Hash$hash$59$(key);
  _L: while (true) {
    const _param = _tmp;
    const _param$2 = _tmp$2;
    switch (_param.$tag) {
      case 0: {
        return Option$None$14$;
      }
      case 1: {
        const _Leaf = _param;
        const _key1 = _Leaf._0;
        const _value = _Leaf._1;
        return moonbitlang$core$builtin$$Eq$op_equal$58$(key, _key1) ? new Option$Some$14$(_value) : Option$None$14$;
      }
      case 2: {
        const _Collision = _param;
        const _bucket = _Collision._0;
        return moonbitlang$core$immut$hashmap$$Bucket$find$56$(_bucket, key);
      }
      default: {
        const _Branch = _param;
        const _children = _Branch._0;
        const idx = _param$2 & 31;
        if (moonbitlang$core$immut$internal$sparse_array$$Bitset$has(_children.elem_info, idx)) {
          const _tmp$3 = _children.data;
          const _tmp$4 = moonbitlang$core$immut$internal$sparse_array$$Bitset$index_of(_children.elem_info, idx);
          $bound_check(_tmp$3, _tmp$4);
          const child = _tmp$3[_tmp$4];
          const _tmp$5 = _param$2 >>> 5 | 0;
          _tmp = child;
          _tmp$2 = _tmp$5;
          continue _L;
        }
        return Option$None$14$;
      }
    }
  }
}
function moonbitlang$core$immut$hashmap$$T$op_get$56$(self, key) {
  return moonbitlang$core$immut$hashmap$$T$get$56$(self, key);
}
function moonbitlang$core$immut$hashmap$$Bucket$add$56$(self, key, value) {
  if (self.$tag === 0) {
    const _Just_One = self;
    const _key1 = _Just_One._0;
    return moonbitlang$core$builtin$$Eq$op_equal$58$(key, _key1) ? new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$Just_One$12$(key, value) : new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$12$(key, value, self);
  } else {
    const _More = self;
    const _key1 = _More._0;
    const _value1 = _More._1;
    const _rest = _More._2;
    return moonbitlang$core$builtin$$Eq$op_equal$58$(key, _key1) ? new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$12$(key, value, _rest) : new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$12$(_key1, _value1, moonbitlang$core$immut$hashmap$$Bucket$add$56$(_rest, key, value));
  }
}
function moonbitlang$core$immut$hashmap$$Bucket$add$57$(self, key, value) {
  if (self.$tag === 0) {
    const _Just_One = self;
    const _key1 = _Just_One._0;
    return moonbitlang$core$builtin$$Eq$op_equal$58$(key, _key1) ? new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$Just_One$13$(key, value) : new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$13$(key, value, self);
  } else {
    const _More = self;
    const _key1 = _More._0;
    const _value1 = _More._1;
    const _rest = _More._2;
    return moonbitlang$core$builtin$$Eq$op_equal$58$(key, _key1) ? new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$13$(key, value, _rest) : new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$13$(_key1, _value1, moonbitlang$core$immut$hashmap$$Bucket$add$57$(_rest, key, value));
  }
}
function moonbitlang$core$immut$hashmap$$add_with_hash$46$make_leaf$47$1553(depth, key, hash, value) {
  if (depth >= 32) {
    return new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Leaf$12$(key, value);
  } else {
    const idx = hash & 31;
    const child = moonbitlang$core$immut$hashmap$$add_with_hash$46$make_leaf$47$1553(depth + 5 | 0, key, hash >>> 5 | 0, value);
    return new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Branch$12$(moonbitlang$core$immut$internal$sparse_array$$singleton$2$(idx, child));
  }
}
function moonbitlang$core$immut$hashmap$$T$add_with_hash$56$(self, key, depth, hash, value) {
  switch (self.$tag) {
    case 0: {
      return moonbitlang$core$immut$hashmap$$add_with_hash$46$make_leaf$47$1553(depth, key, hash, value);
    }
    case 1: {
      const _Leaf = self;
      const _key1 = _Leaf._0;
      const _value1 = _Leaf._1;
      return moonbitlang$core$builtin$$Eq$op_equal$58$(key, _key1) ? new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Leaf$12$(key, value) : new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Collision$12$(new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$12$(key, value, new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$Just_One$12$(_key1, _value1)));
    }
    case 2: {
      const _Collision = self;
      const _bucket = _Collision._0;
      return new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Collision$12$(moonbitlang$core$immut$hashmap$$Bucket$add$56$(_bucket, key, value));
    }
    default: {
      const _Branch = self;
      const _children = _Branch._0;
      const idx = hash & 31;
      const _bind = moonbitlang$core$immut$internal$sparse_array$$SparseArray$op_get$2$(_children, idx);
      if (_bind === undefined) {
        const child = moonbitlang$core$immut$hashmap$$add_with_hash$46$make_leaf$47$1553(depth + 5 | 0, key, hash >>> 5 | 0, value);
        return new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Branch$12$(moonbitlang$core$immut$internal$sparse_array$$SparseArray$add$2$(_children, idx, child));
      } else {
        const _Some = _bind;
        const _child = _Some;
        const child = moonbitlang$core$immut$hashmap$$T$add_with_hash$56$(_child, key, depth + 5 | 0, hash >>> 5 | 0, value);
        return new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Branch$12$(moonbitlang$core$immut$internal$sparse_array$$SparseArray$replace$2$(_children, idx, child));
      }
    }
  }
}
function moonbitlang$core$immut$hashmap$$add_with_hash$46$make_leaf$47$1578(depth, key, hash, value) {
  if (depth >= 32) {
    return new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Leaf$13$(key, value);
  } else {
    const idx = hash & 31;
    const child = moonbitlang$core$immut$hashmap$$add_with_hash$46$make_leaf$47$1578(depth + 5 | 0, key, hash >>> 5 | 0, value);
    return new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Branch$13$(moonbitlang$core$immut$internal$sparse_array$$singleton$3$(idx, child));
  }
}
function moonbitlang$core$immut$hashmap$$T$add_with_hash$57$(self, key, depth, hash, value) {
  switch (self.$tag) {
    case 0: {
      return moonbitlang$core$immut$hashmap$$add_with_hash$46$make_leaf$47$1578(depth, key, hash, value);
    }
    case 1: {
      const _Leaf = self;
      const _key1 = _Leaf._0;
      const _value1 = _Leaf._1;
      return moonbitlang$core$builtin$$Eq$op_equal$58$(key, _key1) ? new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Leaf$13$(key, value) : new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Collision$13$(new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$13$(key, value, new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$Just_One$13$(_key1, _value1)));
    }
    case 2: {
      const _Collision = self;
      const _bucket = _Collision._0;
      return new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Collision$13$(moonbitlang$core$immut$hashmap$$Bucket$add$57$(_bucket, key, value));
    }
    default: {
      const _Branch = self;
      const _children = _Branch._0;
      const idx = hash & 31;
      const _bind = moonbitlang$core$immut$internal$sparse_array$$SparseArray$op_get$3$(_children, idx);
      if (_bind === undefined) {
        const child = moonbitlang$core$immut$hashmap$$add_with_hash$46$make_leaf$47$1578(depth + 5 | 0, key, hash >>> 5 | 0, value);
        return new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Branch$13$(moonbitlang$core$immut$internal$sparse_array$$SparseArray$add$3$(_children, idx, child));
      } else {
        const _Some = _bind;
        const _child = _Some;
        const child = moonbitlang$core$immut$hashmap$$T$add_with_hash$57$(_child, key, depth + 5 | 0, hash >>> 5 | 0, value);
        return new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Branch$13$(moonbitlang$core$immut$internal$sparse_array$$SparseArray$replace$3$(_children, idx, child));
      }
    }
  }
}
function moonbitlang$core$immut$hashmap$$T$add$56$(self, key, value) {
  return moonbitlang$core$immut$hashmap$$T$add_with_hash$56$(self, key, 0, moonbitlang$core$builtin$$Hash$hash$59$(key), value);
}
function moonbitlang$core$immut$hashmap$$T$add$57$(self, key, value) {
  return moonbitlang$core$immut$hashmap$$T$add_with_hash$57$(self, key, 0, moonbitlang$core$builtin$$Hash$hash$59$(key), value);
}
function moonbitlang$core$immut$hashmap$$Bucket$iter$57$(self) {
  return moonbitlang$core$builtin$$Iter$new$60$((f) => {
    let _tmp = self;
    while (true) {
      const _param = _tmp;
      if (_param.$tag === 0) {
        const _Just_One = _param;
        const _k = _Just_One._0;
        const _v = _Just_One._1;
        return f({ _0: _k, _1: _v });
      } else {
        const _More = _param;
        const _k = _More._0;
        const _v = _More._1;
        const _rest = _More._2;
        if (moonbitlang$core$builtin$$Eq$op_equal$41$(f({ _0: _k, _1: _v }), 1)) {
          _tmp = _rest;
          continue;
        } else {
          return 0;
        }
      }
    }
  });
}
function moonbitlang$core$immut$hashmap$$Bucket$iter$56$(self) {
  return moonbitlang$core$builtin$$Iter$new$61$((f) => {
    let _tmp = self;
    while (true) {
      const _param = _tmp;
      if (_param.$tag === 0) {
        const _Just_One = _param;
        const _k = _Just_One._0;
        const _v = _Just_One._1;
        return f({ _0: _k, _1: _v });
      } else {
        const _More = _param;
        const _k = _More._0;
        const _v = _More._1;
        const _rest = _More._2;
        if (moonbitlang$core$builtin$$Eq$op_equal$41$(f({ _0: _k, _1: _v }), 1)) {
          _tmp = _rest;
          continue;
        } else {
          return 0;
        }
      }
    }
  });
}
function moonbitlang$core$immut$hashmap$$T$iter$57$(self) {
  switch (self.$tag) {
    case 0: {
      return moonbitlang$core$builtin$$Iter$empty$60$();
    }
    case 1: {
      const _Leaf = self;
      const _k = _Leaf._0;
      const _v = _Leaf._1;
      return moonbitlang$core$builtin$$Iter$singleton$60$({ _0: _k, _1: _v });
    }
    case 2: {
      const _Collision = self;
      const _bucket = _Collision._0;
      return moonbitlang$core$immut$hashmap$$Bucket$iter$57$(_bucket);
    }
    default: {
      const _Branch = self;
      const _children = _Branch._0;
      const _bind = _children.data;
      return (_p) => {
        const _len = _bind.length;
        let _tmp = 0;
        while (true) {
          const _i = _tmp;
          if (_i < _len) {
            const _p$2 = _bind[_i];
            const _func = moonbitlang$core$immut$hashmap$$T$iter$57$(_p$2);
            if (_func(_p) === 1) {
              _tmp = _i + 1 | 0;
              continue;
            } else {
              return 0;
            }
          } else {
            return 1;
          }
        }
      };
    }
  }
}
function moonbitlang$core$immut$hashmap$$T$iter$56$(self) {
  switch (self.$tag) {
    case 0: {
      return moonbitlang$core$builtin$$Iter$empty$61$();
    }
    case 1: {
      const _Leaf = self;
      const _k = _Leaf._0;
      const _v = _Leaf._1;
      return moonbitlang$core$builtin$$Iter$singleton$61$({ _0: _k, _1: _v });
    }
    case 2: {
      const _Collision = self;
      const _bucket = _Collision._0;
      return moonbitlang$core$immut$hashmap$$Bucket$iter$56$(_bucket);
    }
    default: {
      const _Branch = self;
      const _children = _Branch._0;
      const _bind = _children.data;
      return (_p) => {
        const _len = _bind.length;
        let _tmp = 0;
        while (true) {
          const _i = _tmp;
          if (_i < _len) {
            const _p$2 = _bind[_i];
            const _func = moonbitlang$core$immut$hashmap$$T$iter$56$(_p$2);
            if (_func(_p) === 1) {
              _tmp = _i + 1 | 0;
              continue;
            } else {
              return 0;
            }
          } else {
            return 1;
          }
        }
      };
    }
  }
}
function moonbitlang$core$immut$hashmap$$Bucket$size$56$(self) {
  let _tmp = self;
  let _tmp$2 = 1;
  while (true) {
    const _param = _tmp;
    const _param$2 = _tmp$2;
    if (_param.$tag === 0) {
      return _param$2;
    } else {
      const _More = _param;
      const _rest = _More._2;
      const _tmp$3 = _param$2 + 1 | 0;
      _tmp = _rest;
      _tmp$2 = _tmp$3;
      continue;
    }
  }
}
function moonbitlang$core$immut$hashmap$$T$size$56$(self) {
  switch (self.$tag) {
    case 0: {
      return 0;
    }
    case 1: {
      return 1;
    }
    case 2: {
      const _Collision = self;
      const _bucket = _Collision._0;
      return moonbitlang$core$immut$hashmap$$Bucket$size$56$(_bucket);
    }
    default: {
      const _Branch = self;
      const _children = _Branch._0;
      let _tmp = 0;
      let _tmp$2 = 0;
      while (true) {
        const i = _tmp;
        const total_size = _tmp$2;
        if (i < _children.data.length) {
          const _tmp$3 = i + 1 | 0;
          const _tmp$4 = _children.data;
          $bound_check(_tmp$4, i);
          const _tmp$5 = total_size + moonbitlang$core$immut$hashmap$$T$size$56$(_tmp$4[i]) | 0;
          _tmp = _tmp$3;
          _tmp$2 = _tmp$5;
          continue;
        } else {
          return total_size;
        }
      }
    }
  }
}
function moonbitlang$core$immut$hashmap$$Bucket$each$56$(self, f) {
  let _tmp = self;
  while (true) {
    const _param = _tmp;
    if (_param.$tag === 0) {
      const _Just_One = _param;
      const _k = _Just_One._0;
      const _v = _Just_One._1;
      f(_k, _v);
      return;
    } else {
      const _More = _param;
      const _k = _More._0;
      const _v = _More._1;
      const _rest = _More._2;
      f(_k, _v);
      _tmp = _rest;
      continue;
    }
  }
}
function moonbitlang$core$immut$hashmap$$T$each$56$(self, f) {
  switch (self.$tag) {
    case 0: {
      return;
    }
    case 1: {
      const _Leaf = self;
      const _k = _Leaf._0;
      const _v = _Leaf._1;
      f(_k, _v);
      return;
    }
    case 2: {
      const _Collision = self;
      const _bucket = _Collision._0;
      moonbitlang$core$immut$hashmap$$Bucket$each$56$(_bucket, f);
      return;
    }
    default: {
      const _Branch = self;
      const _children = _Branch._0;
      moonbitlang$core$immut$internal$sparse_array$$SparseArray$each$2$(_children, (child) => {
        moonbitlang$core$immut$hashmap$$T$each$56$(child, f);
      });
      return;
    }
  }
}
function moonbitlang$core$immut$hashmap$$from_iter$56$(iter) {
  const _bind = moonbitlang$core$immut$hashmap$$new$56$();
  const _acc = { val: _bind };
  iter((_p) => {
    const m = _acc.val;
    _acc.val = moonbitlang$core$immut$hashmap$$T$add$56$(m, _p._0, _p._1);
    return 1;
  });
  return _acc.val;
}
function moonbitlang$core$immut$hashmap$$from_iter$57$(iter) {
  const _bind = moonbitlang$core$immut$hashmap$$new$57$();
  const _acc = { val: _bind };
  iter((_p) => {
    const m = _acc.val;
    _acc.val = moonbitlang$core$immut$hashmap$$T$add$57$(m, _p._0, _p._1);
    return 1;
  });
  return _acc.val;
}
function moonbitlang$core$builtin$$Eq$op_equal$62$(self, other) {
  if (moonbitlang$core$immut$hashmap$$T$size$56$(self) === moonbitlang$core$immut$hashmap$$T$size$56$(other)) {
    const _foreach_result = { val: $64$moonbitlang$47$core$47$builtin$46$ForeachResult$Continue$15$ };
    const _bind = moonbitlang$core$immut$hashmap$$T$iter$56$(self);
    _bind((kv) => {
      _L: {
        _L$2: {
          const _bind$2 = moonbitlang$core$immut$hashmap$$T$get$56$(other, kv._0);
          if (_bind$2.$tag === 1) {
            const _Some = _bind$2;
            const _v = _Some._0;
            if (moonbitlang$core$builtin$$Eq$op_equal$63$(_v, kv._1)) {
            } else {
              break _L$2;
            }
          } else {
            break _L$2;
          }
          break _L;
        }
        _foreach_result.val = new $64$moonbitlang$47$core$47$builtin$46$ForeachResult$Return$15$(false);
        return 0;
      }
      return 1;
    });
    const _tmp = _foreach_result.val;
    switch (_tmp.$tag) {
      case 0: {
        break;
      }
      case 1: {
        const _break = _tmp;
        _break._0;
        break;
      }
      case 2: {
        const _return = _tmp;
        return _return._0;
      }
      case 3: {
        $panic();
        break;
      }
      default: {
        $panic();
      }
    }
    return true;
  } else {
    return false;
  }
}
function moonbitlang$core$builtin$$Hash$hash_combine$62$(self, hasher) {
  moonbitlang$core$immut$hashmap$$T$each$56$(self, (k, v) => {
    moonbitlang$core$builtin$$Hasher$combine$58$(hasher, k);
    moonbitlang$core$builtin$$Hasher$combine$63$(hasher, v);
  });
}
function moonbitlang$core$immut$list$$T$to_array$64$(self) {
  if (self.$tag === 0) {
    return [];
  } else {
    const _Cons = self;
    const _x = _Cons._0;
    const _xs = _Cons._1;
    const arr = [_x];
    let _tmp = _xs;
    while (true) {
      const _param = _tmp;
      if (_param.$tag === 0) {
        break;
      } else {
        const _Cons$2 = _param;
        const _x$2 = _Cons$2._0;
        const _xs$2 = _Cons$2._1;
        moonbitlang$core$array$$Array$push$64$(arr, _x$2);
        _tmp = _xs$2;
        continue;
      }
    }
    return arr;
  }
}
function moonbitlang$core$immut$list$$T$to_array$65$(self) {
  if (self.$tag === 0) {
    return [];
  } else {
    const _Cons = self;
    const _x = _Cons._0;
    const _xs = _Cons._1;
    const arr = [_x];
    let _tmp = _xs;
    while (true) {
      const _param = _tmp;
      if (_param.$tag === 0) {
        break;
      } else {
        const _Cons$2 = _param;
        const _x$2 = _Cons$2._0;
        const _xs$2 = _Cons$2._1;
        moonbitlang$core$array$$Array$push$65$(arr, _x$2);
        _tmp = _xs$2;
        continue;
      }
    }
    return arr;
  }
}
function moonbitlang$core$immut$list$$T$tail$66$(self) {
  if (self.$tag === 0) {
    return $64$moonbitlang$47$core$47$immut$47$list$46$T$Nil$16$;
  } else {
    const _Cons = self;
    const _tail = _Cons._1;
    return _tail;
  }
}
function moonbitlang$core$immut$list$$T$unsafe_head$66$(self) {
  if (self.$tag === 0) {
    return moonbitlang$core$builtin$$abort$66$("head of empty list");
  } else {
    const _Cons = self;
    const _head = _Cons._0;
    return _head;
  }
}
function moonbitlang$core$immut$list$$T$drop$66$(self, n) {
  let _param3;
  let _param4;
  _L: {
    if (n <= 0) {
      return self;
    } else {
      _param3 = n;
      _param4 = self;
      break _L;
    }
  }
  let _tmp = _param3;
  let _tmp$2 = _param4;
  while (true) {
    const _param3$2 = _tmp;
    const _param4$2 = _tmp$2;
    if (_param4$2.$tag === 0) {
      return $64$moonbitlang$47$core$47$immut$47$list$46$T$Nil$16$;
    } else {
      if (_param3$2 === 1) {
        const _Cons = _param4$2;
        const _xs = _Cons._1;
        return _xs;
      } else {
        const _Cons = _param4$2;
        const _xs = _Cons._1;
        const _tmp$3 = _param3$2 - 1 | 0;
        _tmp = _tmp$3;
        _tmp$2 = _xs;
        continue;
      }
    }
  }
}
function moonbitlang$core$math$$maximum$8$(x, y) {
  return x > y ? x : y;
}
function moonbitlang$core$math$$minimum$8$(x, y) {
  return x > y ? y : x;
}
function moonbitlang$core$option$$Option$map$67$(self, f) {
  if (self === undefined) {
    return undefined;
  } else {
    const _Some = self;
    const _t = _Some;
    return f(_t);
  }
}
function moonbitlang$core$option$$Option$is_empty$8$(self) {
  return self === undefined;
}
function moonbitlang$core$option$$Option$is_empty$63$(self) {
  if (self.$tag === 0) {
    return true;
  } else {
    return false;
  }
}
function moonbitlang$core$option$$Option$or$68$(self, default_) {
  if (self === undefined) {
    return default_;
  } else {
    const _Some = self;
    const _t = _Some;
    return _t;
  }
}
function moonbitlang$core$option$$Option$or$8$(self, default_) {
  if (self === undefined) {
    return default_;
  } else {
    const _Some = self;
    const _t = _Some;
    return _t;
  }
}
function moonbitlang$core$option$$Option$or$28$(self, default_) {
  if (self === undefined) {
    return default_;
  } else {
    const _Some = self;
    const _t = _Some;
    return _t;
  }
}
function moonbitlang$core$option$$Option$or_else$2$(self, default_) {
  if (self === undefined) {
    return default_();
  } else {
    const _Some = self;
    const _t = _Some;
    return _t;
  }
}
function moonbitlang$core$builtin$$Compare$compare$69$(self, other) {
  if (self === undefined) {
    return other === undefined ? 0 : -1;
  } else {
    const _Some = self;
    const _x = _Some;
    if (other === undefined) {
      return 1;
    } else {
      const _Some$2 = other;
      const _y = _Some$2;
      return $compare_int(_x, _y);
    }
  }
}
function moonbitlang$core$bool$$Bool$to_int(self) {
  return self ? 1 : 0;
}
function moonbitlang$core$queue$$new$2$() {
  return { length: 0, first: undefined, last: undefined };
}
function moonbitlang$core$queue$$new$58$() {
  return { length: 0, first: undefined, last: undefined };
}
function moonbitlang$core$queue$$from_array$58$(arr) {
  if (arr.length > 0) {
    const length = arr.length;
    const last = { content: moonbitlang$core$array$$Array$op_get$58$(arr, length - 1 | 0), next: undefined };
    let first;
    let _tmp = length - 2 | 0;
    let _tmp$2 = last;
    while (true) {
      const i = _tmp;
      const x = _tmp$2;
      if (i >= 0) {
        const _tmp$3 = i - 1 | 0;
        const _tmp$4 = { content: moonbitlang$core$array$$Array$op_get$58$(arr, i), next: x };
        _tmp = _tmp$3;
        _tmp$2 = _tmp$4;
        continue;
      } else {
        first = x;
        break;
      }
    }
    return { length: length, first: first, last: last };
  } else {
    return moonbitlang$core$queue$$new$58$();
  }
}
function moonbitlang$core$queue$$T$clear$2$(self) {
  self.length = 0;
  self.first = undefined;
  self.last = undefined;
}
function moonbitlang$core$queue$$T$clear$58$(self) {
  self.length = 0;
  self.first = undefined;
  self.last = undefined;
}
function moonbitlang$core$queue$$T$is_empty$2$(self) {
  return self.length === 0;
}
function moonbitlang$core$queue$$T$is_empty$58$(self) {
  return self.length === 0;
}
function moonbitlang$core$queue$$T$push$58$(self, x) {
  const cell = { content: x, next: undefined };
  const _bind = self.last;
  if (_bind === undefined) {
    self.length = 1;
    self.first = cell;
    self.last = cell;
    return;
  } else {
    const _Some = _bind;
    const _last = _Some;
    _last.next = cell;
    self.length = self.length + 1 | 0;
    self.last = cell;
    return;
  }
}
function moonbitlang$core$queue$$T$push$2$(self, x) {
  const cell = { content: x, next: undefined };
  const _bind = self.last;
  if (_bind === undefined) {
    self.length = 1;
    self.first = cell;
    self.last = cell;
    return;
  } else {
    const _Some = _bind;
    const _last = _Some;
    _last.next = cell;
    self.length = self.length + 1 | 0;
    self.last = cell;
    return;
  }
}
function moonbitlang$core$queue$$T$unsafe_pop$58$(self) {
  const _bind = self.first;
  if (_bind === undefined) {
    return moonbitlang$core$builtin$$abort$58$("Queue is empty");
  } else {
    const _Some = _bind;
    const _x = _Some;
    const _content = _x.content;
    const _x$2 = _x.next;
    if (_x$2 === undefined) {
      moonbitlang$core$queue$$T$clear$58$(self);
      return _content;
    } else {
      self.length = self.length - 1 | 0;
      self.first = _x$2;
      return _content;
    }
  }
}
function moonbitlang$core$queue$$T$pop$2$(self) {
  const _bind = self.first;
  if (_bind === undefined) {
    return undefined;
  } else {
    const _Some = _bind;
    const _x = _Some;
    const _content = _x.content;
    const _x$2 = _x.next;
    if (_x$2 === undefined) {
      moonbitlang$core$queue$$T$clear$2$(self);
      return _content;
    } else {
      self.length = self.length - 1 | 0;
      self.first = _x$2;
      return _content;
    }
  }
}
function moonbitlang$core$builtin$$Eq$op_equal$41$(_x_2452, _x_2453) {
  if (_x_2452 === 0) {
    if (_x_2453 === 0) {
      return true;
    } else {
      return false;
    }
  } else {
    if (_x_2453 === 1) {
      return true;
    } else {
      return false;
    }
  }
}
function moonbitlang$core$builtin$$Eq$op_equal$47$(self, that) {
  return self === that;
}
function moonbitlang$core$builtin$$abort$21$(msg) {
  $panic();
}
function moonbitlang$core$builtin$$abort$23$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$70$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$8$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$71$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$66$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$72$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$19$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$28$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$32$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$73$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$20$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$58$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$74$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$49$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$75$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$33$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$50$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$34$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$76$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$35$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$36$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$48$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$47$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$rotl(x, r) {
  return x << r | (x >>> (32 - r | 0) | 0);
}
function moonbitlang$core$builtin$$Default$default$47$() {
  return 0;
}
function moonbitlang$core$builtin$$StringBuilder$new(size_hint) {
  return { val: "" };
}
function moonbitlang$core$builtin$$StringBuilder$new$46$size_hint$46$default() {
  return 0;
}
function moonbitlang$core$builtin$$StringBuilder$to_string(self) {
  return self.val;
}
function moonbitlang$core$builtin$$op_notequal$23$(x, y) {
  return !(x === y);
}
function moonbitlang$core$builtin$$op_notequal$13$(x, y) {
  return !moonbitlang$core$builtin$$Eq$op_equal$77$(x, y);
}
function moonbitlang$core$builtin$$op_notequal$14$(x, y) {
  return !moonbitlang$core$builtin$$Eq$op_equal$78$(x, y);
}
function moonbitlang$core$builtin$$op_notequal$79$(x, y) {
  return !moonbitlang$core$builtin$$Eq$op_equal$80$(x, y);
}
function moonbitlang$core$builtin$$op_notequal$15$(x, y) {
  return !moonbitlang$core$builtin$$Eq$op_equal$81$(x, y);
}
function moonbitlang$core$builtin$$println$23$(input) {
  console.log(moonbitlang$core$builtin$$Show$to_string$23$(input));
}
function moonbitlang$core$builtin$$op_lt$43$(self_, other) {
  return moonbitlang$core$builtin$$Compare$compare$43$(self_, other) < 0;
}
function moonbitlang$core$builtin$$op_lt$1$(self_, other) {
  return moonbitlang$core$builtin$$Compare$compare$1$(self_, other) < 0;
}
function moonbitlang$core$builtin$$op_lt$49$(self_, other) {
  return moonbitlang$core$builtin$$Compare$compare$51$(self_, other) < 0;
}
function moonbitlang$core$builtin$$op_lt$50$(self_, other) {
  return moonbitlang$core$builtin$$Compare$compare$50$(self_, other) < 0;
}
function moonbitlang$core$builtin$$Logger$write_char$22$(self, ch) {
  const _bind = self;
  _bind.val = `${_bind.val}${String.fromCodePoint(ch)}`;
}
function moonbitlang$core$builtin$$op_gt$43$(self_, other) {
  return moonbitlang$core$builtin$$Compare$compare$43$(self_, other) > 0;
}
function moonbitlang$core$builtin$$op_gt$1$(self_, other) {
  return moonbitlang$core$builtin$$Compare$compare$1$(self_, other) > 0;
}
function moonbitlang$core$builtin$$op_gt$49$(self_, other) {
  return moonbitlang$core$builtin$$Compare$compare$51$(self_, other) > 0;
}
function moonbitlang$core$builtin$$op_gt$50$(self_, other) {
  return moonbitlang$core$builtin$$Compare$compare$50$(self_, other) > 0;
}
function moonbitlang$core$builtin$$op_le$43$(self_, other) {
  return moonbitlang$core$builtin$$Compare$compare$43$(self_, other) <= 0;
}
function moonbitlang$core$builtin$$is_leading_surrogate(c) {
  return 55296 <= c && c <= 56319;
}
function moonbitlang$core$builtin$$op_ge$43$(self_, other) {
  return moonbitlang$core$builtin$$Compare$compare$43$(self_, other) >= 0;
}
function moonbitlang$core$builtin$$op_ge$49$(self_, other) {
  return moonbitlang$core$builtin$$Compare$compare$51$(self_, other) >= 0;
}
function moonbitlang$core$builtin$$op_ge$50$(self_, other) {
  return moonbitlang$core$builtin$$Compare$compare$50$(self_, other) >= 0;
}
function moonbitlang$core$builtin$$code_point_of_surrogate_pair(leading, trailing) {
  return (((Math.imul(leading - 55296 | 0, 1024) | 0) + trailing | 0) - 56320 | 0) + 65536 | 0;
}
function moonbitlang$core$string$$String$unsafe_char_at(self, index) {
  const c1 = self.charCodeAt(index);
  if (moonbitlang$core$builtin$$is_leading_surrogate(c1)) {
    const _tmp = index + 1 | 0;
    const c2 = self.charCodeAt(_tmp);
    return moonbitlang$core$builtin$$code_point_of_surrogate_pair(c1, c2);
  } else {
    return c1;
  }
}
function moonbitlang$core$array$$Array$op_get$82$(self, index) {
  const len = self.length;
  if (index >= 0 && index < len) {
    $bound_check(self, index);
    return self[index];
  } else {
    return $panic();
  }
}
function moonbitlang$core$array$$Array$op_get$83$(self, index) {
  const len = self.length;
  if (index >= 0 && index < len) {
    $bound_check(self, index);
    return self[index];
  } else {
    return $panic();
  }
}
function moonbitlang$core$array$$Array$op_get$3$(self, index) {
  const len = self.length;
  if (index >= 0 && index < len) {
    $bound_check(self, index);
    return self[index];
  } else {
    return $panic();
  }
}
function moonbitlang$core$array$$Array$op_get$84$(self, index) {
  const len = self.length;
  if (index >= 0 && index < len) {
    $bound_check(self, index);
    return self[index];
  } else {
    return $panic();
  }
}
function moonbitlang$core$array$$Array$op_get$47$(self, index) {
  const len = self.length;
  if (index >= 0 && index < len) {
    $bound_check(self, index);
    return self[index];
  } else {
    return $panic();
  }
}
function moonbitlang$core$array$$Array$op_get$52$(self, index) {
  const len = self.length;
  if (index >= 0 && index < len) {
    $bound_check(self, index);
    return self[index];
  } else {
    return $panic();
  }
}
function moonbitlang$core$array$$Array$op_get$20$(self, index) {
  const len = self.length;
  if (index >= 0 && index < len) {
    $bound_check(self, index);
    return self[index];
  } else {
    return $panic();
  }
}
function moonbitlang$core$array$$Array$op_get$58$(self, index) {
  const len = self.length;
  if (index >= 0 && index < len) {
    $bound_check(self, index);
    return self[index];
  } else {
    return $panic();
  }
}
function moonbitlang$core$array$$Array$op_get$8$(self, index) {
  const len = self.length;
  if (index >= 0 && index < len) {
    $bound_check(self, index);
    return self[index];
  } else {
    return $panic();
  }
}
function moonbitlang$core$array$$Array$op_get$61$(self, index) {
  const len = self.length;
  if (index >= 0 && index < len) {
    $bound_check(self, index);
    return self[index];
  } else {
    return $panic();
  }
}
function moonbitlang$core$array$$Array$op_get$85$(self, index) {
  const len = self.length;
  if (index >= 0 && index < len) {
    $bound_check(self, index);
    return self[index];
  } else {
    return $panic();
  }
}
function moonbitlang$core$builtin$$Logger$write_string$22$(self, str) {
  const _bind = self;
  _bind.val = `${_bind.val}${str}`;
}
function moonbitlang$core$bytes$$Bytes$makei(length, value) {
  if (length <= 0) {
    return $bytes_literal$0;
  }
  const arr = $make_array_len_and_init(length, value(0));
  let _tmp = 1;
  while (true) {
    const i = _tmp;
    if (i < length) {
      $bound_check(arr, i);
      arr[i] = value(i);
      _tmp = i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return arr;
}
function moonbitlang$core$uint$$UInt$to_byte(self) {
  return self & 255;
}
function moonbitlang$core$array$$FixedArray$blit_from_string(self, bytes_offset, str, str_offset, length) {
  const e1 = (bytes_offset + length | 0) - 1 | 0;
  const e2 = (str_offset + length | 0) - 1 | 0;
  const len1 = self.length;
  const len2 = str.length;
  if (length >= 0 && (bytes_offset >= 0 && (e1 < len1 && (str_offset >= 0 && e2 < len2)))) {
    const end_str_offset = str_offset + length | 0;
    let _tmp = str_offset;
    let _tmp$2 = bytes_offset;
    while (true) {
      const i = _tmp;
      const j = _tmp$2;
      if (i < end_str_offset) {
        const c = str.charCodeAt(i);
        $bound_check(self, j);
        self[j] = moonbitlang$core$uint$$UInt$to_byte(c & 255);
        const _tmp$3 = j + 1 | 0;
        $bound_check(self, _tmp$3);
        self[_tmp$3] = moonbitlang$core$uint$$UInt$to_byte(c >>> 8 | 0);
        const _tmp$4 = i + 1 | 0;
        const _tmp$5 = j + 2 | 0;
        _tmp = _tmp$4;
        _tmp$2 = _tmp$5;
        continue;
      } else {
        return;
      }
    }
  } else {
    $panic();
    return;
  }
}
function moonbitlang$core$bytes$$Bytes$of_string(str) {
  const _self = $make_array_len_and_init(Math.imul(str.length, 2) | 0, moonbitlang$core$builtin$$Default$default$47$());
  moonbitlang$core$array$$FixedArray$blit_from_string(_self, 0, str, 0, str.length);
  return _self;
}
function moonbitlang$core$array$$FixedArray$blit_from_bytes(self, bytes_offset, src, src_offset, length) {
  const e1 = (bytes_offset + length | 0) - 1 | 0;
  const e2 = (src_offset + length | 0) - 1 | 0;
  const len1 = self.length;
  const len2 = src.length;
  if (length >= 0 && (bytes_offset >= 0 && (e1 < len1 && (src_offset >= 0 && e2 < len2)))) {
    const end_src_offset = src_offset + length | 0;
    let _tmp = src_offset;
    let _tmp$2 = bytes_offset;
    while (true) {
      const i = _tmp;
      const j = _tmp$2;
      if (i < end_src_offset) {
        $bound_check(src, i);
        $bound_check(self, j);
        self[j] = src[i];
        const _tmp$3 = i + 1 | 0;
        const _tmp$4 = j + 1 | 0;
        _tmp = _tmp$3;
        _tmp$2 = _tmp$4;
        continue;
      } else {
        return;
      }
    }
  } else {
    $panic();
    return;
  }
}
function moonbitlang$core$char$$Char$to_uint(self) {
  return self;
}
function moonbitlang$core$builtin$$Eq$op_equal$86$(self, other) {
  return self._0 === other._0 && moonbitlang$core$builtin$$Eq$op_equal$87$(self._1, other._1);
}
function moonbitlang$core$builtin$$Eq$op_equal$51$(self, other) {
  return moonbitlang$core$builtin$$Eq$op_equal$12$(self._0, other._0) && self._1 === other._1;
}
function moonbitlang$core$builtin$$Eq$op_equal$88$(self, other) {
  return moonbitlang$core$builtin$$Eq$op_equal$12$(self._0, other._0) && moonbitlang$core$builtin$$Eq$op_equal$12$(self._1, other._1);
}
function moonbitlang$core$builtin$$Eq$op_equal$12$(self, other) {
  return self._0 === other._0 && self._1 === other._1;
}
function moonbitlang$core$builtin$$Eq$op_equal$89$(self, other) {
  return moonbitlang$core$builtin$$Eq$op_equal$1$(self._0, other._0) && moonbitlang$core$builtin$$Eq$op_equal$1$(self._1, other._1);
}
function moonbitlang$core$builtin$$Eq$op_equal$27$(self, other) {
  return moonbitlang$core$builtin$$Eq$op_equal$30$(self._0, other._0) && self._1 === other._1;
}
function moonbitlang$core$builtin$$Eq$op_equal$38$(self, other) {
  return moonbitlang$core$builtin$$Eq$op_equal$58$(self._0, other._0) && (moonbitlang$core$builtin$$Eq$op_equal$63$(self._1, other._1) && moonbitlang$core$builtin$$Eq$op_equal$69$(self._2, other._2));
}
function moonbitlang$core$builtin$$MyInt64$from_int(value) {
  return { hi: value >> 31 & -1, lo: value | 0 };
}
function moonbitlang$core$int$$Int$to_int64(self) {
  return moonbitlang$core$builtin$$MyInt64$from_int(self);
}
function moonbitlang$core$builtin$$MyInt64$to_int(self) {
  return self.lo;
}
function moonbitlang$core$int64$$Int64$to_int(self) {
  return moonbitlang$core$builtin$$MyInt64$to_int(self);
}
function moonbitlang$core$builtin$$output$46$abs$124$2193(n) {
  return n < 0 ? 0 - n | 0 : n;
}
function moonbitlang$core$builtin$$output$46$write_digits$124$2195(_env, num) {
  const logger = _env._1;
  const radix = _env._0;
  const num2 = num / radix | 0;
  if (num2 !== 0) {
    moonbitlang$core$builtin$$output$46$write_digits$124$2195(_env, num2);
  }
  const _tmp = moonbitlang$core$builtin$$output$46$abs$124$2193(num % radix | 0);
  $bound_check("0123456789abcdefghijklmnopqrstuvwxyz", _tmp);
  logger.method_2(logger.self, "0123456789abcdefghijklmnopqrstuvwxyz".charCodeAt(_tmp));
}
function moonbitlang$core$int$$Int$output(self, logger, radix) {
  if (self < 0) {
    logger.method_2(logger.self, 45);
  }
  const _env = { _0: radix, _1: logger };
  moonbitlang$core$builtin$$output$46$write_digits$124$2195(_env, moonbitlang$core$builtin$$output$46$abs$124$2193(self));
}
function moonbitlang$core$int$$Int$output_size_hint(radix) {
  return radix >= 2 && radix < 7 ? 36 : radix >= 8 && radix < 15 ? 18 : radix >= 16 && radix <= 36 ? 10 : moonbitlang$core$builtin$$abort$8$("radix must be between 2 and 36");
}
function moonbitlang$core$builtin$$unsafe_make_string(_tmp, _tmp$2) {
  return $unsafe_make_string(_tmp, _tmp$2);
}
function moonbitlang$core$string$$String$make(length, value) {
  if (length >= 0) {
    if (value <= 65535) {
      return moonbitlang$core$builtin$$unsafe_make_string(length, value);
    } else {
      const buf = moonbitlang$core$builtin$$StringBuilder$new(Math.imul(2, length) | 0);
      let _tmp = 0;
      while (true) {
        const _ = _tmp;
        if (_ < length) {
          moonbitlang$core$builtin$$Logger$write_char$22$(buf, value);
          _tmp = _ + 1 | 0;
          continue;
        } else {
          break;
        }
      }
      return moonbitlang$core$builtin$$StringBuilder$to_string(buf);
    }
  } else {
    return moonbitlang$core$builtin$$abort$23$("invalid length");
  }
}
function moonbitlang$core$string$$String$substring(self, start, end) {
  const len = self.length;
  let end$2;
  if (end === undefined) {
    end$2 = len;
  } else {
    const _Some = end;
    const _end = _Some;
    end$2 = _end;
  }
  return start >= 0 && (start <= end$2 && end$2 <= len) ? self.substring(start, end$2) : $panic();
}
function moonbitlang$core$builtin$$Logger$write_substring$22$(self, str, start, len) {
  const _bind = self;
  _bind.val = `${_bind.val}${moonbitlang$core$string$$String$substring(str, start, start + len | 0)}`;
}
function moonbitlang$core$builtin$$Hasher$combine$2$(self, value) {
  moonbitlang$core$builtin$$Hash$hash_combine$62$(value, self);
}
function moonbitlang$core$builtin$$Hasher$combine$58$(self, value) {
  moonbitlang$core$builtin$$Hash$hash_combine$58$(value, self);
}
function moonbitlang$core$builtin$$Hasher$combine$23$(self, value) {
  moonbitlang$core$builtin$$Hash$hash_combine$23$(value, self);
}
function moonbitlang$core$builtin$$Hasher$combine$31$(self, value) {
  moonbitlang$core$builtin$$Hash$hash_combine$38$(value, self);
}
function moonbitlang$core$builtin$$Hasher$combine$30$(self, value) {
  moonbitlang$core$builtin$$Hash$hash_combine$30$(value, self);
}
function moonbitlang$core$builtin$$Hasher$combine$28$(self, value) {
  moonbitlang$core$builtin$$Hash$hash_combine$37$(value, self);
}
function moonbitlang$core$builtin$$Hasher$combine$63$(self, value) {
  moonbitlang$core$builtin$$Hash$hash_combine$63$(value, self);
}
function moonbitlang$core$builtin$$Hasher$combine$20$(self, value) {
  moonbitlang$core$builtin$$Hash$hash_combine$69$(value, self);
}
function moonbitlang$core$builtin$$Hasher$combine$25$(self, value) {
  moonbitlang$core$builtin$$Hash$hash_combine$27$(value, self);
}
function moonbitlang$core$builtin$$Hasher$combine$8$(self, value) {
  moonbitlang$core$builtin$$Hash$hash_combine$8$(value, self);
}
function moonbitlang$core$builtin$$Hasher$combine$1$(self, value) {
  moonbitlang$core$builtin$$Hash$hash_combine$1$(value, self);
}
function moonbitlang$core$builtin$$Hash$hash_combine$89$(self, hasher) {
  const _a = self._0;
  const _b = self._1;
  moonbitlang$core$builtin$$Hasher$combine$1$(hasher, _a);
  moonbitlang$core$builtin$$Hasher$combine$1$(hasher, _b);
}
function moonbitlang$core$builtin$$Hash$hash_combine$27$(self, hasher) {
  const _a = self._0;
  const _b = self._1;
  moonbitlang$core$builtin$$Hasher$combine$30$(hasher, _a);
  moonbitlang$core$builtin$$Hasher$combine$8$(hasher, _b);
}
function moonbitlang$core$builtin$$Hash$hash_combine$38$(self, hasher) {
  const _a = self._0;
  const _b = self._1;
  const _c = self._2;
  moonbitlang$core$builtin$$Hasher$combine$58$(hasher, _a);
  moonbitlang$core$builtin$$Hasher$combine$63$(hasher, _b);
  moonbitlang$core$builtin$$Hasher$combine$20$(hasher, _c);
}
function moonbitlang$core$builtin$$power_2_above(x, n) {
  let _tmp = x;
  while (true) {
    const i = _tmp;
    if (i >= n) {
      return i;
    }
    const next = i << 1;
    if (next < 0) {
      return i;
    }
    _tmp = next;
    continue;
  }
}
function moonbitlang$core$builtin$$calc_grow_threshold(capacity) {
  return (Math.imul(capacity, 13) | 0) / 16 | 0;
}
function moonbitlang$core$builtin$$Map$new$90$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  const _bind = capacity$2 - 1 | 0;
  const _bind$2 = moonbitlang$core$builtin$$calc_grow_threshold(capacity$2);
  const _bind$3 = $make_array_len_and_init(capacity$2, undefined);
  const _bind$4 = $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined });
  const _bind$5 = undefined;
  const _bind$6 = undefined;
  return { entries: _bind$3, list: _bind$4, size: 0, capacity: capacity$2, capacity_mask: _bind, growAt: _bind$2, head: _bind$5, tail: _bind$6 };
}
function moonbitlang$core$builtin$$Map$new$91$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  const _bind = capacity$2 - 1 | 0;
  const _bind$2 = moonbitlang$core$builtin$$calc_grow_threshold(capacity$2);
  const _bind$3 = $make_array_len_and_init(capacity$2, undefined);
  const _bind$4 = $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined });
  const _bind$5 = undefined;
  const _bind$6 = undefined;
  return { entries: _bind$3, list: _bind$4, size: 0, capacity: capacity$2, capacity_mask: _bind, growAt: _bind$2, head: _bind$5, tail: _bind$6 };
}
function moonbitlang$core$builtin$$Map$new$92$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  const _bind = capacity$2 - 1 | 0;
  const _bind$2 = moonbitlang$core$builtin$$calc_grow_threshold(capacity$2);
  const _bind$3 = $make_array_len_and_init(capacity$2, undefined);
  const _bind$4 = $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined });
  const _bind$5 = undefined;
  const _bind$6 = undefined;
  return { entries: _bind$3, list: _bind$4, size: 0, capacity: capacity$2, capacity_mask: _bind, growAt: _bind$2, head: _bind$5, tail: _bind$6 };
}
function moonbitlang$core$builtin$$Map$new$93$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  const _bind = capacity$2 - 1 | 0;
  const _bind$2 = moonbitlang$core$builtin$$calc_grow_threshold(capacity$2);
  const _bind$3 = $make_array_len_and_init(capacity$2, undefined);
  const _bind$4 = $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined });
  const _bind$5 = undefined;
  const _bind$6 = undefined;
  return { entries: _bind$3, list: _bind$4, size: 0, capacity: capacity$2, capacity_mask: _bind, growAt: _bind$2, head: _bind$5, tail: _bind$6 };
}
function moonbitlang$core$builtin$$Map$new$94$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  const _bind = capacity$2 - 1 | 0;
  const _bind$2 = moonbitlang$core$builtin$$calc_grow_threshold(capacity$2);
  const _bind$3 = $make_array_len_and_init(capacity$2, undefined);
  const _bind$4 = $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined });
  const _bind$5 = undefined;
  const _bind$6 = undefined;
  return { entries: _bind$3, list: _bind$4, size: 0, capacity: capacity$2, capacity_mask: _bind, growAt: _bind$2, head: _bind$5, tail: _bind$6 };
}
function moonbitlang$core$builtin$$Map$new$67$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  const _bind = capacity$2 - 1 | 0;
  const _bind$2 = moonbitlang$core$builtin$$calc_grow_threshold(capacity$2);
  const _bind$3 = $make_array_len_and_init(capacity$2, undefined);
  const _bind$4 = $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined });
  const _bind$5 = undefined;
  const _bind$6 = undefined;
  return { entries: _bind$3, list: _bind$4, size: 0, capacity: capacity$2, capacity_mask: _bind, growAt: _bind$2, head: _bind$5, tail: _bind$6 };
}
function moonbitlang$core$builtin$$Map$new$95$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  const _bind = capacity$2 - 1 | 0;
  const _bind$2 = moonbitlang$core$builtin$$calc_grow_threshold(capacity$2);
  const _bind$3 = $make_array_len_and_init(capacity$2, undefined);
  const _bind$4 = $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined });
  const _bind$5 = undefined;
  const _bind$6 = undefined;
  return { entries: _bind$3, list: _bind$4, size: 0, capacity: capacity$2, capacity_mask: _bind, growAt: _bind$2, head: _bind$5, tail: _bind$6 };
}
function moonbitlang$core$builtin$$Map$new$96$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  const _bind = capacity$2 - 1 | 0;
  const _bind$2 = moonbitlang$core$builtin$$calc_grow_threshold(capacity$2);
  const _bind$3 = $make_array_len_and_init(capacity$2, undefined);
  const _bind$4 = $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined });
  const _bind$5 = undefined;
  const _bind$6 = undefined;
  return { entries: _bind$3, list: _bind$4, size: 0, capacity: capacity$2, capacity_mask: _bind, growAt: _bind$2, head: _bind$5, tail: _bind$6 };
}
function moonbitlang$core$builtin$$Map$new$57$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  const _bind = capacity$2 - 1 | 0;
  const _bind$2 = moonbitlang$core$builtin$$calc_grow_threshold(capacity$2);
  const _bind$3 = $make_array_len_and_init(capacity$2, undefined);
  const _bind$4 = $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined });
  const _bind$5 = undefined;
  const _bind$6 = undefined;
  return { entries: _bind$3, list: _bind$4, size: 0, capacity: capacity$2, capacity_mask: _bind, growAt: _bind$2, head: _bind$5, tail: _bind$6 };
}
function moonbitlang$core$builtin$$Map$new$97$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  const _bind = capacity$2 - 1 | 0;
  const _bind$2 = moonbitlang$core$builtin$$calc_grow_threshold(capacity$2);
  const _bind$3 = $make_array_len_and_init(capacity$2, undefined);
  const _bind$4 = $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined });
  const _bind$5 = undefined;
  const _bind$6 = undefined;
  return { entries: _bind$3, list: _bind$4, size: 0, capacity: capacity$2, capacity_mask: _bind, growAt: _bind$2, head: _bind$5, tail: _bind$6 };
}
function moonbitlang$core$builtin$$Map$new$98$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  const _bind = capacity$2 - 1 | 0;
  const _bind$2 = moonbitlang$core$builtin$$calc_grow_threshold(capacity$2);
  const _bind$3 = $make_array_len_and_init(capacity$2, undefined);
  const _bind$4 = $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined });
  const _bind$5 = undefined;
  const _bind$6 = undefined;
  return { entries: _bind$3, list: _bind$4, size: 0, capacity: capacity$2, capacity_mask: _bind, growAt: _bind$2, head: _bind$5, tail: _bind$6 };
}
function moonbitlang$core$builtin$$Map$new$99$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  const _bind = capacity$2 - 1 | 0;
  const _bind$2 = moonbitlang$core$builtin$$calc_grow_threshold(capacity$2);
  const _bind$3 = $make_array_len_and_init(capacity$2, undefined);
  const _bind$4 = $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined });
  const _bind$5 = undefined;
  const _bind$6 = undefined;
  return { entries: _bind$3, list: _bind$4, size: 0, capacity: capacity$2, capacity_mask: _bind, growAt: _bind$2, head: _bind$5, tail: _bind$6 };
}
function moonbitlang$core$builtin$$Map$new$0$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  const _bind = capacity$2 - 1 | 0;
  const _bind$2 = moonbitlang$core$builtin$$calc_grow_threshold(capacity$2);
  const _bind$3 = $make_array_len_and_init(capacity$2, undefined);
  const _bind$4 = $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined });
  const _bind$5 = undefined;
  const _bind$6 = undefined;
  return { entries: _bind$3, list: _bind$4, size: 0, capacity: capacity$2, capacity_mask: _bind, growAt: _bind$2, head: _bind$5, tail: _bind$6 };
}
function moonbitlang$core$builtin$$Map$new$46$capacity$46$default$90$() {
  return 8;
}
function moonbitlang$core$builtin$$Map$new$46$capacity$46$default$91$() {
  return 8;
}
function moonbitlang$core$builtin$$Map$new$46$capacity$46$default$93$() {
  return 8;
}
function moonbitlang$core$builtin$$Map$new$46$capacity$46$default$67$() {
  return 8;
}
function moonbitlang$core$array$$Array$each$100$(self, f) {
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      f(v);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$Array$each$101$(self, f) {
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      f(v);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$Array$each$102$(self, f) {
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      f(v);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$Array$each$103$(self, f) {
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      f(v);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$Array$each$7$(self, f) {
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      f(v);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$Array$each$60$(self, f) {
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      f(v);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$Array$each$104$(self, f) {
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      f(v);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$Array$each$105$(self, f) {
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      f(v);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$Array$each$106$(self, f) {
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      f(v);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$Array$each$107$(self, f) {
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      f(v);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$builtin$$Map$add_entry_to_tail$92$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _tail = _Some;
    const _tmp = self.list;
    const _tmp$2 = _tail.idx;
    $bound_check(_tmp, _tmp$2);
    _tmp[_tmp$2].next = entry;
    const _tmp$3 = self.list;
    const _tmp$4 = entry.idx;
    $bound_check(_tmp$3, _tmp$4);
    _tmp$3[_tmp$4].prev = _tail;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$add_entry_to_tail$57$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _tail = _Some;
    const _tmp = self.list;
    const _tmp$2 = _tail.idx;
    $bound_check(_tmp, _tmp$2);
    _tmp[_tmp$2].next = entry;
    const _tmp$3 = self.list;
    const _tmp$4 = entry.idx;
    $bound_check(_tmp$3, _tmp$4);
    _tmp$3[_tmp$4].prev = _tail;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$add_entry_to_tail$97$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _tail = _Some;
    const _tmp = self.list;
    const _tmp$2 = _tail.idx;
    $bound_check(_tmp, _tmp$2);
    _tmp[_tmp$2].next = entry;
    const _tmp$3 = self.list;
    const _tmp$4 = entry.idx;
    $bound_check(_tmp$3, _tmp$4);
    _tmp$3[_tmp$4].prev = _tail;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$add_entry_to_tail$94$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _tail = _Some;
    const _tmp = self.list;
    const _tmp$2 = _tail.idx;
    $bound_check(_tmp, _tmp$2);
    _tmp[_tmp$2].next = entry;
    const _tmp$3 = self.list;
    const _tmp$4 = entry.idx;
    $bound_check(_tmp$3, _tmp$4);
    _tmp$3[_tmp$4].prev = _tail;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$add_entry_to_tail$91$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _tail = _Some;
    const _tmp = self.list;
    const _tmp$2 = _tail.idx;
    $bound_check(_tmp, _tmp$2);
    _tmp[_tmp$2].next = entry;
    const _tmp$3 = self.list;
    const _tmp$4 = entry.idx;
    $bound_check(_tmp$3, _tmp$4);
    _tmp$3[_tmp$4].prev = _tail;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$add_entry_to_tail$99$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _tail = _Some;
    const _tmp = self.list;
    const _tmp$2 = _tail.idx;
    $bound_check(_tmp, _tmp$2);
    _tmp[_tmp$2].next = entry;
    const _tmp$3 = self.list;
    const _tmp$4 = entry.idx;
    $bound_check(_tmp$3, _tmp$4);
    _tmp$3[_tmp$4].prev = _tail;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$add_entry_to_tail$67$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _tail = _Some;
    const _tmp = self.list;
    const _tmp$2 = _tail.idx;
    $bound_check(_tmp, _tmp$2);
    _tmp[_tmp$2].next = entry;
    const _tmp$3 = self.list;
    const _tmp$4 = entry.idx;
    $bound_check(_tmp$3, _tmp$4);
    _tmp$3[_tmp$4].prev = _tail;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$add_entry_to_tail$95$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _tail = _Some;
    const _tmp = self.list;
    const _tmp$2 = _tail.idx;
    $bound_check(_tmp, _tmp$2);
    _tmp[_tmp$2].next = entry;
    const _tmp$3 = self.list;
    const _tmp$4 = entry.idx;
    $bound_check(_tmp$3, _tmp$4);
    _tmp$3[_tmp$4].prev = _tail;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$add_entry_to_tail$96$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _tail = _Some;
    const _tmp = self.list;
    const _tmp$2 = _tail.idx;
    $bound_check(_tmp, _tmp$2);
    _tmp[_tmp$2].next = entry;
    const _tmp$3 = self.list;
    const _tmp$4 = entry.idx;
    $bound_check(_tmp$3, _tmp$4);
    _tmp$3[_tmp$4].prev = _tail;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$add_entry_to_tail$93$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _tail = _Some;
    const _tmp = self.list;
    const _tmp$2 = _tail.idx;
    $bound_check(_tmp, _tmp$2);
    _tmp[_tmp$2].next = entry;
    const _tmp$3 = self.list;
    const _tmp$4 = entry.idx;
    $bound_check(_tmp$3, _tmp$4);
    _tmp$3[_tmp$4].prev = _tail;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$add_entry_to_tail$90$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _tail = _Some;
    const _tmp = self.list;
    const _tmp$2 = _tail.idx;
    $bound_check(_tmp, _tmp$2);
    _tmp[_tmp$2].next = entry;
    const _tmp$3 = self.list;
    const _tmp$4 = entry.idx;
    $bound_check(_tmp$3, _tmp$4);
    _tmp$3[_tmp$4].prev = _tail;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$add_entry_to_tail$98$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _tail = _Some;
    const _tmp = self.list;
    const _tmp$2 = _tail.idx;
    $bound_check(_tmp, _tmp$2);
    _tmp[_tmp$2].next = entry;
    const _tmp$3 = self.list;
    const _tmp$4 = entry.idx;
    $bound_check(_tmp$3, _tmp$4);
    _tmp$3[_tmp$4].prev = _tail;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$add_entry_to_tail$0$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _tail = _Some;
    const _tmp = self.list;
    const _tmp$2 = _tail.idx;
    $bound_check(_tmp, _tmp$2);
    _tmp[_tmp$2].next = entry;
    const _tmp$3 = self.list;
    const _tmp$4 = entry.idx;
    $bound_check(_tmp$3, _tmp$4);
    _tmp$3[_tmp$4].prev = _tail;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$set$92$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$92$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$8$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const entry = _tmp$3;
    const node = _tmp$4;
    const _tmp$5 = self.entries;
    $bound_check(_tmp$5, idx);
    const _bind = _tmp$5[idx];
    if (_bind === undefined) {
      const _tmp$6 = self.entries;
      $bound_check(_tmp$6, idx);
      _tmp$6[idx] = entry;
      const _tmp$7 = self.list;
      $bound_check(_tmp$7, idx);
      _tmp$7[idx] = node;
      entry.idx = idx;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$92$(self, insert_entry);
      self.size = self.size + 1 | 0;
      break;
    } else {
      const _Some = _bind;
      const _curr_entry = _Some;
      const _tmp$6 = self.list;
      const _tmp$7 = _curr_entry.idx;
      $bound_check(_tmp$6, _tmp$7);
      const curr_node = _tmp$6[_tmp$7];
      if (_curr_entry.hash === entry.hash && _curr_entry.key === entry.key) {
        _curr_entry.value = entry.value;
        break;
      }
      if (entry.psl > _curr_entry.psl) {
        const _tmp$8 = self.entries;
        $bound_check(_tmp$8, idx);
        _tmp$8[idx] = entry;
        const _tmp$9 = self.list;
        $bound_check(_tmp$9, idx);
        _tmp$9[idx] = node;
        entry.idx = idx;
        _curr_entry.psl = _curr_entry.psl + 1 | 0;
        const _tmp$10 = i + 1 | 0;
        const _tmp$11 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$10;
        _tmp$2 = _tmp$11;
        _tmp$3 = _curr_entry;
        _tmp$4 = curr_node;
        continue;
      } else {
        entry.psl = entry.psl + 1 | 0;
        const _tmp$8 = i + 1 | 0;
        const _tmp$9 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$8;
        _tmp$2 = _tmp$9;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$set$57$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$57$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$59$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const entry = _tmp$3;
    const node = _tmp$4;
    const _tmp$5 = self.entries;
    $bound_check(_tmp$5, idx);
    const _bind = _tmp$5[idx];
    if (_bind === undefined) {
      const _tmp$6 = self.entries;
      $bound_check(_tmp$6, idx);
      _tmp$6[idx] = entry;
      const _tmp$7 = self.list;
      $bound_check(_tmp$7, idx);
      _tmp$7[idx] = node;
      entry.idx = idx;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$57$(self, insert_entry);
      self.size = self.size + 1 | 0;
      break;
    } else {
      const _Some = _bind;
      const _curr_entry = _Some;
      const _tmp$6 = self.list;
      const _tmp$7 = _curr_entry.idx;
      $bound_check(_tmp$6, _tmp$7);
      const curr_node = _tmp$6[_tmp$7];
      if (_curr_entry.hash === entry.hash && moonbitlang$core$builtin$$Eq$op_equal$58$(_curr_entry.key, entry.key)) {
        _curr_entry.value = entry.value;
        break;
      }
      if (entry.psl > _curr_entry.psl) {
        const _tmp$8 = self.entries;
        $bound_check(_tmp$8, idx);
        _tmp$8[idx] = entry;
        const _tmp$9 = self.list;
        $bound_check(_tmp$9, idx);
        _tmp$9[idx] = node;
        entry.idx = idx;
        _curr_entry.psl = _curr_entry.psl + 1 | 0;
        const _tmp$10 = i + 1 | 0;
        const _tmp$11 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$10;
        _tmp$2 = _tmp$11;
        _tmp$3 = _curr_entry;
        _tmp$4 = curr_node;
        continue;
      } else {
        entry.psl = entry.psl + 1 | 0;
        const _tmp$8 = i + 1 | 0;
        const _tmp$9 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$8;
        _tmp$2 = _tmp$9;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$set$97$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$97$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$8$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const entry = _tmp$3;
    const node = _tmp$4;
    const _tmp$5 = self.entries;
    $bound_check(_tmp$5, idx);
    const _bind = _tmp$5[idx];
    if (_bind === undefined) {
      const _tmp$6 = self.entries;
      $bound_check(_tmp$6, idx);
      _tmp$6[idx] = entry;
      const _tmp$7 = self.list;
      $bound_check(_tmp$7, idx);
      _tmp$7[idx] = node;
      entry.idx = idx;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$97$(self, insert_entry);
      self.size = self.size + 1 | 0;
      break;
    } else {
      const _Some = _bind;
      const _curr_entry = _Some;
      const _tmp$6 = self.list;
      const _tmp$7 = _curr_entry.idx;
      $bound_check(_tmp$6, _tmp$7);
      const curr_node = _tmp$6[_tmp$7];
      if (_curr_entry.hash === entry.hash && _curr_entry.key === entry.key) {
        _curr_entry.value = entry.value;
        break;
      }
      if (entry.psl > _curr_entry.psl) {
        const _tmp$8 = self.entries;
        $bound_check(_tmp$8, idx);
        _tmp$8[idx] = entry;
        const _tmp$9 = self.list;
        $bound_check(_tmp$9, idx);
        _tmp$9[idx] = node;
        entry.idx = idx;
        _curr_entry.psl = _curr_entry.psl + 1 | 0;
        const _tmp$10 = i + 1 | 0;
        const _tmp$11 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$10;
        _tmp$2 = _tmp$11;
        _tmp$3 = _curr_entry;
        _tmp$4 = curr_node;
        continue;
      } else {
        entry.psl = entry.psl + 1 | 0;
        const _tmp$8 = i + 1 | 0;
        const _tmp$9 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$8;
        _tmp$2 = _tmp$9;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$set$94$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$94$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$108$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const entry = _tmp$3;
    const node = _tmp$4;
    const _tmp$5 = self.entries;
    $bound_check(_tmp$5, idx);
    const _bind = _tmp$5[idx];
    if (_bind === undefined) {
      const _tmp$6 = self.entries;
      $bound_check(_tmp$6, idx);
      _tmp$6[idx] = entry;
      const _tmp$7 = self.list;
      $bound_check(_tmp$7, idx);
      _tmp$7[idx] = node;
      entry.idx = idx;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$94$(self, insert_entry);
      self.size = self.size + 1 | 0;
      break;
    } else {
      const _Some = _bind;
      const _curr_entry = _Some;
      const _tmp$6 = self.list;
      const _tmp$7 = _curr_entry.idx;
      $bound_check(_tmp$6, _tmp$7);
      const curr_node = _tmp$6[_tmp$7];
      if (_curr_entry.hash === entry.hash && moonbitlang$core$builtin$$Eq$op_equal$38$(_curr_entry.key, entry.key)) {
        _curr_entry.value = entry.value;
        break;
      }
      if (entry.psl > _curr_entry.psl) {
        const _tmp$8 = self.entries;
        $bound_check(_tmp$8, idx);
        _tmp$8[idx] = entry;
        const _tmp$9 = self.list;
        $bound_check(_tmp$9, idx);
        _tmp$9[idx] = node;
        entry.idx = idx;
        _curr_entry.psl = _curr_entry.psl + 1 | 0;
        const _tmp$10 = i + 1 | 0;
        const _tmp$11 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$10;
        _tmp$2 = _tmp$11;
        _tmp$3 = _curr_entry;
        _tmp$4 = curr_node;
        continue;
      } else {
        entry.psl = entry.psl + 1 | 0;
        const _tmp$8 = i + 1 | 0;
        const _tmp$9 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$8;
        _tmp$2 = _tmp$9;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$set$91$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$91$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$109$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const entry = _tmp$3;
    const node = _tmp$4;
    const _tmp$5 = self.entries;
    $bound_check(_tmp$5, idx);
    const _bind = _tmp$5[idx];
    if (_bind === undefined) {
      const _tmp$6 = self.entries;
      $bound_check(_tmp$6, idx);
      _tmp$6[idx] = entry;
      const _tmp$7 = self.list;
      $bound_check(_tmp$7, idx);
      _tmp$7[idx] = node;
      entry.idx = idx;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$91$(self, insert_entry);
      self.size = self.size + 1 | 0;
      break;
    } else {
      const _Some = _bind;
      const _curr_entry = _Some;
      const _tmp$6 = self.list;
      const _tmp$7 = _curr_entry.idx;
      $bound_check(_tmp$6, _tmp$7);
      const curr_node = _tmp$6[_tmp$7];
      if (_curr_entry.hash === entry.hash && moonbitlang$core$builtin$$Eq$op_equal$30$(_curr_entry.key, entry.key)) {
        _curr_entry.value = entry.value;
        break;
      }
      if (entry.psl > _curr_entry.psl) {
        const _tmp$8 = self.entries;
        $bound_check(_tmp$8, idx);
        _tmp$8[idx] = entry;
        const _tmp$9 = self.list;
        $bound_check(_tmp$9, idx);
        _tmp$9[idx] = node;
        entry.idx = idx;
        _curr_entry.psl = _curr_entry.psl + 1 | 0;
        const _tmp$10 = i + 1 | 0;
        const _tmp$11 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$10;
        _tmp$2 = _tmp$11;
        _tmp$3 = _curr_entry;
        _tmp$4 = curr_node;
        continue;
      } else {
        entry.psl = entry.psl + 1 | 0;
        const _tmp$8 = i + 1 | 0;
        const _tmp$9 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$8;
        _tmp$2 = _tmp$9;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$set$99$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$99$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$110$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const entry = _tmp$3;
    const node = _tmp$4;
    const _tmp$5 = self.entries;
    $bound_check(_tmp$5, idx);
    const _bind = _tmp$5[idx];
    if (_bind === undefined) {
      const _tmp$6 = self.entries;
      $bound_check(_tmp$6, idx);
      _tmp$6[idx] = entry;
      const _tmp$7 = self.list;
      $bound_check(_tmp$7, idx);
      _tmp$7[idx] = node;
      entry.idx = idx;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$99$(self, insert_entry);
      self.size = self.size + 1 | 0;
      break;
    } else {
      const _Some = _bind;
      const _curr_entry = _Some;
      const _tmp$6 = self.list;
      const _tmp$7 = _curr_entry.idx;
      $bound_check(_tmp$6, _tmp$7);
      const curr_node = _tmp$6[_tmp$7];
      if (_curr_entry.hash === entry.hash && _curr_entry.key === entry.key) {
        _curr_entry.value = entry.value;
        break;
      }
      if (entry.psl > _curr_entry.psl) {
        const _tmp$8 = self.entries;
        $bound_check(_tmp$8, idx);
        _tmp$8[idx] = entry;
        const _tmp$9 = self.list;
        $bound_check(_tmp$9, idx);
        _tmp$9[idx] = node;
        entry.idx = idx;
        _curr_entry.psl = _curr_entry.psl + 1 | 0;
        const _tmp$10 = i + 1 | 0;
        const _tmp$11 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$10;
        _tmp$2 = _tmp$11;
        _tmp$3 = _curr_entry;
        _tmp$4 = curr_node;
        continue;
      } else {
        entry.psl = entry.psl + 1 | 0;
        const _tmp$8 = i + 1 | 0;
        const _tmp$9 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$8;
        _tmp$2 = _tmp$9;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$set$67$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$67$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$8$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const entry = _tmp$3;
    const node = _tmp$4;
    const _tmp$5 = self.entries;
    $bound_check(_tmp$5, idx);
    const _bind = _tmp$5[idx];
    if (_bind === undefined) {
      const _tmp$6 = self.entries;
      $bound_check(_tmp$6, idx);
      _tmp$6[idx] = entry;
      const _tmp$7 = self.list;
      $bound_check(_tmp$7, idx);
      _tmp$7[idx] = node;
      entry.idx = idx;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$67$(self, insert_entry);
      self.size = self.size + 1 | 0;
      break;
    } else {
      const _Some = _bind;
      const _curr_entry = _Some;
      const _tmp$6 = self.list;
      const _tmp$7 = _curr_entry.idx;
      $bound_check(_tmp$6, _tmp$7);
      const curr_node = _tmp$6[_tmp$7];
      if (_curr_entry.hash === entry.hash && _curr_entry.key === entry.key) {
        _curr_entry.value = entry.value;
        break;
      }
      if (entry.psl > _curr_entry.psl) {
        const _tmp$8 = self.entries;
        $bound_check(_tmp$8, idx);
        _tmp$8[idx] = entry;
        const _tmp$9 = self.list;
        $bound_check(_tmp$9, idx);
        _tmp$9[idx] = node;
        entry.idx = idx;
        _curr_entry.psl = _curr_entry.psl + 1 | 0;
        const _tmp$10 = i + 1 | 0;
        const _tmp$11 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$10;
        _tmp$2 = _tmp$11;
        _tmp$3 = _curr_entry;
        _tmp$4 = curr_node;
        continue;
      } else {
        entry.psl = entry.psl + 1 | 0;
        const _tmp$8 = i + 1 | 0;
        const _tmp$9 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$8;
        _tmp$2 = _tmp$9;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$set$95$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$95$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$8$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const entry = _tmp$3;
    const node = _tmp$4;
    const _tmp$5 = self.entries;
    $bound_check(_tmp$5, idx);
    const _bind = _tmp$5[idx];
    if (_bind === undefined) {
      const _tmp$6 = self.entries;
      $bound_check(_tmp$6, idx);
      _tmp$6[idx] = entry;
      const _tmp$7 = self.list;
      $bound_check(_tmp$7, idx);
      _tmp$7[idx] = node;
      entry.idx = idx;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$95$(self, insert_entry);
      self.size = self.size + 1 | 0;
      break;
    } else {
      const _Some = _bind;
      const _curr_entry = _Some;
      const _tmp$6 = self.list;
      const _tmp$7 = _curr_entry.idx;
      $bound_check(_tmp$6, _tmp$7);
      const curr_node = _tmp$6[_tmp$7];
      if (_curr_entry.hash === entry.hash && _curr_entry.key === entry.key) {
        _curr_entry.value = entry.value;
        break;
      }
      if (entry.psl > _curr_entry.psl) {
        const _tmp$8 = self.entries;
        $bound_check(_tmp$8, idx);
        _tmp$8[idx] = entry;
        const _tmp$9 = self.list;
        $bound_check(_tmp$9, idx);
        _tmp$9[idx] = node;
        entry.idx = idx;
        _curr_entry.psl = _curr_entry.psl + 1 | 0;
        const _tmp$10 = i + 1 | 0;
        const _tmp$11 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$10;
        _tmp$2 = _tmp$11;
        _tmp$3 = _curr_entry;
        _tmp$4 = curr_node;
        continue;
      } else {
        entry.psl = entry.psl + 1 | 0;
        const _tmp$8 = i + 1 | 0;
        const _tmp$9 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$8;
        _tmp$2 = _tmp$9;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$set$96$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$96$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$111$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const entry = _tmp$3;
    const node = _tmp$4;
    const _tmp$5 = self.entries;
    $bound_check(_tmp$5, idx);
    const _bind = _tmp$5[idx];
    if (_bind === undefined) {
      const _tmp$6 = self.entries;
      $bound_check(_tmp$6, idx);
      _tmp$6[idx] = entry;
      const _tmp$7 = self.list;
      $bound_check(_tmp$7, idx);
      _tmp$7[idx] = node;
      entry.idx = idx;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$96$(self, insert_entry);
      self.size = self.size + 1 | 0;
      break;
    } else {
      const _Some = _bind;
      const _curr_entry = _Some;
      const _tmp$6 = self.list;
      const _tmp$7 = _curr_entry.idx;
      $bound_check(_tmp$6, _tmp$7);
      const curr_node = _tmp$6[_tmp$7];
      if (_curr_entry.hash === entry.hash && moonbitlang$core$builtin$$Eq$op_equal$37$(_curr_entry.key, entry.key)) {
        _curr_entry.value = entry.value;
        break;
      }
      if (entry.psl > _curr_entry.psl) {
        const _tmp$8 = self.entries;
        $bound_check(_tmp$8, idx);
        _tmp$8[idx] = entry;
        const _tmp$9 = self.list;
        $bound_check(_tmp$9, idx);
        _tmp$9[idx] = node;
        entry.idx = idx;
        _curr_entry.psl = _curr_entry.psl + 1 | 0;
        const _tmp$10 = i + 1 | 0;
        const _tmp$11 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$10;
        _tmp$2 = _tmp$11;
        _tmp$3 = _curr_entry;
        _tmp$4 = curr_node;
        continue;
      } else {
        entry.psl = entry.psl + 1 | 0;
        const _tmp$8 = i + 1 | 0;
        const _tmp$9 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$8;
        _tmp$2 = _tmp$9;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$set$93$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$93$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$8$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const entry = _tmp$3;
    const node = _tmp$4;
    const _tmp$5 = self.entries;
    $bound_check(_tmp$5, idx);
    const _bind = _tmp$5[idx];
    if (_bind === undefined) {
      const _tmp$6 = self.entries;
      $bound_check(_tmp$6, idx);
      _tmp$6[idx] = entry;
      const _tmp$7 = self.list;
      $bound_check(_tmp$7, idx);
      _tmp$7[idx] = node;
      entry.idx = idx;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$93$(self, insert_entry);
      self.size = self.size + 1 | 0;
      break;
    } else {
      const _Some = _bind;
      const _curr_entry = _Some;
      const _tmp$6 = self.list;
      const _tmp$7 = _curr_entry.idx;
      $bound_check(_tmp$6, _tmp$7);
      const curr_node = _tmp$6[_tmp$7];
      if (_curr_entry.hash === entry.hash && _curr_entry.key === entry.key) {
        _curr_entry.value = entry.value;
        break;
      }
      if (entry.psl > _curr_entry.psl) {
        const _tmp$8 = self.entries;
        $bound_check(_tmp$8, idx);
        _tmp$8[idx] = entry;
        const _tmp$9 = self.list;
        $bound_check(_tmp$9, idx);
        _tmp$9[idx] = node;
        entry.idx = idx;
        _curr_entry.psl = _curr_entry.psl + 1 | 0;
        const _tmp$10 = i + 1 | 0;
        const _tmp$11 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$10;
        _tmp$2 = _tmp$11;
        _tmp$3 = _curr_entry;
        _tmp$4 = curr_node;
        continue;
      } else {
        entry.psl = entry.psl + 1 | 0;
        const _tmp$8 = i + 1 | 0;
        const _tmp$9 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$8;
        _tmp$2 = _tmp$9;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$set$90$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$90$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$112$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const entry = _tmp$3;
    const node = _tmp$4;
    const _tmp$5 = self.entries;
    $bound_check(_tmp$5, idx);
    const _bind = _tmp$5[idx];
    if (_bind === undefined) {
      const _tmp$6 = self.entries;
      $bound_check(_tmp$6, idx);
      _tmp$6[idx] = entry;
      const _tmp$7 = self.list;
      $bound_check(_tmp$7, idx);
      _tmp$7[idx] = node;
      entry.idx = idx;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$90$(self, insert_entry);
      self.size = self.size + 1 | 0;
      break;
    } else {
      const _Some = _bind;
      const _curr_entry = _Some;
      const _tmp$6 = self.list;
      const _tmp$7 = _curr_entry.idx;
      $bound_check(_tmp$6, _tmp$7);
      const curr_node = _tmp$6[_tmp$7];
      if (_curr_entry.hash === entry.hash && moonbitlang$core$builtin$$Eq$op_equal$62$(_curr_entry.key, entry.key)) {
        _curr_entry.value = entry.value;
        break;
      }
      if (entry.psl > _curr_entry.psl) {
        const _tmp$8 = self.entries;
        $bound_check(_tmp$8, idx);
        _tmp$8[idx] = entry;
        const _tmp$9 = self.list;
        $bound_check(_tmp$9, idx);
        _tmp$9[idx] = node;
        entry.idx = idx;
        _curr_entry.psl = _curr_entry.psl + 1 | 0;
        const _tmp$10 = i + 1 | 0;
        const _tmp$11 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$10;
        _tmp$2 = _tmp$11;
        _tmp$3 = _curr_entry;
        _tmp$4 = curr_node;
        continue;
      } else {
        entry.psl = entry.psl + 1 | 0;
        const _tmp$8 = i + 1 | 0;
        const _tmp$9 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$8;
        _tmp$2 = _tmp$9;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$set$98$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$98$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$110$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const entry = _tmp$3;
    const node = _tmp$4;
    const _tmp$5 = self.entries;
    $bound_check(_tmp$5, idx);
    const _bind = _tmp$5[idx];
    if (_bind === undefined) {
      const _tmp$6 = self.entries;
      $bound_check(_tmp$6, idx);
      _tmp$6[idx] = entry;
      const _tmp$7 = self.list;
      $bound_check(_tmp$7, idx);
      _tmp$7[idx] = node;
      entry.idx = idx;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$98$(self, insert_entry);
      self.size = self.size + 1 | 0;
      break;
    } else {
      const _Some = _bind;
      const _curr_entry = _Some;
      const _tmp$6 = self.list;
      const _tmp$7 = _curr_entry.idx;
      $bound_check(_tmp$6, _tmp$7);
      const curr_node = _tmp$6[_tmp$7];
      if (_curr_entry.hash === entry.hash && _curr_entry.key === entry.key) {
        _curr_entry.value = entry.value;
        break;
      }
      if (entry.psl > _curr_entry.psl) {
        const _tmp$8 = self.entries;
        $bound_check(_tmp$8, idx);
        _tmp$8[idx] = entry;
        const _tmp$9 = self.list;
        $bound_check(_tmp$9, idx);
        _tmp$9[idx] = node;
        entry.idx = idx;
        _curr_entry.psl = _curr_entry.psl + 1 | 0;
        const _tmp$10 = i + 1 | 0;
        const _tmp$11 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$10;
        _tmp$2 = _tmp$11;
        _tmp$3 = _curr_entry;
        _tmp$4 = curr_node;
        continue;
      } else {
        entry.psl = entry.psl + 1 | 0;
        const _tmp$8 = i + 1 | 0;
        const _tmp$9 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$8;
        _tmp$2 = _tmp$9;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$set$0$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$0$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$110$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const entry = _tmp$3;
    const node = _tmp$4;
    const _tmp$5 = self.entries;
    $bound_check(_tmp$5, idx);
    const _bind = _tmp$5[idx];
    if (_bind === undefined) {
      const _tmp$6 = self.entries;
      $bound_check(_tmp$6, idx);
      _tmp$6[idx] = entry;
      const _tmp$7 = self.list;
      $bound_check(_tmp$7, idx);
      _tmp$7[idx] = node;
      entry.idx = idx;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$0$(self, insert_entry);
      self.size = self.size + 1 | 0;
      break;
    } else {
      const _Some = _bind;
      const _curr_entry = _Some;
      const _tmp$6 = self.list;
      const _tmp$7 = _curr_entry.idx;
      $bound_check(_tmp$6, _tmp$7);
      const curr_node = _tmp$6[_tmp$7];
      if (_curr_entry.hash === entry.hash && _curr_entry.key === entry.key) {
        _curr_entry.value = entry.value;
        break;
      }
      if (entry.psl > _curr_entry.psl) {
        const _tmp$8 = self.entries;
        $bound_check(_tmp$8, idx);
        _tmp$8[idx] = entry;
        const _tmp$9 = self.list;
        $bound_check(_tmp$9, idx);
        _tmp$9[idx] = node;
        entry.idx = idx;
        _curr_entry.psl = _curr_entry.psl + 1 | 0;
        const _tmp$10 = i + 1 | 0;
        const _tmp$11 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$10;
        _tmp$2 = _tmp$11;
        _tmp$3 = _curr_entry;
        _tmp$4 = curr_node;
        continue;
      } else {
        entry.psl = entry.psl + 1 | 0;
        const _tmp$8 = i + 1 | 0;
        const _tmp$9 = idx + 1 & self.capacity_mask;
        _tmp = _tmp$8;
        _tmp$2 = _tmp$9;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$92$(self) {
  const old_head = self.head;
  const old_list = self.list;
  const new_capacity = self.capacity << 1;
  self.entries = $make_array_len_and_init(new_capacity, undefined);
  self.list = $make_array_len_and_init(new_capacity, { prev: undefined, next: undefined });
  self.capacity = new_capacity;
  self.capacity_mask = new_capacity - 1 | 0;
  self.growAt = moonbitlang$core$builtin$$calc_grow_threshold(self.capacity);
  self.size = 0;
  self.head = undefined;
  self.tail = undefined;
  let _tmp = old_head;
  while (true) {
    const _param = _tmp;
    if (_param === undefined) {
      return;
    } else {
      const _Some = _param;
      const _x = _Some;
      const _idx = _x.idx;
      const _key = _x.key;
      const _value = _x.value;
      moonbitlang$core$builtin$$Map$set$92$(self, _key, _value);
      $bound_check(old_list, _idx);
      _tmp = old_list[_idx].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$57$(self) {
  const old_head = self.head;
  const old_list = self.list;
  const new_capacity = self.capacity << 1;
  self.entries = $make_array_len_and_init(new_capacity, undefined);
  self.list = $make_array_len_and_init(new_capacity, { prev: undefined, next: undefined });
  self.capacity = new_capacity;
  self.capacity_mask = new_capacity - 1 | 0;
  self.growAt = moonbitlang$core$builtin$$calc_grow_threshold(self.capacity);
  self.size = 0;
  self.head = undefined;
  self.tail = undefined;
  let _tmp = old_head;
  while (true) {
    const _param = _tmp;
    if (_param === undefined) {
      return;
    } else {
      const _Some = _param;
      const _x = _Some;
      const _idx = _x.idx;
      const _key = _x.key;
      const _value = _x.value;
      moonbitlang$core$builtin$$Map$set$57$(self, _key, _value);
      $bound_check(old_list, _idx);
      _tmp = old_list[_idx].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$97$(self) {
  const old_head = self.head;
  const old_list = self.list;
  const new_capacity = self.capacity << 1;
  self.entries = $make_array_len_and_init(new_capacity, undefined);
  self.list = $make_array_len_and_init(new_capacity, { prev: undefined, next: undefined });
  self.capacity = new_capacity;
  self.capacity_mask = new_capacity - 1 | 0;
  self.growAt = moonbitlang$core$builtin$$calc_grow_threshold(self.capacity);
  self.size = 0;
  self.head = undefined;
  self.tail = undefined;
  let _tmp = old_head;
  while (true) {
    const _param = _tmp;
    if (_param === undefined) {
      return;
    } else {
      const _Some = _param;
      const _x = _Some;
      const _idx = _x.idx;
      const _key = _x.key;
      const _value = _x.value;
      moonbitlang$core$builtin$$Map$set$97$(self, _key, _value);
      $bound_check(old_list, _idx);
      _tmp = old_list[_idx].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$94$(self) {
  const old_head = self.head;
  const old_list = self.list;
  const new_capacity = self.capacity << 1;
  self.entries = $make_array_len_and_init(new_capacity, undefined);
  self.list = $make_array_len_and_init(new_capacity, { prev: undefined, next: undefined });
  self.capacity = new_capacity;
  self.capacity_mask = new_capacity - 1 | 0;
  self.growAt = moonbitlang$core$builtin$$calc_grow_threshold(self.capacity);
  self.size = 0;
  self.head = undefined;
  self.tail = undefined;
  let _tmp = old_head;
  while (true) {
    const _param = _tmp;
    if (_param === undefined) {
      return;
    } else {
      const _Some = _param;
      const _x = _Some;
      const _idx = _x.idx;
      const _key = _x.key;
      const _value = _x.value;
      moonbitlang$core$builtin$$Map$set$94$(self, _key, _value);
      $bound_check(old_list, _idx);
      _tmp = old_list[_idx].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$91$(self) {
  const old_head = self.head;
  const old_list = self.list;
  const new_capacity = self.capacity << 1;
  self.entries = $make_array_len_and_init(new_capacity, undefined);
  self.list = $make_array_len_and_init(new_capacity, { prev: undefined, next: undefined });
  self.capacity = new_capacity;
  self.capacity_mask = new_capacity - 1 | 0;
  self.growAt = moonbitlang$core$builtin$$calc_grow_threshold(self.capacity);
  self.size = 0;
  self.head = undefined;
  self.tail = undefined;
  let _tmp = old_head;
  while (true) {
    const _param = _tmp;
    if (_param === undefined) {
      return;
    } else {
      const _Some = _param;
      const _x = _Some;
      const _idx = _x.idx;
      const _key = _x.key;
      const _value = _x.value;
      moonbitlang$core$builtin$$Map$set$91$(self, _key, _value);
      $bound_check(old_list, _idx);
      _tmp = old_list[_idx].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$99$(self) {
  const old_head = self.head;
  const old_list = self.list;
  const new_capacity = self.capacity << 1;
  self.entries = $make_array_len_and_init(new_capacity, undefined);
  self.list = $make_array_len_and_init(new_capacity, { prev: undefined, next: undefined });
  self.capacity = new_capacity;
  self.capacity_mask = new_capacity - 1 | 0;
  self.growAt = moonbitlang$core$builtin$$calc_grow_threshold(self.capacity);
  self.size = 0;
  self.head = undefined;
  self.tail = undefined;
  let _tmp = old_head;
  while (true) {
    const _param = _tmp;
    if (_param === undefined) {
      return;
    } else {
      const _Some = _param;
      const _x = _Some;
      const _idx = _x.idx;
      const _key = _x.key;
      const _value = _x.value;
      moonbitlang$core$builtin$$Map$set$99$(self, _key, _value);
      $bound_check(old_list, _idx);
      _tmp = old_list[_idx].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$67$(self) {
  const old_head = self.head;
  const old_list = self.list;
  const new_capacity = self.capacity << 1;
  self.entries = $make_array_len_and_init(new_capacity, undefined);
  self.list = $make_array_len_and_init(new_capacity, { prev: undefined, next: undefined });
  self.capacity = new_capacity;
  self.capacity_mask = new_capacity - 1 | 0;
  self.growAt = moonbitlang$core$builtin$$calc_grow_threshold(self.capacity);
  self.size = 0;
  self.head = undefined;
  self.tail = undefined;
  let _tmp = old_head;
  while (true) {
    const _param = _tmp;
    if (_param === undefined) {
      return;
    } else {
      const _Some = _param;
      const _x = _Some;
      const _idx = _x.idx;
      const _key = _x.key;
      const _value = _x.value;
      moonbitlang$core$builtin$$Map$set$67$(self, _key, _value);
      $bound_check(old_list, _idx);
      _tmp = old_list[_idx].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$95$(self) {
  const old_head = self.head;
  const old_list = self.list;
  const new_capacity = self.capacity << 1;
  self.entries = $make_array_len_and_init(new_capacity, undefined);
  self.list = $make_array_len_and_init(new_capacity, { prev: undefined, next: undefined });
  self.capacity = new_capacity;
  self.capacity_mask = new_capacity - 1 | 0;
  self.growAt = moonbitlang$core$builtin$$calc_grow_threshold(self.capacity);
  self.size = 0;
  self.head = undefined;
  self.tail = undefined;
  let _tmp = old_head;
  while (true) {
    const _param = _tmp;
    if (_param === undefined) {
      return;
    } else {
      const _Some = _param;
      const _x = _Some;
      const _idx = _x.idx;
      const _key = _x.key;
      const _value = _x.value;
      moonbitlang$core$builtin$$Map$set$95$(self, _key, _value);
      $bound_check(old_list, _idx);
      _tmp = old_list[_idx].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$96$(self) {
  const old_head = self.head;
  const old_list = self.list;
  const new_capacity = self.capacity << 1;
  self.entries = $make_array_len_and_init(new_capacity, undefined);
  self.list = $make_array_len_and_init(new_capacity, { prev: undefined, next: undefined });
  self.capacity = new_capacity;
  self.capacity_mask = new_capacity - 1 | 0;
  self.growAt = moonbitlang$core$builtin$$calc_grow_threshold(self.capacity);
  self.size = 0;
  self.head = undefined;
  self.tail = undefined;
  let _tmp = old_head;
  while (true) {
    const _param = _tmp;
    if (_param === undefined) {
      return;
    } else {
      const _Some = _param;
      const _x = _Some;
      const _idx = _x.idx;
      const _key = _x.key;
      const _value = _x.value;
      moonbitlang$core$builtin$$Map$set$96$(self, _key, _value);
      $bound_check(old_list, _idx);
      _tmp = old_list[_idx].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$93$(self) {
  const old_head = self.head;
  const old_list = self.list;
  const new_capacity = self.capacity << 1;
  self.entries = $make_array_len_and_init(new_capacity, undefined);
  self.list = $make_array_len_and_init(new_capacity, { prev: undefined, next: undefined });
  self.capacity = new_capacity;
  self.capacity_mask = new_capacity - 1 | 0;
  self.growAt = moonbitlang$core$builtin$$calc_grow_threshold(self.capacity);
  self.size = 0;
  self.head = undefined;
  self.tail = undefined;
  let _tmp = old_head;
  while (true) {
    const _param = _tmp;
    if (_param === undefined) {
      return;
    } else {
      const _Some = _param;
      const _x = _Some;
      const _idx = _x.idx;
      const _key = _x.key;
      const _value = _x.value;
      moonbitlang$core$builtin$$Map$set$93$(self, _key, _value);
      $bound_check(old_list, _idx);
      _tmp = old_list[_idx].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$90$(self) {
  const old_head = self.head;
  const old_list = self.list;
  const new_capacity = self.capacity << 1;
  self.entries = $make_array_len_and_init(new_capacity, undefined);
  self.list = $make_array_len_and_init(new_capacity, { prev: undefined, next: undefined });
  self.capacity = new_capacity;
  self.capacity_mask = new_capacity - 1 | 0;
  self.growAt = moonbitlang$core$builtin$$calc_grow_threshold(self.capacity);
  self.size = 0;
  self.head = undefined;
  self.tail = undefined;
  let _tmp = old_head;
  while (true) {
    const _param = _tmp;
    if (_param === undefined) {
      return;
    } else {
      const _Some = _param;
      const _x = _Some;
      const _idx = _x.idx;
      const _key = _x.key;
      const _value = _x.value;
      moonbitlang$core$builtin$$Map$set$90$(self, _key, _value);
      $bound_check(old_list, _idx);
      _tmp = old_list[_idx].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$98$(self) {
  const old_head = self.head;
  const old_list = self.list;
  const new_capacity = self.capacity << 1;
  self.entries = $make_array_len_and_init(new_capacity, undefined);
  self.list = $make_array_len_and_init(new_capacity, { prev: undefined, next: undefined });
  self.capacity = new_capacity;
  self.capacity_mask = new_capacity - 1 | 0;
  self.growAt = moonbitlang$core$builtin$$calc_grow_threshold(self.capacity);
  self.size = 0;
  self.head = undefined;
  self.tail = undefined;
  let _tmp = old_head;
  while (true) {
    const _param = _tmp;
    if (_param === undefined) {
      return;
    } else {
      const _Some = _param;
      const _x = _Some;
      const _idx = _x.idx;
      const _key = _x.key;
      const _value = _x.value;
      moonbitlang$core$builtin$$Map$set$98$(self, _key, _value);
      $bound_check(old_list, _idx);
      _tmp = old_list[_idx].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$0$(self) {
  const old_head = self.head;
  const old_list = self.list;
  const new_capacity = self.capacity << 1;
  self.entries = $make_array_len_and_init(new_capacity, undefined);
  self.list = $make_array_len_and_init(new_capacity, { prev: undefined, next: undefined });
  self.capacity = new_capacity;
  self.capacity_mask = new_capacity - 1 | 0;
  self.growAt = moonbitlang$core$builtin$$calc_grow_threshold(self.capacity);
  self.size = 0;
  self.head = undefined;
  self.tail = undefined;
  let _tmp = old_head;
  while (true) {
    const _param = _tmp;
    if (_param === undefined) {
      return;
    } else {
      const _Some = _param;
      const _x = _Some;
      const _idx = _x.idx;
      const _key = _x.key;
      const _value = _x.value;
      moonbitlang$core$builtin$$Map$set$0$(self, _key, _value);
      $bound_check(old_list, _idx);
      _tmp = old_list[_idx].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$from_array$92$(arr) {
  const m = moonbitlang$core$builtin$$Map$new$92$(arr.length);
  moonbitlang$core$array$$Array$each$100$(arr, (e) => {
    moonbitlang$core$builtin$$Map$set$92$(m, e._0, e._1);
  });
  return m;
}
function moonbitlang$core$builtin$$Map$from_array$94$(arr) {
  const m = moonbitlang$core$builtin$$Map$new$94$(arr.length);
  moonbitlang$core$array$$Array$each$101$(arr, (e) => {
    moonbitlang$core$builtin$$Map$set$94$(m, e._0, e._1);
  });
  return m;
}
function moonbitlang$core$builtin$$Map$from_array$95$(arr) {
  const m = moonbitlang$core$builtin$$Map$new$95$(arr.length);
  moonbitlang$core$array$$Array$each$102$(arr, (e) => {
    moonbitlang$core$builtin$$Map$set$95$(m, e._0, e._1);
  });
  return m;
}
function moonbitlang$core$builtin$$Map$from_array$96$(arr) {
  const m = moonbitlang$core$builtin$$Map$new$96$(arr.length);
  moonbitlang$core$array$$Array$each$103$(arr, (e) => {
    moonbitlang$core$builtin$$Map$set$96$(m, e._0, e._1);
  });
  return m;
}
function moonbitlang$core$builtin$$Map$from_array$67$(arr) {
  const m = moonbitlang$core$builtin$$Map$new$67$(arr.length);
  moonbitlang$core$array$$Array$each$7$(arr, (e) => {
    moonbitlang$core$builtin$$Map$set$67$(m, e._0, e._1);
  });
  return m;
}
function moonbitlang$core$builtin$$Map$from_array$57$(arr) {
  const m = moonbitlang$core$builtin$$Map$new$57$(arr.length);
  moonbitlang$core$array$$Array$each$60$(arr, (e) => {
    moonbitlang$core$builtin$$Map$set$57$(m, e._0, e._1);
  });
  return m;
}
function moonbitlang$core$builtin$$Map$from_array$97$(arr) {
  const m = moonbitlang$core$builtin$$Map$new$97$(arr.length);
  moonbitlang$core$array$$Array$each$104$(arr, (e) => {
    moonbitlang$core$builtin$$Map$set$97$(m, e._0, e._1);
  });
  return m;
}
function moonbitlang$core$builtin$$Map$from_array$98$(arr) {
  const m = moonbitlang$core$builtin$$Map$new$98$(arr.length);
  moonbitlang$core$array$$Array$each$105$(arr, (e) => {
    moonbitlang$core$builtin$$Map$set$98$(m, e._0, e._1);
  });
  return m;
}
function moonbitlang$core$builtin$$Map$from_array$99$(arr) {
  const m = moonbitlang$core$builtin$$Map$new$99$(arr.length);
  moonbitlang$core$array$$Array$each$106$(arr, (e) => {
    moonbitlang$core$builtin$$Map$set$99$(m, e._0, e._1);
  });
  return m;
}
function moonbitlang$core$builtin$$Map$from_array$0$(arr) {
  const m = moonbitlang$core$builtin$$Map$new$0$(arr.length);
  moonbitlang$core$array$$Array$each$107$(arr, (e) => {
    moonbitlang$core$builtin$$Map$set$0$(m, e._0, e._1);
  });
  return m;
}
function moonbitlang$core$builtin$$Map$op_set$92$(self, key, value) {
  moonbitlang$core$builtin$$Map$set$92$(self, key, value);
}
function moonbitlang$core$builtin$$Map$op_set$97$(self, key, value) {
  moonbitlang$core$builtin$$Map$set$97$(self, key, value);
}
function moonbitlang$core$builtin$$Map$op_set$94$(self, key, value) {
  moonbitlang$core$builtin$$Map$set$94$(self, key, value);
}
function moonbitlang$core$builtin$$Map$op_set$91$(self, key, value) {
  moonbitlang$core$builtin$$Map$set$91$(self, key, value);
}
function moonbitlang$core$builtin$$Map$op_set$95$(self, key, value) {
  moonbitlang$core$builtin$$Map$set$95$(self, key, value);
}
function moonbitlang$core$builtin$$Map$op_set$93$(self, key, value) {
  moonbitlang$core$builtin$$Map$set$93$(self, key, value);
}
function moonbitlang$core$builtin$$Map$op_set$96$(self, key, value) {
  moonbitlang$core$builtin$$Map$set$96$(self, key, value);
}
function moonbitlang$core$builtin$$Map$op_set$67$(self, key, value) {
  moonbitlang$core$builtin$$Map$set$67$(self, key, value);
}
function moonbitlang$core$builtin$$Map$get$97$(self, key) {
  const hash = moonbitlang$core$builtin$$Hash$hash$8$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _tmp$3 = self.entries;
    $bound_check(_tmp$3, idx);
    const _bind = _tmp$3[idx];
    if (_bind === undefined) {
      return Option$None$17$;
    } else {
      const _Some = _bind;
      const _entry = _Some;
      if (_entry.hash === hash && _entry.key === key) {
        return new Option$Some$17$(_entry.value);
      }
      if (i > _entry.psl) {
        return Option$None$17$;
      }
      const _tmp$4 = i + 1 | 0;
      const _tmp$5 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$4;
      _tmp$2 = _tmp$5;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get$93$(self, key) {
  const hash = moonbitlang$core$builtin$$Hash$hash$8$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _tmp$3 = self.entries;
    $bound_check(_tmp$3, idx);
    const _bind = _tmp$3[idx];
    if (_bind === undefined) {
      return undefined;
    } else {
      const _Some = _bind;
      const _entry = _Some;
      if (_entry.hash === hash && _entry.key === key) {
        return _entry.value;
      }
      if (i > _entry.psl) {
        return undefined;
      }
      const _tmp$4 = i + 1 | 0;
      const _tmp$5 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$4;
      _tmp$2 = _tmp$5;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get$90$(self, key) {
  const hash = moonbitlang$core$builtin$$Hash$hash$112$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _tmp$3 = self.entries;
    $bound_check(_tmp$3, idx);
    const _bind = _tmp$3[idx];
    if (_bind === undefined) {
      return undefined;
    } else {
      const _Some = _bind;
      const _entry = _Some;
      if (_entry.hash === hash && moonbitlang$core$builtin$$Eq$op_equal$62$(_entry.key, key)) {
        return _entry.value;
      }
      if (i > _entry.psl) {
        return undefined;
      }
      const _tmp$4 = i + 1 | 0;
      const _tmp$5 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$4;
      _tmp$2 = _tmp$5;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get$99$(self, key) {
  const hash = moonbitlang$core$builtin$$Hash$hash$110$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _tmp$3 = self.entries;
    $bound_check(_tmp$3, idx);
    const _bind = _tmp$3[idx];
    if (_bind === undefined) {
      return undefined;
    } else {
      const _Some = _bind;
      const _entry = _Some;
      if (_entry.hash === hash && _entry.key === key) {
        return _entry.value;
      }
      if (i > _entry.psl) {
        return undefined;
      }
      const _tmp$4 = i + 1 | 0;
      const _tmp$5 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$4;
      _tmp$2 = _tmp$5;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get$92$(self, key) {
  const hash = moonbitlang$core$builtin$$Hash$hash$8$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _tmp$3 = self.entries;
    $bound_check(_tmp$3, idx);
    const _bind = _tmp$3[idx];
    if (_bind === undefined) {
      return undefined;
    } else {
      const _Some = _bind;
      const _entry = _Some;
      if (_entry.hash === hash && _entry.key === key) {
        return _entry.value;
      }
      if (i > _entry.psl) {
        return undefined;
      }
      const _tmp$4 = i + 1 | 0;
      const _tmp$5 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$4;
      _tmp$2 = _tmp$5;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get$57$(self, key) {
  const hash = moonbitlang$core$builtin$$Hash$hash$59$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _tmp$3 = self.entries;
    $bound_check(_tmp$3, idx);
    const _bind = _tmp$3[idx];
    if (_bind === undefined) {
      return undefined;
    } else {
      const _Some = _bind;
      const _entry = _Some;
      if (_entry.hash === hash && moonbitlang$core$builtin$$Eq$op_equal$58$(_entry.key, key)) {
        return _entry.value;
      }
      if (i > _entry.psl) {
        return undefined;
      }
      const _tmp$4 = i + 1 | 0;
      const _tmp$5 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$4;
      _tmp$2 = _tmp$5;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get$94$(self, key) {
  const hash = moonbitlang$core$builtin$$Hash$hash$108$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _tmp$3 = self.entries;
    $bound_check(_tmp$3, idx);
    const _bind = _tmp$3[idx];
    if (_bind === undefined) {
      return undefined;
    } else {
      const _Some = _bind;
      const _entry = _Some;
      if (_entry.hash === hash && moonbitlang$core$builtin$$Eq$op_equal$38$(_entry.key, key)) {
        return _entry.value;
      }
      if (i > _entry.psl) {
        return undefined;
      }
      const _tmp$4 = i + 1 | 0;
      const _tmp$5 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$4;
      _tmp$2 = _tmp$5;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get$91$(self, key) {
  const hash = moonbitlang$core$builtin$$Hash$hash$109$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _tmp$3 = self.entries;
    $bound_check(_tmp$3, idx);
    const _bind = _tmp$3[idx];
    if (_bind === undefined) {
      return undefined;
    } else {
      const _Some = _bind;
      const _entry = _Some;
      if (_entry.hash === hash && moonbitlang$core$builtin$$Eq$op_equal$30$(_entry.key, key)) {
        return _entry.value;
      }
      if (i > _entry.psl) {
        return undefined;
      }
      const _tmp$4 = i + 1 | 0;
      const _tmp$5 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$4;
      _tmp$2 = _tmp$5;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get$67$(self, key) {
  const hash = moonbitlang$core$builtin$$Hash$hash$8$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _tmp$3 = self.entries;
    $bound_check(_tmp$3, idx);
    const _bind = _tmp$3[idx];
    if (_bind === undefined) {
      return undefined;
    } else {
      const _Some = _bind;
      const _entry = _Some;
      if (_entry.hash === hash && _entry.key === key) {
        return _entry.value;
      }
      if (i > _entry.psl) {
        return undefined;
      }
      const _tmp$4 = i + 1 | 0;
      const _tmp$5 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$4;
      _tmp$2 = _tmp$5;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get$95$(self, key) {
  const hash = moonbitlang$core$builtin$$Hash$hash$8$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _tmp$3 = self.entries;
    $bound_check(_tmp$3, idx);
    const _bind = _tmp$3[idx];
    if (_bind === undefined) {
      return undefined;
    } else {
      const _Some = _bind;
      const _entry = _Some;
      if (_entry.hash === hash && _entry.key === key) {
        return _entry.value;
      }
      if (i > _entry.psl) {
        return undefined;
      }
      const _tmp$4 = i + 1 | 0;
      const _tmp$5 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$4;
      _tmp$2 = _tmp$5;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get$96$(self, key) {
  const hash = moonbitlang$core$builtin$$Hash$hash$111$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _tmp$3 = self.entries;
    $bound_check(_tmp$3, idx);
    const _bind = _tmp$3[idx];
    if (_bind === undefined) {
      return undefined;
    } else {
      const _Some = _bind;
      const _entry = _Some;
      if (_entry.hash === hash && moonbitlang$core$builtin$$Eq$op_equal$37$(_entry.key, key)) {
        return _entry.value;
      }
      if (i > _entry.psl) {
        return undefined;
      }
      const _tmp$4 = i + 1 | 0;
      const _tmp$5 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$4;
      _tmp$2 = _tmp$5;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get$0$(self, key) {
  const hash = moonbitlang$core$builtin$$Hash$hash$110$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _tmp$3 = self.entries;
    $bound_check(_tmp$3, idx);
    const _bind = _tmp$3[idx];
    if (_bind === undefined) {
      return undefined;
    } else {
      const _Some = _bind;
      const _entry = _Some;
      if (_entry.hash === hash && _entry.key === key) {
        return _entry.value;
      }
      if (i > _entry.psl) {
        return undefined;
      }
      const _tmp$4 = i + 1 | 0;
      const _tmp$5 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$4;
      _tmp$2 = _tmp$5;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$op_get$97$(self, key) {
  return moonbitlang$core$builtin$$Map$get$97$(self, key);
}
function moonbitlang$core$builtin$$Map$op_get$93$(self, key) {
  return moonbitlang$core$builtin$$Map$get$93$(self, key);
}
function moonbitlang$core$builtin$$Map$op_get$92$(self, key) {
  return moonbitlang$core$builtin$$Map$get$92$(self, key);
}
function moonbitlang$core$builtin$$Map$op_get$94$(self, key) {
  return moonbitlang$core$builtin$$Map$get$94$(self, key);
}
function moonbitlang$core$builtin$$Map$op_get$91$(self, key) {
  return moonbitlang$core$builtin$$Map$get$91$(self, key);
}
function moonbitlang$core$builtin$$Map$op_get$67$(self, key) {
  return moonbitlang$core$builtin$$Map$get$67$(self, key);
}
function moonbitlang$core$builtin$$Map$op_get$95$(self, key) {
  return moonbitlang$core$builtin$$Map$get$95$(self, key);
}
function moonbitlang$core$builtin$$Map$op_get$96$(self, key) {
  return moonbitlang$core$builtin$$Map$get$96$(self, key);
}
function moonbitlang$core$builtin$$Map$get_or_default$57$(self, key, default_) {
  const hash = moonbitlang$core$builtin$$Hash$hash$59$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _tmp$3 = self.entries;
    $bound_check(_tmp$3, idx);
    const _bind = _tmp$3[idx];
    if (_bind === undefined) {
      return default_;
    } else {
      const _Some = _bind;
      const _entry = _Some;
      if (_entry.hash === hash && moonbitlang$core$builtin$$Eq$op_equal$58$(_entry.key, key)) {
        return _entry.value;
      }
      if (i > _entry.psl) {
        return default_;
      }
      const _tmp$4 = i + 1 | 0;
      const _tmp$5 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$4;
      _tmp$2 = _tmp$5;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get_or_init$90$(self, key, default_) {
  const _bind = moonbitlang$core$builtin$$Map$get$90$(self, key);
  if (_bind === undefined) {
    const v = default_();
    moonbitlang$core$builtin$$Map$set$90$(self, key, v);
    return v;
  } else {
    const _Some = _bind;
    const _v = _Some;
    return _v;
  }
}
function moonbitlang$core$option$$Option$unwrap$6$(self) {
  if (self.$tag === 0) {
    return $panic();
  } else {
    const _Some = self;
    const _x = _Some._0;
    return _x;
  }
}
function moonbitlang$core$option$$Option$unwrap$113$(self) {
  if (self === undefined) {
    return $panic();
  } else {
    const _Some = self;
    const _x = _Some;
    return _x;
  }
}
function moonbitlang$core$option$$Option$unwrap$2$(self) {
  if (self === undefined) {
    return $panic();
  } else {
    const _Some = self;
    const _x = _Some;
    return _x;
  }
}
function moonbitlang$core$option$$Option$unwrap$8$(self) {
  if (self === undefined) {
    return $panic();
  } else {
    const _Some = self;
    const _x = _Some;
    return _x;
  }
}
function moonbitlang$core$option$$Option$unwrap$63$(self) {
  if (self.$tag === 0) {
    return $panic();
  } else {
    const _Some = self;
    const _x = _Some._0;
    return _x;
  }
}
function moonbitlang$core$option$$Option$unwrap$7$(self) {
  if (self === undefined) {
    return $panic();
  } else {
    const _Some = self;
    const _x = _Some;
    return _x;
  }
}
function moonbitlang$core$option$$Option$unwrap$28$(self) {
  if (self === undefined) {
    return $panic();
  } else {
    const _Some = self;
    const _x = _Some;
    return _x;
  }
}
function moonbitlang$core$option$$Option$unwrap$9$(self) {
  if (self === undefined) {
    return $panic();
  } else {
    const _Some = self;
    const _x = _Some;
    return _x;
  }
}
function moonbitlang$core$option$$Option$unwrap$10$(self) {
  if (self === undefined) {
    return $panic();
  } else {
    const _Some = self;
    const _x = _Some;
    return _x;
  }
}
function moonbitlang$core$option$$Option$unwrap$11$(self) {
  if (self === undefined) {
    return $panic();
  } else {
    const _Some = self;
    const _x = _Some;
    return _x;
  }
}
function moonbitlang$core$option$$Option$unwrap$114$(self) {
  if (self === undefined) {
    return $panic();
  } else {
    const _Some = self;
    const _x = _Some;
    return _x;
  }
}
function moonbitlang$core$builtin$$Map$size$98$(self) {
  return self.size;
}
function moonbitlang$core$array$$FixedArray$fill$115$(self, value) {
  const _end718 = self.length;
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i < _end718) {
      $bound_check(self, i);
      self[i] = value;
      _tmp = i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$builtin$$Map$clear$0$(self) {
  moonbitlang$core$array$$FixedArray$fill$115$(self.entries, undefined);
  self.size = 0;
  self.head = undefined;
  self.tail = undefined;
}
function moonbitlang$core$builtin$$Iter$new$23$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$83$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$6$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$7$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$8$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$24$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$100$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$116$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$31$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$117$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$118$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$30$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$28$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$119$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$29$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$60$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$61$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$47$(f) {
  return f;
}
function moonbitlang$core$builtin$$Map$iter$92$(self) {
  return moonbitlang$core$builtin$$Iter$new$100$((yield_) => {
    let _tmp = self.head;
    while (true) {
      const _param = _tmp;
      if (_param === undefined) {
        return 1;
      } else {
        const _Some = _param;
        const _x = _Some;
        const _key = _x.key;
        const _value = _x.value;
        const _idx = _x.idx;
        const _bind = yield_({ _0: _key, _1: _value });
        if (_bind === 1) {
          const _tmp$2 = self.list;
          $bound_check(_tmp$2, _idx);
          _tmp = _tmp$2[_idx].next;
          continue;
        } else {
          return 0;
        }
      }
    }
  });
}
function moonbitlang$core$builtin$$Map$iter$91$(self) {
  return moonbitlang$core$builtin$$Iter$new$117$((yield_) => {
    let _tmp = self.head;
    while (true) {
      const _param = _tmp;
      if (_param === undefined) {
        return 1;
      } else {
        const _Some = _param;
        const _x = _Some;
        const _key = _x.key;
        const _value = _x.value;
        const _idx = _x.idx;
        const _bind = yield_({ _0: _key, _1: _value });
        if (_bind === 1) {
          const _tmp$2 = self.list;
          $bound_check(_tmp$2, _idx);
          _tmp = _tmp$2[_idx].next;
          continue;
        } else {
          return 0;
        }
      }
    }
  });
}
function moonbitlang$core$builtin$$Map$iter$57$(self) {
  return moonbitlang$core$builtin$$Iter$new$60$((yield_) => {
    let _tmp = self.head;
    while (true) {
      const _param = _tmp;
      if (_param === undefined) {
        return 1;
      } else {
        const _Some = _param;
        const _x = _Some;
        const _key = _x.key;
        const _value = _x.value;
        const _idx = _x.idx;
        const _bind = yield_({ _0: _key, _1: _value });
        if (_bind === 1) {
          const _tmp$2 = self.list;
          $bound_check(_tmp$2, _idx);
          _tmp = _tmp$2[_idx].next;
          continue;
        } else {
          return 0;
        }
      }
    }
  });
}
function moonbitlang$core$builtin$$Iter2$new$97$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter2$new$94$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter2$new$93$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter2$new$55$(f) {
  return f;
}
function moonbitlang$core$builtin$$Map$iter2$97$(self) {
  return moonbitlang$core$builtin$$Iter2$new$97$((yield_) => {
    let _tmp = self.head;
    while (true) {
      const _param = _tmp;
      if (_param === undefined) {
        return 1;
      } else {
        const _Some = _param;
        const _x = _Some;
        const _key = _x.key;
        const _value = _x.value;
        const _idx = _x.idx;
        const _bind = yield_(_key, _value);
        if (_bind === 1) {
          const _tmp$2 = self.list;
          $bound_check(_tmp$2, _idx);
          _tmp = _tmp$2[_idx].next;
          continue;
        } else {
          return 0;
        }
      }
    }
  });
}
function moonbitlang$core$builtin$$Map$iter2$94$(self) {
  return moonbitlang$core$builtin$$Iter2$new$94$((yield_) => {
    let _tmp = self.head;
    while (true) {
      const _param = _tmp;
      if (_param === undefined) {
        return 1;
      } else {
        const _Some = _param;
        const _x = _Some;
        const _key = _x.key;
        const _value = _x.value;
        const _idx = _x.idx;
        const _bind = yield_(_key, _value);
        if (_bind === 1) {
          const _tmp$2 = self.list;
          $bound_check(_tmp$2, _idx);
          _tmp = _tmp$2[_idx].next;
          continue;
        } else {
          return 0;
        }
      }
    }
  });
}
function moonbitlang$core$builtin$$Map$iter2$93$(self) {
  return moonbitlang$core$builtin$$Iter2$new$93$((yield_) => {
    let _tmp = self.head;
    while (true) {
      const _param = _tmp;
      if (_param === undefined) {
        return 1;
      } else {
        const _Some = _param;
        const _x = _Some;
        const _key = _x.key;
        const _value = _x.value;
        const _idx = _x.idx;
        const _bind = yield_(_key, _value);
        if (_bind === 1) {
          const _tmp$2 = self.list;
          $bound_check(_tmp$2, _idx);
          _tmp = _tmp$2[_idx].next;
          continue;
        } else {
          return 0;
        }
      }
    }
  });
}
function moonbitlang$core$builtin$$Map$keys$93$(self) {
  return moonbitlang$core$builtin$$Iter$new$8$((yield_) => {
    let _tmp = self.head;
    while (true) {
      const _param = _tmp;
      if (_param === undefined) {
        return 1;
      } else {
        const _Some = _param;
        const _x = _Some;
        const _key = _x.key;
        const _idx = _x.idx;
        const _bind = yield_(_key);
        if (_bind === 1) {
          const _tmp$2 = self.list;
          $bound_check(_tmp$2, _idx);
          _tmp = _tmp$2[_idx].next;
          continue;
        } else {
          return 0;
        }
      }
    }
  });
}
function moonbitlang$core$builtin$$Map$from_iter$99$(iter) {
  const m = moonbitlang$core$builtin$$Map$from_array$99$([]);
  iter((e) => {
    moonbitlang$core$builtin$$Map$set$99$(m, e._0, e._1);
    return 1;
  });
  return m;
}
function moonbitlang$core$array$$ArrayView$length$23$(self) {
  return self.len;
}
function moonbitlang$core$array$$ArrayView$length$72$(self) {
  return self.len;
}
function moonbitlang$core$array$$ArrayView$length$49$(self) {
  return self.len;
}
function moonbitlang$core$array$$ArrayView$length$50$(self) {
  return self.len;
}
function moonbitlang$core$array$$ArrayView$op_get$72$(self, index) {
  if (index >= 0 && index < self.len) {
    const _tmp = self.buf;
    const _tmp$2 = self.start + index | 0;
    $bound_check(_tmp, _tmp$2);
    return _tmp[_tmp$2];
  } else {
    return moonbitlang$core$builtin$$abort$72$(`index out of bounds: the len is from 0 to ${moonbitlang$core$builtin$$Show$to_string$8$(self.len)} but the index is ${moonbitlang$core$builtin$$Show$to_string$8$(index)}`);
  }
}
function moonbitlang$core$array$$ArrayView$op_get$49$(self, index) {
  if (index >= 0 && index < self.len) {
    const _tmp = self.buf;
    const _tmp$2 = self.start + index | 0;
    $bound_check(_tmp, _tmp$2);
    return _tmp[_tmp$2];
  } else {
    return moonbitlang$core$builtin$$abort$49$(`index out of bounds: the len is from 0 to ${moonbitlang$core$builtin$$Show$to_string$8$(self.len)} but the index is ${moonbitlang$core$builtin$$Show$to_string$8$(index)}`);
  }
}
function moonbitlang$core$array$$ArrayView$op_get$50$(self, index) {
  if (index >= 0 && index < self.len) {
    const _tmp = self.buf;
    const _tmp$2 = self.start + index | 0;
    $bound_check(_tmp, _tmp$2);
    return _tmp[_tmp$2];
  } else {
    return moonbitlang$core$builtin$$abort$50$(`index out of bounds: the len is from 0 to ${moonbitlang$core$builtin$$Show$to_string$8$(self.len)} but the index is ${moonbitlang$core$builtin$$Show$to_string$8$(index)}`);
  }
}
function moonbitlang$core$array$$ArrayView$swap$49$(self, i, j) {
  if (i >= 0 && (i < self.len && (j >= 0 && j < self.len))) {
    const _tmp = self.buf;
    const _tmp$2 = self.start + i | 0;
    $bound_check(_tmp, _tmp$2);
    const temp = _tmp[_tmp$2];
    const _tmp$3 = self.buf;
    const _tmp$4 = self.start + i | 0;
    const _tmp$5 = self.buf;
    const _tmp$6 = self.start + j | 0;
    $bound_check(_tmp$5, _tmp$6);
    $bound_check(_tmp$3, _tmp$4);
    _tmp$3[_tmp$4] = _tmp$5[_tmp$6];
    const _tmp$7 = self.buf;
    const _tmp$8 = self.start + j | 0;
    $bound_check(_tmp$7, _tmp$8);
    _tmp$7[_tmp$8] = temp;
    return;
  } else {
    moonbitlang$core$builtin$$abort$21$(`index out of bounds: the len is from 0 to ${moonbitlang$core$builtin$$Show$to_string$8$(self.len)} but the index is (${moonbitlang$core$builtin$$Show$to_string$8$(i)}, ${moonbitlang$core$builtin$$Show$to_string$8$(j)})`);
    return;
  }
}
function moonbitlang$core$array$$ArrayView$swap$50$(self, i, j) {
  if (i >= 0 && (i < self.len && (j >= 0 && j < self.len))) {
    const _tmp = self.buf;
    const _tmp$2 = self.start + i | 0;
    $bound_check(_tmp, _tmp$2);
    const temp = _tmp[_tmp$2];
    const _tmp$3 = self.buf;
    const _tmp$4 = self.start + i | 0;
    const _tmp$5 = self.buf;
    const _tmp$6 = self.start + j | 0;
    $bound_check(_tmp$5, _tmp$6);
    $bound_check(_tmp$3, _tmp$4);
    _tmp$3[_tmp$4] = _tmp$5[_tmp$6];
    const _tmp$7 = self.buf;
    const _tmp$8 = self.start + j | 0;
    $bound_check(_tmp$7, _tmp$8);
    _tmp$7[_tmp$8] = temp;
    return;
  } else {
    moonbitlang$core$builtin$$abort$21$(`index out of bounds: the len is from 0 to ${moonbitlang$core$builtin$$Show$to_string$8$(self.len)} but the index is (${moonbitlang$core$builtin$$Show$to_string$8$(i)}, ${moonbitlang$core$builtin$$Show$to_string$8$(j)})`);
    return;
  }
}
function moonbitlang$core$array$$Array$op_as_view$23$(self, start, end) {
  const len = self.length;
  let end$2;
  if (end === undefined) {
    end$2 = len;
  } else {
    const _Some = end;
    const _end = _Some;
    end$2 = _end < 0 ? len + _end | 0 : _end;
  }
  const start$2 = start < 0 ? len + start | 0 : start;
  return start$2 >= 0 && (start$2 <= end$2 && end$2 <= len) ? { buf: self, start: start$2, len: end$2 - start$2 | 0 } : moonbitlang$core$builtin$$abort$70$("View index out of bounds");
}
function moonbitlang$core$array$$Array$op_as_view$72$(self, start, end) {
  const len = self.length;
  let end$2;
  if (end === undefined) {
    end$2 = len;
  } else {
    const _Some = end;
    const _end = _Some;
    end$2 = _end < 0 ? len + _end | 0 : _end;
  }
  const start$2 = start < 0 ? len + start | 0 : start;
  return start$2 >= 0 && (start$2 <= end$2 && end$2 <= len) ? { buf: self, start: start$2, len: end$2 - start$2 | 0 } : moonbitlang$core$builtin$$abort$71$("View index out of bounds");
}
function moonbitlang$core$array$$Array$op_as_view$49$(self, start, end) {
  const len = self.length;
  let end$2;
  if (end === undefined) {
    end$2 = len;
  } else {
    const _Some = end;
    const _end = _Some;
    end$2 = _end < 0 ? len + _end | 0 : _end;
  }
  const start$2 = start < 0 ? len + start | 0 : start;
  return start$2 >= 0 && (start$2 <= end$2 && end$2 <= len) ? { buf: self, start: start$2, len: end$2 - start$2 | 0 } : moonbitlang$core$builtin$$abort$73$("View index out of bounds");
}
function moonbitlang$core$array$$Array$op_as_view$50$(self, start, end) {
  const len = self.length;
  let end$2;
  if (end === undefined) {
    end$2 = len;
  } else {
    const _Some = end;
    const _end = _Some;
    end$2 = _end < 0 ? len + _end | 0 : _end;
  }
  const start$2 = start < 0 ? len + start | 0 : start;
  return start$2 >= 0 && (start$2 <= end$2 && end$2 <= len) ? { buf: self, start: start$2, len: end$2 - start$2 | 0 } : moonbitlang$core$builtin$$abort$75$("View index out of bounds");
}
function moonbitlang$core$array$$Array$op_as_view$46$start$46$default$49$() {
  return 0;
}
function moonbitlang$core$array$$Array$op_as_view$46$start$46$default$50$() {
  return 0;
}
function moonbitlang$core$array$$ArrayView$op_as_view$49$(self, start, end) {
  const len = moonbitlang$core$array$$ArrayView$length$49$(self);
  let end$2;
  if (end === undefined) {
    end$2 = len;
  } else {
    const _Some = end;
    const _end = _Some;
    end$2 = _end < 0 ? len + _end | 0 : _end;
  }
  const start$2 = start < 0 ? len + start | 0 : start;
  return start$2 >= 0 && (start$2 <= end$2 && end$2 <= len) ? { buf: self.buf, start: self.start + start$2 | 0, len: end$2 - start$2 | 0 } : moonbitlang$core$builtin$$abort$73$("View index out of bounds");
}
function moonbitlang$core$array$$ArrayView$op_as_view$50$(self, start, end) {
  const len = moonbitlang$core$array$$ArrayView$length$50$(self);
  let end$2;
  if (end === undefined) {
    end$2 = len;
  } else {
    const _Some = end;
    const _end = _Some;
    end$2 = _end < 0 ? len + _end | 0 : _end;
  }
  const start$2 = start < 0 ? len + start | 0 : start;
  return start$2 >= 0 && (start$2 <= end$2 && end$2 <= len) ? { buf: self.buf, start: self.start + start$2 | 0, len: end$2 - start$2 | 0 } : moonbitlang$core$builtin$$abort$75$("View index out of bounds");
}
function moonbitlang$core$array$$Array$new$24$(capacity) {
  return [];
}
function moonbitlang$core$array$$Array$new$30$(capacity) {
  return [];
}
function moonbitlang$core$array$$Array$push$23$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$24$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$72$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$47$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$120$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$85$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$49$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$121$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$8$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$50$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$122$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$117$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$25$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$58$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$84$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$105$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$61$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$116$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$123$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$30$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$28$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$64$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$124$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$119$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$65$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$unsafe_pop$72$(self) {
  return moonbitlang$core$builtin$$JSArray$pop(self);
}
function moonbitlang$core$array$$Array$unsafe_pop$28$(self) {
  return moonbitlang$core$builtin$$JSArray$pop(self);
}
function moonbitlang$core$array$$Array$unsafe_pop$124$(self) {
  return moonbitlang$core$builtin$$JSArray$pop(self);
}
function moonbitlang$core$array$$Array$pop$28$(self) {
  if (self.length === 0) {
    return undefined;
  } else {
    const v = moonbitlang$core$array$$Array$unsafe_pop$28$(self);
    return v;
  }
}
function moonbitlang$core$array$$Array$pop$124$(self) {
  if (self.length === 0) {
    return undefined;
  } else {
    const v = moonbitlang$core$array$$Array$unsafe_pop$124$(self);
    return v;
  }
}
function moonbitlang$core$array$$Array$unsafe_grow_to_length$30$(self, new_len) {
  if (new_len >= self.length) {
    moonbitlang$core$builtin$$JSArray$set_length(self, new_len);
    return;
  } else {
    $panic();
    return;
  }
}
function moonbitlang$core$builtin$$Hasher$new(seed) {
  return { acc: (seed >>> 0) + (374761393 >>> 0) | 0 };
}
function moonbitlang$core$builtin$$Hasher$new$46$seed$46$default() {
  return 0;
}
function moonbitlang$core$builtin$$Hasher$consume4(self, input) {
  self.acc = Math.imul(moonbitlang$core$builtin$$rotl((self.acc >>> 0) + ((Math.imul(input, -1028477379) | 0) >>> 0) | 0, 17), 668265263) | 0;
}
function moonbitlang$core$builtin$$Hasher$combine_uint(self, value) {
  self.acc = (self.acc >>> 0) + (4 >>> 0) | 0;
  moonbitlang$core$builtin$$Hasher$consume4(self, value);
}
function moonbitlang$core$builtin$$Hasher$combine_int(self, value) {
  moonbitlang$core$builtin$$Hasher$combine_uint(self, value);
}
function moonbitlang$core$builtin$$Hasher$combine_string(self, value) {
  const _end1546 = value.length;
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i < _end1546) {
      moonbitlang$core$builtin$$Hasher$combine_uint(self, value.charCodeAt(i));
      _tmp = i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$builtin$$Hasher$avalanche(self) {
  let acc = self.acc;
  acc = acc ^ (acc >>> 15 | 0);
  acc = Math.imul(acc, -2048144777) | 0;
  acc = acc ^ (acc >>> 13 | 0);
  acc = Math.imul(acc, -1028477379) | 0;
  acc = acc ^ (acc >>> 16 | 0);
  return acc;
}
function moonbitlang$core$builtin$$Hasher$finalize(self) {
  return moonbitlang$core$builtin$$Hasher$avalanche(self);
}
function moonbitlang$core$builtin$$Hash$hash_combine$23$(self, hasher) {
  moonbitlang$core$builtin$$Hasher$combine_string(hasher, self);
}
function moonbitlang$core$builtin$$Hash$hash$8$(self) {
  const self$2 = self;
  let x = self$2 ^ (self$2 >>> 17 | 0);
  x = Math.imul(x, -312814405) | 0;
  x = x ^ (x >>> 11 | 0);
  x = Math.imul(x, -1404298415) | 0;
  x = x ^ (x >>> 15 | 0);
  x = Math.imul(x, 830770091) | 0;
  x = x ^ (x >>> 14 | 0);
  return x;
}
function moonbitlang$core$builtin$$Hash$hash_combine$8$(self, hasher) {
  moonbitlang$core$builtin$$Hasher$combine_int(hasher, self);
}
function moonbitlang$core$builtin$$Hash$hash_combine$69$(self, hasher) {
  if (self === undefined) {
    moonbitlang$core$builtin$$Hasher$combine_int(hasher, 0);
    return;
  } else {
    const _Some = self;
    const _x = _Some;
    moonbitlang$core$builtin$$Hasher$combine_int(hasher, 1);
    moonbitlang$core$builtin$$Hasher$combine$8$(hasher, _x);
    return;
  }
}
function moonbitlang$core$array$$FixedArray$unsafe_blit$8$(dst, dst_offset, src, src_offset, len) {
  if (dst === src && dst_offset < src_offset) {
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < len) {
        const _tmp$2 = dst_offset + i | 0;
        const _tmp$3 = src_offset + i | 0;
        $bound_check(src, _tmp$3);
        $bound_check(dst, _tmp$2);
        dst[_tmp$2] = src[_tmp$3];
        _tmp = i + 1 | 0;
        continue;
      } else {
        return;
      }
    }
  } else {
    let _tmp = len - 1 | 0;
    while (true) {
      const i = _tmp;
      if (i >= 0) {
        const _tmp$2 = dst_offset + i | 0;
        const _tmp$3 = src_offset + i | 0;
        $bound_check(src, _tmp$3);
        $bound_check(dst, _tmp$2);
        dst[_tmp$2] = src[_tmp$3];
        _tmp = i - 1 | 0;
        continue;
      } else {
        return;
      }
    }
  }
}
function moonbitlang$core$array$$FixedArray$unsafe_blit$2$(dst, dst_offset, src, src_offset, len) {
  if (dst === src && dst_offset < src_offset) {
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < len) {
        const _tmp$2 = dst_offset + i | 0;
        const _tmp$3 = src_offset + i | 0;
        $bound_check(src, _tmp$3);
        $bound_check(dst, _tmp$2);
        dst[_tmp$2] = src[_tmp$3];
        _tmp = i + 1 | 0;
        continue;
      } else {
        return;
      }
    }
  } else {
    let _tmp = len - 1 | 0;
    while (true) {
      const i = _tmp;
      if (i >= 0) {
        const _tmp$2 = dst_offset + i | 0;
        const _tmp$3 = src_offset + i | 0;
        $bound_check(src, _tmp$3);
        $bound_check(dst, _tmp$2);
        dst[_tmp$2] = src[_tmp$3];
        _tmp = i - 1 | 0;
        continue;
      } else {
        return;
      }
    }
  }
}
function moonbitlang$core$array$$FixedArray$unsafe_blit$3$(dst, dst_offset, src, src_offset, len) {
  if (dst === src && dst_offset < src_offset) {
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < len) {
        const _tmp$2 = dst_offset + i | 0;
        const _tmp$3 = src_offset + i | 0;
        $bound_check(src, _tmp$3);
        $bound_check(dst, _tmp$2);
        dst[_tmp$2] = src[_tmp$3];
        _tmp = i + 1 | 0;
        continue;
      } else {
        return;
      }
    }
  } else {
    let _tmp = len - 1 | 0;
    while (true) {
      const i = _tmp;
      if (i >= 0) {
        const _tmp$2 = dst_offset + i | 0;
        const _tmp$3 = src_offset + i | 0;
        $bound_check(src, _tmp$3);
        $bound_check(dst, _tmp$2);
        dst[_tmp$2] = src[_tmp$3];
        _tmp = i - 1 | 0;
        continue;
      } else {
        return;
      }
    }
  }
}
function moonbitlang$core$array$$FixedArray$unsafe_blit$47$(dst, dst_offset, src, src_offset, len) {
  if (dst === src && dst_offset < src_offset) {
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < len) {
        const _tmp$2 = dst_offset + i | 0;
        const _tmp$3 = src_offset + i | 0;
        $bound_check(src, _tmp$3);
        $bound_check(dst, _tmp$2);
        dst[_tmp$2] = src[_tmp$3];
        _tmp = i + 1 | 0;
        continue;
      } else {
        return;
      }
    }
  } else {
    let _tmp = len - 1 | 0;
    while (true) {
      const i = _tmp;
      if (i >= 0) {
        const _tmp$2 = dst_offset + i | 0;
        const _tmp$3 = src_offset + i | 0;
        $bound_check(src, _tmp$3);
        $bound_check(dst, _tmp$2);
        dst[_tmp$2] = src[_tmp$3];
        _tmp = i - 1 | 0;
        continue;
      } else {
        return;
      }
    }
  }
}
function moonbitlang$core$array$$FixedArray$unsafe_blit$125$(dst, dst_offset, src, src_offset, len) {
  if (dst === src && dst_offset < src_offset) {
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < len) {
        const _tmp$2 = dst_offset + i | 0;
        const _tmp$3 = src_offset + i | 0;
        $bound_check(src, _tmp$3);
        $bound_check(dst, _tmp$2);
        dst[_tmp$2] = src[_tmp$3];
        _tmp = i + 1 | 0;
        continue;
      } else {
        return;
      }
    }
  } else {
    let _tmp = len - 1 | 0;
    while (true) {
      const i = _tmp;
      if (i >= 0) {
        const _tmp$2 = dst_offset + i | 0;
        const _tmp$3 = src_offset + i | 0;
        $bound_check(src, _tmp$3);
        $bound_check(dst, _tmp$2);
        dst[_tmp$2] = src[_tmp$3];
        _tmp = i - 1 | 0;
        continue;
      } else {
        return;
      }
    }
  }
}
function moonbitlang$core$array$$FixedArray$blit_to$2$(self, dst, len, src_offset, dst_offset) {
  if ((dst_offset + len | 0) > dst.length || (src_offset + len | 0) > self.length) {
    $panic();
  }
  moonbitlang$core$array$$FixedArray$unsafe_blit$2$(dst, dst_offset, self, src_offset, len);
}
function moonbitlang$core$array$$FixedArray$blit_to$3$(self, dst, len, src_offset, dst_offset) {
  if ((dst_offset + len | 0) > dst.length || (src_offset + len | 0) > self.length) {
    $panic();
  }
  moonbitlang$core$array$$FixedArray$unsafe_blit$3$(dst, dst_offset, self, src_offset, len);
}
function moonbitlang$core$array$$FixedArray$blit_to$47$(self, dst, len, src_offset, dst_offset) {
  if ((dst_offset + len | 0) > dst.length || (src_offset + len | 0) > self.length) {
    $panic();
  }
  moonbitlang$core$array$$FixedArray$unsafe_blit$47$(dst, dst_offset, self, src_offset, len);
}
function moonbitlang$core$array$$FixedArray$blit_to$46$src_offset$46$default$2$() {
  return 0;
}
function moonbitlang$core$array$$FixedArray$blit_to$46$src_offset$46$default$3$() {
  return 0;
}
function moonbitlang$core$array$$FixedArray$blit_to$46$dst_offset$46$default$2$() {
  return 0;
}
function moonbitlang$core$array$$FixedArray$blit_to$46$dst_offset$46$default$3$() {
  return 0;
}
function moonbitlang$core$array$$FixedArray$blit_to$46$dst_offset$46$default$47$() {
  return 0;
}
function moonbitlang$core$int$$Int$to_string(self, radix) {
  const buf = moonbitlang$core$builtin$$StringBuilder$new(moonbitlang$core$int$$Int$output_size_hint(radix));
  moonbitlang$core$int$$Int$output(self, { self: buf, method_0: moonbitlang$core$builtin$$Logger$write_string$22$, method_1: moonbitlang$core$builtin$$Logger$write_substring$22$, method_2: moonbitlang$core$builtin$$Logger$write_char$22$ }, radix);
  return moonbitlang$core$builtin$$StringBuilder$to_string(buf);
}
function moonbitlang$core$builtin$$Show$to_string$8$(self) {
  return moonbitlang$core$int$$Int$to_string(self, 10);
}
function moonbitlang$core$bytes$$Bytes$make(len, init) {
  if (len < 0) {
    return $bytes_literal$0;
  }
  return $makebytes(len, init);
}
function moonbitlang$core$array$$Array$map$126$(self, f) {
  const arr = new Array(self.length);
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      arr[_i] = f(v);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return arr;
}
function moonbitlang$core$array$$Array$map$127$(self, f) {
  const arr = new Array(self.length);
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      arr[_i] = f(v);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return arr;
}
function moonbitlang$core$array$$Array$map$128$(self, f) {
  const arr = new Array(self.length);
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      arr[_i] = f(v);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return arr;
}
function moonbitlang$core$array$$Array$map$129$(self, f) {
  const arr = new Array(self.length);
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      arr[_i] = f(v);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return arr;
}
function moonbitlang$core$array$$Array$map$130$(self, f) {
  const arr = new Array(self.length);
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      arr[_i] = f(v);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return arr;
}
function moonbitlang$core$array$$Array$map$131$(self, f) {
  const arr = new Array(self.length);
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      arr[_i] = f(v);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return arr;
}
function moonbitlang$core$array$$Array$map$132$(self, f) {
  const arr = new Array(self.length);
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      arr[_i] = f(v);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return arr;
}
function moonbitlang$core$array$$Array$unsafe_blit$30$(dst, dst_offset, src, src_offset, len) {
  moonbitlang$core$array$$FixedArray$unsafe_blit$125$(dst, dst_offset, src, src_offset, len);
}
function moonbitlang$core$array$$Array$blit_to$30$(self, dst, len, src_offset, dst_offset) {
  if (len >= 0 && (dst_offset >= 0 && (src_offset >= 0 && (dst_offset <= dst.length && (src_offset + len | 0) <= self.length)))) {
    if ((dst_offset + len | 0) > dst.length) {
      moonbitlang$core$array$$Array$unsafe_grow_to_length$30$(dst, dst_offset + len | 0);
    }
    moonbitlang$core$array$$Array$unsafe_blit$30$(dst, dst_offset, self, src_offset, len);
    return;
  } else {
    $panic();
    return;
  }
}
function moonbitlang$core$array$$Array$make$20$(len, elem) {
  const arr = new Array(len);
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i < len) {
      arr[i] = elem;
      _tmp = i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return arr;
}
function moonbitlang$core$array$$Array$make$52$(len, elem) {
  const arr = new Array(len);
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i < len) {
      arr[i] = elem;
      _tmp = i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return arr;
}
function moonbitlang$core$array$$Array$make$8$(len, elem) {
  const arr = new Array(len);
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i < len) {
      arr[i] = elem;
      _tmp = i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return arr;
}
function moonbitlang$core$builtin$$Show$to_string$23$(self) {
  return self;
}
function moonbitlang$core$array$$Array$iter$83$(self) {
  return moonbitlang$core$builtin$$Iter$new$83$((yield_) => {
    const _len = self.length;
    let _tmp = 0;
    while (true) {
      const _i = _tmp;
      if (_i < _len) {
        const v = self[_i];
        const _bind = yield_(v);
        if (_bind === 1) {
        } else {
          return 0;
        }
        _tmp = _i + 1 | 0;
        continue;
      } else {
        return 1;
      }
    }
  });
}
function moonbitlang$core$array$$Array$iter$23$(self) {
  return moonbitlang$core$builtin$$Iter$new$23$((yield_) => {
    const _len = self.length;
    let _tmp = 0;
    while (true) {
      const _i = _tmp;
      if (_i < _len) {
        const v = self[_i];
        const _bind = yield_(v);
        if (_bind === 1) {
        } else {
          return 0;
        }
        _tmp = _i + 1 | 0;
        continue;
      } else {
        return 1;
      }
    }
  });
}
function moonbitlang$core$array$$Array$iter$116$(self) {
  return moonbitlang$core$builtin$$Iter$new$116$((yield_) => {
    const _len = self.length;
    let _tmp = 0;
    while (true) {
      const _i = _tmp;
      if (_i < _len) {
        const v = self[_i];
        const _bind = yield_(v);
        if (_bind === 1) {
        } else {
          return 0;
        }
        _tmp = _i + 1 | 0;
        continue;
      } else {
        return 1;
      }
    }
  });
}
function moonbitlang$core$array$$Array$iter$118$(self) {
  return moonbitlang$core$builtin$$Iter$new$118$((yield_) => {
    const _len = self.length;
    let _tmp = 0;
    while (true) {
      const _i = _tmp;
      if (_i < _len) {
        const v = self[_i];
        const _bind = yield_(v);
        if (_bind === 1) {
        } else {
          return 0;
        }
        _tmp = _i + 1 | 0;
        continue;
      } else {
        return 1;
      }
    }
  });
}
function moonbitlang$core$array$$Array$iter$8$(self) {
  return moonbitlang$core$builtin$$Iter$new$8$((yield_) => {
    const _len = self.length;
    let _tmp = 0;
    while (true) {
      const _i = _tmp;
      if (_i < _len) {
        const v = self[_i];
        const _bind = yield_(v);
        if (_bind === 1) {
        } else {
          return 0;
        }
        _tmp = _i + 1 | 0;
        continue;
      } else {
        return 1;
      }
    }
  });
}
function moonbitlang$core$array$$Array$iter$30$(self) {
  return moonbitlang$core$builtin$$Iter$new$30$((yield_) => {
    const _len = self.length;
    let _tmp = 0;
    while (true) {
      const _i = _tmp;
      if (_i < _len) {
        const v = self[_i];
        const _bind = yield_(v);
        if (_bind === 1) {
        } else {
          return 0;
        }
        _tmp = _i + 1 | 0;
        continue;
      } else {
        return 1;
      }
    }
  });
}
function moonbitlang$core$builtin$$Hash$hash$112$(self) {
  const _self = moonbitlang$core$builtin$$Hasher$new(moonbitlang$core$builtin$$Hasher$new$46$seed$46$default());
  moonbitlang$core$builtin$$Hasher$combine$2$(_self, self);
  return moonbitlang$core$builtin$$Hasher$finalize(_self);
}
function moonbitlang$core$builtin$$Hash$hash$59$(self) {
  const _self = moonbitlang$core$builtin$$Hasher$new(moonbitlang$core$builtin$$Hasher$new$46$seed$46$default());
  moonbitlang$core$builtin$$Hasher$combine$58$(_self, self);
  return moonbitlang$core$builtin$$Hasher$finalize(_self);
}
function moonbitlang$core$builtin$$Hash$hash$110$(self) {
  const _self = moonbitlang$core$builtin$$Hasher$new(moonbitlang$core$builtin$$Hasher$new$46$seed$46$default());
  moonbitlang$core$builtin$$Hasher$combine$23$(_self, self);
  return moonbitlang$core$builtin$$Hasher$finalize(_self);
}
function moonbitlang$core$builtin$$Hash$hash$108$(self) {
  const _self = moonbitlang$core$builtin$$Hasher$new(moonbitlang$core$builtin$$Hasher$new$46$seed$46$default());
  moonbitlang$core$builtin$$Hasher$combine$31$(_self, self);
  return moonbitlang$core$builtin$$Hasher$finalize(_self);
}
function moonbitlang$core$builtin$$Hash$hash$109$(self) {
  const _self = moonbitlang$core$builtin$$Hasher$new(moonbitlang$core$builtin$$Hasher$new$46$seed$46$default());
  moonbitlang$core$builtin$$Hasher$combine$30$(_self, self);
  return moonbitlang$core$builtin$$Hasher$finalize(_self);
}
function moonbitlang$core$builtin$$Hash$hash$111$(self) {
  const _self = moonbitlang$core$builtin$$Hasher$new(moonbitlang$core$builtin$$Hasher$new$46$seed$46$default());
  moonbitlang$core$builtin$$Hasher$combine$28$(_self, self);
  return moonbitlang$core$builtin$$Hasher$finalize(_self);
}
function moonbitlang$core$builtin$$Hash$hash$26$(self) {
  const _self = moonbitlang$core$builtin$$Hasher$new(moonbitlang$core$builtin$$Hasher$new$46$seed$46$default());
  moonbitlang$core$builtin$$Hasher$combine$25$(_self, self);
  return moonbitlang$core$builtin$$Hasher$finalize(_self);
}
function moonbitlang$core$builtin$$Show$to_string$133$(self) {
  const logger = moonbitlang$core$builtin$$StringBuilder$new(moonbitlang$core$builtin$$StringBuilder$new$46$size_hint$46$default());
  moonbitlang$core$builtin$$Show$output$120$(self, { self: logger, method_0: moonbitlang$core$builtin$$Logger$write_string$22$, method_1: moonbitlang$core$builtin$$Logger$write_substring$22$, method_2: moonbitlang$core$builtin$$Logger$write_char$22$ });
  return moonbitlang$core$builtin$$StringBuilder$to_string(logger);
}
function moonbitlang$core$builtin$$MyInt64$add_hi_lo(self, bhi, blo) {
  const _ahi = self.hi;
  const _alo = self.lo;
  const lo = _alo + blo | 0;
  const s = lo >> 31;
  const as_ = _alo >> 31;
  const bs = blo >> 31;
  const c = (as_ & bs | ~s & (as_ ^ bs)) & 1;
  const hi = (_ahi + bhi | 0) + c | 0;
  return { hi: hi, lo: lo };
}
function moonbitlang$core$builtin$$Add$op_add$134$(self, other) {
  return moonbitlang$core$builtin$$MyInt64$add_hi_lo(self, other.hi, other.lo);
}
function moonbitlang$core$builtin$$Sub$op_sub$134$(self, other) {
  return other.lo === 0 ? { hi: self.hi - other.hi | 0, lo: self.lo } : moonbitlang$core$builtin$$MyInt64$add_hi_lo(self, ~other.hi, ~other.lo + 1 | 0);
}
function moonbitlang$core$builtin$$Mul$op_mul$134$(self, other) {
  const _ahi = self.hi;
  const _alo = self.lo;
  const _bhi = other.hi;
  const _blo = other.lo;
  const ahi = _ahi;
  const alo = _alo;
  const bhi = _bhi;
  const blo = _blo;
  const a48 = ahi >>> 16 | 0;
  const a32 = ahi & 65535;
  const a16 = alo >>> 16 | 0;
  const a00 = alo & 65535;
  const b48 = bhi >>> 16 | 0;
  const b32 = bhi & 65535;
  const b16 = blo >>> 16 | 0;
  const b00 = blo & 65535;
  const c00 = Math.imul(a00, b00) | 0;
  const c16 = c00 >>> 16 | 0;
  const c00$2 = c00 & 65535;
  const c16$2 = (c16 >>> 0) + ((Math.imul(a16, b00) | 0) >>> 0) | 0;
  const c32 = c16$2 >>> 16 | 0;
  const c16$3 = c16$2 & 65535;
  const c16$4 = (c16$3 >>> 0) + ((Math.imul(a00, b16) | 0) >>> 0) | 0;
  const c32$2 = (c32 >>> 0) + ((c16$4 >>> 16 | 0) >>> 0) | 0;
  const c16$5 = c16$4 & 65535;
  const c32$3 = (c32$2 >>> 0) + ((Math.imul(a32, b00) | 0) >>> 0) | 0;
  const c48 = c32$3 >>> 16 | 0;
  const c32$4 = c32$3 & 65535;
  const c32$5 = (c32$4 >>> 0) + ((Math.imul(a16, b16) | 0) >>> 0) | 0;
  const c48$2 = (c48 >>> 0) + ((c32$5 >>> 16 | 0) >>> 0) | 0;
  const c32$6 = c32$5 & 65535;
  const c32$7 = (c32$6 >>> 0) + ((Math.imul(a00, b32) | 0) >>> 0) | 0;
  const c48$3 = (c48$2 >>> 0) + ((c32$7 >>> 16 | 0) >>> 0) | 0;
  const c32$8 = c32$7 & 65535;
  const c48$4 = (((((((c48$3 >>> 0) + ((Math.imul(a48, b00) | 0) >>> 0) | 0) >>> 0) + ((Math.imul(a32, b16) | 0) >>> 0) | 0) >>> 0) + ((Math.imul(a16, b32) | 0) >>> 0) | 0) >>> 0) + ((Math.imul(a00, b48) | 0) >>> 0) | 0;
  const c48$5 = c48$4 & 65535;
  return { hi: c48$5 << 16 | c32$8, lo: c16$5 << 16 | c00$2 };
}
function moonbitlang$core$builtin$$Div$op_div$134$(self, other) {
  const exports = moonbitlang$core$builtin$$get_int64_wasm_helper();
  const _ahi = self.hi;
  const _alo = self.lo;
  const _bhi = other.hi;
  const _blo = other.lo;
  const _func = exports.div_s;
  const lo = _func(_alo, _ahi, _blo, _bhi);
  const _func$2 = exports.get_high;
  const hi = _func$2();
  return { hi: hi, lo: lo };
}
function moonbitlang$core$builtin$$Add$op_add$43$(self, other) {
  return moonbitlang$core$builtin$$Add$op_add$134$(self, other);
}
function moonbitlang$core$builtin$$Sub$op_sub$43$(self, other) {
  return moonbitlang$core$builtin$$Sub$op_sub$134$(self, other);
}
function moonbitlang$core$builtin$$Mul$op_mul$43$(self, other) {
  return moonbitlang$core$builtin$$Mul$op_mul$134$(self, other);
}
function moonbitlang$core$builtin$$Div$op_div$43$(self, other) {
  return moonbitlang$core$builtin$$Div$op_div$134$(self, other);
}
function moonbitlang$core$builtin$$Compare$compare$43$(self, other) {
  return moonbitlang$core$builtin$$MyInt64$compare(self, other);
}
function moonbitlang$core$builtin$$Iter2$run$55$(self, f) {
  const _func = self;
  return _func(f);
}
function moonbitlang$core$builtin$$Default$default$135$() {
  return new Uint8Array([]);
}
function moonbitlang$core$builtin$$Eq$op_equal$77$(self, other) {
  if (self === undefined) {
    return other === undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    if (other === undefined) {
      return false;
    } else {
      const _Some$2 = other;
      const _y = _Some$2;
      return moonbitlang$core$builtin$$Eq$op_equal$16$(_x, _y);
    }
  }
}
function moonbitlang$core$builtin$$Eq$op_equal$78$(self, other) {
  if (self === undefined) {
    return other === undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    if (other === undefined) {
      return false;
    } else {
      const _Some$2 = other;
      const _y = _Some$2;
      return moonbitlang$core$builtin$$Eq$op_equal$17$(_x, _y);
    }
  }
}
function moonbitlang$core$builtin$$Eq$op_equal$80$(self, other) {
  if (self === undefined) {
    return other === undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    if (other === undefined) {
      return false;
    } else {
      const _Some$2 = other;
      const _y = _Some$2;
      return moonbitlang$core$builtin$$Eq$op_equal$74$(_x, _y);
    }
  }
}
function moonbitlang$core$builtin$$Eq$op_equal$69$(self, other) {
  if (self === undefined) {
    return other === undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    if (other === undefined) {
      return false;
    } else {
      const _Some$2 = other;
      const _y = _Some$2;
      return _x === _y;
    }
  }
}
function moonbitlang$core$builtin$$Eq$op_equal$81$(self, other) {
  if (self === undefined) {
    return other === undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    if (other === undefined) {
      return false;
    } else {
      const _Some$2 = other;
      const _y = _Some$2;
      return moonbitlang$core$builtin$$Eq$op_equal$18$(_x, _y);
    }
  }
}
function moonbitlang$core$array$$Array$op_set$20$(self, index, value) {
  const len = self.length;
  if (index >= 0 && index < len) {
    $bound_check(self, index);
    self[index] = value;
    return;
  } else {
    $panic();
    return;
  }
}
function moonbitlang$core$array$$Array$op_set$52$(self, index, value) {
  const len = self.length;
  if (index >= 0 && index < len) {
    $bound_check(self, index);
    self[index] = value;
    return;
  } else {
    $panic();
    return;
  }
}
function moonbitlang$core$array$$Array$op_set$8$(self, index, value) {
  const len = self.length;
  if (index >= 0 && index < len) {
    $bound_check(self, index);
    self[index] = value;
    return;
  } else {
    $panic();
    return;
  }
}
function moonbitlang$core$builtin$$Eq$op_equal$87$(self, other) {
  const self_len = self.length;
  const other_len = other.length;
  if (self_len === other_len) {
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < self_len) {
        if (moonbitlang$core$builtin$$Eq$op_equal$88$(self[i], other[i])) {
        } else {
          return false;
        }
        _tmp = i + 1 | 0;
        continue;
      } else {
        return true;
      }
    }
  } else {
    return false;
  }
}
function moonbitlang$core$builtin$$Eq$op_equal$136$(self, other) {
  const self_len = self.length;
  const other_len = other.length;
  if (self_len === other_len) {
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < self_len) {
        if (moonbitlang$core$builtin$$Eq$op_equal$69$(self[i], other[i])) {
        } else {
          return false;
        }
        _tmp = i + 1 | 0;
        continue;
      } else {
        return true;
      }
    }
  } else {
    return false;
  }
}
function moonbitlang$core$builtin$$Eq$op_equal$137$(self, other) {
  const self_len = self.length;
  const other_len = other.length;
  if (self_len === other_len) {
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < self_len) {
        if (moonbitlang$core$builtin$$Eq$op_equal$50$(self[i], other[i])) {
        } else {
          return false;
        }
        _tmp = i + 1 | 0;
        continue;
      } else {
        return true;
      }
    }
  } else {
    return false;
  }
}
function moonbitlang$core$builtin$$Hash$hash_combine$136$(self, hasher) {
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      moonbitlang$core$builtin$$Hash$hash_combine$69$(v, hasher);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$builtin$$Compare$compare$137$(self, other) {
  const len_self = self.length;
  const len_other = other.length;
  const cmp = $compare_int(len_self, len_other);
  if (cmp === 0) {
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < len_self) {
        const cmp$2 = moonbitlang$core$builtin$$Compare$compare$50$(self[i], other[i]);
        if (cmp$2 === 0) {
        } else {
          return cmp$2;
        }
        _tmp = i + 1 | 0;
        continue;
      } else {
        return 0;
      }
    }
  } else {
    return cmp;
  }
}
function moonbitlang$core$builtin$$Compare$compare$136$(self, other) {
  const len_self = self.length;
  const len_other = other.length;
  const cmp = $compare_int(len_self, len_other);
  if (cmp === 0) {
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < len_self) {
        const cmp$2 = moonbitlang$core$builtin$$Compare$compare$69$(self[i], other[i]);
        if (cmp$2 === 0) {
        } else {
          return cmp$2;
        }
        _tmp = i + 1 | 0;
        continue;
      } else {
        return 0;
      }
    }
  } else {
    return cmp;
  }
}
function moonbitlang$core$array$$Array$append$30$(self, other) {
  moonbitlang$core$array$$Array$blit_to$30$(other, self, other.length, 0, self.length);
}
function moonbitlang$core$array$$Array$map_inplace$52$(self, f) {
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      moonbitlang$core$array$$Array$op_set$52$(self, _i, f(v));
      _tmp = _i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$Array$mapi_inplace$20$(self, f) {
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      moonbitlang$core$array$$Array$op_set$20$(self, _i, f(_i, v));
      _tmp = _i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$Array$is_empty$23$(self) {
  return self.length === 0;
}
function moonbitlang$core$array$$Array$is_empty$49$(self) {
  return self.length === 0;
}
function moonbitlang$core$array$$Array$is_empty$8$(self) {
  return self.length === 0;
}
function moonbitlang$core$array$$Array$repeat$30$(self, times) {
  const v = moonbitlang$core$array$$Array$new$30$(Math.imul(self.length, times) | 0);
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i < times) {
      moonbitlang$core$array$$Array$append$30$(v, self);
      _tmp = i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return v;
}
function moonbitlang$core$array$$Array$fold$138$(self, init, f) {
  let _tmp = 0;
  let _tmp$2 = init;
  while (true) {
    const i = _tmp;
    const acc = _tmp$2;
    if (i < self.length) {
      const _tmp$3 = i + 1 | 0;
      const _tmp$4 = f(acc, moonbitlang$core$array$$Array$op_get$82$(self, i));
      _tmp = _tmp$3;
      _tmp$2 = _tmp$4;
      continue;
    } else {
      return acc;
    }
  }
}
function moonbitlang$core$array$$Array$fold$67$(self, init, f) {
  let _tmp = 0;
  let _tmp$2 = init;
  while (true) {
    const i = _tmp;
    const acc = _tmp$2;
    if (i < self.length) {
      const _tmp$3 = i + 1 | 0;
      const _tmp$4 = f(acc, moonbitlang$core$array$$Array$op_get$8$(self, i));
      _tmp = _tmp$3;
      _tmp$2 = _tmp$4;
      continue;
    } else {
      return acc;
    }
  }
}
function moonbitlang$core$builtin$$Compare$compare$12$(self, other) {
  const t0 = $compare_int(self._0, other._0);
  return t0 === 0 ? $compare_int(self._1, other._1) : t0;
}
function moonbitlang$core$builtin$$Compare$compare$51$(self, other) {
  const t0 = moonbitlang$core$builtin$$Compare$compare$12$(self._0, other._0);
  return t0 === 0 ? $compare_int(self._1, other._1) : t0;
}
function moonbitlang$core$builtin$$Compare$compare$39$(self, other) {
  const t0 = moonbitlang$core$builtin$$Compare$compare$58$(self._0, other._0);
  return t0 === 0 ? moonbitlang$core$builtin$$Compare$compare$69$(self._1, other._1) : t0;
}
function moonbitlang$core$builtin$$Compare$compare$89$(self, other) {
  const t0 = moonbitlang$core$builtin$$Compare$compare$1$(self._0, other._0);
  return t0 === 0 ? moonbitlang$core$builtin$$Compare$compare$1$(self._1, other._1) : t0;
}
function moonbitlang$core$builtin$$Compare$compare$38$(self, other) {
  const t0 = moonbitlang$core$builtin$$Compare$compare$58$(self._0, other._0);
  if (t0 === 0) {
    const t1 = moonbitlang$core$builtin$$Compare$compare$63$(self._1, other._1);
    return t1 === 0 ? moonbitlang$core$builtin$$Compare$compare$69$(self._2, other._2) : t1;
  } else {
    return t0;
  }
}
function moonbitlang$core$builtin$$Iter$run$6$(self, f) {
  const _func = self;
  return _func(f);
}
function moonbitlang$core$builtin$$Iter$run$7$(self, f) {
  const _func = self;
  return _func(f);
}
function moonbitlang$core$builtin$$Iter$run$8$(self, f) {
  const _func = self;
  return _func(f);
}
function moonbitlang$core$builtin$$Iter$run$31$(self, f) {
  const _func = self;
  return _func(f);
}
function moonbitlang$core$builtin$$Iter$run$30$(self, f) {
  const _func = self;
  return _func(f);
}
function moonbitlang$core$builtin$$Iter$run$28$(self, f) {
  const _func = self;
  return _func(f);
}
function moonbitlang$core$builtin$$Iter$run$119$(self, f) {
  const _func = self;
  return _func(f);
}
function moonbitlang$core$builtin$$Iter$run$29$(self, f) {
  const _func = self;
  return _func(f);
}
function moonbitlang$core$builtin$$Iter$run$61$(self, f) {
  const _func = self;
  return _func(f);
}
function moonbitlang$core$builtin$$Iter$run$23$(self, f) {
  const _func = self;
  return _func(f);
}
function moonbitlang$core$builtin$$Iter$empty$60$() {
  return (_param5) => 1;
}
function moonbitlang$core$builtin$$Iter$empty$61$() {
  return (_param5) => 1;
}
function moonbitlang$core$builtin$$Iter$empty$8$() {
  return (_param5) => 1;
}
function moonbitlang$core$builtin$$Iter$empty$23$() {
  return (_param5) => 1;
}
function moonbitlang$core$builtin$$Iter$singleton$60$(a) {
  return (yield_) => yield_(a);
}
function moonbitlang$core$builtin$$Iter$singleton$61$(a) {
  return (yield_) => yield_(a);
}
function moonbitlang$core$int$$Int$until(self, end, step, inclusive) {
  if (step === 0) {
    return moonbitlang$core$builtin$$Iter$empty$8$();
  }
  return (yield_) => {
    let i = self;
    while (true) {
      if (step > 0 && i < end || (step < 0 && i > end || inclusive && i === end)) {
        if (moonbitlang$core$builtin$$Eq$op_equal$41$(yield_(i), 0)) {
          return 0;
        }
        const next = i + step | 0;
        if (step > 0 && next >= i || step < 0 && next <= i) {
          i = next;
        } else {
          return 1;
        }
        continue;
      } else {
        return 1;
      }
    }
  };
}
function moonbitlang$core$int$$Int$until$46$step$46$default() {
  return 1;
}
function moonbitlang$core$builtin$$Iter$filter_map$139$(self, f) {
  return (yield_) => moonbitlang$core$builtin$$Iter$run$61$(self, (a) => {
    const _bind = f(a);
    if (_bind === undefined) {
      return 1;
    } else {
      const _Some = _bind;
      const _b = _Some;
      return yield_(_b);
    }
  });
}
function moonbitlang$core$builtin$$Iter$append$23$(self, a) {
  return (yield_) => moonbitlang$core$builtin$$Eq$op_equal$41$(moonbitlang$core$builtin$$Iter$run$23$(self, yield_), 1) ? yield_(a) : 0;
}
function moonbitlang$core$builtin$$Iter$to_array$49$(self) {
  const result = [];
  self((e) => {
    moonbitlang$core$array$$Array$push$49$(result, e);
    return 1;
  });
  return result;
}
function moonbitlang$core$builtin$$Iter$to_array$117$(self) {
  const result = [];
  self((e) => {
    moonbitlang$core$array$$Array$push$117$(result, e);
    return 1;
  });
  return result;
}
function moonbitlang$core$builtin$$Iter$to_array$105$(self) {
  const result = [];
  self((e) => {
    moonbitlang$core$array$$Array$push$105$(result, e);
    return 1;
  });
  return result;
}
function moonbitlang$core$builtin$$Iter$to_array$61$(self) {
  const result = [];
  self((e) => {
    moonbitlang$core$array$$Array$push$61$(result, e);
    return 1;
  });
  return result;
}
function moonbitlang$core$builtin$$Iter$to_array$119$(self) {
  const result = [];
  self((e) => {
    moonbitlang$core$array$$Array$push$119$(result, e);
    return 1;
  });
  return result;
}
function moonbitlang$core$builtin$$Iter$to_array$30$(self) {
  const result = [];
  self((e) => {
    moonbitlang$core$array$$Array$push$30$(result, e);
    return 1;
  });
  return result;
}
function moonbitlang$core$builtin$$Iter$collect$8$(self) {
  const result = [];
  self((_p) => {
    moonbitlang$core$array$$Array$push$8$(result, _p);
    return 1;
  });
  return result;
}
function moonbitlang$core$builtin$$Iter$join(self, sep) {
  const buf = moonbitlang$core$builtin$$StringBuilder$new(moonbitlang$core$builtin$$StringBuilder$new$46$size_hint$46$default());
  const first = { val: true };
  self((str) => {
    if (first.val) {
      first.val = false;
    } else {
      moonbitlang$core$builtin$$Logger$write_string$22$(buf, sep);
    }
    moonbitlang$core$builtin$$Logger$write_string$22$(buf, str);
    return 1;
  });
  return moonbitlang$core$builtin$$StringBuilder$to_string(buf);
}
function moonbitlang$core$builtin$$Iter$iter$30$(self) {
  return self;
}
function moonbitlang$core$builtin$$Iter$maximum$8$(self) {
  const res = { val: undefined };
  self((x) => {
    const _bind = res.val;
    if (_bind === undefined) {
      res.val = x;
    } else {
      const _Some = _bind;
      const _max = _Some;
      if (x > _max) {
        res.val = x;
      }
    }
    return 1;
  });
  return res.val;
}
function moonbitlang$core$buffer$$T$grow_if_necessary(self, required) {
  let enough_space = self.data.length;
  if (enough_space <= 0) {
    enough_space = 1;
  }
  while (true) {
    if (enough_space < required) {
      enough_space = Math.imul(enough_space, 2) | 0;
      continue;
    } else {
      break;
    }
  }
  if (enough_space !== self.data.length) {
    const _self = $make_array_len_and_init(enough_space, moonbitlang$core$builtin$$Default$default$47$());
    moonbitlang$core$array$$FixedArray$unsafe_blit$47$(_self, 0, self.data, 0, self.len);
    self.data = _self;
    return;
  } else {
    return;
  }
}
function moonbitlang$core$buffer$$T$length(self) {
  return self.len;
}
function moonbitlang$core$buffer$$T$contents(self) {
  return moonbitlang$core$bytes$$from_fixedarray(self.data, self.len);
}
function moonbitlang$core$buffer$$new(size_hint) {
  const initial = size_hint < 1 ? 1 : size_hint;
  const data = $make_array_len_and_init(initial, moonbitlang$core$builtin$$Default$default$47$());
  return { data: data, len: 0, initial_data: data };
}
function moonbitlang$core$buffer$$new$46$size_hint$46$default() {
  return 0;
}
function moonbitlang$core$buffer$$T$write_byte(self, value) {
  moonbitlang$core$buffer$$T$grow_if_necessary(self, self.len + 1 | 0);
  const _tmp = self.data;
  const _tmp$2 = self.len;
  $bound_check(_tmp, _tmp$2);
  _tmp[_tmp$2] = value;
  self.len = self.len + 1 | 0;
}
function moonbitlang$core$buffer$$T$write_bytes(self, value) {
  const val_len = value.length;
  moonbitlang$core$buffer$$T$grow_if_necessary(self, self.len + val_len | 0);
  moonbitlang$core$array$$FixedArray$blit_from_bytes(self.data, self.len, value, 0, val_len);
  self.len = self.len + val_len | 0;
}
function moonbitlang$core$buffer$$T$write_iter(self, iter) {
  iter((byte) => {
    moonbitlang$core$buffer$$T$write_byte(self, byte);
    return 1;
  });
}
function moonbitlang$core$buffer$$T$to_bytes(self) {
  return moonbitlang$core$bytes$$from_fixedarray(self.data, self.len);
}
function moonbitlang$ulex$lib$util$diet$$Tree$size$1$(self) {
  if (self.$tag === 0) {
    return 0;
  } else {
    const _Node = self;
    const _size = _Node._2;
    return _size;
  }
}
function moonbitlang$ulex$lib$util$diet$$make_node$1$(min, max, l, r) {
  const size = (moonbitlang$ulex$lib$util$diet$$Tree$size$1$(l) + moonbitlang$ulex$lib$util$diet$$Tree$size$1$(r) | 0) + 1 | 0;
  return new $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Node$18$(l, r, size, min, max);
}
function moonbitlang$ulex$lib$util$diet$$double_l$1$(min, max, l, r) {
  _L: {
    if (r.$tag === 1) {
      const _Node = r;
      const _x = _Node._0;
      if (_x.$tag === 1) {
        const _Node$2 = _x;
        return moonbitlang$ulex$lib$util$diet$$make_node$1$(_Node$2._3, _Node$2._4, moonbitlang$ulex$lib$util$diet$$make_node$1$(min, max, l, _Node$2._0), moonbitlang$ulex$lib$util$diet$$make_node$1$(_Node._3, _Node._4, _Node$2._1, _Node._1));
      } else {
        break _L;
      }
    } else {
      break _L;
    }
  }
  return $panic();
}
function moonbitlang$ulex$lib$util$diet$$double_r$1$(min, max, l, r) {
  _L: {
    if (l.$tag === 1) {
      const _Node = l;
      const _x = _Node._1;
      if (_x.$tag === 1) {
        const _Node$2 = _x;
        return moonbitlang$ulex$lib$util$diet$$make_node$1$(_Node$2._3, _Node$2._4, moonbitlang$ulex$lib$util$diet$$make_node$1$(_Node._3, _Node._4, _Node._0, _Node$2._0), moonbitlang$ulex$lib$util$diet$$make_node$1$(min, max, _Node$2._1, r));
      } else {
        break _L;
      }
    } else {
      break _L;
    }
  }
  return $panic();
}
function moonbitlang$ulex$lib$util$diet$$single_l$1$(min, max, l, r) {
  if (r.$tag === 1) {
    const _Node = r;
    return moonbitlang$ulex$lib$util$diet$$make_node$1$(_Node._3, _Node._4, moonbitlang$ulex$lib$util$diet$$make_node$1$(min, max, l, _Node._0), _Node._1);
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$util$diet$$single_r$1$(min, max, l, r) {
  if (l.$tag === 1) {
    const _Node = l;
    return moonbitlang$ulex$lib$util$diet$$make_node$1$(_Node._3, _Node._4, _Node._0, moonbitlang$ulex$lib$util$diet$$make_node$1$(min, max, _Node._1, r));
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$util$diet$$balance$1$(min, max, l, r) {
  const l_size = moonbitlang$ulex$lib$util$diet$$Tree$size$1$(l);
  const r_size = moonbitlang$ulex$lib$util$diet$$Tree$size$1$(r);
  if ((l_size + r_size | 0) <= 1) {
    return moonbitlang$ulex$lib$util$diet$$make_node$1$(min, max, l, r);
  } else {
    if ((r_size + 1 | 0) > (Math.imul(3, l_size + 1 | 0) | 0)) {
      if (r.$tag === 1) {
        const _Node = r;
        return (moonbitlang$ulex$lib$util$diet$$Tree$size$1$(_Node._0) + 1 | 0) < (Math.imul(2, moonbitlang$ulex$lib$util$diet$$Tree$size$1$(_Node._1) + 1 | 0) | 0) ? moonbitlang$ulex$lib$util$diet$$single_l$1$(min, max, l, _Node) : moonbitlang$ulex$lib$util$diet$$double_l$1$(min, max, l, _Node);
      } else {
        return $panic();
      }
    } else {
      if ((l_size + 1 | 0) > (Math.imul(3, r_size + 1 | 0) | 0)) {
        if (l.$tag === 1) {
          const _Node = l;
          return (moonbitlang$ulex$lib$util$diet$$Tree$size$1$(_Node._1) + 1 | 0) < (Math.imul(2, moonbitlang$ulex$lib$util$diet$$Tree$size$1$(_Node._0) + 1 | 0) | 0) ? moonbitlang$ulex$lib$util$diet$$single_r$1$(min, max, _Node, r) : moonbitlang$ulex$lib$util$diet$$double_r$1$(min, max, _Node, r);
        } else {
          return $panic();
        }
      } else {
        return moonbitlang$ulex$lib$util$diet$$make_node$1$(min, max, l, r);
      }
    }
  }
}
function moonbitlang$ulex$lib$util$diet$$Tree$slice_from$1$(self, x) {
  let _tmp = self;
  let _tmp$2 = x;
  while (true) {
    const self$2 = _tmp;
    const x$2 = _tmp$2;
    if (self$2.$tag === 0) {
      return $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Empty$18$;
    } else {
      const _Node = self$2;
      if (moonbitlang$core$builtin$$op_lt$1$(x$2, _Node._3)) {
        return moonbitlang$ulex$lib$util$diet$$balance$1$(_Node._3, _Node._4, moonbitlang$ulex$lib$util$diet$$Tree$slice_from$1$(_Node._0, x$2), _Node._1);
      } else {
        if (moonbitlang$core$builtin$$op_gt$1$(x$2, _Node._4)) {
          _tmp = _Node._1;
          continue;
        } else {
          return moonbitlang$ulex$lib$util$diet$$balance$1$(x$2, _Node._4, $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Empty$18$, _Node._1);
        }
      }
    }
  }
}
function moonbitlang$ulex$lib$util$diet$$Tree$slice_util$1$(self, x) {
  let _tmp = self;
  let _tmp$2 = x;
  while (true) {
    const self$2 = _tmp;
    const x$2 = _tmp$2;
    if (self$2.$tag === 0) {
      return $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Empty$18$;
    } else {
      const _Node = self$2;
      if (moonbitlang$core$builtin$$op_gt$1$(x$2, _Node._4)) {
        return moonbitlang$ulex$lib$util$diet$$balance$1$(_Node._3, _Node._4, _Node._0, moonbitlang$ulex$lib$util$diet$$Tree$slice_util$1$(_Node._1, x$2));
      } else {
        if (moonbitlang$core$builtin$$op_lt$1$(x$2, _Node._3)) {
          _tmp = _Node._0;
          continue;
        } else {
          return moonbitlang$ulex$lib$util$diet$$balance$1$(_Node._3, x$2, _Node._0, $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Empty$18$);
        }
      }
    }
  }
}
function moonbitlang$ulex$lib$util$diet$$Tree$slice_before$1$(self, x) {
  return moonbitlang$core$builtin$$Eq$op_equal$1$(x, moonbitlang$ulex$lib$util$bounded_enum$$BoundedEnum$lower_bound$1$()) ? $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Empty$18$ : moonbitlang$ulex$lib$util$diet$$Tree$slice_util$1$(self, moonbitlang$ulex$lib$util$bounded_enum$$BoundedEnum$pred$1$(x));
}
function moonbitlang$ulex$lib$util$diet$$Tree$slice_after$1$(self, x) {
  return moonbitlang$core$builtin$$Eq$op_equal$1$(x, moonbitlang$ulex$lib$util$bounded_enum$$BoundedEnum$upper_bound$1$()) ? $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Empty$18$ : moonbitlang$ulex$lib$util$diet$$Tree$slice_from$1$(self, moonbitlang$ulex$lib$util$bounded_enum$$BoundedEnum$succ$1$(x));
}
function moonbitlang$ulex$lib$util$diet$$Tree$slice$1$(self, min, max) {
  if (min === undefined) {
    if (max === undefined) {
      return $panic();
    } else {
      const _Some = max;
      const _max = _Some;
      return moonbitlang$ulex$lib$util$diet$$Tree$slice_util$1$(self, _max);
    }
  } else {
    const _Some = min;
    const _min = _Some;
    if (max === undefined) {
      return moonbitlang$ulex$lib$util$diet$$Tree$slice_from$1$(self, _min);
    } else {
      const _Some$2 = max;
      const _max = _Some$2;
      return moonbitlang$ulex$lib$util$diet$$Tree$slice_util$1$(moonbitlang$ulex$lib$util$diet$$Tree$slice_from$1$(self, _min), _max);
    }
  }
}
function moonbitlang$ulex$lib$util$diet$$InorderIterator$move_left$1$(self, node) {
  let _tmp = node;
  while (true) {
    const _param = _tmp;
    if (_param.$tag === 0) {
      return;
    } else {
      const _Node = _param;
      const _left = _Node._0;
      moonbitlang$core$array$$Array$push$124$(self, _Node);
      _tmp = _left;
      continue;
    }
  }
}
function moonbitlang$ulex$lib$util$diet$$InorderIterator$new$1$(root) {
  const _self = [];
  moonbitlang$ulex$lib$util$diet$$InorderIterator$move_left$1$(_self, root);
  return _self;
}
function moonbitlang$ulex$lib$util$diet$$InorderIterator$next$1$(self) {
  const _bind = moonbitlang$core$array$$Array$pop$124$(self);
  if (_bind === undefined) {
    return undefined;
  } else {
    const _Some = _bind;
    const _curr = _Some;
    if (_curr.$tag === 1) {
      const _Node = _curr;
      const _min = _Node._3;
      const _max = _Node._4;
      const _right = _Node._1;
      moonbitlang$ulex$lib$util$diet$$InorderIterator$move_left$1$(self, _right);
      return { _0: _min, _1: _max };
    } else {
      return $panic();
    }
  }
}
function moonbitlang$ulex$lib$util$diet$$split_leftmost$1$(t) {
  if (t.$tag === 0) {
    return $panic();
  } else {
    const _Node = t;
    const _x = _Node._0;
    if (_x.$tag === 0) {
      const _right = _Node._1;
      const _min = _Node._3;
      const _max = _Node._4;
      return { _0: { _0: _min, _1: _max }, _1: _right };
    } else {
      const _bind = moonbitlang$ulex$lib$util$diet$$split_leftmost$1$(_Node._0);
      const _x$2 = _bind._0;
      const _min = _x$2._0;
      const _max = _x$2._1;
      const _l = _bind._1;
      return { _0: { _0: _min, _1: _max }, _1: moonbitlang$ulex$lib$util$diet$$make_node$1$(_Node._3, _Node._4, _l, _Node._1) };
    }
  }
}
function moonbitlang$ulex$lib$util$diet$$split_rightmost$1$(t) {
  if (t.$tag === 0) {
    return $panic();
  } else {
    const _Node = t;
    const _left = _Node._0;
    const _x = _Node._1;
    if (_x.$tag === 0) {
      const _min = _Node._3;
      const _max = _Node._4;
      return { _0: { _0: _min, _1: _max }, _1: _left };
    } else {
      const _bind = moonbitlang$ulex$lib$util$diet$$split_rightmost$1$(_Node._1);
      const _x$2 = _bind._0;
      const _min = _x$2._0;
      const _max = _x$2._1;
      const _r = _bind._1;
      return { _0: { _0: _min, _1: _max }, _1: moonbitlang$ulex$lib$util$diet$$make_node$1$(_Node._3, _Node._4, _Node._0, _r) };
    }
  }
}
function moonbitlang$ulex$lib$util$diet$$empty$1$() {
  return $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Empty$18$;
}
function moonbitlang$ulex$lib$util$diet$$singleton$1$(x) {
  return moonbitlang$ulex$lib$util$diet$$make_node$1$(x, x, $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Empty$18$, $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Empty$18$);
}
function moonbitlang$ulex$lib$util$diet$$interval$1$(min, max) {
  return moonbitlang$ulex$lib$util$diet$$make_node$1$(min, max, $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Empty$18$, $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Empty$18$);
}
function moonbitlang$ulex$lib$util$diet$$union$1$(t1, t2) {
  let t;
  _L: {
    if (t1.$tag === 0) {
      if (t2.$tag === 0) {
        return $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Empty$18$;
      } else {
        const _Node = t2;
        t = _Node;
        break _L;
      }
    } else {
      const _Node = t1;
      if (t2.$tag === 0) {
        t = _Node;
        break _L;
      } else {
        const _Node$2 = t2;
        let t1$2;
        let t2$2;
        _L$2: {
          if (_Node._2 >= _Node$2._2) {
            t1$2 = _Node;
            t2$2 = _Node$2;
            break _L$2;
          } else {
            t1$2 = _Node$2;
            t2$2 = _Node;
            break _L$2;
          }
        }
        return moonbitlang$ulex$lib$util$diet$$union_aux$1$(t1$2, t2$2);
      }
    }
  }
  return t;
}
function moonbitlang$ulex$lib$util$diet$$union_aux$1$(t1, t2) {
  if (t1.$tag === 1) {
    const _Node = t1;
    if (t2.$tag === 1) {
      const _Node$2 = t2;
      const l1 = _Node._0;
      const r1 = _Node._1;
      const l2 = moonbitlang$ulex$lib$util$diet$$Tree$slice_before$1$(_Node$2, _Node._3);
      const r2 = moonbitlang$ulex$lib$util$diet$$Tree$slice_after$1$(_Node$2, _Node._4);
      let _bind;
      if (moonbitlang$core$builtin$$Eq$op_equal$1$(_Node._3, moonbitlang$ulex$lib$util$bounded_enum$$BoundedEnum$lower_bound$1$())) {
        _bind = { _0: _Node._3, _1: $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Empty$18$ };
      } else {
        const l = moonbitlang$ulex$lib$util$diet$$union$1$(l1, l2);
        if (l.$tag === 0) {
          _bind = { _0: _Node._3, _1: $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Empty$18$ };
        } else {
          const _bind$2 = moonbitlang$ulex$lib$util$diet$$split_rightmost$1$(l);
          const _x = _bind$2._0;
          const _min = _x._0;
          const _max = _x._1;
          const _l3 = _bind$2._1;
          _bind = moonbitlang$core$builtin$$op_lt$1$(_max, moonbitlang$ulex$lib$util$bounded_enum$$BoundedEnum$upper_bound$1$()) && moonbitlang$core$builtin$$Eq$op_equal$1$(moonbitlang$ulex$lib$util$bounded_enum$$BoundedEnum$succ$1$(_max), _Node._3) ? { _0: _min, _1: _l3 } : { _0: _Node._3, _1: l };
        }
      }
      const _min = _bind._0;
      const _l = _bind._1;
      let _bind$2;
      if (moonbitlang$core$builtin$$Eq$op_equal$1$(_Node._4, moonbitlang$ulex$lib$util$bounded_enum$$BoundedEnum$upper_bound$1$())) {
        _bind$2 = { _0: _Node._4, _1: $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Empty$18$ };
      } else {
        const r = moonbitlang$ulex$lib$util$diet$$union$1$(r1, r2);
        if (r.$tag === 0) {
          _bind$2 = { _0: _Node._4, _1: $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Empty$18$ };
        } else {
          const _bind$3 = moonbitlang$ulex$lib$util$diet$$split_leftmost$1$(r);
          const _x = _bind$3._0;
          const _min$2 = _x._0;
          const _max = _x._1;
          const _r3 = _bind$3._1;
          _bind$2 = moonbitlang$core$builtin$$op_gt$1$(_min$2, moonbitlang$ulex$lib$util$bounded_enum$$BoundedEnum$lower_bound$1$()) && moonbitlang$core$builtin$$Eq$op_equal$1$(moonbitlang$ulex$lib$util$bounded_enum$$BoundedEnum$pred$1$(_min$2), _Node._4) ? { _0: _max, _1: _r3 } : { _0: _Node._4, _1: r };
        }
      }
      const _max = _bind$2._0;
      const _r = _bind$2._1;
      return moonbitlang$ulex$lib$util$diet$$balance$1$(_min, _max, _l, _r);
    } else {
      return $panic();
    }
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$util$diet$$Tree$is_empty$1$(self) {
  if (self.$tag === 0) {
    return true;
  } else {
    return false;
  }
}
function moonbitlang$ulex$lib$util$diet$$concat$1$(l, r) {
  if (l.$tag === 0) {
    return r;
  } else {
    if (r.$tag === 0) {
      return l;
    } else {
      const _Node = l;
      const _Node$2 = r;
      const _bind = moonbitlang$ulex$lib$util$diet$$split_leftmost$1$(_Node$2);
      const _x = _bind._0;
      const _min = _x._0;
      const _max = _x._1;
      const _r = _bind._1;
      return moonbitlang$ulex$lib$util$diet$$balance$1$(_min, _max, _Node, _r);
    }
  }
}
function moonbitlang$ulex$lib$util$diet$$intersection$1$(t1, t2) {
  _L: {
    if (t1.$tag === 0) {
      break _L;
    } else {
      if (t2.$tag === 0) {
        break _L;
      } else {
        const _Node = t1;
        const _Node$2 = t2;
        let t1$2;
        let t2$2;
        _L$2: {
          if (_Node._2 >= _Node$2._2) {
            t1$2 = _Node;
            t2$2 = _Node$2;
            break _L$2;
          } else {
            t1$2 = _Node$2;
            t2$2 = _Node;
            break _L$2;
          }
        }
        return moonbitlang$ulex$lib$util$diet$$intersection_aux$1$(t1$2, t2$2);
      }
    }
  }
  return $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Empty$18$;
}
function moonbitlang$ulex$lib$util$diet$$intersection_aux$1$(t1, t2) {
  if (t1.$tag === 1) {
    const _Node = t1;
    if (t2.$tag === 1) {
      const _Node$2 = t2;
      const l1 = _Node._0;
      const r1 = _Node._1;
      const l2 = moonbitlang$ulex$lib$util$diet$$Tree$slice_before$1$(_Node$2, _Node._3);
      const r2 = moonbitlang$ulex$lib$util$diet$$Tree$slice_after$1$(_Node$2, _Node._4);
      const l = moonbitlang$ulex$lib$util$diet$$intersection$1$(l1, l2);
      const r = moonbitlang$ulex$lib$util$diet$$intersection$1$(r1, r2);
      const m = moonbitlang$ulex$lib$util$diet$$Tree$slice$1$(_Node$2, _Node._3, _Node._4);
      return moonbitlang$ulex$lib$util$diet$$concat$1$(moonbitlang$ulex$lib$util$diet$$concat$1$(l, m), r);
    } else {
      return $panic();
    }
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$util$diet$$complement_aux$1$(min, max, t) {
  if (t.$tag === 0) {
    return moonbitlang$ulex$lib$util$diet$$interval$1$(min, max);
  } else {
    const _Node = t;
    const l = moonbitlang$core$builtin$$Eq$op_equal$1$(_Node._3, moonbitlang$ulex$lib$util$bounded_enum$$BoundedEnum$lower_bound$1$()) ? $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Empty$18$ : moonbitlang$ulex$lib$util$diet$$complement_aux$1$(min, moonbitlang$ulex$lib$util$bounded_enum$$BoundedEnum$pred$1$(_Node._3), _Node._0);
    const r = moonbitlang$core$builtin$$Eq$op_equal$1$(_Node._4, moonbitlang$ulex$lib$util$bounded_enum$$BoundedEnum$upper_bound$1$()) ? $64$moonbitlang$47$ulex$47$lib$47$util$47$diet$46$Tree$Empty$18$ : moonbitlang$ulex$lib$util$diet$$complement_aux$1$(moonbitlang$ulex$lib$util$bounded_enum$$BoundedEnum$succ$1$(_Node._4), max, _Node._1);
    return moonbitlang$ulex$lib$util$diet$$concat$1$(l, r);
  }
}
function moonbitlang$ulex$lib$util$diet$$Tree$complement$1$(self) {
  return moonbitlang$ulex$lib$util$diet$$complement_aux$1$(moonbitlang$ulex$lib$util$bounded_enum$$BoundedEnum$lower_bound$1$(), moonbitlang$ulex$lib$util$bounded_enum$$BoundedEnum$upper_bound$1$(), self);
}
function moonbitlang$ulex$lib$util$diet$$difference$1$(t1, t2) {
  return moonbitlang$ulex$lib$util$diet$$intersection$1$(t1, moonbitlang$ulex$lib$util$diet$$Tree$complement$1$(t2));
}
function moonbitlang$core$builtin$$Eq$op_equal$140$(self, other) {
  const iter = moonbitlang$ulex$lib$util$diet$$InorderIterator$new$1$(self);
  const iter1 = moonbitlang$ulex$lib$util$diet$$InorderIterator$new$1$(other);
  let _tmp = moonbitlang$ulex$lib$util$diet$$InorderIterator$next$1$(iter);
  let _tmp$2 = moonbitlang$ulex$lib$util$diet$$InorderIterator$next$1$(iter1);
  while (true) {
    const _param = _tmp;
    const _param$2 = _tmp$2;
    if (_param === undefined) {
      return _param$2 === undefined;
    } else {
      const _Some = _param;
      const _a = _Some;
      if (_param$2 === undefined) {
        return false;
      } else {
        const _Some$2 = _param$2;
        const _b = _Some$2;
        if (moonbitlang$core$builtin$$Eq$op_equal$89$(_a, _b)) {
          const _tmp$3 = moonbitlang$ulex$lib$util$diet$$InorderIterator$next$1$(iter);
          const _tmp$4 = moonbitlang$ulex$lib$util$diet$$InorderIterator$next$1$(iter1);
          _tmp = _tmp$3;
          _tmp$2 = _tmp$4;
          continue;
        } else {
          return false;
        }
      }
    }
  }
}
function moonbitlang$core$builtin$$Compare$compare$140$(self, other) {
  const iter = moonbitlang$ulex$lib$util$diet$$InorderIterator$new$1$(self);
  const iter1 = moonbitlang$ulex$lib$util$diet$$InorderIterator$new$1$(other);
  let _tmp = moonbitlang$ulex$lib$util$diet$$InorderIterator$next$1$(iter);
  let _tmp$2 = moonbitlang$ulex$lib$util$diet$$InorderIterator$next$1$(iter1);
  while (true) {
    const _param = _tmp;
    const _param$2 = _tmp$2;
    if (_param === undefined) {
      return _param$2 === undefined ? 0 : -1;
    } else {
      const _Some = _param;
      const _a = _Some;
      if (_param$2 === undefined) {
        return 1;
      } else {
        const _Some$2 = _param$2;
        const _b = _Some$2;
        const cmp = moonbitlang$core$builtin$$Compare$compare$89$(_a, _b);
        if (cmp === 0) {
          const _tmp$3 = moonbitlang$ulex$lib$util$diet$$InorderIterator$next$1$(iter);
          const _tmp$4 = moonbitlang$ulex$lib$util$diet$$InorderIterator$next$1$(iter1);
          _tmp = _tmp$3;
          _tmp$2 = _tmp$4;
          continue;
        } else {
          return cmp;
        }
      }
    }
  }
}
function moonbitlang$ulex$lib$util$diet$$Tree$iter_intervals$1$(self) {
  return moonbitlang$core$builtin$$Iter$new$119$((yield_) => {
    if (self.$tag === 0) {
      return 1;
    } else {
      const _Node = self;
      const _bind = moonbitlang$core$builtin$$Iter$run$119$(moonbitlang$ulex$lib$util$diet$$Tree$iter_intervals$1$(_Node._0), yield_);
      if (_bind === 1) {
        const _bind$2 = yield_({ _0: _Node._3, _1: _Node._4 });
        if (_bind$2 === 1) {
          const _bind$3 = moonbitlang$core$builtin$$Iter$run$119$(moonbitlang$ulex$lib$util$diet$$Tree$iter_intervals$1$(_Node._1), yield_);
          if (_bind$3 === 1) {
            return 1;
          } else {
            return 0;
          }
        } else {
          return 0;
        }
      } else {
        return 0;
      }
    }
  });
}
function moonbitlang$core$builtin$$Hash$hash_combine$140$(self, hasher) {
  const _bind = moonbitlang$ulex$lib$util$diet$$Tree$iter_intervals$1$(self);
  _bind((interval) => {
    moonbitlang$core$builtin$$Hash$hash_combine$89$(interval, hasher);
    return 1;
  });
}
function moonbitlang$core$builtin$$Eq$op_equal$1$(_x_73, _x_74) {
  return _x_73 === _x_74;
}
function moonbitlang$core$builtin$$Compare$compare$1$(_x_69, _x_70) {
  return $compare_int(_x_69, _x_70);
}
function moonbitlang$core$builtin$$Hash$hash_combine$1$(_x_65, _x_66) {
  moonbitlang$core$builtin$$Hash$hash_combine$8$(_x_65, _x_66);
}
function moonbitlang$core$builtin$$Eq$op_equal$30$(_x_55, _x_56) {
  return moonbitlang$core$builtin$$Eq$op_equal$140$(_x_55, _x_56);
}
function moonbitlang$core$builtin$$Compare$compare$30$(_x_51, _x_52) {
  return moonbitlang$core$builtin$$Compare$compare$140$(_x_51, _x_52);
}
function moonbitlang$core$builtin$$Hash$hash_combine$30$(_x_47, _x_48) {
  moonbitlang$core$builtin$$Hash$hash_combine$140$(_x_47, _x_48);
}
function moonbitlang$ulex$lib$util$bounded_enum$$BoundedEnum$lower_bound$1$() {
  return -1;
}
function moonbitlang$ulex$lib$util$bounded_enum$$BoundedEnum$upper_bound$1$() {
  return 1114111;
}
function moonbitlang$ulex$lib$util$bounded_enum$$BoundedEnum$pred$1$(self) {
  return self > -1 ? self - 1 | 0 : $panic();
}
function moonbitlang$ulex$lib$util$bounded_enum$$BoundedEnum$succ$1$(self) {
  return self < 1114111 ? self + 1 | 0 : $panic();
}
function moonbitlang$ulex$lib$util$eof_char_set$$EofChar$eof() {
  return -1;
}
function moonbitlang$ulex$lib$util$eof_char_set$$EofChar$char(x) {
  return x;
}
function moonbitlang$ulex$lib$util$eof_char_set$$EofChar$repr(self) {
  return self === -1 ? $64$moonbitlang$47$ulex$47$lib$47$util$47$eof_char_set$46$EofCharRepr$Eof : new $64$moonbitlang$47$ulex$47$lib$47$util$47$eof_char_set$46$EofCharRepr$Char(self);
}
function moonbitlang$ulex$lib$util$eof_char_set$$singleton(x) {
  return moonbitlang$ulex$lib$util$diet$$singleton$1$(moonbitlang$ulex$lib$util$eof_char_set$$EofChar$char(x));
}
function moonbitlang$ulex$lib$util$eof_char_set$$range(min, max) {
  return moonbitlang$ulex$lib$util$diet$$interval$1$(moonbitlang$ulex$lib$util$eof_char_set$$EofChar$char(min), moonbitlang$ulex$lib$util$eof_char_set$$EofChar$char(max));
}
function moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$complement(self) {
  return moonbitlang$ulex$lib$util$diet$$Tree$complement$1$(self);
}
function moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$negated(self) {
  return moonbitlang$core$builtin$$Sub$op_sub$30$(moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$complement(self), moonbitlang$ulex$lib$util$eof_char_set$$eof);
}
function moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$is_empty(self) {
  return moonbitlang$ulex$lib$util$diet$$Tree$is_empty$1$(self);
}
function moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$union(self, other) {
  return moonbitlang$ulex$lib$util$diet$$union$1$(self, other);
}
function moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$intersection(self, other) {
  return moonbitlang$ulex$lib$util$diet$$intersection$1$(self, other);
}
function moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$difference(self, other) {
  return moonbitlang$ulex$lib$util$diet$$difference$1$(self, other);
}
function moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$subset(self, other) {
  return moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$is_empty(moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$difference(self, other));
}
function moonbitlang$core$builtin$$Add$op_add$30$(self, other) {
  return moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$union(self, other);
}
function moonbitlang$core$builtin$$Sub$op_sub$30$(self, other) {
  return moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$difference(self, other);
}
function moonbitlang$core$builtin$$BitAnd$land$30$(self, other) {
  return moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$intersection(self, other);
}
function moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$iter_ranges(self) {
  return moonbitlang$ulex$lib$util$diet$$Tree$iter_intervals$1$(self);
}
function moonbitlang$ulex$lib$type$$get_char_vars$46$analyze$124$15(re) {
  let _tmp = re;
  _L: while (true) {
    const re$2 = _tmp;
    _L$2: {
      switch (re$2.$tag) {
        case 3: {
          break _L$2;
        }
        case 0: {
          break _L$2;
        }
        case 1: {
          return { _0: moonbitlang$core$immut$sorted_set$$new$23$(), _1: moonbitlang$core$immut$sorted_set$$new$23$(), _2: 1 };
        }
        case 2: {
          const _Repetition = re$2;
          const _re = _Repetition._0;
          const _bind = moonbitlang$ulex$lib$type$$get_char_vars$46$analyze$124$15(_re);
          const _char_vars = _bind._0;
          const _str_vars = _bind._1;
          const _len = _bind._2;
          switch (_len) {
            case 0: {
              return { _0: _char_vars, _1: _str_vars, _2: 0 };
            }
            case 1: {
              return { _0: _char_vars, _1: _str_vars, _2: 2 };
            }
            default: {
              return { _0: _char_vars, _1: _str_vars, _2: 2 };
            }
          }
        }
        case 5: {
          const _Concat = re$2;
          const _re1 = _Concat._0;
          const _re2 = _Concat._1;
          const _bind$2 = moonbitlang$ulex$lib$type$$get_char_vars$46$analyze$124$15(_re1);
          const _char_vars1 = _bind$2._0;
          const _str_vars1 = _bind$2._1;
          const _len1 = _bind$2._2;
          const _bind$3 = moonbitlang$ulex$lib$type$$get_char_vars$46$analyze$124$15(_re2);
          const _char_vars2 = _bind$3._0;
          const _str_vars2 = _bind$3._1;
          const _len2 = _bind$3._2;
          const _tmp$2 = moonbitlang$core$immut$sorted_set$$T$union$23$(_char_vars1, _char_vars2);
          const _tmp$3 = moonbitlang$core$immut$sorted_set$$T$union$23$(_str_vars1, _str_vars2);
          let _tmp$4;
          if (_len1 === 0) {
            _tmp$4 = _len2;
          } else {
            if (_len2 === 0) {
              _tmp$4 = _len1;
            } else {
              if (_len1 === 2) {
                _tmp$4 = 2;
              } else {
                if (_len2 === 2) {
                  _tmp$4 = 2;
                } else {
                  _tmp$4 = 2;
                }
              }
            }
          }
          return { _0: _tmp$2, _1: _tmp$3, _2: _tmp$4 };
        }
        case 4: {
          const _Alter = re$2;
          const _re1$2 = _Alter._0;
          const _re2$2 = _Alter._1;
          const _bind$4 = moonbitlang$ulex$lib$type$$get_char_vars$46$analyze$124$15(_re1$2);
          const _char_vars1$2 = _bind$4._0;
          const _str_vars1$2 = _bind$4._1;
          const _len1$2 = _bind$4._2;
          const _bind$5 = moonbitlang$ulex$lib$type$$get_char_vars$46$analyze$124$15(_re2$2);
          const _char_vars2$2 = _bind$5._0;
          const _str_vars2$2 = _bind$5._1;
          const _len2$2 = _bind$5._2;
          const _tmp$5 = moonbitlang$core$immut$sorted_set$$T$union$23$(_char_vars1$2, _char_vars2$2);
          const _tmp$6 = moonbitlang$core$immut$sorted_set$$T$union$23$(_str_vars1$2, _str_vars2$2);
          let _tmp$7;
          switch (_len1$2) {
            case 1: {
              switch (_len2$2) {
                case 1: {
                  _tmp$7 = 1;
                  break;
                }
                case 0: {
                  _tmp$7 = 2;
                  break;
                }
                default: {
                  _tmp$7 = 2;
                }
              }
              break;
            }
            case 0: {
              _tmp$7 = 2;
              break;
            }
            default: {
              _tmp$7 = 2;
            }
          }
          return { _0: _tmp$5, _1: _tmp$6, _2: _tmp$7 };
        }
        case 6: {
          const _Capture = re$2;
          const _re$2 = _Capture._0;
          const _var = _Capture._1;
          const _bind$6 = moonbitlang$ulex$lib$type$$get_char_vars$46$analyze$124$15(_re$2);
          const _char_vars$2 = _bind$6._0;
          const _str_vars$2 = _bind$6._1;
          const _len$2 = _bind$6._2;
          _L$3: {
            switch (_len$2) {
              case 1: {
                return { _0: moonbitlang$core$immut$sorted_set$$T$add$23$(_char_vars$2, _var), _1: _str_vars$2, _2: 1 };
              }
              case 0: {
                break _L$3;
              }
              default: {
                break _L$3;
              }
            }
          }
          return { _0: _char_vars$2, _1: moonbitlang$core$immut$sorted_set$$T$add$23$(_str_vars$2, _var), _2: _len$2 };
        }
        default: {
          const _Bytes = re$2;
          const _re$3 = _Bytes._1;
          _tmp = _re$3;
          continue _L;
        }
      }
    }
    return { _0: moonbitlang$core$immut$sorted_set$$new$23$(), _1: moonbitlang$core$immut$sorted_set$$new$23$(), _2: 0 };
  }
}
function moonbitlang$ulex$lib$type$$get_char_vars(re) {
  const _bind = moonbitlang$ulex$lib$type$$get_char_vars$46$analyze$124$15(re);
  const _char_vars = _bind._0;
  const _str_vars = _bind._1;
  return moonbitlang$core$immut$sorted_set$$T$difference$23$(_char_vars, _str_vars);
}
function moonbitlang$ulex$lib$type$$Regex$get_capture_names_rec(self) {
  let _tmp = self;
  _L: while (true) {
    const self$2 = _tmp;
    _L$2: {
      let re1;
      let re2;
      _L$3: {
        let re;
        _L$4: {
          switch (self$2.$tag) {
            case 6: {
              const _Capture = self$2;
              const _re = _Capture._0;
              const _name = _Capture._1;
              return moonbitlang$core$builtin$$Iter$append$23$(moonbitlang$ulex$lib$type$$Regex$get_capture_names_rec(_re), _name);
            }
            case 2: {
              const _Repetition = self$2;
              const _re$2 = _Repetition._0;
              re = _re$2;
              break _L$4;
            }
            case 7: {
              const _Bytes = self$2;
              const _re$3 = _Bytes._1;
              re = _re$3;
              break _L$4;
            }
            case 4: {
              const _Alter = self$2;
              const _re1 = _Alter._0;
              const _re2 = _Alter._1;
              re1 = _re1;
              re2 = _re2;
              break _L$3;
            }
            case 5: {
              const _Concat = self$2;
              const _re1$2 = _Concat._0;
              const _re2$2 = _Concat._1;
              re1 = _re1$2;
              re2 = _re2$2;
              break _L$3;
            }
            case 0: {
              break _L$2;
            }
            case 1: {
              break _L$2;
            }
            default: {
              break _L$2;
            }
          }
        }
        _tmp = re;
        continue;
      }
      const _bind = moonbitlang$ulex$lib$type$$Regex$get_capture_names_rec(re1);
      const _bind$2 = moonbitlang$ulex$lib$type$$Regex$get_capture_names_rec(re2);
      return (_p) => _bind(_p) === 1 && _bind$2(_p) === 1 ? 1 : 0;
    }
    return moonbitlang$core$builtin$$Iter$empty$23$();
  }
}
function moonbitlang$ulex$lib$type$$Regex$get_capture_names(self) {
  const char_vars = moonbitlang$ulex$lib$type$$get_char_vars(self);
  const _bind = moonbitlang$ulex$lib$type$$Regex$get_capture_names_rec(self);
  const result = moonbitlang$core$builtin$$Iter$to_array$105$((_p) => _bind((_p$2) => {
    const _bind$2 = moonbitlang$core$immut$sorted_set$$T$contains$23$(char_vars, _p$2);
    let _tmp;
    if (_bind$2 === true) {
      _tmp = { _0: _p$2, _1: 0 };
    } else {
      _tmp = { _0: _p$2, _1: 1 };
    }
    return _p(_tmp);
  }));
  if (moonbitlang$core$builtin$$Map$size$98$(moonbitlang$core$builtin$$Map$from_array$98$(result)) !== result.length) {
    moonbitlang$core$builtin$$abort$21$("Duplicate capture names");
  }
  return result;
}
function moonbitlang$ulex$45$runtime$lexbuf$$StringLexbuf$from_string(string) {
  return { data: string, end: string.length, pos: 0 };
}
function moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(self) {
  const pos = self.pos;
  const end = self.end;
  if (self.pos < end) {
    const _tmp = self.data;
    const c = _tmp.charCodeAt(pos);
    if (c >= 55296 && c <= 56319) {
      const pos2 = pos + 1 | 0;
      if (pos2 < end) {
        const _tmp$2 = self.data;
        const c2 = _tmp$2.charCodeAt(pos2);
        if (c2 >= 56320 && c2 <= 57343) {
          self.pos = pos2 + 1 | 0;
          return (((Math.imul(c - 55296 | 0, 1024) | 0) + c2 | 0) - 56320 | 0) + 65536 | 0;
        }
      }
    }
    self.pos = pos + 1 | 0;
    return c;
  }
  return -1;
}
function moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(self) {
  return self.pos;
}
function moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$reset$141$(self, pos) {
  self.pos = pos;
}
function moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$get_char$141$(self, start, _end) {
  return moonbitlang$core$string$$String$unsafe_char_at(self.data, start);
}
function moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$get_string$141$(self, start, end) {
  return moonbitlang$core$string$$String$substring(self.data, start, end);
}
function moonbitlang$ulex$lib$parser$$code_rbrace$141$(buffer, lexbuf) {
  let _tmp = buffer;
  let _tmp$2 = lexbuf;
  _L: while (true) {
    const buffer$2 = _tmp;
    const lexbuf$2 = _tmp$2;
    let matched = moonbitlang$core$int$$max_value;
    let _end_pos = -1;
    moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
    let _capture_0_start = -1;
    let _capture_0_end = -1;
    let _tag_0 = -1;
    let _tag_1 = -1;
    let _tag_2 = -1;
    let _tag_3 = -1;
    let _tag_4 = -1;
    let _tag_5 = -1;
    let _tag_6 = -1;
    let _tag_7 = -1;
    let _tmp$3 = 0;
    _L$2: while (true) {
      const _param = _tmp$3;
      switch (_param) {
        case 0: {
          _tag_0 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          _tag_2 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          _tag_4 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          _tag_6 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$4;
          if (_bind === -1) {
            _tmp$4 = 1;
          } else {
            if (_bind >= 0 && _bind <= 33) {
              _tmp$4 = 2;
            } else {
              if (_bind === 34) {
                _tmp$4 = 3;
              } else {
                if (_bind >= 35 && _bind <= 38) {
                  _tmp$4 = 2;
                } else {
                  if (_bind === 39) {
                    _tmp$4 = 4;
                  } else {
                    if (_bind >= 40 && _bind <= 46) {
                      _tmp$4 = 2;
                    } else {
                      if (_bind === 47) {
                        _tmp$4 = 5;
                      } else {
                        if (_bind >= 48 && _bind <= 122) {
                          _tmp$4 = 2;
                        } else {
                          if (_bind === 123) {
                            _tmp$4 = 6;
                          } else {
                            if (_bind === 124) {
                              _tmp$4 = 2;
                            } else {
                              if (_bind === 125) {
                                _tmp$4 = 7;
                              } else {
                                if (_bind >= 126 && _bind <= 1114111) {
                                  _tmp$4 = 2;
                                } else {
                                  break _L$2;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
          _tmp$3 = _tmp$4;
          continue _L$2;
        }
        case 1: {
          if (matched >= 6) {
            matched = 6;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 2: {
          _tag_7 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 5) {
            matched = 5;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_6;
            _capture_0_end = _tag_7;
          }
          break _L$2;
        }
        case 3: {
          _tag_7 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 5) {
            matched = 5;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_6;
            _capture_0_end = _tag_7;
          }
          const _bind$2 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$5;
          if (_bind$2 >= 0 && _bind$2 <= 33) {
            _tmp$5 = 10;
          } else {
            if (_bind$2 === 34) {
              _tmp$5 = 11;
            } else {
              if (_bind$2 >= 35 && _bind$2 <= 91) {
                _tmp$5 = 10;
              } else {
                if (_bind$2 === 92) {
                  _tmp$5 = 12;
                } else {
                  if (_bind$2 >= 93 && _bind$2 <= 1114111) {
                    _tmp$5 = 10;
                  } else {
                    break _L$2;
                  }
                }
              }
            }
          }
          _tmp$3 = _tmp$5;
          continue _L$2;
        }
        case 4: {
          _tag_7 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 5) {
            matched = 5;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_6;
            _capture_0_end = _tag_7;
          }
          const _bind$3 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$6;
          if (_bind$3 >= 0 && _bind$3 <= 38) {
            _tmp$6 = 9;
          } else {
            if (_bind$3 >= 40 && _bind$3 <= 91) {
              _tmp$6 = 9;
            } else {
              if (_bind$3 >= 93 && _bind$3 <= 1114111) {
                _tmp$6 = 9;
              } else {
                break _L$2;
              }
            }
          }
          _tmp$3 = _tmp$6;
          continue _L$2;
        }
        case 5: {
          _tag_7 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 5) {
            matched = 5;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_6;
            _capture_0_end = _tag_7;
          }
          const _bind$4 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$7;
          if (_bind$4 === 47) {
            _tmp$7 = 8;
          } else {
            break _L$2;
          }
          _tmp$3 = _tmp$7;
          continue _L$2;
        }
        case 6: {
          _tag_7 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 3) {
            matched = 3;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 7: {
          _tag_7 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 4) {
            matched = 4;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 8: {
          const _bind$5 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$8;
          if (_bind$5 >= 0 && _bind$5 <= 9) {
            _tmp$8 = 13;
          } else {
            if (_bind$5 >= 11 && _bind$5 <= 1114111) {
              _tmp$8 = 13;
            } else {
              break _L$2;
            }
          }
          _tmp$3 = _tmp$8;
          continue _L$2;
        }
        case 9: {
          const _bind$6 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$9;
          if (_bind$6 === 39) {
            _tmp$9 = 14;
          } else {
            break _L$2;
          }
          _tmp$3 = _tmp$9;
          continue _L$2;
        }
        case 10: {
          const _bind$7 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$10;
          if (_bind$7 >= 0 && _bind$7 <= 33) {
            _tmp$10 = 10;
          } else {
            if (_bind$7 === 34) {
              _tmp$10 = 11;
            } else {
              if (_bind$7 >= 35 && _bind$7 <= 91) {
                _tmp$10 = 10;
              } else {
                if (_bind$7 === 92) {
                  _tmp$10 = 12;
                } else {
                  if (_bind$7 >= 93 && _bind$7 <= 1114111) {
                    _tmp$10 = 10;
                  } else {
                    break _L$2;
                  }
                }
              }
            }
          }
          _tmp$3 = _tmp$10;
          continue _L$2;
        }
        case 11: {
          _tag_3 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 1) {
            matched = 1;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_2;
            _capture_0_end = _tag_3;
          }
          break _L$2;
        }
        case 12: {
          const _bind$8 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$11;
          if (_bind$8 >= 0 && _bind$8 <= 1114111) {
            _tmp$11 = 10;
          } else {
            break _L$2;
          }
          _tmp$3 = _tmp$11;
          continue _L$2;
        }
        case 13: {
          const _bind$9 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$12;
          if (_bind$9 >= 0 && _bind$9 <= 9) {
            _tmp$12 = 13;
          } else {
            if (_bind$9 === 10) {
              _tmp$12 = 15;
            } else {
              if (_bind$9 >= 11 && _bind$9 <= 1114111) {
                _tmp$12 = 13;
              } else {
                break _L$2;
              }
            }
          }
          _tmp$3 = _tmp$12;
          continue _L$2;
        }
        case 14: {
          _tag_5 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 2) {
            matched = 2;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_4;
            _capture_0_end = _tag_5;
          }
          break _L$2;
        }
        case 15: {
          _tag_1 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 0) {
            matched = 0;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_0;
            _capture_0_end = _tag_1;
          }
          break _L$2;
        }
        default: {
          $panic();
          break _L$2;
        }
      }
    }
    if (matched <= 6) {
      moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$reset$141$(lexbuf$2, _end_pos);
      const _bind = matched;
      switch (_bind) {
        case 0: {
          const _start_pos_of_t = _capture_0_start;
          const _end_pos_of_t = _capture_0_end;
          const t = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$get_string$141$(lexbuf$2, _start_pos_of_t, _end_pos_of_t);
          moonbitlang$core$builtin$$Logger$write_string$22$(buffer$2, t);
          continue _L;
        }
        case 1: {
          const _start_pos_of_t$2 = _capture_0_start;
          const _end_pos_of_t$2 = _capture_0_end;
          const t$2 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$get_string$141$(lexbuf$2, _start_pos_of_t$2, _end_pos_of_t$2);
          moonbitlang$core$builtin$$Logger$write_string$22$(buffer$2, t$2);
          continue _L;
        }
        case 2: {
          const _start_pos_of_t$3 = _capture_0_start;
          const _end_pos_of_t$3 = _capture_0_end;
          const t$3 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$get_string$141$(lexbuf$2, _start_pos_of_t$3, _end_pos_of_t$3);
          moonbitlang$core$builtin$$Logger$write_string$22$(buffer$2, t$3);
          continue _L;
        }
        case 3: {
          moonbitlang$core$builtin$$Logger$write_string$22$(buffer$2, "{");
          moonbitlang$ulex$lib$parser$$code_rbrace$141$(buffer$2, lexbuf$2);
          moonbitlang$core$builtin$$Logger$write_string$22$(buffer$2, "}");
          continue _L;
        }
        case 4: {
          return _end_pos;
        }
        case 5: {
          const _start_pos_of_t$4 = _capture_0_start;
          const _end_pos_of_t$4 = _capture_0_end;
          const t$4 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$get_char$141$(lexbuf$2, _start_pos_of_t$4, _end_pos_of_t$4);
          moonbitlang$core$builtin$$Logger$write_char$22$(buffer$2, t$4);
          continue _L;
        }
        case 6: {
          return moonbitlang$core$builtin$$abort$8$("Unexpected end of input");
        }
        default: {
          return $panic();
        }
      }
    } else {
      return $panic();
    }
  }
}
function moonbitlang$ulex$lib$parser$$string_inner_rquote$141$(buffer, lexbuf) {
  let _tmp = buffer;
  let _tmp$2 = lexbuf;
  _L: while (true) {
    const buffer$2 = _tmp;
    const lexbuf$2 = _tmp$2;
    let matched = moonbitlang$core$int$$max_value;
    let _end_pos = -1;
    moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
    let _capture_0_start = -1;
    let _capture_0_end = -1;
    let _tag_0 = -1;
    let _tag_1 = -1;
    let _tag_2 = -1;
    let _tag_3 = -1;
    let _tag_4 = -1;
    let _tag_5 = -1;
    let _tag_6 = -1;
    let _tag_7 = -1;
    let _tmp$3 = 0;
    _L$2: while (true) {
      const _param = _tmp$3;
      switch (_param) {
        case 0: {
          _tag_6 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$4;
          if (_bind === -1) {
            _tmp$4 = 1;
          } else {
            if (_bind >= 0 && _bind <= 33) {
              _tmp$4 = 2;
            } else {
              if (_bind === 34) {
                _tmp$4 = 3;
              } else {
                if (_bind >= 35 && _bind <= 91) {
                  _tmp$4 = 2;
                } else {
                  if (_bind === 92) {
                    _tmp$4 = 4;
                  } else {
                    if (_bind >= 93 && _bind <= 1114111) {
                      _tmp$4 = 2;
                    } else {
                      break _L$2;
                    }
                  }
                }
              }
            }
          }
          _tmp$3 = _tmp$4;
          continue _L$2;
        }
        case 1: {
          if (matched >= 12) {
            matched = 12;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 2: {
          _tag_7 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 11) {
            matched = 11;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_6;
            _capture_0_end = _tag_7;
          }
          break _L$2;
        }
        case 3: {
          _tag_7 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 0) {
            matched = 0;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 4: {
          _tag_7 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 11) {
            matched = 11;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_6;
            _capture_0_end = _tag_7;
          }
          const _bind$2 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$5;
          switch (_bind$2) {
            case 34: {
              _tmp$5 = 5;
              break;
            }
            case 92: {
              _tmp$5 = 6;
              break;
            }
            case 98: {
              _tmp$5 = 7;
              break;
            }
            case 110: {
              _tmp$5 = 8;
              break;
            }
            case 114: {
              _tmp$5 = 9;
              break;
            }
            case 116: {
              _tmp$5 = 10;
              break;
            }
            case 117: {
              _tmp$5 = 11;
              break;
            }
            case 118: {
              _tmp$5 = 12;
              break;
            }
            case 120: {
              _tmp$5 = 13;
              break;
            }
            default: {
              break _L$2;
            }
          }
          _tmp$3 = _tmp$5;
          continue _L$2;
        }
        case 5: {
          if (matched >= 7) {
            matched = 7;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 6: {
          if (matched >= 6) {
            matched = 6;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 7: {
          if (matched >= 1) {
            matched = 1;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 8: {
          if (matched >= 5) {
            matched = 5;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 9: {
          if (matched >= 4) {
            matched = 4;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 10: {
          if (matched >= 2) {
            matched = 2;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 11: {
          _tag_2 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind$3 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$6;
          if (_bind$3 >= 48 && _bind$3 <= 57) {
            _tmp$6 = 15;
          } else {
            if (_bind$3 >= 65 && _bind$3 <= 70) {
              _tmp$6 = 15;
            } else {
              if (_bind$3 >= 97 && _bind$3 <= 102) {
                _tmp$6 = 15;
              } else {
                if (_bind$3 === 123) {
                  _tmp$6 = 16;
                } else {
                  break _L$2;
                }
              }
            }
          }
          _tmp$3 = _tmp$6;
          continue _L$2;
        }
        case 12: {
          if (matched >= 3) {
            matched = 3;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 13: {
          _tag_0 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind$4 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$7;
          if (_bind$4 >= 48 && _bind$4 <= 57) {
            _tmp$7 = 14;
          } else {
            if (_bind$4 >= 65 && _bind$4 <= 70) {
              _tmp$7 = 14;
            } else {
              if (_bind$4 >= 97 && _bind$4 <= 102) {
                _tmp$7 = 14;
              } else {
                break _L$2;
              }
            }
          }
          _tmp$3 = _tmp$7;
          continue _L$2;
        }
        case 14: {
          const _bind$5 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$8;
          if (_bind$5 >= 48 && _bind$5 <= 57) {
            _tmp$8 = 17;
          } else {
            if (_bind$5 >= 65 && _bind$5 <= 70) {
              _tmp$8 = 17;
            } else {
              if (_bind$5 >= 97 && _bind$5 <= 102) {
                _tmp$8 = 17;
              } else {
                break _L$2;
              }
            }
          }
          _tmp$3 = _tmp$8;
          continue _L$2;
        }
        case 15: {
          const _bind$6 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$9;
          if (_bind$6 >= 48 && _bind$6 <= 57) {
            _tmp$9 = 19;
          } else {
            if (_bind$6 >= 65 && _bind$6 <= 70) {
              _tmp$9 = 19;
            } else {
              if (_bind$6 >= 97 && _bind$6 <= 102) {
                _tmp$9 = 19;
              } else {
                break _L$2;
              }
            }
          }
          _tmp$3 = _tmp$9;
          continue _L$2;
        }
        case 16: {
          _tag_4 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind$7 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$10;
          if (_bind$7 >= 48 && _bind$7 <= 57) {
            _tmp$10 = 18;
          } else {
            if (_bind$7 >= 65 && _bind$7 <= 70) {
              _tmp$10 = 18;
            } else {
              if (_bind$7 >= 97 && _bind$7 <= 102) {
                _tmp$10 = 18;
              } else {
                break _L$2;
              }
            }
          }
          _tmp$3 = _tmp$10;
          continue _L$2;
        }
        case 17: {
          _tag_1 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind$8 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$11;
          if (_bind$8 === 39) {
            _tmp$11 = 20;
          } else {
            break _L$2;
          }
          _tmp$3 = _tmp$11;
          continue _L$2;
        }
        case 18: {
          _tag_5 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind$9 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$12;
          if (_bind$9 >= 48 && _bind$9 <= 57) {
            _tmp$12 = 18;
          } else {
            if (_bind$9 >= 65 && _bind$9 <= 70) {
              _tmp$12 = 18;
            } else {
              if (_bind$9 >= 97 && _bind$9 <= 102) {
                _tmp$12 = 18;
              } else {
                if (_bind$9 === 125) {
                  _tmp$12 = 21;
                } else {
                  break _L$2;
                }
              }
            }
          }
          _tmp$3 = _tmp$12;
          continue _L$2;
        }
        case 19: {
          const _bind$10 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$13;
          if (_bind$10 >= 48 && _bind$10 <= 57) {
            _tmp$13 = 22;
          } else {
            if (_bind$10 >= 65 && _bind$10 <= 70) {
              _tmp$13 = 22;
            } else {
              if (_bind$10 >= 97 && _bind$10 <= 102) {
                _tmp$13 = 22;
              } else {
                break _L$2;
              }
            }
          }
          _tmp$3 = _tmp$13;
          continue _L$2;
        }
        case 20: {
          if (matched >= 8) {
            matched = 8;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_0;
            _capture_0_end = _tag_1;
          }
          break _L$2;
        }
        case 21: {
          const _bind$11 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$14;
          if (_bind$11 === 39) {
            _tmp$14 = 23;
          } else {
            break _L$2;
          }
          _tmp$3 = _tmp$14;
          continue _L$2;
        }
        case 22: {
          const _bind$12 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$15;
          if (_bind$12 >= 48 && _bind$12 <= 57) {
            _tmp$15 = 24;
          } else {
            if (_bind$12 >= 65 && _bind$12 <= 70) {
              _tmp$15 = 24;
            } else {
              if (_bind$12 >= 97 && _bind$12 <= 102) {
                _tmp$15 = 24;
              } else {
                break _L$2;
              }
            }
          }
          _tmp$3 = _tmp$15;
          continue _L$2;
        }
        case 23: {
          if (matched >= 10) {
            matched = 10;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_4;
            _capture_0_end = _tag_5;
          }
          break _L$2;
        }
        case 24: {
          _tag_3 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind$13 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$16;
          if (_bind$13 === 39) {
            _tmp$16 = 25;
          } else {
            break _L$2;
          }
          _tmp$3 = _tmp$16;
          continue _L$2;
        }
        case 25: {
          if (matched >= 9) {
            matched = 9;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_2;
            _capture_0_end = _tag_3;
          }
          break _L$2;
        }
        default: {
          $panic();
          break _L$2;
        }
      }
    }
    if (matched <= 12) {
      moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$reset$141$(lexbuf$2, _end_pos);
      const _bind = matched;
      switch (_bind) {
        case 0: {
          return _end_pos;
        }
        case 1: {
          moonbitlang$core$builtin$$Logger$write_char$22$(buffer$2, 8);
          continue _L;
        }
        case 2: {
          moonbitlang$core$builtin$$Logger$write_char$22$(buffer$2, 9);
          continue _L;
        }
        case 3: {
          moonbitlang$core$builtin$$Logger$write_char$22$(buffer$2, 11);
          continue _L;
        }
        case 4: {
          moonbitlang$core$builtin$$Logger$write_char$22$(buffer$2, 13);
          continue _L;
        }
        case 5: {
          moonbitlang$core$builtin$$Logger$write_char$22$(buffer$2, 10);
          continue _L;
        }
        case 6: {
          moonbitlang$core$builtin$$Logger$write_char$22$(buffer$2, 92);
          continue _L;
        }
        case 7: {
          moonbitlang$core$builtin$$Logger$write_char$22$(buffer$2, 34);
          continue _L;
        }
        case 8: {
          const _start_pos_of_t = _capture_0_start;
          const _end_pos_of_t = _capture_0_end;
          const t = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$get_string$141$(lexbuf$2, _start_pos_of_t, _end_pos_of_t);
          const code = moonbitlang$core$result$$Result$unwrap$46$(moonbitlang$core$strconv$$parse_int(t, 16));
          moonbitlang$core$builtin$$Logger$write_char$22$(buffer$2, code);
          continue _L;
        }
        case 9: {
          const _start_pos_of_t$2 = _capture_0_start;
          const _end_pos_of_t$2 = _capture_0_end;
          const t$2 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$get_string$141$(lexbuf$2, _start_pos_of_t$2, _end_pos_of_t$2);
          const code$2 = moonbitlang$core$result$$Result$unwrap$46$(moonbitlang$core$strconv$$parse_int(t$2, 16));
          moonbitlang$core$builtin$$Logger$write_char$22$(buffer$2, code$2);
          continue _L;
        }
        case 10: {
          const _start_pos_of_t$3 = _capture_0_start;
          const _end_pos_of_t$3 = _capture_0_end;
          const t$3 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$get_string$141$(lexbuf$2, _start_pos_of_t$3, _end_pos_of_t$3);
          const code$3 = moonbitlang$core$result$$Result$unwrap$46$(moonbitlang$core$strconv$$parse_int(t$3, 16));
          moonbitlang$core$builtin$$Logger$write_char$22$(buffer$2, code$3);
          continue _L;
        }
        case 11: {
          const _start_pos_of_t$4 = _capture_0_start;
          const _end_pos_of_t$4 = _capture_0_end;
          const t$4 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$get_char$141$(lexbuf$2, _start_pos_of_t$4, _end_pos_of_t$4);
          moonbitlang$core$builtin$$Logger$write_char$22$(buffer$2, t$4);
          continue _L;
        }
        case 12: {
          return moonbitlang$core$builtin$$abort$8$("Unexpected end of input");
        }
        default: {
          return $panic();
        }
      }
    } else {
      return $panic();
    }
  }
}
function moonbitlang$ulex$lib$parser$$token$141$(lexbuf) {
  let _tmp = lexbuf;
  _L: while (true) {
    const lexbuf$2 = _tmp;
    let matched = moonbitlang$core$int$$max_value;
    let _end_pos = -1;
    let _start_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
    let _capture_0_start = -1;
    let _capture_0_end = -1;
    let _capture_1_start = -1;
    let _capture_1_end = -1;
    let _tag_0 = -1;
    let _tag_1 = -1;
    let _tag_1_1 = -1;
    let _tag_2 = -1;
    let _tag_3 = -1;
    let _tag_3_1 = -1;
    let _tag_4 = -1;
    let _tag_5 = -1;
    let _tag_6 = -1;
    let _tag_7 = -1;
    let _tag_8 = -1;
    let _tag_9 = -1;
    let _tag_10 = -1;
    let _tag_11 = -1;
    let _tag_12 = -1;
    let _tag_13 = -1;
    let _tmp$2 = 0;
    _L$2: while (true) {
      const _param = _tmp$2;
      switch (_param) {
        case 0: {
          _tag_12 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$3;
          if (_bind === -1) {
            _tmp$3 = 1;
          } else {
            if (_bind >= 9 && _bind <= 10) {
              _tmp$3 = 2;
            } else {
              if (_bind === 13) {
                _tmp$3 = 2;
              } else {
                if (_bind === 32) {
                  _tmp$3 = 2;
                } else {
                  if (_bind === 34) {
                    _tmp$3 = 3;
                  } else {
                    if (_bind === 39) {
                      _tmp$3 = 4;
                    } else {
                      if (_bind === 40) {
                        _tmp$3 = 5;
                      } else {
                        if (_bind === 41) {
                          _tmp$3 = 6;
                        } else {
                          if (_bind === 42) {
                            _tmp$3 = 7;
                          } else {
                            if (_bind === 43) {
                              _tmp$3 = 8;
                            } else {
                              if (_bind === 45) {
                                _tmp$3 = 9;
                              } else {
                                if (_bind === 47) {
                                  _tmp$3 = 10;
                                } else {
                                  if (_bind === 58) {
                                    _tmp$3 = 11;
                                  } else {
                                    if (_bind === 59) {
                                      _tmp$3 = 12;
                                    } else {
                                      if (_bind === 61) {
                                        _tmp$3 = 13;
                                      } else {
                                        if (_bind === 63) {
                                          _tmp$3 = 14;
                                        } else {
                                          if (_bind === 91) {
                                            _tmp$3 = 15;
                                          } else {
                                            if (_bind === 92) {
                                              _tmp$3 = 16;
                                            } else {
                                              if (_bind === 93) {
                                                _tmp$3 = 17;
                                              } else {
                                                if (_bind === 94) {
                                                  _tmp$3 = 18;
                                                } else {
                                                  if (_bind === 95) {
                                                    _tmp$3 = 19;
                                                  } else {
                                                    if (_bind >= 97 && _bind <= 111) {
                                                      _tmp$3 = 20;
                                                    } else {
                                                      if (_bind === 112) {
                                                        _tmp$3 = 21;
                                                      } else {
                                                        if (_bind === 113) {
                                                          _tmp$3 = 20;
                                                        } else {
                                                          if (_bind === 114) {
                                                            _tmp$3 = 22;
                                                          } else {
                                                            if (_bind >= 115 && _bind <= 122) {
                                                              _tmp$3 = 20;
                                                            } else {
                                                              if (_bind === 123) {
                                                                _tmp$3 = 23;
                                                              } else {
                                                                if (_bind === 124) {
                                                                  _tmp$3 = 24;
                                                                } else {
                                                                  if (_bind === 125) {
                                                                    _tmp$3 = 25;
                                                                  } else {
                                                                    break _L$2;
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
          _tmp$2 = _tmp$3;
          continue _L$2;
        }
        case 1: {
          if (matched >= 2) {
            matched = 2;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 2: {
          if (matched >= 0) {
            matched = 0;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          const _bind$2 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$4;
          if (_bind$2 >= 9 && _bind$2 <= 10) {
            _tmp$4 = 2;
          } else {
            if (_bind$2 === 13) {
              _tmp$4 = 2;
            } else {
              if (_bind$2 === 32) {
                _tmp$4 = 2;
              } else {
                break _L$2;
              }
            }
          }
          _tmp$2 = _tmp$4;
          continue _L$2;
        }
        case 3: {
          if (matched >= 34) {
            matched = 34;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 4: {
          _tag_4 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind$3 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$5;
          if (_bind$3 >= 0 && _bind$3 <= 38) {
            _tmp$5 = 30;
          } else {
            if (_bind$3 >= 40 && _bind$3 <= 91) {
              _tmp$5 = 30;
            } else {
              if (_bind$3 === 92) {
                _tmp$5 = 31;
              } else {
                if (_bind$3 >= 93 && _bind$3 <= 1114111) {
                  _tmp$5 = 30;
                } else {
                  break _L$2;
                }
              }
            }
          }
          _tmp$2 = _tmp$5;
          continue _L$2;
        }
        case 5: {
          if (matched >= 9) {
            matched = 9;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 6: {
          if (matched >= 10) {
            matched = 10;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 7: {
          if (matched >= 17) {
            matched = 17;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 8: {
          if (matched >= 18) {
            matched = 18;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 9: {
          if (matched >= 20) {
            matched = 20;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 10: {
          const _bind$4 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$6;
          if (_bind$4 === 47) {
            _tmp$6 = 29;
          } else {
            break _L$2;
          }
          _tmp$2 = _tmp$6;
          continue _L$2;
        }
        case 11: {
          if (matched >= 14) {
            matched = 14;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 12: {
          if (matched >= 15) {
            matched = 15;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 13: {
          if (matched >= 13) {
            matched = 13;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          const _bind$5 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$7;
          if (_bind$5 === 62) {
            _tmp$7 = 27;
          } else {
            break _L$2;
          }
          _tmp$2 = _tmp$7;
          continue _L$2;
        }
        case 14: {
          if (matched >= 19) {
            matched = 19;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 15: {
          if (matched >= 11) {
            matched = 11;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 16: {
          if (matched >= 22) {
            matched = 22;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 17: {
          if (matched >= 12) {
            matched = 12;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 18: {
          if (matched >= 21) {
            matched = 21;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 19: {
          _tag_13 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 6) {
            matched = 6;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          const _bind$6 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$8;
          if (_bind$6 >= 48 && _bind$6 <= 57) {
            _tmp$8 = 20;
          } else {
            if (_bind$6 >= 65 && _bind$6 <= 90) {
              _tmp$8 = 20;
            } else {
              if (_bind$6 === 95) {
                _tmp$8 = 20;
              } else {
                if (_bind$6 >= 97 && _bind$6 <= 122) {
                  _tmp$8 = 20;
                } else {
                  break _L$2;
                }
              }
            }
          }
          _tmp$2 = _tmp$8;
          continue _L$2;
        }
        case 20: {
          _tag_13 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 35) {
            matched = 35;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_12;
            _capture_0_end = _tag_13;
          }
          const _bind$7 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$9;
          if (_bind$7 >= 48 && _bind$7 <= 57) {
            _tmp$9 = 20;
          } else {
            if (_bind$7 >= 65 && _bind$7 <= 90) {
              _tmp$9 = 20;
            } else {
              if (_bind$7 === 95) {
                _tmp$9 = 20;
              } else {
                if (_bind$7 >= 97 && _bind$7 <= 122) {
                  _tmp$9 = 20;
                } else {
                  break _L$2;
                }
              }
            }
          }
          _tmp$2 = _tmp$9;
          continue _L$2;
        }
        case 21: {
          _tag_13 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 35) {
            matched = 35;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_12;
            _capture_0_end = _tag_13;
          }
          const _bind$8 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$10;
          if (_bind$8 >= 48 && _bind$8 <= 57) {
            _tmp$10 = 20;
          } else {
            if (_bind$8 >= 65 && _bind$8 <= 90) {
              _tmp$10 = 20;
            } else {
              if (_bind$8 === 95) {
                _tmp$10 = 20;
              } else {
                if (_bind$8 === 97) {
                  _tmp$10 = 28;
                } else {
                  if (_bind$8 >= 98 && _bind$8 <= 122) {
                    _tmp$10 = 20;
                  } else {
                    break _L$2;
                  }
                }
              }
            }
          }
          _tmp$2 = _tmp$10;
          continue _L$2;
        }
        case 22: {
          _tag_13 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 35) {
            matched = 35;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_12;
            _capture_0_end = _tag_13;
          }
          const _bind$9 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$11;
          if (_bind$9 >= 48 && _bind$9 <= 57) {
            _tmp$11 = 20;
          } else {
            if (_bind$9 >= 65 && _bind$9 <= 90) {
              _tmp$11 = 20;
            } else {
              if (_bind$9 === 95) {
                _tmp$11 = 20;
              } else {
                if (_bind$9 >= 97 && _bind$9 <= 116) {
                  _tmp$11 = 20;
                } else {
                  if (_bind$9 === 117) {
                    _tmp$11 = 26;
                  } else {
                    if (_bind$9 >= 118 && _bind$9 <= 122) {
                      _tmp$11 = 20;
                    } else {
                      break _L$2;
                    }
                  }
                }
              }
            }
          }
          _tmp$2 = _tmp$11;
          continue _L$2;
        }
        case 23: {
          if (matched >= 7) {
            matched = 7;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 24: {
          if (matched >= 16) {
            matched = 16;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 25: {
          if (matched >= 8) {
            matched = 8;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 26: {
          _tag_13 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 35) {
            matched = 35;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_12;
            _capture_0_end = _tag_13;
          }
          const _bind$10 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$12;
          if (_bind$10 >= 48 && _bind$10 <= 57) {
            _tmp$12 = 20;
          } else {
            if (_bind$10 >= 65 && _bind$10 <= 90) {
              _tmp$12 = 20;
            } else {
              if (_bind$10 === 95) {
                _tmp$12 = 20;
              } else {
                if (_bind$10 >= 97 && _bind$10 <= 107) {
                  _tmp$12 = 20;
                } else {
                  if (_bind$10 === 108) {
                    _tmp$12 = 32;
                  } else {
                    if (_bind$10 >= 109 && _bind$10 <= 122) {
                      _tmp$12 = 20;
                    } else {
                      break _L$2;
                    }
                  }
                }
              }
            }
          }
          _tmp$2 = _tmp$12;
          continue _L$2;
        }
        case 27: {
          if (matched >= 5) {
            matched = 5;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 28: {
          _tag_13 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 35) {
            matched = 35;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_12;
            _capture_0_end = _tag_13;
          }
          const _bind$11 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$13;
          if (_bind$11 >= 48 && _bind$11 <= 57) {
            _tmp$13 = 20;
          } else {
            if (_bind$11 >= 65 && _bind$11 <= 90) {
              _tmp$13 = 20;
            } else {
              if (_bind$11 === 95) {
                _tmp$13 = 20;
              } else {
                if (_bind$11 >= 97 && _bind$11 <= 113) {
                  _tmp$13 = 20;
                } else {
                  if (_bind$11 === 114) {
                    _tmp$13 = 33;
                  } else {
                    if (_bind$11 >= 115 && _bind$11 <= 122) {
                      _tmp$13 = 20;
                    } else {
                      break _L$2;
                    }
                  }
                }
              }
            }
          }
          _tmp$2 = _tmp$13;
          continue _L$2;
        }
        case 29: {
          if (matched >= 1) {
            matched = 1;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          const _bind$12 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$14;
          if (_bind$12 >= 0 && _bind$12 <= 9) {
            _tmp$14 = 29;
          } else {
            if (_bind$12 === 10) {
              _tmp$14 = 34;
            } else {
              if (_bind$12 >= 11 && _bind$12 <= 1114111) {
                _tmp$14 = 29;
              } else {
                break _L$2;
              }
            }
          }
          _tmp$2 = _tmp$14;
          continue _L$2;
        }
        case 30: {
          _tag_5 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind$13 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$15;
          if (_bind$13 === 39) {
            _tmp$15 = 35;
          } else {
            break _L$2;
          }
          _tmp$2 = _tmp$15;
          continue _L$2;
        }
        case 31: {
          const _bind$14 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$16;
          switch (_bind$14) {
            case 39: {
              _tmp$16 = 36;
              break;
            }
            case 92: {
              _tmp$16 = 37;
              break;
            }
            case 98: {
              _tmp$16 = 38;
              break;
            }
            case 110: {
              _tmp$16 = 39;
              break;
            }
            case 114: {
              _tmp$16 = 40;
              break;
            }
            case 116: {
              _tmp$16 = 41;
              break;
            }
            case 117: {
              _tmp$16 = 42;
              break;
            }
            case 118: {
              _tmp$16 = 43;
              break;
            }
            case 120: {
              _tmp$16 = 44;
              break;
            }
            default: {
              break _L$2;
            }
          }
          _tmp$2 = _tmp$16;
          continue _L$2;
        }
        case 32: {
          _tag_13 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 35) {
            matched = 35;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_12;
            _capture_0_end = _tag_13;
          }
          const _bind$15 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$17;
          if (_bind$15 >= 48 && _bind$15 <= 57) {
            _tmp$17 = 20;
          } else {
            if (_bind$15 >= 65 && _bind$15 <= 90) {
              _tmp$17 = 20;
            } else {
              if (_bind$15 === 95) {
                _tmp$17 = 20;
              } else {
                if (_bind$15 >= 97 && _bind$15 <= 100) {
                  _tmp$17 = 20;
                } else {
                  if (_bind$15 === 101) {
                    _tmp$17 = 45;
                  } else {
                    if (_bind$15 >= 102 && _bind$15 <= 122) {
                      _tmp$17 = 20;
                    } else {
                      break _L$2;
                    }
                  }
                }
              }
            }
          }
          _tmp$2 = _tmp$17;
          continue _L$2;
        }
        case 33: {
          _tag_13 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 35) {
            matched = 35;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_12;
            _capture_0_end = _tag_13;
          }
          const _bind$16 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$18;
          if (_bind$16 >= 48 && _bind$16 <= 57) {
            _tmp$18 = 20;
          } else {
            if (_bind$16 >= 65 && _bind$16 <= 90) {
              _tmp$18 = 20;
            } else {
              if (_bind$16 === 95) {
                _tmp$18 = 20;
              } else {
                if (_bind$16 >= 97 && _bind$16 <= 114) {
                  _tmp$18 = 20;
                } else {
                  if (_bind$16 === 115) {
                    _tmp$18 = 46;
                  } else {
                    if (_bind$16 >= 116 && _bind$16 <= 122) {
                      _tmp$18 = 20;
                    } else {
                      break _L$2;
                    }
                  }
                }
              }
            }
          }
          _tmp$2 = _tmp$18;
          continue _L$2;
        }
        case 34: {
          if (matched >= 1) {
            matched = 1;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 35: {
          if (matched >= 23) {
            matched = 23;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_4;
            _capture_0_end = _tag_5;
          }
          break _L$2;
        }
        case 36: {
          const _bind$17 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$19;
          if (_bind$17 === 39) {
            _tmp$19 = 47;
          } else {
            break _L$2;
          }
          _tmp$2 = _tmp$19;
          continue _L$2;
        }
        case 37: {
          const _bind$18 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$20;
          if (_bind$18 === 39) {
            _tmp$20 = 50;
          } else {
            break _L$2;
          }
          _tmp$2 = _tmp$20;
          continue _L$2;
        }
        case 38: {
          const _bind$19 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$21;
          if (_bind$19 === 39) {
            _tmp$21 = 55;
          } else {
            break _L$2;
          }
          _tmp$2 = _tmp$21;
          continue _L$2;
        }
        case 39: {
          const _bind$20 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$22;
          if (_bind$20 === 39) {
            _tmp$22 = 53;
          } else {
            break _L$2;
          }
          _tmp$2 = _tmp$22;
          continue _L$2;
        }
        case 40: {
          const _bind$21 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$23;
          if (_bind$21 === 39) {
            _tmp$23 = 48;
          } else {
            break _L$2;
          }
          _tmp$2 = _tmp$23;
          continue _L$2;
        }
        case 41: {
          const _bind$22 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$24;
          if (_bind$22 === 39) {
            _tmp$24 = 56;
          } else {
            break _L$2;
          }
          _tmp$2 = _tmp$24;
          continue _L$2;
        }
        case 42: {
          _tag_8 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind$23 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$25;
          if (_bind$23 >= 48 && _bind$23 <= 57) {
            _tmp$25 = 51;
          } else {
            if (_bind$23 >= 65 && _bind$23 <= 70) {
              _tmp$25 = 51;
            } else {
              if (_bind$23 >= 97 && _bind$23 <= 102) {
                _tmp$25 = 51;
              } else {
                if (_bind$23 === 123) {
                  _tmp$25 = 52;
                } else {
                  break _L$2;
                }
              }
            }
          }
          _tmp$2 = _tmp$25;
          continue _L$2;
        }
        case 43: {
          const _bind$24 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$26;
          if (_bind$24 === 39) {
            _tmp$26 = 49;
          } else {
            break _L$2;
          }
          _tmp$2 = _tmp$26;
          continue _L$2;
        }
        case 44: {
          _tag_6 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind$25 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$27;
          if (_bind$25 >= 48 && _bind$25 <= 57) {
            _tmp$27 = 54;
          } else {
            if (_bind$25 >= 65 && _bind$25 <= 70) {
              _tmp$27 = 54;
            } else {
              if (_bind$25 >= 97 && _bind$25 <= 102) {
                _tmp$27 = 54;
              } else {
                break _L$2;
              }
            }
          }
          _tmp$2 = _tmp$27;
          continue _L$2;
        }
        case 45: {
          _tag_13 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 35) {
            matched = 35;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_12;
            _capture_0_end = _tag_13;
          }
          const _bind$26 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$28;
          if (_bind$26 >= 9 && _bind$26 <= 10) {
            _tmp$28 = 57;
          } else {
            if (_bind$26 === 13) {
              _tmp$28 = 57;
            } else {
              if (_bind$26 === 32) {
                _tmp$28 = 57;
              } else {
                if (_bind$26 >= 48 && _bind$26 <= 57) {
                  _tmp$28 = 20;
                } else {
                  if (_bind$26 >= 65 && _bind$26 <= 90) {
                    _tmp$28 = 20;
                  } else {
                    if (_bind$26 === 95) {
                      _tmp$28 = 20;
                    } else {
                      if (_bind$26 >= 97 && _bind$26 <= 122) {
                        _tmp$28 = 20;
                      } else {
                        break _L$2;
                      }
                    }
                  }
                }
              }
            }
          }
          _tmp$2 = _tmp$28;
          continue _L$2;
        }
        case 46: {
          _tag_13 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 35) {
            matched = 35;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_12;
            _capture_0_end = _tag_13;
          }
          const _bind$27 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$29;
          if (_bind$27 >= 48 && _bind$27 <= 57) {
            _tmp$29 = 20;
          } else {
            if (_bind$27 >= 65 && _bind$27 <= 90) {
              _tmp$29 = 20;
            } else {
              if (_bind$27 === 95) {
                _tmp$29 = 20;
              } else {
                if (_bind$27 >= 97 && _bind$27 <= 100) {
                  _tmp$29 = 20;
                } else {
                  if (_bind$27 === 101) {
                    _tmp$29 = 58;
                  } else {
                    if (_bind$27 >= 102 && _bind$27 <= 122) {
                      _tmp$29 = 20;
                    } else {
                      break _L$2;
                    }
                  }
                }
              }
            }
          }
          _tmp$2 = _tmp$29;
          continue _L$2;
        }
        case 47: {
          if (matched >= 30) {
            matched = 30;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 48: {
          if (matched >= 27) {
            matched = 27;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 49: {
          if (matched >= 26) {
            matched = 26;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 50: {
          if (matched >= 29) {
            matched = 29;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 51: {
          const _bind$28 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$30;
          if (_bind$28 >= 48 && _bind$28 <= 57) {
            _tmp$30 = 60;
          } else {
            if (_bind$28 >= 65 && _bind$28 <= 70) {
              _tmp$30 = 60;
            } else {
              if (_bind$28 >= 97 && _bind$28 <= 102) {
                _tmp$30 = 60;
              } else {
                break _L$2;
              }
            }
          }
          _tmp$2 = _tmp$30;
          continue _L$2;
        }
        case 52: {
          _tag_10 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind$29 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$31;
          if (_bind$29 >= 48 && _bind$29 <= 57) {
            _tmp$31 = 59;
          } else {
            if (_bind$29 >= 65 && _bind$29 <= 70) {
              _tmp$31 = 59;
            } else {
              if (_bind$29 >= 97 && _bind$29 <= 102) {
                _tmp$31 = 59;
              } else {
                break _L$2;
              }
            }
          }
          _tmp$2 = _tmp$31;
          continue _L$2;
        }
        case 53: {
          if (matched >= 28) {
            matched = 28;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 54: {
          const _bind$30 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$32;
          if (_bind$30 >= 48 && _bind$30 <= 57) {
            _tmp$32 = 61;
          } else {
            if (_bind$30 >= 65 && _bind$30 <= 70) {
              _tmp$32 = 61;
            } else {
              if (_bind$30 >= 97 && _bind$30 <= 102) {
                _tmp$32 = 61;
              } else {
                break _L$2;
              }
            }
          }
          _tmp$2 = _tmp$32;
          continue _L$2;
        }
        case 55: {
          if (matched >= 24) {
            matched = 24;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 56: {
          if (matched >= 25) {
            matched = 25;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 57: {
          _tag_0 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          _tag_2 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind$31 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$33;
          if (_bind$31 >= 9 && _bind$31 <= 10) {
            _tmp$33 = 57;
          } else {
            if (_bind$31 === 13) {
              _tmp$33 = 57;
            } else {
              if (_bind$31 === 32) {
                _tmp$33 = 57;
              } else {
                if (_bind$31 === 95) {
                  _tmp$33 = 62;
                } else {
                  if (_bind$31 >= 97 && _bind$31 <= 122) {
                    _tmp$33 = 62;
                  } else {
                    break _L$2;
                  }
                }
              }
            }
          }
          _tmp$2 = _tmp$33;
          continue _L$2;
        }
        case 58: {
          _tag_13 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 35) {
            matched = 35;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_12;
            _capture_0_end = _tag_13;
          }
          const _bind$32 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$34;
          if (_bind$32 >= 9 && _bind$32 <= 10) {
            _tmp$34 = 63;
          } else {
            if (_bind$32 === 13) {
              _tmp$34 = 63;
            } else {
              if (_bind$32 === 32) {
                _tmp$34 = 63;
              } else {
                if (_bind$32 >= 48 && _bind$32 <= 57) {
                  _tmp$34 = 20;
                } else {
                  if (_bind$32 >= 65 && _bind$32 <= 90) {
                    _tmp$34 = 20;
                  } else {
                    if (_bind$32 === 95) {
                      _tmp$34 = 20;
                    } else {
                      if (_bind$32 >= 97 && _bind$32 <= 122) {
                        _tmp$34 = 20;
                      } else {
                        if (_bind$32 === 123) {
                          _tmp$34 = 64;
                        } else {
                          break _L$2;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
          _tmp$2 = _tmp$34;
          continue _L$2;
        }
        case 59: {
          _tag_11 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind$33 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$35;
          if (_bind$33 >= 48 && _bind$33 <= 57) {
            _tmp$35 = 59;
          } else {
            if (_bind$33 >= 65 && _bind$33 <= 70) {
              _tmp$35 = 59;
            } else {
              if (_bind$33 >= 97 && _bind$33 <= 102) {
                _tmp$35 = 59;
              } else {
                if (_bind$33 === 125) {
                  _tmp$35 = 65;
                } else {
                  break _L$2;
                }
              }
            }
          }
          _tmp$2 = _tmp$35;
          continue _L$2;
        }
        case 60: {
          const _bind$34 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$36;
          if (_bind$34 >= 48 && _bind$34 <= 57) {
            _tmp$36 = 66;
          } else {
            if (_bind$34 >= 65 && _bind$34 <= 70) {
              _tmp$36 = 66;
            } else {
              if (_bind$34 >= 97 && _bind$34 <= 102) {
                _tmp$36 = 66;
              } else {
                break _L$2;
              }
            }
          }
          _tmp$2 = _tmp$36;
          continue _L$2;
        }
        case 61: {
          _tag_7 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind$35 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$37;
          if (_bind$35 === 39) {
            _tmp$37 = 67;
          } else {
            break _L$2;
          }
          _tmp$2 = _tmp$37;
          continue _L$2;
        }
        case 62: {
          _tag_1 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind$36 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$38;
          if (_bind$36 >= 0 && _bind$36 <= 47) {
            _tmp$38 = 68;
          } else {
            if (_bind$36 >= 48 && _bind$36 <= 57) {
              _tmp$38 = 69;
            } else {
              if (_bind$36 >= 58 && _bind$36 <= 64) {
                _tmp$38 = 68;
              } else {
                if (_bind$36 >= 65 && _bind$36 <= 90) {
                  _tmp$38 = 69;
                } else {
                  if (_bind$36 >= 91 && _bind$36 <= 94) {
                    _tmp$38 = 68;
                  } else {
                    if (_bind$36 === 95) {
                      _tmp$38 = 69;
                    } else {
                      if (_bind$36 === 96) {
                        _tmp$38 = 68;
                      } else {
                        if (_bind$36 >= 97 && _bind$36 <= 122) {
                          _tmp$38 = 69;
                        } else {
                          if (_bind$36 >= 124 && _bind$36 <= 1114111) {
                            _tmp$38 = 68;
                          } else {
                            break _L$2;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
          _tmp$2 = _tmp$38;
          continue _L$2;
        }
        case 63: {
          const _bind$37 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$39;
          if (_bind$37 >= 9 && _bind$37 <= 10) {
            _tmp$39 = 63;
          } else {
            if (_bind$37 === 13) {
              _tmp$39 = 63;
            } else {
              if (_bind$37 === 32) {
                _tmp$39 = 63;
              } else {
                if (_bind$37 === 123) {
                  _tmp$39 = 64;
                } else {
                  break _L$2;
                }
              }
            }
          }
          _tmp$2 = _tmp$39;
          continue _L$2;
        }
        case 64: {
          if (matched >= 4) {
            matched = 4;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 65: {
          const _bind$38 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$40;
          if (_bind$38 === 39) {
            _tmp$40 = 70;
          } else {
            break _L$2;
          }
          _tmp$2 = _tmp$40;
          continue _L$2;
        }
        case 66: {
          const _bind$39 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$41;
          if (_bind$39 >= 48 && _bind$39 <= 57) {
            _tmp$41 = 71;
          } else {
            if (_bind$39 >= 65 && _bind$39 <= 70) {
              _tmp$41 = 71;
            } else {
              if (_bind$39 >= 97 && _bind$39 <= 102) {
                _tmp$41 = 71;
              } else {
                break _L$2;
              }
            }
          }
          _tmp$2 = _tmp$41;
          continue _L$2;
        }
        case 67: {
          if (matched >= 31) {
            matched = 31;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_6;
            _capture_0_end = _tag_7;
          }
          break _L$2;
        }
        case 68: {
          _tag_3 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind$40 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$42;
          if (_bind$40 >= 0 && _bind$40 <= 8) {
            _tmp$42 = 68;
          } else {
            if (_bind$40 >= 9 && _bind$40 <= 10) {
              _tmp$42 = 72;
            } else {
              if (_bind$40 >= 11 && _bind$40 <= 12) {
                _tmp$42 = 68;
              } else {
                if (_bind$40 === 13) {
                  _tmp$42 = 72;
                } else {
                  if (_bind$40 >= 14 && _bind$40 <= 31) {
                    _tmp$42 = 68;
                  } else {
                    if (_bind$40 === 32) {
                      _tmp$42 = 72;
                    } else {
                      if (_bind$40 >= 33 && _bind$40 <= 122) {
                        _tmp$42 = 68;
                      } else {
                        if (_bind$40 === 123) {
                          _tmp$42 = 73;
                        } else {
                          if (_bind$40 >= 124 && _bind$40 <= 1114111) {
                            _tmp$42 = 68;
                          } else {
                            break _L$2;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
          _tmp$2 = _tmp$42;
          continue _L$2;
        }
        case 69: {
          _tag_1 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          _tag_3 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          _tag_1_1 = _tag_1;
          const _bind$41 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$43;
          if (_bind$41 >= 0 && _bind$41 <= 8) {
            _tmp$43 = 68;
          } else {
            if (_bind$41 >= 9 && _bind$41 <= 10) {
              _tmp$43 = 72;
            } else {
              if (_bind$41 >= 11 && _bind$41 <= 12) {
                _tmp$43 = 68;
              } else {
                if (_bind$41 === 13) {
                  _tmp$43 = 72;
                } else {
                  if (_bind$41 >= 14 && _bind$41 <= 31) {
                    _tmp$43 = 68;
                  } else {
                    if (_bind$41 === 32) {
                      _tmp$43 = 72;
                    } else {
                      if (_bind$41 >= 33 && _bind$41 <= 47) {
                        _tmp$43 = 68;
                      } else {
                        if (_bind$41 >= 48 && _bind$41 <= 57) {
                          _tmp$43 = 69;
                        } else {
                          if (_bind$41 >= 58 && _bind$41 <= 64) {
                            _tmp$43 = 68;
                          } else {
                            if (_bind$41 >= 65 && _bind$41 <= 90) {
                              _tmp$43 = 69;
                            } else {
                              if (_bind$41 >= 91 && _bind$41 <= 94) {
                                _tmp$43 = 68;
                              } else {
                                if (_bind$41 === 95) {
                                  _tmp$43 = 69;
                                } else {
                                  if (_bind$41 === 96) {
                                    _tmp$43 = 68;
                                  } else {
                                    if (_bind$41 >= 97 && _bind$41 <= 122) {
                                      _tmp$43 = 69;
                                    } else {
                                      if (_bind$41 === 123) {
                                        _tmp$43 = 73;
                                      } else {
                                        if (_bind$41 >= 124 && _bind$41 <= 1114111) {
                                          _tmp$43 = 68;
                                        } else {
                                          break _L$2;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
          _tmp$2 = _tmp$43;
          continue _L$2;
        }
        case 70: {
          if (matched >= 33) {
            matched = 33;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_10;
            _capture_0_end = _tag_11;
          }
          break _L$2;
        }
        case 71: {
          _tag_9 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind$42 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$44;
          if (_bind$42 === 39) {
            _tmp$44 = 74;
          } else {
            break _L$2;
          }
          _tmp$2 = _tmp$44;
          continue _L$2;
        }
        case 72: {
          _tag_3 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          _tag_3_1 = _tag_3;
          const _bind$43 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$45;
          if (_bind$43 >= 0 && _bind$43 <= 8) {
            _tmp$45 = 68;
          } else {
            if (_bind$43 >= 9 && _bind$43 <= 10) {
              _tmp$45 = 72;
            } else {
              if (_bind$43 >= 11 && _bind$43 <= 12) {
                _tmp$45 = 68;
              } else {
                if (_bind$43 === 13) {
                  _tmp$45 = 72;
                } else {
                  if (_bind$43 >= 14 && _bind$43 <= 31) {
                    _tmp$45 = 68;
                  } else {
                    if (_bind$43 === 32) {
                      _tmp$45 = 72;
                    } else {
                      if (_bind$43 >= 33 && _bind$43 <= 122) {
                        _tmp$45 = 68;
                      } else {
                        if (_bind$43 === 123) {
                          _tmp$45 = 73;
                        } else {
                          if (_bind$43 >= 124 && _bind$43 <= 1114111) {
                            _tmp$45 = 68;
                          } else {
                            break _L$2;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
          _tmp$2 = _tmp$45;
          continue _L$2;
        }
        case 73: {
          if (matched >= 3) {
            matched = 3;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_0;
            _capture_0_end = _tag_1;
            _capture_1_start = _tag_2;
            _capture_1_end = _tag_3;
          }
          break _L$2;
        }
        case 74: {
          if (matched >= 32) {
            matched = 32;
            _end_pos = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_8;
            _capture_0_end = _tag_9;
          }
          break _L$2;
        }
        default: {
          $panic();
          break _L$2;
        }
      }
    }
    if (matched <= 35) {
      moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$reset$141$(lexbuf$2, _end_pos);
      const _bind = matched;
      switch (_bind) {
        case 0: {
          continue _L;
        }
        case 1: {
          continue _L;
        }
        case 2: {
          return { _0: $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$EOI, _1: _start_pos, _2: _end_pos };
        }
        case 3: {
          const _start_pos_of_t1 = _capture_0_start;
          const _end_pos_of_t1 = _capture_0_end;
          const t1 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$get_string$141$(lexbuf$2, _start_pos_of_t1, _end_pos_of_t1);
          const _start_pos_of_t2 = _capture_1_start;
          const _end_pos_of_t2 = _capture_1_end;
          const t2 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$get_string$141$(lexbuf$2, _start_pos_of_t2, _end_pos_of_t2);
          return { _0: new $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE({ _0: t1, _1: t2 }), _1: _start_pos, _2: _end_pos };
        }
        case 4: {
          return { _0: $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$PARSE_LBRACE, _1: _start_pos, _2: _end_pos };
        }
        case 5: {
          return { _0: $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$FAT_ARROW, _1: _start_pos, _2: _end_pos };
        }
        case 6: {
          return { _0: $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$UNDERSCORE, _1: _start_pos, _2: _end_pos };
        }
        case 7: {
          const buffer = moonbitlang$core$builtin$$StringBuilder$new(moonbitlang$core$builtin$$StringBuilder$new$46$size_hint$46$default());
          const end_pos = moonbitlang$ulex$lib$parser$$code_rbrace$141$(buffer, lexbuf$2);
          return { _0: new $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$LBRACE_CODE_RBRACE(moonbitlang$core$builtin$$StringBuilder$to_string(buffer)), _1: _start_pos, _2: end_pos };
        }
        case 8: {
          return { _0: $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$RBRACE, _1: _start_pos, _2: _end_pos };
        }
        case 9: {
          return { _0: $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$LPAREN, _1: _start_pos, _2: _end_pos };
        }
        case 10: {
          return { _0: $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$RPAREN, _1: _start_pos, _2: _end_pos };
        }
        case 11: {
          return { _0: $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$LBRACKET, _1: _start_pos, _2: _end_pos };
        }
        case 12: {
          return { _0: $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$RBRACKET, _1: _start_pos, _2: _end_pos };
        }
        case 13: {
          return { _0: $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$EQ, _1: _start_pos, _2: _end_pos };
        }
        case 14: {
          return { _0: $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$COLON, _1: _start_pos, _2: _end_pos };
        }
        case 15: {
          return { _0: $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$SEMICOLON, _1: _start_pos, _2: _end_pos };
        }
        case 16: {
          return { _0: $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$BAR, _1: _start_pos, _2: _end_pos };
        }
        case 17: {
          return { _0: $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$STAR, _1: _start_pos, _2: _end_pos };
        }
        case 18: {
          return { _0: $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$PLUS, _1: _start_pos, _2: _end_pos };
        }
        case 19: {
          return { _0: $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$QUESTION, _1: _start_pos, _2: _end_pos };
        }
        case 20: {
          return { _0: $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$MINUS, _1: _start_pos, _2: _end_pos };
        }
        case 21: {
          return { _0: $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$CARET, _1: _start_pos, _2: _end_pos };
        }
        case 22: {
          return { _0: $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$BACKSLASH, _1: _start_pos, _2: _end_pos };
        }
        case 23: {
          const _start_pos_of_t = _capture_0_start;
          const _end_pos_of_t = _capture_0_end;
          const t = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$get_char$141$(lexbuf$2, _start_pos_of_t, _end_pos_of_t);
          return { _0: new $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$CHAR(t), _1: _start_pos, _2: _end_pos };
        }
        case 24: {
          return { _0: new $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$CHAR(8), _1: _start_pos, _2: _end_pos };
        }
        case 25: {
          return { _0: new $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$CHAR(9), _1: _start_pos, _2: _end_pos };
        }
        case 26: {
          return { _0: new $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$CHAR(11), _1: _start_pos, _2: _end_pos };
        }
        case 27: {
          return { _0: new $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$CHAR(13), _1: _start_pos, _2: _end_pos };
        }
        case 28: {
          return { _0: new $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$CHAR(10), _1: _start_pos, _2: _end_pos };
        }
        case 29: {
          return { _0: new $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$CHAR(92), _1: _start_pos, _2: _end_pos };
        }
        case 30: {
          return { _0: new $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$CHAR(39), _1: _start_pos, _2: _end_pos };
        }
        case 31: {
          const _start_pos_of_t$2 = _capture_0_start;
          const _end_pos_of_t$2 = _capture_0_end;
          const t$2 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$get_string$141$(lexbuf$2, _start_pos_of_t$2, _end_pos_of_t$2);
          const code = moonbitlang$core$result$$Result$unwrap$46$(moonbitlang$core$strconv$$parse_int(t$2, 16));
          return { _0: new $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$CHAR(code), _1: _start_pos, _2: _end_pos };
        }
        case 32: {
          const _start_pos_of_t$3 = _capture_0_start;
          const _end_pos_of_t$3 = _capture_0_end;
          const t$3 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$get_string$141$(lexbuf$2, _start_pos_of_t$3, _end_pos_of_t$3);
          const code$2 = moonbitlang$core$result$$Result$unwrap$46$(moonbitlang$core$strconv$$parse_int(t$3, 16));
          return { _0: new $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$CHAR(code$2), _1: _start_pos, _2: _end_pos };
        }
        case 33: {
          const _start_pos_of_t$4 = _capture_0_start;
          const _end_pos_of_t$4 = _capture_0_end;
          const t$4 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$get_string$141$(lexbuf$2, _start_pos_of_t$4, _end_pos_of_t$4);
          const code$3 = moonbitlang$core$result$$Result$unwrap$46$(moonbitlang$core$strconv$$parse_int(t$4, 16));
          return { _0: new $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$CHAR(code$3), _1: _start_pos, _2: _end_pos };
        }
        case 34: {
          const buffer$2 = moonbitlang$core$builtin$$StringBuilder$new(moonbitlang$core$builtin$$StringBuilder$new$46$size_hint$46$default());
          const end_pos$2 = moonbitlang$ulex$lib$parser$$string_inner_rquote$141$(buffer$2, lexbuf$2);
          return { _0: new $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$STRING(moonbitlang$core$builtin$$StringBuilder$to_string(buffer$2)), _1: _start_pos, _2: end_pos$2 };
        }
        case 35: {
          const _start_pos_of_t$5 = _capture_0_start;
          const _end_pos_of_t$5 = _capture_0_end;
          const t$5 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$get_string$141$(lexbuf$2, _start_pos_of_t$5, _end_pos_of_t$5);
          let _tmp$3;
          switch (t$5) {
            case "eof": {
              _tmp$3 = $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$EOF;
              break;
            }
            case "regex": {
              _tmp$3 = $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$REGEX;
              break;
            }
            case "as": {
              _tmp$3 = $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$AS;
              break;
            }
            default: {
              _tmp$3 = new $64$moonbitlang$47$ulex$47$lib$47$parser$46$Token$LC_IDENT(t$5);
            }
          }
          return { _0: _tmp$3, _1: _start_pos, _2: _end_pos };
        }
        default: {
          return $panic();
        }
      }
    } else {
      return $panic();
    }
  }
}
function moonbitlang$ulex$lib$parser$$error(stack, token, loc) {
  const expected = [];
  const _arr = [{ _0: 0, _1: 0 }, { _0: 1, _1: 1 }, { _0: 2, _1: 2 }, { _0: 3, _1: 3 }, { _0: 4, _1: 4 }, { _0: 5, _1: 5 }, { _0: 6, _1: 6 }, { _0: 7, _1: 7 }, { _0: 8, _1: 8 }, { _0: 9, _1: 9 }, { _0: 10, _1: 10 }, { _0: 11, _1: 11 }, { _0: 12, _1: 12 }, { _0: 13, _1: 13 }, { _0: 14, _1: 14 }, { _0: 15, _1: 15 }, { _0: 16, _1: 16 }, { _0: 17, _1: 17 }, { _0: 18, _1: 18 }, { _0: 19, _1: 19 }, { _0: 20, _1: 20 }, { _0: 21, _1: 21 }, { _0: 22, _1: 22 }, { _0: 23, _1: 23 }, { _0: 24, _1: 24 }, { _0: 25, _1: 25 }, { _0: 26, _1: 26 }];
  const _len = _arr.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const term = _arr[_i];
      const kind = term._1;
      const symbol = term._0;
      let stack$2;
      _L: {
        stack$2 = stack;
        break _L;
      }
      let _tmp$2 = stack$2;
      _L$2: while (true) {
        const stack$3 = _tmp$2;
        if (stack$3.$tag === 0) {
          break;
        } else {
          const _Cons = stack$3;
          const _state = _Cons._0;
          let count;
          let symbol$2;
          _L$3: {
            _L$4: {
              const _bind = _state(symbol);
              switch (_bind.$tag) {
                case 0: {
                  break _L$4;
                }
                case 1: {
                  break _L$4;
                }
                case 2: {
                  const _Reduce = _bind;
                  const _count = _Reduce._0;
                  const _symbol = _Reduce._1;
                  count = _count;
                  symbol$2 = _symbol;
                  break _L$3;
                }
                case 3: {
                  const _ReduceNoLookahead = _bind;
                  const _count$2 = _ReduceNoLookahead._0;
                  const _symbol$2 = _ReduceNoLookahead._1;
                  count = _count$2;
                  symbol$2 = _symbol$2;
                  break _L$3;
                }
                default: {
                  break _L$2;
                }
              }
            }
            moonbitlang$core$array$$Array$push$120$(expected, kind);
            break;
          }
          let stack$4;
          let count$2;
          let symbol$3;
          _L$4: {
            stack$4 = stack$3;
            count$2 = count;
            symbol$3 = symbol$2;
            break _L$4;
          }
          let _tmp$3 = stack$4;
          let _tmp$4 = count$2;
          let _tmp$5 = symbol$3;
          _L$5: while (true) {
            const stack$5 = _tmp$3;
            const count$3 = _tmp$4;
            const symbol$4 = _tmp$5;
            const stack$6 = moonbitlang$core$immut$list$$T$drop$66$(stack$5, count$3);
            if (stack$6.$tag === 1) {
              const _Cons$2 = stack$6;
              const _state$2 = _Cons$2._0;
              let count$4;
              let symbol$5;
              _L$6: {
                const _bind = _state$2(symbol$4);
                switch (_bind.$tag) {
                  case 1: {
                    const _Shift = _bind;
                    const _state$3 = _Shift._0;
                    _tmp$2 = new $64$moonbitlang$47$core$47$immut$47$list$46$T$Cons$16$(_state$3, stack$6);
                    continue _L$2;
                  }
                  case 2: {
                    const _Reduce = _bind;
                    const _count = _Reduce._0;
                    const _symbol = _Reduce._1;
                    count$4 = _count;
                    symbol$5 = _symbol;
                    break _L$6;
                  }
                  case 3: {
                    const _ReduceNoLookahead = _bind;
                    const _count$2 = _ReduceNoLookahead._0;
                    const _symbol$2 = _ReduceNoLookahead._1;
                    count$4 = _count$2;
                    symbol$5 = _symbol$2;
                    break _L$6;
                  }
                  default: {
                    $panic();
                    break _L$2;
                  }
                }
              }
              _tmp$3 = stack$6;
              _tmp$4 = count$4;
              _tmp$5 = symbol$5;
              continue;
            } else {
              $panic();
              break _L$2;
            }
          }
        }
      }
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return new Result$Err$19$(new Error$moonbitlang$47$ulex$47$lib$47$parser$46$ParseError$46$UnexpectedToken(token, loc, expected));
}
function moonbitlang$ulex$lib$parser$$yy_input(token, _start_pos, _end_pos) {
  switch (token.$tag) {
    case 0: {
      return { _0: 0, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 1: {
      return { _0: 1, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 2: {
      return { _0: 2, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 3: {
      return { _0: 3, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 4: {
      return { _0: 4, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 5: {
      return { _0: 5, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 6: {
      return { _0: 6, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 7: {
      return { _0: 7, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 8: {
      return { _0: 8, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 9: {
      return { _0: 9, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 10: {
      return { _0: 10, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 11: {
      return { _0: 11, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 12: {
      return { _0: 12, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 13: {
      return { _0: 13, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 14: {
      return { _0: 14, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 15: {
      return { _0: 15, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 16: {
      return { _0: 16, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 17: {
      return { _0: 17, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 18: {
      return { _0: 18, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 19: {
      return { _0: 19, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 20: {
      return { _0: 20, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 21: {
      return { _0: 21, _1: Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Void$46$YYObj_Void };
    }
    case 22: {
      const _RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE = token;
      const _data = _RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE._0;
      return { _0: 22, _1: new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__String__String_$46$YYObj__String__String_(_data) };
    }
    case 23: {
      const _LBRACE_CODE_RBRACE = token;
      const _data$2 = _LBRACE_CODE_RBRACE._0;
      return { _0: 23, _1: new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_String$46$YYObj_String(_data$2) };
    }
    case 24: {
      const _LC_IDENT = token;
      const _data$3 = _LC_IDENT._0;
      return { _0: 24, _1: new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_String$46$YYObj_String(_data$3) };
    }
    case 25: {
      const _CHAR = token;
      const _data$4 = _CHAR._0;
      return { _0: 25, _1: new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Char$46$YYObj_Char(_data$4) };
    }
    default: {
      const _STRING = token;
      const _data$5 = _STRING._0;
      return { _0: 26, _1: new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_String$46$YYObj_String(_data$5) };
    }
  }
}
function moonbitlang$ulex$lib$parser$$yy_parse$142$(read_token, start_pos, start, return_) {
  const state_stack = { val: new $64$moonbitlang$47$core$47$immut$47$list$46$T$Cons$16$(start, $64$moonbitlang$47$core$47$immut$47$list$46$T$Nil$16$) };
  const data_stack = [];
  const last_pos = { val: start_pos };
  const state = { val: start };
  let lookahead = undefined;
  let last_shifted_state_stack = state_stack.val;
  while (true) {
    let decision;
    const _func = state.val;
    const _bind = _func(49);
    switch (_bind.$tag) {
      case 3: {
        decision = _bind;
        break;
      }
      case 0: {
        decision = _bind;
        break;
      }
      default: {
        const _bind$2 = lookahead;
        if (_bind$2 === undefined) {
          const _bind$3 = read_token();
          const _token = _bind$3._0;
          const _start_pos = _bind$3._1;
          const _end_pos = _bind$3._2;
          const _bind$4 = moonbitlang$ulex$lib$parser$$yy_input(_token, _start_pos, _end_pos);
          const _symbol = _bind$4._0;
          const _data = _bind$4._1;
          lookahead = { _0: _symbol, _1: { _0: _data, _1: _start_pos, _2: _end_pos }, _2: _token };
          const _func$2 = state.val;
          decision = _func$2(_symbol);
        } else {
          const _Some = _bind$2;
          const _la = _Some;
          const _func$2 = state.val;
          decision = _func$2(_la._0);
        }
      }
    }
    let action;
    let count;
    let symbol;
    _L: {
      _L$2: {
        switch (decision.$tag) {
          case 0: {
            return new Result$Ok$20$(return_(moonbitlang$core$array$$Array$unsafe_pop$72$(data_stack)._0));
          }
          case 1: {
            const _Shift = decision;
            const _next_state = _Shift._0;
            const _bind$3 = lookahead;
            if (_bind$3 === undefined) {
              $panic();
            } else {
              const _Some = _bind$3;
              const _la = _Some;
              moonbitlang$core$array$$Array$push$72$(data_stack, _la._1);
              state_stack.val = new $64$moonbitlang$47$core$47$immut$47$list$46$T$Cons$16$(_next_state, state_stack.val);
              last_shifted_state_stack = state_stack.val;
              state.val = _next_state;
              last_pos.val = _la._1._2;
              lookahead = undefined;
            }
            break;
          }
          case 2: {
            const _Reduce = decision;
            const _count = _Reduce._0;
            const _symbol = _Reduce._1;
            const _action = _Reduce._2;
            action = _action;
            count = _count;
            symbol = _symbol;
            break _L$2;
          }
          case 3: {
            const _ReduceNoLookahead = decision;
            const _count$2 = _ReduceNoLookahead._0;
            const _symbol$2 = _ReduceNoLookahead._1;
            const _action$2 = _ReduceNoLookahead._2;
            action = _action$2;
            count = _count$2;
            symbol = _symbol$2;
            break _L$2;
          }
          default: {
            const _bind$4 = moonbitlang$core$option$$Option$unwrap$113$(lookahead);
            const _x = _bind$4._1;
            const _start_pos = _x._1;
            const _end_pos = _x._2;
            const _token = _bind$4._2;
            const _bind$5 = moonbitlang$ulex$lib$parser$$error(last_shifted_state_stack, _token, { _0: _start_pos, _1: _end_pos });
            if (_bind$5.$tag === 1) {
              const _ok = _bind$5;
              _ok._0;
            } else {
              return _bind$5;
            }
          }
        }
        break _L;
      }
      let _tmp = count;
      let _tmp$2 = symbol;
      let _tmp$3 = action;
      _L$3: while (true) {
        const args = moonbitlang$core$array$$Array$op_as_view$72$(data_stack, data_stack.length - count | 0, undefined);
        const data = action(last_pos.val, args);
        let start_pos$2;
        let end_pos;
        _L$4: {
          if (moonbitlang$core$array$$ArrayView$length$72$(args) === 0) {
            const _tmp$4 = last_pos.val;
            const _tmp$5 = last_pos.val;
            start_pos$2 = _tmp$4;
            end_pos = _tmp$5;
            break _L$4;
          } else {
            const _tmp$4 = moonbitlang$core$array$$ArrayView$op_get$72$(args, 0)._1;
            const _tmp$5 = moonbitlang$core$array$$ArrayView$op_get$72$(args, moonbitlang$core$array$$ArrayView$length$72$(args) - 1 | 0)._2;
            start_pos$2 = _tmp$4;
            end_pos = _tmp$5;
            break _L$4;
          }
        }
        let _tmp$4 = 0;
        while (true) {
          const i = _tmp$4;
          if (i < count) {
            moonbitlang$core$array$$Array$unsafe_pop$72$(data_stack);
            state_stack.val = moonbitlang$core$immut$list$$T$tail$66$(state_stack.val);
            _tmp$4 = i + 1 | 0;
            continue;
          } else {
            break;
          }
        }
        state.val = moonbitlang$core$immut$list$$T$unsafe_head$66$(state_stack.val);
        moonbitlang$core$array$$Array$push$72$(data_stack, { _0: data, _1: start_pos$2, _2: end_pos });
        let action$2;
        let count$2;
        let symbol$2;
        _L$5: {
          const _func$2 = state.val;
          const _bind$3 = _func$2(symbol);
          switch (_bind$3.$tag) {
            case 0: {
              return new Result$Ok$20$(return_(moonbitlang$core$array$$Array$unsafe_pop$72$(data_stack)._0));
            }
            case 1: {
              const _Shift = _bind$3;
              const _next_state = _Shift._0;
              state_stack.val = new $64$moonbitlang$47$core$47$immut$47$list$46$T$Cons$16$(_next_state, state_stack.val);
              state.val = _next_state;
              break _L$3;
            }
            case 2: {
              const _Reduce = _bind$3;
              const _count = _Reduce._0;
              const _symbol = _Reduce._1;
              const _action = _Reduce._2;
              action$2 = _action;
              count$2 = _count;
              symbol$2 = _symbol;
              break _L$5;
            }
            case 3: {
              const _ReduceNoLookahead = _bind$3;
              const _count$2 = _ReduceNoLookahead._0;
              const _symbol$2 = _ReduceNoLookahead._1;
              const _action$2 = _ReduceNoLookahead._2;
              action$2 = _action$2;
              count$2 = _count$2;
              symbol$2 = _symbol$2;
              break _L$5;
            }
            default: {
              $panic();
              break _L$3;
            }
          }
        }
        _tmp = count$2;
        _tmp$2 = symbol$2;
        _tmp$3 = action$2;
        continue;
      }
    }
    continue;
  }
}
function moonbitlang$ulex$lib$parser$$yy_action_0(_last_pos, _args) {
  return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_String$46$YYObj_String("");
}
function moonbitlang$ulex$lib$parser$$yy_action_19(_last_pos, _args) {
  return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Lex$46$YYObj__type_Lex({ header: "", rules: [], trailer: "" });
}
function moonbitlang$ulex$lib$parser$$yy_state_47(_lookahead) {
  return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Accept;
}
function moonbitlang$ulex$lib$parser$$yy_action_23(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 4) {
    const _YYObj_String = _bind;
    const __dollar1 = _YYObj_String._0;
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_String$46$YYObj_String(__dollar1);
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_48(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(1, 31, moonbitlang$ulex$lib$parser$$yy_action_23);
}
function moonbitlang$ulex$lib$parser$$yy_action_3(_last_pos, _args) {
  return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Unit$46$YYObj_Unit(undefined);
}
function moonbitlang$ulex$lib$parser$$yy_action_13(_last_pos, _args) {
  return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex($64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$EOF);
}
function moonbitlang$ulex$lib$parser$$yy_state_13(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(1, 45, moonbitlang$ulex$lib$parser$$yy_action_13);
}
function moonbitlang$ulex$lib$parser$$yy_action_1(_last_pos, _args) {
  return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(new $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Character(moonbitlang$ulex$lib$util$eof_char_set$$any));
}
function moonbitlang$ulex$lib$parser$$yy_state_14(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(1, 45, moonbitlang$ulex$lib$parser$$yy_action_1);
}
function moonbitlang$ulex$lib$parser$$yy_action_15(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 4) {
    const _YYObj_String = _bind;
    const __dollar1 = _YYObj_String._0;
    const _bind$2 = moonbitlang$core$string$$String$iter(__dollar1);
    const _bind$3 = $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Epsilon;
    const _acc = { val: _bind$3 };
    _bind$2((_p) => {
      const acc = _acc.val;
      _acc.val = new $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Concat(acc, new $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Character(moonbitlang$ulex$lib$util$eof_char_set$$singleton(_p)));
      return 1;
    });
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(_acc.val);
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_15(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(1, 45, moonbitlang$ulex$lib$parser$$yy_action_15);
}
function moonbitlang$ulex$lib$parser$$yy_action_11(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 5) {
    const _YYObj_Char = _bind;
    const __dollar1 = _YYObj_Char._0;
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(new $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Character(moonbitlang$ulex$lib$util$eof_char_set$$singleton(__dollar1)));
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_16(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(1, 45, moonbitlang$ulex$lib$parser$$yy_action_11);
}
function moonbitlang$ulex$lib$parser$$yy_action_29(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 4) {
    const _YYObj_String = _bind;
    const __dollar1 = _YYObj_String._0;
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(moonbitlang$core$option$$Option$unwrap$114$(moonbitlang$core$builtin$$Map$get$0$(moonbitlang$ulex$lib$parser$$named_regexes, __dollar1)));
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_17(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(1, 45, moonbitlang$ulex$lib$parser$$yy_action_29);
}
function moonbitlang$ulex$lib$parser$$yy_action_37(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 9) {
    const _YYObj__eof_char_set_T = _bind;
    const __dollar1 = _YYObj__eof_char_set_T._0;
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(new $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Character(__dollar1));
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_18(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(1, 45, moonbitlang$ulex$lib$parser$$yy_action_37);
}
function moonbitlang$ulex$lib$parser$$yy_action_7(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 1)._0;
  if (_bind.$tag === 9) {
    const _YYObj__eof_char_set_T = _bind;
    const __dollar2 = _YYObj__eof_char_set_T._0;
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__eof_char_set_T$46$YYObj__eof_char_set_T(__dollar2);
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_12(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(3, 46, moonbitlang$ulex$lib$parser$$yy_action_7);
}
function moonbitlang$ulex$lib$parser$$yy_state_11(_lookahead) {
  if (_lookahead === 10) {
    return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_12);
  } else {
    return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
  }
}
function moonbitlang$ulex$lib$parser$$yy_action_36(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 5) {
    const _YYObj_Char = _bind;
    const __dollar1 = _YYObj_Char._0;
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__eof_char_set_T$46$YYObj__eof_char_set_T(moonbitlang$ulex$lib$util$eof_char_set$$singleton(__dollar1));
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_action_18(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 5) {
    const _YYObj_Char = _bind;
    const __dollar1 = _YYObj_Char._0;
    const _bind$2 = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 2)._0;
    if (_bind$2.$tag === 5) {
      const _YYObj_Char$2 = _bind$2;
      const __dollar3 = _YYObj_Char$2._0;
      return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__eof_char_set_T$46$YYObj__eof_char_set_T(moonbitlang$ulex$lib$util$eof_char_set$$range(__dollar1, __dollar3));
    } else {
      return $panic();
    }
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_5(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(3, 48, moonbitlang$ulex$lib$parser$$yy_action_18);
}
function moonbitlang$ulex$lib$parser$$yy_state_4(_lookahead) {
  if (_lookahead === 25) {
    return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_5);
  } else {
    return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_3(_lookahead) {
  _L: {
    switch (_lookahead) {
      case 19: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_4);
      }
      case 10: {
        break _L;
      }
      case 25: {
        break _L;
      }
      default: {
        return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
      }
    }
  }
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Reduce(1, 48, moonbitlang$ulex$lib$parser$$yy_action_36);
}
function moonbitlang$ulex$lib$parser$$yy_action_8(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 9) {
    const _YYObj__eof_char_set_T = _bind;
    const __dollar1 = _YYObj__eof_char_set_T._0;
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__eof_char_set_T$46$YYObj__eof_char_set_T(__dollar1);
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_action_16(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 9) {
    const _YYObj__eof_char_set_T = _bind;
    const __dollar1 = _YYObj__eof_char_set_T._0;
    const _bind$2 = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 1)._0;
    if (_bind$2.$tag === 9) {
      const _YYObj__eof_char_set_T$2 = _bind$2;
      const __dollar2 = _YYObj__eof_char_set_T$2._0;
      return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__eof_char_set_T$46$YYObj__eof_char_set_T(moonbitlang$core$builtin$$Add$op_add$30$(__dollar1, __dollar2));
    } else {
      return $panic();
    }
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_7(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(2, 47, moonbitlang$ulex$lib$parser$$yy_action_16);
}
function moonbitlang$ulex$lib$parser$$yy_state_6(_lookahead) {
  switch (_lookahead) {
    case 25: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_3);
    }
    case 48: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_6);
    }
    case 47: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_7);
    }
    case 10: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Reduce(1, 47, moonbitlang$ulex$lib$parser$$yy_action_8);
    }
    default: {
      return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
    }
  }
}
function moonbitlang$ulex$lib$parser$$yy_action_45(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 2)._0;
  if (_bind.$tag === 9) {
    const _YYObj__eof_char_set_T = _bind;
    const __dollar3 = _YYObj__eof_char_set_T._0;
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__eof_char_set_T$46$YYObj__eof_char_set_T(moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$negated(__dollar3));
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_10(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(4, 46, moonbitlang$ulex$lib$parser$$yy_action_45);
}
function moonbitlang$ulex$lib$parser$$yy_state_9(_lookahead) {
  if (_lookahead === 10) {
    return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_10);
  } else {
    return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_8(_lookahead) {
  switch (_lookahead) {
    case 25: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_3);
    }
    case 48: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_6);
    }
    case 47: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_9);
    }
    default: {
      return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
    }
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_2(_lookahead) {
  switch (_lookahead) {
    case 25: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_3);
    }
    case 48: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_6);
    }
    case 20: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_8);
    }
    case 47: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_11);
    }
    default: {
      return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
    }
  }
}
function moonbitlang$ulex$lib$parser$$yy_action_33(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 1)._0;
  if (_bind.$tag === 4) {
    const _YYObj_String = _bind;
    const __dollar2 = _YYObj_String._0;
    const _bind$2 = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 3)._0;
    if (_bind$2.$tag === 8) {
      const _YYObj__type_Regex = _bind$2;
      const __dollar4 = _YYObj__type_Regex._0;
      let _tmp;
      switch (__dollar2) {
        case "ascii": {
          _tmp = new $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Bytes(0, __dollar4);
          break;
        }
        case "latin1": {
          _tmp = new $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Bytes(1, __dollar4);
          break;
        }
        case "utf8": {
          _tmp = new $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Bytes(2, __dollar4);
          break;
        }
        default: {
          _tmp = $panic();
        }
      }
      return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(_tmp);
    } else {
      return $panic();
    }
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_23(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(5, 45, moonbitlang$ulex$lib$parser$$yy_action_33);
}
function moonbitlang$ulex$lib$parser$$yy_state_22(_lookahead) {
  if (_lookahead === 8) {
    return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_23);
  } else {
    return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
  }
}
function moonbitlang$ulex$lib$parser$$yy_action_40(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 8) {
    const _YYObj__type_Regex = _bind;
    const __dollar1 = _YYObj__type_Regex._0;
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(__dollar1);
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_action_27(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 8) {
    const _YYObj__type_Regex = _bind;
    const __dollar1 = _YYObj__type_Regex._0;
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(new $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Alter(__dollar1, $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Epsilon));
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_25(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(2, 44, moonbitlang$ulex$lib$parser$$yy_action_27);
}
function moonbitlang$ulex$lib$parser$$yy_action_35(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 8) {
    const _YYObj__type_Regex = _bind;
    const __dollar1 = _YYObj__type_Regex._0;
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(new $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Repetition(__dollar1));
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_26(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(2, 44, moonbitlang$ulex$lib$parser$$yy_action_35);
}
function moonbitlang$ulex$lib$parser$$yy_action_38(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 8) {
    const _YYObj__type_Regex = _bind;
    const __dollar1 = _YYObj__type_Regex._0;
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(new $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Alter(new $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Repetition(__dollar1), $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Epsilon));
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_27(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(2, 44, moonbitlang$ulex$lib$parser$$yy_action_38);
}
function moonbitlang$ulex$lib$parser$$yy_action_39(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 8) {
    const _YYObj__type_Regex = _bind;
    const __dollar1 = _YYObj__type_Regex._0;
    const _bind$2 = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 2)._0;
    if (_bind$2.$tag === 8) {
      const _YYObj__type_Regex$2 = _bind$2;
      const __dollar3 = _YYObj__type_Regex$2._0;
      let _tmp;
      _L: {
        _L$2: {
          if (__dollar1.$tag === 1) {
            const _Character = __dollar1;
            const _cset1 = _Character._0;
            if (__dollar3.$tag === 1) {
              const _Character$2 = __dollar3;
              const _cset2 = _Character$2._0;
              _tmp = new $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Character(moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$difference(_cset1, _cset2));
            } else {
              break _L$2;
            }
          } else {
            break _L$2;
          }
          break _L;
        }
        _tmp = $panic();
      }
      return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(_tmp);
    } else {
      return $panic();
    }
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_29(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(3, 43, moonbitlang$ulex$lib$parser$$yy_action_39);
}
function moonbitlang$ulex$lib$parser$$yy_action_42(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 8) {
    const _YYObj__type_Regex = _bind;
    const __dollar1 = _YYObj__type_Regex._0;
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(__dollar1);
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_action_44(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 8) {
    const _YYObj__type_Regex = _bind;
    const __dollar1 = _YYObj__type_Regex._0;
    const _bind$2 = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 2)._0;
    if (_bind$2.$tag === 8) {
      const _YYObj__type_Regex$2 = _bind$2;
      const __dollar3 = _YYObj__type_Regex$2._0;
      let _tmp;
      _L: {
        _L$2: {
          if (__dollar1.$tag === 1) {
            const _Character = __dollar1;
            const _cset1 = _Character._0;
            if (__dollar3.$tag === 1) {
              const _Character$2 = __dollar3;
              const _cset2 = _Character$2._0;
              _tmp = new $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Character(moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$difference(_cset1, _cset2));
            } else {
              break _L$2;
            }
          } else {
            break _L$2;
          }
          break _L;
        }
        _tmp = $panic();
      }
      return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(_tmp);
    } else {
      return $panic();
    }
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_32(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(3, 43, moonbitlang$ulex$lib$parser$$yy_action_44);
}
function moonbitlang$ulex$lib$parser$$yy_action_24(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 8) {
    const _YYObj__type_Regex = _bind;
    const __dollar1 = _YYObj__type_Regex._0;
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(__dollar1);
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_action_12(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 8) {
    const _YYObj__type_Regex = _bind;
    const __dollar1 = _YYObj__type_Regex._0;
    const _bind$2 = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 1)._0;
    if (_bind$2.$tag === 8) {
      const _YYObj__type_Regex$2 = _bind$2;
      const __dollar2 = _YYObj__type_Regex$2._0;
      return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(new $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Concat(__dollar1, __dollar2));
    } else {
      return $panic();
    }
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_34(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(2, 42, moonbitlang$ulex$lib$parser$$yy_action_12);
}
function moonbitlang$ulex$lib$parser$$yy_action_26(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 8) {
    const _YYObj__type_Regex = _bind;
    const __dollar1 = _YYObj__type_Regex._0;
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(__dollar1);
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_action_34(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 8) {
    const _YYObj__type_Regex = _bind;
    const __dollar1 = _YYObj__type_Regex._0;
    const _bind$2 = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 2)._0;
    if (_bind$2.$tag === 8) {
      const _YYObj__type_Regex$2 = _bind$2;
      const __dollar3 = _YYObj__type_Regex$2._0;
      return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(new $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Alter(__dollar1, __dollar3));
    } else {
      return $panic();
    }
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_37(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(3, 41, moonbitlang$ulex$lib$parser$$yy_action_34);
}
function moonbitlang$ulex$lib$parser$$yy_action_10(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 8) {
    const _YYObj__type_Regex = _bind;
    const __dollar1 = _YYObj__type_Regex._0;
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(__dollar1);
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_action_30(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 8) {
    const _YYObj__type_Regex = _bind;
    const __dollar1 = _YYObj__type_Regex._0;
    const _bind$2 = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 2)._0;
    if (_bind$2.$tag === 4) {
      const _YYObj_String = _bind$2;
      const __dollar3 = _YYObj_String._0;
      return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(new $64$moonbitlang$47$ulex$47$lib$47$type$46$Regex$Capture(__dollar1, __dollar3));
    } else {
      return $panic();
    }
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_40(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(3, 40, moonbitlang$ulex$lib$parser$$yy_action_30);
}
function moonbitlang$ulex$lib$parser$$yy_state_39(_lookahead) {
  if (_lookahead === 24) {
    return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_40);
  } else {
    return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_38(_lookahead) {
  _L: {
    switch (_lookahead) {
      case 4: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_39);
      }
      case 0: {
        break _L;
      }
      case 8: {
        break _L;
      }
      case 13: {
        break _L;
      }
      case 14: {
        break _L;
      }
      default: {
        return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
      }
    }
  }
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Reduce(1, 40, moonbitlang$ulex$lib$parser$$yy_action_10);
}
function moonbitlang$ulex$lib$parser$$yy_action_41(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 1)._0;
  if (_bind.$tag === 8) {
    const _YYObj__type_Regex = _bind;
    const __dollar2 = _YYObj__type_Regex._0;
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(__dollar2);
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_42(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(3, 45, moonbitlang$ulex$lib$parser$$yy_action_41);
}
function moonbitlang$ulex$lib$parser$$yy_state_41(_lookahead) {
  if (_lookahead === 8) {
    return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_42);
  } else {
    return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_19(_lookahead) {
  switch (_lookahead) {
    case 9: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_2);
    }
    case 1: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_13);
    }
    case 5: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_14);
    }
    case 26: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_15);
    }
    case 25: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_16);
    }
    case 46: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_18);
    }
    case 7: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_19);
    }
    case 24: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_20);
    }
    case 45: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_24);
    }
    case 43: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_30);
    }
    case 44: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_33);
    }
    case 42: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_35);
    }
    case 41: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_38);
    }
    case 40: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_41);
    }
    default: {
      return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
    }
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_20(_lookahead) {
  _L: {
    switch (_lookahead) {
      case 12: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_21);
      }
      case 1: {
        break _L;
      }
      case 4: {
        break _L;
      }
      case 5: {
        break _L;
      }
      case 7: {
        break _L;
      }
      case 8: {
        break _L;
      }
      case 9: {
        break _L;
      }
      case 15: {
        break _L;
      }
      case 16: {
        break _L;
      }
      case 17: {
        break _L;
      }
      case 18: {
        break _L;
      }
      case 21: {
        break _L;
      }
      case 24: {
        break _L;
      }
      case 25: {
        break _L;
      }
      case 26: {
        break _L;
      }
      default: {
        return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
      }
    }
  }
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Reduce(1, 45, moonbitlang$ulex$lib$parser$$yy_action_29);
}
function moonbitlang$ulex$lib$parser$$yy_state_21(_lookahead) {
  switch (_lookahead) {
    case 9: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_2);
    }
    case 1: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_13);
    }
    case 5: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_14);
    }
    case 26: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_15);
    }
    case 25: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_16);
    }
    case 24: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_17);
    }
    case 46: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_18);
    }
    case 7: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_19);
    }
    case 40: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_22);
    }
    case 45: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_24);
    }
    case 43: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_30);
    }
    case 44: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_33);
    }
    case 42: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_35);
    }
    case 41: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_38);
    }
    default: {
      return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
    }
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_24(_lookahead) {
  _L: {
    switch (_lookahead) {
      case 18: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_25);
      }
      case 17: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_26);
      }
      case 16: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_27);
      }
      case 21: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_28);
      }
      case 0: {
        break _L;
      }
      case 1: {
        break _L;
      }
      case 4: {
        break _L;
      }
      case 5: {
        break _L;
      }
      case 7: {
        break _L;
      }
      case 8: {
        break _L;
      }
      case 9: {
        break _L;
      }
      case 13: {
        break _L;
      }
      case 14: {
        break _L;
      }
      case 15: {
        break _L;
      }
      case 24: {
        break _L;
      }
      case 25: {
        break _L;
      }
      case 26: {
        break _L;
      }
      default: {
        return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
      }
    }
  }
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Reduce(1, 44, moonbitlang$ulex$lib$parser$$yy_action_40);
}
function moonbitlang$ulex$lib$parser$$yy_state_28(_lookahead) {
  switch (_lookahead) {
    case 9: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_2);
    }
    case 1: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_13);
    }
    case 5: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_14);
    }
    case 26: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_15);
    }
    case 25: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_16);
    }
    case 24: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_17);
    }
    case 46: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_18);
    }
    case 7: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_19);
    }
    case 45: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_29);
    }
    default: {
      return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
    }
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_30(_lookahead) {
  _L: {
    switch (_lookahead) {
      case 21: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_31);
      }
      case 0: {
        break _L;
      }
      case 4: {
        break _L;
      }
      case 8: {
        break _L;
      }
      case 13: {
        break _L;
      }
      case 14: {
        break _L;
      }
      case 15: {
        break _L;
      }
      default: {
        return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
      }
    }
  }
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Reduce(1, 42, moonbitlang$ulex$lib$parser$$yy_action_42);
}
function moonbitlang$ulex$lib$parser$$yy_state_31(_lookahead) {
  switch (_lookahead) {
    case 9: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_2);
    }
    case 1: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_13);
    }
    case 5: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_14);
    }
    case 26: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_15);
    }
    case 25: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_16);
    }
    case 24: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_17);
    }
    case 46: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_18);
    }
    case 7: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_19);
    }
    case 45: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_32);
    }
    default: {
      return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
    }
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_33(_lookahead) {
  _L: {
    switch (_lookahead) {
      case 9: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_2);
      }
      case 1: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_13);
      }
      case 5: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_14);
      }
      case 26: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_15);
      }
      case 25: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_16);
      }
      case 24: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_17);
      }
      case 46: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_18);
      }
      case 7: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_19);
      }
      case 45: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_24);
      }
      case 43: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_30);
      }
      case 44: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_33);
      }
      case 42: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_34);
      }
      case 0: {
        break _L;
      }
      case 4: {
        break _L;
      }
      case 8: {
        break _L;
      }
      case 13: {
        break _L;
      }
      case 14: {
        break _L;
      }
      case 15: {
        break _L;
      }
      default: {
        return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
      }
    }
  }
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Reduce(1, 42, moonbitlang$ulex$lib$parser$$yy_action_24);
}
function moonbitlang$ulex$lib$parser$$yy_state_35(_lookahead) {
  _L: {
    switch (_lookahead) {
      case 15: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_36);
      }
      case 0: {
        break _L;
      }
      case 4: {
        break _L;
      }
      case 8: {
        break _L;
      }
      case 13: {
        break _L;
      }
      case 14: {
        break _L;
      }
      default: {
        return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
      }
    }
  }
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Reduce(1, 41, moonbitlang$ulex$lib$parser$$yy_action_26);
}
function moonbitlang$ulex$lib$parser$$yy_state_36(_lookahead) {
  switch (_lookahead) {
    case 9: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_2);
    }
    case 1: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_13);
    }
    case 5: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_14);
    }
    case 26: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_15);
    }
    case 25: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_16);
    }
    case 24: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_17);
    }
    case 46: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_18);
    }
    case 7: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_19);
    }
    case 45: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_24);
    }
    case 43: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_30);
    }
    case 44: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_33);
    }
    case 42: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_35);
    }
    case 41: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_37);
    }
    default: {
      return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
    }
  }
}
function moonbitlang$ulex$lib$parser$$yy_action_4(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 8) {
    const _YYObj__type_Regex = _bind;
    const __dollar1 = _YYObj__type_Regex._0;
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Regex$46$YYObj__type_Regex(__dollar1);
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_43(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(1, 39, moonbitlang$ulex$lib$parser$$yy_action_4);
}
function moonbitlang$ulex$lib$parser$$yy_action_43(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 1)._0;
  if (_bind.$tag === 4) {
    const _YYObj_String = _bind;
    const __dollar2 = _YYObj_String._0;
    const _bind$2 = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 3)._0;
    if (_bind$2.$tag === 8) {
      const _YYObj__type_Regex = _bind$2;
      const __dollar4 = _YYObj__type_Regex._0;
      return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Unit$46$YYObj_Unit(moonbitlang$core$builtin$$Map$set$0$(moonbitlang$ulex$lib$parser$$named_regexes, __dollar2, __dollar4));
    } else {
      return $panic();
    }
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_54(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(5, 34, moonbitlang$ulex$lib$parser$$yy_action_43);
}
function moonbitlang$ulex$lib$parser$$yy_state_53(_lookahead) {
  if (_lookahead === 13) {
    return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_54);
  } else {
    return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_52(_lookahead) {
  switch (_lookahead) {
    case 9: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_2);
    }
    case 1: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_13);
    }
    case 5: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_14);
    }
    case 26: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_15);
    }
    case 25: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_16);
    }
    case 24: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_17);
    }
    case 46: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_18);
    }
    case 7: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_19);
    }
    case 45: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_24);
    }
    case 43: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_30);
    }
    case 44: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_33);
    }
    case 42: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_35);
    }
    case 41: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_38);
    }
    case 40: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_43);
    }
    case 39: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_53);
    }
    default: {
      return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
    }
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_51(_lookahead) {
  if (_lookahead === 11) {
    return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_52);
  } else {
    return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_50(_lookahead) {
  if (_lookahead === 24) {
    return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_51);
  } else {
    return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
  }
}
function moonbitlang$ulex$lib$parser$$yy_action_17(_last_pos, _args) {
  return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Unit$46$YYObj_Unit(undefined);
}
function moonbitlang$ulex$lib$parser$$yy_state_56(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(2, 33, moonbitlang$ulex$lib$parser$$yy_action_17);
}
function moonbitlang$ulex$lib$parser$$yy_state_55(_lookahead) {
  switch (_lookahead) {
    case 3: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_50);
    }
    case 34: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_55);
    }
    case 33: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_56);
    }
    case 22: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Reduce(0, 33, moonbitlang$ulex$lib$parser$$yy_action_3);
    }
    default: {
      return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
    }
  }
}
function moonbitlang$ulex$lib$parser$$yy_action_6(_last_pos, _args) {
  return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__immut_list_T___type_Regex___type_CodeBlock__$46$YYObj__immut_list_T___type_Regex___type_CodeBlock__($64$moonbitlang$47$core$47$immut$47$list$46$T$Nil$21$);
}
function moonbitlang$ulex$lib$parser$$yy_action_5(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 8) {
    const _YYObj__type_Regex = _bind;
    const __dollar1 = _YYObj__type_Regex._0;
    const _bind$2 = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 2)._0;
    if (_bind$2.$tag === 4) {
      const _YYObj_String = _bind$2;
      const __dollar3 = _YYObj_String._0;
      return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj___type_Regex___type_CodeBlock_$46$YYObj___type_Regex___type_CodeBlock_({ _0: __dollar1, _1: __dollar3 });
    } else {
      return $panic();
    }
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_62(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(3, 38, moonbitlang$ulex$lib$parser$$yy_action_5);
}
function moonbitlang$ulex$lib$parser$$yy_state_61(_lookahead) {
  if (_lookahead === 23) {
    return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_62);
  } else {
    return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_60(_lookahead) {
  if (_lookahead === 14) {
    return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_61);
  } else {
    return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
  }
}
function moonbitlang$ulex$lib$parser$$yy_action_28(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 11) {
    const _YYObj___type_Regex___type_CodeBlock_ = _bind;
    const __dollar1 = _YYObj___type_Regex___type_CodeBlock_._0;
    const _bind$2 = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 1)._0;
    if (_bind$2.$tag === 10) {
      const _YYObj__immut_list_T___type_Regex___type_CodeBlock__ = _bind$2;
      const __dollar2 = _YYObj__immut_list_T___type_Regex___type_CodeBlock__._0;
      return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__immut_list_T___type_Regex___type_CodeBlock__$46$YYObj__immut_list_T___type_Regex___type_CodeBlock__(new $64$moonbitlang$47$core$47$immut$47$list$46$T$Cons$21$(__dollar1, __dollar2));
    } else {
      return $panic();
    }
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_64(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(2, 37, moonbitlang$ulex$lib$parser$$yy_action_28);
}
function moonbitlang$ulex$lib$parser$$yy_state_63(_lookahead) {
  switch (_lookahead) {
    case 9: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_2);
    }
    case 1: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_13);
    }
    case 5: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_14);
    }
    case 26: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_15);
    }
    case 25: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_16);
    }
    case 24: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_17);
    }
    case 46: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_18);
    }
    case 7: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_19);
    }
    case 45: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_24);
    }
    case 43: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_30);
    }
    case 44: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_33);
    }
    case 42: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_35);
    }
    case 41: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_38);
    }
    case 40: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_43);
    }
    case 39: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_60);
    }
    case 38: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_63);
    }
    case 37: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_64);
    }
    case 6: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Reduce(0, 37, moonbitlang$ulex$lib$parser$$yy_action_6);
    }
    default: {
      return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
    }
  }
}
function moonbitlang$ulex$lib$parser$$yy_action_20(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 3) {
    const _YYObj__String__String_ = _bind;
    const __dollar1 = _YYObj__String__String_._0;
    const _bind$2 = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 2)._0;
    if (_bind$2.$tag === 10) {
      const _YYObj__immut_list_T___type_Regex___type_CodeBlock__ = _bind$2;
      const __dollar3 = _YYObj__immut_list_T___type_Regex___type_CodeBlock__._0;
      return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Rule$46$YYObj__type_Rule({ name: __dollar1._0, signature: __dollar1._1, patterns: moonbitlang$core$immut$list$$T$to_array$65$(__dollar3) });
    } else {
      return $panic();
    }
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_67(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(5, 36, moonbitlang$ulex$lib$parser$$yy_action_20);
}
function moonbitlang$ulex$lib$parser$$yy_state_66(_lookahead) {
  if (_lookahead === 6) {
    return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_67);
  } else {
    return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_65(_lookahead) {
  if (_lookahead === 6) {
    return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_66);
  } else {
    return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_59(_lookahead) {
  switch (_lookahead) {
    case 9: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_2);
    }
    case 1: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_13);
    }
    case 5: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_14);
    }
    case 26: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_15);
    }
    case 25: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_16);
    }
    case 24: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_17);
    }
    case 46: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_18);
    }
    case 7: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_19);
    }
    case 45: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_24);
    }
    case 43: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_30);
    }
    case 44: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_33);
    }
    case 42: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_35);
    }
    case 41: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_38);
    }
    case 40: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_43);
    }
    case 39: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_60);
    }
    case 38: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_63);
    }
    case 37: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_65);
    }
    case 6: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Reduce(0, 37, moonbitlang$ulex$lib$parser$$yy_action_6);
    }
    default: {
      return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
    }
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_58(_lookahead) {
  if (_lookahead === 2) {
    return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_59);
  } else {
    return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
  }
}
function moonbitlang$ulex$lib$parser$$yy_action_32(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 12) {
    const _YYObj__type_Rule = _bind;
    const __dollar1 = _YYObj__type_Rule._0;
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__immut_list_T__type_Rule_$46$YYObj__immut_list_T__type_Rule_(new $64$moonbitlang$47$core$47$immut$47$list$46$T$Cons$22$(__dollar1, $64$moonbitlang$47$core$47$immut$47$list$46$T$Nil$22$));
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_action_14(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 12) {
    const _YYObj__type_Rule = _bind;
    const __dollar1 = _YYObj__type_Rule._0;
    const _bind$2 = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 1)._0;
    if (_bind$2.$tag === 13) {
      const _YYObj__immut_list_T__type_Rule_ = _bind$2;
      const __dollar2 = _YYObj__immut_list_T__type_Rule_._0;
      return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__immut_list_T__type_Rule_$46$YYObj__immut_list_T__type_Rule_(new $64$moonbitlang$47$core$47$immut$47$list$46$T$Cons$22$(__dollar1, __dollar2));
    } else {
      return $panic();
    }
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_69(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(2, 35, moonbitlang$ulex$lib$parser$$yy_action_14);
}
function moonbitlang$ulex$lib$parser$$yy_state_68(_lookahead) {
  _L: {
    switch (_lookahead) {
      case 22: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_58);
      }
      case 36: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_68);
      }
      case 35: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_69);
      }
      case 0: {
        break _L;
      }
      case 23: {
        break _L;
      }
      default: {
        return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
      }
    }
  }
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Reduce(1, 35, moonbitlang$ulex$lib$parser$$yy_action_32);
}
function moonbitlang$ulex$lib$parser$$yy_action_22(_last_pos, _args) {
  return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_String$46$YYObj_String("");
}
function moonbitlang$ulex$lib$parser$$yy_action_21(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 4) {
    const _YYObj_String = _bind;
    const __dollar1 = _YYObj_String._0;
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_String$46$YYObj_String(__dollar1);
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_71(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(1, 32, moonbitlang$ulex$lib$parser$$yy_action_21);
}
function moonbitlang$ulex$lib$parser$$yy_action_2(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 4) {
    const _YYObj_String = _bind;
    const __dollar1 = _YYObj_String._0;
    const _bind$2 = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 2)._0;
    if (_bind$2.$tag === 13) {
      const _YYObj__immut_list_T__type_Rule_ = _bind$2;
      const __dollar3 = _YYObj__immut_list_T__type_Rule_._0;
      const _bind$3 = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 3)._0;
      if (_bind$3.$tag === 4) {
        const _YYObj_String$2 = _bind$3;
        const __dollar4 = _YYObj_String$2._0;
        return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Lex$46$YYObj__type_Lex({ header: __dollar1, rules: moonbitlang$core$immut$list$$T$to_array$64$(__dollar3), trailer: __dollar4 });
      } else {
        return $panic();
      }
    } else {
      return $panic();
    }
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_72(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(4, 30, moonbitlang$ulex$lib$parser$$yy_action_2);
}
function moonbitlang$ulex$lib$parser$$yy_state_70(_lookahead) {
  switch (_lookahead) {
    case 23: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_71);
    }
    case 32: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_72);
    }
    case 0: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Reduce(0, 32, moonbitlang$ulex$lib$parser$$yy_action_22);
    }
    default: {
      return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
    }
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_57(_lookahead) {
  switch (_lookahead) {
    case 22: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_58);
    }
    case 36: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_68);
    }
    case 35: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_70);
    }
    default: {
      return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
    }
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_49(_lookahead) {
  switch (_lookahead) {
    case 3: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_50);
    }
    case 34: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_55);
    }
    case 33: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_57);
    }
    case 22: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Reduce(0, 33, moonbitlang$ulex$lib$parser$$yy_action_3);
    }
    default: {
      return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
    }
  }
}
function moonbitlang$ulex$lib$parser$$cleanup() {
  moonbitlang$core$builtin$$Map$clear$0$(moonbitlang$ulex$lib$parser$$named_regexes);
}
function moonbitlang$ulex$lib$parser$$yy_action_25(_last_pos, _args) {
  return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj_Unit$46$YYObj_Unit(moonbitlang$ulex$lib$parser$$cleanup());
}
function moonbitlang$ulex$lib$parser$$yy_action_9(_last_pos, _args) {
  const _bind = moonbitlang$core$array$$ArrayView$op_get$72$(_args, 0)._0;
  if (_bind.$tag === 6) {
    const _YYObj__type_Lex = _bind;
    const __dollar1 = _YYObj__type_Lex._0;
    return new Error$moonbitlang$47$ulex$47$lib$47$parser$46$YYObj__type_Lex$46$YYObj__type_Lex(__dollar1);
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_75(_lookahead) {
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$ReduceNoLookahead(3, 27, moonbitlang$ulex$lib$parser$$yy_action_9);
}
function moonbitlang$ulex$lib$parser$$yy_state_74(_lookahead) {
  if (_lookahead === 0) {
    return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_75);
  } else {
    return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_73(_lookahead) {
  switch (_lookahead) {
    case 28: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_74);
    }
    case 0: {
      return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Reduce(0, 28, moonbitlang$ulex$lib$parser$$yy_action_25);
    }
    default: {
      return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
    }
  }
}
function moonbitlang$ulex$lib$parser$$yy_state_46(_lookahead) {
  _L: {
    switch (_lookahead) {
      case 27: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_47);
      }
      case 23: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_48);
      }
      case 31: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_49);
      }
      case 30: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Shift(moonbitlang$ulex$lib$parser$$yy_state_73);
      }
      case 0: {
        return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Reduce(0, 30, moonbitlang$ulex$lib$parser$$yy_action_19);
      }
      case 3: {
        break _L;
      }
      case 22: {
        break _L;
      }
      default: {
        return $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Error;
      }
    }
  }
  return new $64$moonbitlang$47$ulex$47$lib$47$parser$46$YYDecision$Reduce(0, 31, moonbitlang$ulex$lib$parser$$yy_action_0);
}
function moonbitlang$ulex$lib$parser$$lex_eoi(read_token, start_pos) {
  return moonbitlang$ulex$lib$parser$$yy_parse$142$(read_token, start_pos, moonbitlang$ulex$lib$parser$$yy_state_46, (_param1) => {
    if (_param1.$tag === 6) {
      const _YYObj__type_Lex = _param1;
      const _result = _YYObj__type_Lex._0;
      return _result;
    } else {
      return $panic();
    }
  });
}
function moonbitlang$ulex$lib$parser$$parse_lex_from_string(input) {
  const lexbuf = moonbitlang$ulex$45$runtime$lexbuf$$StringLexbuf$from_string(input);
  return moonbitlang$ulex$lib$parser$$lex_eoi(() => moonbitlang$ulex$lib$parser$$token$141$(lexbuf), 0);
}
function moonbitlang$ulex$lib$parser$$Token$kind(self) {
  switch (self.$tag) {
    case 0: {
      return 0;
    }
    case 1: {
      return 1;
    }
    case 2: {
      return 2;
    }
    case 3: {
      return 3;
    }
    case 4: {
      return 4;
    }
    case 5: {
      return 5;
    }
    case 6: {
      return 6;
    }
    case 7: {
      return 7;
    }
    case 8: {
      return 8;
    }
    case 9: {
      return 9;
    }
    case 10: {
      return 10;
    }
    case 11: {
      return 11;
    }
    case 12: {
      return 12;
    }
    case 13: {
      return 13;
    }
    case 14: {
      return 14;
    }
    case 15: {
      return 15;
    }
    case 16: {
      return 16;
    }
    case 17: {
      return 17;
    }
    case 18: {
      return 18;
    }
    case 19: {
      return 19;
    }
    case 20: {
      return 20;
    }
    case 21: {
      return 21;
    }
    case 22: {
      return 22;
    }
    case 23: {
      return 23;
    }
    case 24: {
      return 24;
    }
    case 25: {
      return 25;
    }
    default: {
      return 26;
    }
  }
}
function moonbitlang$core$builtin$$Show$output$120$(self, logger) {
  let _tmp;
  switch (self) {
    case 0: {
      _tmp = "EOI";
      break;
    }
    case 1: {
      _tmp = "\"eof\"";
      break;
    }
    case 2: {
      _tmp = "\"parse {\"";
      break;
    }
    case 3: {
      _tmp = "\"regex\"";
      break;
    }
    case 4: {
      _tmp = "\"as\"";
      break;
    }
    case 5: {
      _tmp = "\"_\"";
      break;
    }
    case 6: {
      _tmp = "\"}\"";
      break;
    }
    case 7: {
      _tmp = "\"(\"";
      break;
    }
    case 8: {
      _tmp = "\")\"";
      break;
    }
    case 9: {
      _tmp = "\"[\"";
      break;
    }
    case 10: {
      _tmp = "\"]\"";
      break;
    }
    case 11: {
      _tmp = "\"=\"";
      break;
    }
    case 12: {
      _tmp = "\":\"";
      break;
    }
    case 13: {
      _tmp = "\";\"";
      break;
    }
    case 14: {
      _tmp = "\"=>\"";
      break;
    }
    case 15: {
      _tmp = "\"|\"";
      break;
    }
    case 16: {
      _tmp = "\"*\"";
      break;
    }
    case 17: {
      _tmp = "\"+\"";
      break;
    }
    case 18: {
      _tmp = "\"?\"";
      break;
    }
    case 19: {
      _tmp = "\"-\"";
      break;
    }
    case 20: {
      _tmp = "\"^\"";
      break;
    }
    case 21: {
      _tmp = "BACKSLASH";
      break;
    }
    case 22: {
      _tmp = "RULE_LC_IDENT_LPAREN_CODE_RPAREN_ARROW_CODE_LBRACE";
      break;
    }
    case 23: {
      _tmp = "LBRACE_CODE_RBRACE";
      break;
    }
    case 24: {
      _tmp = "LC_IDENT";
      break;
    }
    case 25: {
      _tmp = "CHAR";
      break;
    }
    default: {
      _tmp = "STRING";
    }
  }
  logger.method_0(logger.self, _tmp);
}
(() => {
})();
function moonbitlang$core$builtin$$Eq$op_equal$74$(_x_21, _x_22) {
  return moonbitlang$core$builtin$$Eq$op_equal$53$(_x_21.bits, _x_22.bits) && _x_21.len === _x_22.len;
}
function moonbitlang$ulex$lib$util$bitset$$new(len) {
  return { bits: moonbitlang$core$array$$FixedArray$makei$8$((len + 32 | 0) / 32 | 0, (_i) => 0), len: len };
}
function moonbitlang$ulex$lib$util$bitset$$Bitset$copy(self) {
  return { bits: moonbitlang$core$array$$FixedArray$copy$8$(self.bits), len: self.len };
}
function moonbitlang$ulex$lib$util$bitset$$Bitset$get(self, index) {
  const _tmp = self.bits;
  const _tmp$2 = index / 32 | 0;
  $bound_check(_tmp, _tmp$2);
  return (_tmp[_tmp$2] & 1 << (index % 32 | 0)) !== 0;
}
function moonbitlang$ulex$lib$util$bitset$$Bitset$set(self, index, value) {
  const t = index / 32 | 0;
  const _tmp = self.bits;
  const _tmp$2 = self.bits;
  $bound_check(_tmp$2, t);
  $bound_check(_tmp, t);
  _tmp[t] = _tmp$2[t] | moonbitlang$core$bool$$Bool$to_int(value) << index;
}
function moonbitlang$ulex$lib$util$bitset$$Bitset$union(self, other) {
  return self.len !== other.len ? moonbitlang$core$builtin$$abort$74$("") : { bits: moonbitlang$core$array$$FixedArray$makei$8$(self.bits.length, (i) => {
    const _tmp = self.bits;
    $bound_check(_tmp, i);
    const _tmp$2 = _tmp[i];
    const _tmp$3 = other.bits;
    $bound_check(_tmp$3, i);
    return _tmp$2 | _tmp$3[i];
  }), len: self.len };
}
function moonbitlang$x$encoding$$slice(bytes, offset, length) {
  const new_bytes = $make_array_len_and_init(length, 48);
  moonbitlang$core$array$$FixedArray$blit_to$47$(bytes, new_bytes, length, offset, moonbitlang$core$array$$FixedArray$blit_to$46$dst_offset$46$default$47$());
  return moonbitlang$core$bytes$$Bytes$from_fixedarray(new_bytes, undefined);
}
function moonbitlang$x$encoding$$malformed(bytes, offset, length) {
  return new $64$moonbitlang$47$x$47$encoding$46$Decode$Malformed(moonbitlang$x$encoding$$slice(bytes, offset, length));
}
function moonbitlang$x$encoding$$malformed_pair(be, hi, bytes, offset, length) {
  const bs1 = $make_array_len_and_init(length, moonbitlang$core$builtin$$Default$default$47$());
  moonbitlang$core$array$$FixedArray$blit_to$47$(bytes, bs1, length, offset, moonbitlang$core$array$$FixedArray$blit_to$46$dst_offset$46$default$47$());
  const bs0 = $make_array_len_and_init(2, moonbitlang$core$builtin$$Default$default$47$());
  let j0;
  let j1;
  _L: {
    if (be) {
      j0 = 0;
      j1 = 1;
      break _L;
    } else {
      j0 = 1;
      j1 = 0;
      break _L;
    }
  }
  $bound_check(bs0, j0);
  bs0[j0] = hi >> 8 & 255;
  $bound_check(bs0, j1);
  bs0[j1] = hi & 255;
  const bs = moonbitlang$core$buffer$$new(bs0.length + bs1.length | 0);
  moonbitlang$core$buffer$$T$write_bytes(bs, moonbitlang$core$bytes$$Bytes$from_fixedarray(bs0, 2));
  moonbitlang$core$buffer$$T$write_bytes(bs, moonbitlang$core$bytes$$Bytes$from_fixedarray(bs1, length));
  return new $64$moonbitlang$47$x$47$encoding$46$Decode$Malformed(moonbitlang$x$encoding$$slice(moonbitlang$core$bytes$$Bytes$to_fixedarray(moonbitlang$core$buffer$$T$to_bytes(bs), undefined), 0, moonbitlang$core$buffer$$T$length(bs)));
}
function moonbitlang$x$encoding$$r_utf_16(bytes, offset0, offset1) {
  $bound_check(bytes, offset0);
  const b0 = bytes[offset0];
  $bound_check(bytes, offset1);
  const b1 = bytes[offset1];
  const u = b0 << 8 | b1;
  return u < 55296 || u > 57343 ? new $64$moonbitlang$47$x$47$encoding$46$UTF16Decode$UTF16Uchar(u) : u > 56319 ? new $64$moonbitlang$47$x$47$encoding$46$UTF16Decode$UTF16Malformed(moonbitlang$x$encoding$$slice(bytes, moonbitlang$core$math$$minimum$8$(offset0, offset1), 2)) : new $64$moonbitlang$47$x$47$encoding$46$UTF16Decode$Hi(u);
}
function moonbitlang$x$encoding$$Decoder$i_rem(self) {
  return self.i.length - self.i_pos | 0;
}
function moonbitlang$x$encoding$$Decoder$eoi(self) {
  self.i = moonbitlang$core$builtin$$Default$default$135$();
}
function moonbitlang$x$encoding$$Decoder$ret(self, k, v) {
  self.k = k;
  return v;
}
function moonbitlang$x$encoding$$Decoder$refill(self, k) {
  moonbitlang$x$encoding$$Decoder$eoi(self);
  return moonbitlang$x$encoding$$Decoder$ret(self, k, new $64$moonbitlang$47$x$47$encoding$46$Decode$Refill(moonbitlang$core$bytes$$Bytes$from_fixedarray(self.t, undefined)));
}
function moonbitlang$x$encoding$$t_fill$46$blit$124$122(decoder, l) {
  moonbitlang$core$array$$FixedArray$blit_to$47$(decoder.i, decoder.t, l, decoder.i_pos, decoder.t_len);
  decoder.i_pos = decoder.i_pos + l | 0;
  decoder.t_len = decoder.t_len + l | 0;
}
function moonbitlang$x$encoding$$t_fill(k, decoder) {
  const rem = moonbitlang$x$encoding$$Decoder$i_rem(decoder);
  if (rem < 0) {
    return k(decoder);
  } else {
    const need = decoder.t_need - decoder.t_len | 0;
    if (rem < need) {
      moonbitlang$x$encoding$$t_fill$46$blit$124$122(decoder, rem);
      const _func = moonbitlang$core$tuple$$curry$4$(moonbitlang$x$encoding$$t_fill);
      return moonbitlang$x$encoding$$Decoder$refill(decoder, _func(k));
    } else {
      moonbitlang$x$encoding$$t_fill$46$blit$124$122(decoder, need);
      return k(decoder);
    }
  }
}
function moonbitlang$x$encoding$$r_utf_16_lo(hi, bytes, offset0, offset1) {
  $bound_check(bytes, offset0);
  const b0 = bytes[offset0];
  $bound_check(bytes, offset1);
  const b1 = bytes[offset1];
  const lo = b0 << 8 | b1;
  if (lo < 56320 || lo > 57343) {
    $bound_check(bytes, offset0);
    const _tmp = bytes[offset0];
    $bound_check(bytes, offset1);
    return new $64$moonbitlang$47$x$47$encoding$46$Decode$Malformed(new Uint8Array([_tmp, bytes[offset1]]));
  } else {
    return new $64$moonbitlang$47$x$47$encoding$46$Decode$Uchar((hi & 1023) << 10 | ((lo & 1023) + 65536 | 0));
  }
}
function moonbitlang$x$encoding$$Decoder$t_need(self, need) {
  self.t_len = 0;
  self.t_need = need;
}
function moonbitlang$x$encoding$$Decoder$decode_utf_16be(self) {
  const rem = moonbitlang$x$encoding$$Decoder$i_rem(self);
  if (rem <= 0) {
    return $64$moonbitlang$47$x$47$encoding$46$Decode$End;
  } else {
    if (rem < 2) {
      moonbitlang$x$encoding$$Decoder$t_need(self, 2);
      return moonbitlang$x$encoding$$t_fill(moonbitlang$x$encoding$$Decoder$t_decode_utf_16be, self);
    } else {
      const j = self.i_pos;
      self.i_pos = self.i_pos + 2 | 0;
      return moonbitlang$x$encoding$$Decoder$decode_utf_16be_lo(self, moonbitlang$x$encoding$$r_utf_16(self.i, j, j + 1 | 0));
    }
  }
}
function moonbitlang$x$encoding$$Decoder$decode_utf_16be_lo(self, decode) {
  switch (decode.$tag) {
    case 2: {
      const _UTF16Uchar = decode;
      const _x = _UTF16Uchar._0;
      return moonbitlang$x$encoding$$Decoder$ret(self, moonbitlang$x$encoding$$Decoder$decode_utf_16be, new $64$moonbitlang$47$x$47$encoding$46$Decode$Uchar(_x));
    }
    case 1: {
      const _UTF16Malformed = decode;
      const _x$2 = _UTF16Malformed._0;
      return moonbitlang$x$encoding$$Decoder$ret(self, moonbitlang$x$encoding$$Decoder$decode_utf_16be, new $64$moonbitlang$47$x$47$encoding$46$Decode$Malformed(_x$2));
    }
    default: {
      const _Hi = decode;
      const _hi = _Hi._0;
      const rem = moonbitlang$x$encoding$$Decoder$i_rem(self);
      if (rem < 2) {
        moonbitlang$x$encoding$$Decoder$t_need(self, 2);
        const _func = moonbitlang$core$tuple$$curry$5$(moonbitlang$x$encoding$$t_decode_utf_16be_lo);
        return moonbitlang$x$encoding$$t_fill(_func(_hi), self);
      } else {
        const j = self.i_pos;
        const dcd = moonbitlang$x$encoding$$r_utf_16_lo(_hi, self.i, j, j + 1 | 0);
        if (dcd.$tag === 3) {
          self.i_pos = self.i_pos + 2 | 0;
        }
        return moonbitlang$x$encoding$$Decoder$ret(self, moonbitlang$x$encoding$$Decoder$decode_utf_16be, dcd);
      }
    }
  }
}
function moonbitlang$x$encoding$$t_decode_utf_16be_lo(hi, self) {
  return self.t_len < self.t_need ? moonbitlang$x$encoding$$Decoder$ret(self, moonbitlang$x$encoding$$Decoder$decode_utf_16be, moonbitlang$x$encoding$$malformed_pair(true, hi, self.t, 0, self.t_len)) : moonbitlang$x$encoding$$Decoder$ret(self, moonbitlang$x$encoding$$Decoder$decode_utf_16be, moonbitlang$x$encoding$$r_utf_16_lo(hi, self.t, 0, 1));
}
function moonbitlang$x$encoding$$Decoder$t_decode_utf_16be(self) {
  return self.t_len < self.t_need ? moonbitlang$x$encoding$$Decoder$ret(self, moonbitlang$x$encoding$$Decoder$decode_utf_16be, moonbitlang$x$encoding$$malformed(self.t, 0, self.t_len)) : moonbitlang$x$encoding$$Decoder$decode_utf_16be_lo(self, moonbitlang$x$encoding$$r_utf_16(self.t, 0, 1));
}
function moonbitlang$x$encoding$$Decoder$decode_utf_16le(self) {
  const rem = moonbitlang$x$encoding$$Decoder$i_rem(self);
  if (rem <= 0) {
    return $64$moonbitlang$47$x$47$encoding$46$Decode$End;
  } else {
    if (rem < 2) {
      moonbitlang$x$encoding$$Decoder$t_need(self, 2);
      return moonbitlang$x$encoding$$t_fill(moonbitlang$x$encoding$$Decoder$t_decode_utf_16le, self);
    } else {
      const j = self.i_pos;
      self.i_pos = self.i_pos + 2 | 0;
      return moonbitlang$x$encoding$$Decoder$decode_utf_16le_lo(self, moonbitlang$x$encoding$$r_utf_16(self.i, j + 1 | 0, j));
    }
  }
}
function moonbitlang$x$encoding$$Decoder$decode_utf_16le_lo(self, v) {
  switch (v.$tag) {
    case 2: {
      const _UTF16Uchar = v;
      const _u = _UTF16Uchar._0;
      return moonbitlang$x$encoding$$Decoder$ret(self, moonbitlang$x$encoding$$Decoder$decode_utf_16le, new $64$moonbitlang$47$x$47$encoding$46$Decode$Uchar(_u));
    }
    case 1: {
      const _UTF16Malformed = v;
      const _s = _UTF16Malformed._0;
      return moonbitlang$x$encoding$$Decoder$ret(self, moonbitlang$x$encoding$$Decoder$decode_utf_16le, new $64$moonbitlang$47$x$47$encoding$46$Decode$Malformed(_s));
    }
    default: {
      const _Hi = v;
      const _hi = _Hi._0;
      const rem = moonbitlang$x$encoding$$Decoder$i_rem(self);
      if (rem < 2) {
        moonbitlang$x$encoding$$Decoder$t_need(self, 2);
        const _func = moonbitlang$core$tuple$$curry$5$(moonbitlang$x$encoding$$t_decode_utf_16le_lo);
        return moonbitlang$x$encoding$$t_fill(_func(_hi), self);
      } else {
        const j = self.i_pos;
        const dcd = moonbitlang$x$encoding$$r_utf_16_lo(_hi, self.i, j + 1 | 0, j);
        if (dcd.$tag === 3) {
          self.i_pos = self.i_pos + 2 | 0;
        }
        return moonbitlang$x$encoding$$Decoder$ret(self, moonbitlang$x$encoding$$Decoder$decode_utf_16le, dcd);
      }
    }
  }
}
function moonbitlang$x$encoding$$t_decode_utf_16le_lo(hi, decoder) {
  return decoder.t_len < decoder.t_need ? moonbitlang$x$encoding$$Decoder$ret(decoder, moonbitlang$x$encoding$$Decoder$decode_utf_16le, moonbitlang$x$encoding$$malformed_pair(false, hi, decoder.t, 0, decoder.t_len)) : moonbitlang$x$encoding$$Decoder$ret(decoder, moonbitlang$x$encoding$$Decoder$decode_utf_16le, moonbitlang$x$encoding$$r_utf_16_lo(hi, decoder.t, 1, 0));
}
function moonbitlang$x$encoding$$Decoder$t_decode_utf_16le(self) {
  return self.t_len < self.t_need ? moonbitlang$x$encoding$$Decoder$ret(self, moonbitlang$x$encoding$$Decoder$decode_utf_16le, moonbitlang$x$encoding$$malformed(self.t, 0, self.t_len)) : moonbitlang$x$encoding$$Decoder$decode_utf_16le_lo(self, moonbitlang$x$encoding$$r_utf_16(self.t, 1, 0));
}
function moonbitlang$x$encoding$$r_utf_8(bytes, offset, length) {
  let c;
  _L: {
    switch (length) {
      case 1: {
        $bound_check(bytes, offset);
        const _tmp = bytes[offset];
        c = _tmp;
        break _L;
      }
      case 2: {
        $bound_check(bytes, offset);
        const b0 = bytes[offset];
        const _tmp$2 = offset + 1 | 0;
        $bound_check(bytes, _tmp$2);
        const b1 = bytes[_tmp$2];
        if (b1 >> 6 !== 2) {
          return moonbitlang$x$encoding$$malformed(bytes, offset, length);
        } else {
          const _tmp$3 = (b0 & 31) << 6 | b1 & 63;
          c = _tmp$3;
          break _L;
        }
      }
      case 3: {
        $bound_check(bytes, offset);
        const b0$2 = bytes[offset];
        const _tmp$3 = offset + 1 | 0;
        $bound_check(bytes, _tmp$3);
        const b1$2 = bytes[_tmp$3];
        const _tmp$4 = offset + 2 | 0;
        $bound_check(bytes, _tmp$4);
        const b2 = bytes[_tmp$4];
        const c$2 = (b0$2 & 15) << 12 | ((b1$2 & 63) << 6 | b2 & 63);
        if (b2 >> 6 !== 2) {
          return moonbitlang$x$encoding$$malformed(bytes, offset, length);
        } else {
          switch (b0$2) {
            case 224: {
              if (b1$2 < 160 || 191 < b1$2) {
                return moonbitlang$x$encoding$$malformed(bytes, offset, length);
              } else {
                c = c$2;
                break _L;
              }
            }
            case 237: {
              if (b1$2 < 128 || 159 < b1$2) {
                return moonbitlang$x$encoding$$malformed(bytes, offset, length);
              } else {
                c = c$2;
                break _L;
              }
            }
            default: {
              if (b1$2 >> 6 !== 2) {
                return moonbitlang$x$encoding$$malformed(bytes, offset, length);
              } else {
                c = c$2;
                break _L;
              }
            }
          }
        }
      }
      case 4: {
        $bound_check(bytes, offset);
        const b0$3 = bytes[offset];
        const _tmp$5 = offset + 1 | 0;
        $bound_check(bytes, _tmp$5);
        const b1$3 = bytes[_tmp$5];
        const _tmp$6 = offset + 2 | 0;
        $bound_check(bytes, _tmp$6);
        const b2$2 = bytes[_tmp$6];
        const _tmp$7 = offset + 3 | 0;
        $bound_check(bytes, _tmp$7);
        const b3 = bytes[_tmp$7];
        const c$3 = (b0$3 & 7) << 18 | (b1$3 & 63) << 12 | (b2$2 & 63) << 6 | b3 & 63;
        if (b3 >> 6 !== 2 || b2$2 >> 6 !== 2) {
          return moonbitlang$x$encoding$$malformed(bytes, offset, length);
        } else {
          switch (b0$3) {
            case 240: {
              if (b1$3 < 144 || 191 < b1$3) {
                return moonbitlang$x$encoding$$malformed(bytes, offset, length);
              } else {
                c = c$3;
                break _L;
              }
            }
            case 244: {
              if (b1$3 < 128 || 143 < b1$3) {
                return moonbitlang$x$encoding$$malformed(bytes, offset, length);
              } else {
                c = c$3;
                break _L;
              }
            }
            default: {
              if (b1$3 >> 6 !== 2) {
                return moonbitlang$x$encoding$$malformed(bytes, offset, length);
              } else {
                c = c$3;
                break _L;
              }
            }
          }
        }
      }
      default: {
        return $panic();
      }
    }
  }
  return new $64$moonbitlang$47$x$47$encoding$46$Decode$Uchar(c);
}
function moonbitlang$x$encoding$$Decoder$decode_utf_8(self) {
  const rem = moonbitlang$x$encoding$$Decoder$i_rem(self);
  if (rem <= 0) {
    return $64$moonbitlang$47$x$47$encoding$46$Decode$End;
  } else {
    const _tmp = self.i;
    const _tmp$2 = self.i_pos;
    $bound_check(_tmp, _tmp$2);
    const idx = _tmp[_tmp$2];
    const need = moonbitlang$core$array$$Array$op_get$8$(moonbitlang$x$encoding$$utf_8_len, idx);
    if (rem < need) {
      moonbitlang$x$encoding$$Decoder$t_need(self, need);
      return moonbitlang$x$encoding$$t_fill(moonbitlang$x$encoding$$Decoder$t_decode_utf_8, self);
    } else {
      const j = self.i_pos;
      if (need === 0) {
        self.i_pos = self.i_pos + 1 | 0;
        return moonbitlang$x$encoding$$Decoder$ret(self, moonbitlang$x$encoding$$Decoder$decode_utf_8, moonbitlang$x$encoding$$malformed(self.i, j, 1));
      } else {
        self.i_pos = self.i_pos + need | 0;
        return moonbitlang$x$encoding$$Decoder$ret(self, moonbitlang$x$encoding$$Decoder$decode_utf_8, moonbitlang$x$encoding$$r_utf_8(self.i, j, need));
      }
    }
  }
}
function moonbitlang$x$encoding$$Decoder$t_decode_utf_8(self) {
  return self.t_len < self.t_need ? moonbitlang$x$encoding$$Decoder$ret(self, moonbitlang$x$encoding$$Decoder$decode_utf_8, moonbitlang$x$encoding$$malformed(self.t, 0, self.t_len)) : moonbitlang$x$encoding$$Decoder$ret(self, moonbitlang$x$encoding$$Decoder$decode_utf_8, moonbitlang$x$encoding$$r_utf_8(self.t, 0, self.t_len));
}
function moonbitlang$x$encoding$$decoder(encoding) {
  const i = moonbitlang$core$builtin$$Default$default$135$();
  const t = $make_array_len_and_init(4, moonbitlang$core$builtin$$Default$default$47$());
  let k;
  switch (encoding) {
    case 0: {
      k = moonbitlang$x$encoding$$Decoder$decode_utf_8;
      break;
    }
    case 1: {
      k = moonbitlang$x$encoding$$Decoder$decode_utf_16le;
      break;
    }
    case 2: {
      k = moonbitlang$x$encoding$$Decoder$decode_utf_16le;
      break;
    }
    default: {
      k = moonbitlang$x$encoding$$Decoder$decode_utf_16be;
    }
  }
  return { i: i, i_pos: 0, t: t, t_len: 0, t_need: 0, k: k };
}
function moonbitlang$x$encoding$$Decoder$decode_(self) {
  const _func = self.k;
  return _func(self);
}
function moonbitlang$x$encoding$$Decoder$i_cont(self, input) {
  const i_rem = moonbitlang$core$math$$maximum$8$(moonbitlang$x$encoding$$Decoder$i_rem(self), 0);
  const new_len = i_rem + input.length | 0;
  const new_i = $make_array_len_and_init(new_len, moonbitlang$core$builtin$$Default$default$47$());
  if (i_rem > 0) {
    moonbitlang$core$array$$FixedArray$blit_to$47$(self.i, new_i, i_rem, self.i_pos, moonbitlang$core$array$$FixedArray$blit_to$46$dst_offset$46$default$47$());
  }
  moonbitlang$core$array$$FixedArray$blit_from_bytes(new_i, i_rem, input, 0, input.length);
  self.i = new_i;
  self.i_pos = 0;
}
function moonbitlang$x$encoding$$Decoder$decode_lossy(self, input, stream) {
  if (input.length > 0) {
    moonbitlang$x$encoding$$Decoder$i_cont(self, input);
  }
  if (moonbitlang$x$encoding$$Decoder$i_rem(self) === 0) {
    return moonbitlang$core$builtin$$Default$default$23$();
  }
  const chars = [];
  let _tmp = moonbitlang$x$encoding$$Decoder$decode_(self);
  _L: while (true) {
    const _param = _tmp;
    switch (_param.$tag) {
      case 3: {
        const _Uchar = _param;
        const _u = _Uchar._0;
        moonbitlang$core$array$$Array$push$24$(chars, _u);
        _tmp = moonbitlang$x$encoding$$Decoder$decode_(self);
        continue _L;
      }
      case 2: {
        if (stream && self.t_need > 0) {
          return moonbitlang$core$string$$String$from_array(chars);
        } else {
          moonbitlang$core$array$$Array$push$24$(chars, 65533);
          _tmp = moonbitlang$x$encoding$$Decoder$decode_(self);
          continue _L;
        }
      }
      case 0: {
        return moonbitlang$core$string$$String$from_array(chars);
      }
      default: {
        if (stream) {
          return moonbitlang$core$string$$String$from_array(chars);
        } else {
          _tmp = moonbitlang$x$encoding$$Decoder$decode_(self);
          continue _L;
        }
      }
    }
  }
}
function moonbitlang$x$encoding$$Decoder$decode_lossy$46$stream$46$default() {
  return false;
}
function moonbitlang$x$encoding$$write_utf16be_char(buf, value) {
  const code = moonbitlang$core$char$$Char$to_uint(value);
  if (code >>> 0 < 65536 >>> 0) {
    const b0 = moonbitlang$core$uint$$UInt$to_byte(code >>> 8 | 0);
    const b1 = moonbitlang$core$uint$$UInt$to_byte(code & 255);
    moonbitlang$core$buffer$$T$write_byte(buf, b0);
    moonbitlang$core$buffer$$T$write_byte(buf, b1);
    return;
  } else {
    if (code >>> 0 < 1114112 >>> 0) {
      const hi = (code >>> 0) - (65536 >>> 0) | 0;
      const lo = hi >>> 10 | 55296;
      const hi$2 = hi & 1023 | 56320;
      const b0 = moonbitlang$core$uint$$UInt$to_byte(lo >>> 8 | 0);
      const b1 = moonbitlang$core$uint$$UInt$to_byte(lo & 255);
      const b2 = moonbitlang$core$uint$$UInt$to_byte(hi$2 >>> 8 | 0);
      const b3 = moonbitlang$core$uint$$UInt$to_byte(hi$2 & 255);
      moonbitlang$core$buffer$$T$write_byte(buf, b0);
      moonbitlang$core$buffer$$T$write_byte(buf, b1);
      moonbitlang$core$buffer$$T$write_byte(buf, b2);
      moonbitlang$core$buffer$$T$write_byte(buf, b3);
      return;
    } else {
      moonbitlang$core$builtin$$abort$21$("Char out of range");
      return;
    }
  }
}
function moonbitlang$x$encoding$$write_utf8_char(buf, value) {
  const code = moonbitlang$core$char$$Char$to_uint(value);
  if (code >>> 0 < 128 >>> 0) {
    const b0 = moonbitlang$core$uint$$UInt$to_byte(code & 127 | 0);
    moonbitlang$core$buffer$$T$write_byte(buf, b0);
    return;
  } else {
    if (code >>> 0 < 2048 >>> 0) {
      const b0 = moonbitlang$core$uint$$UInt$to_byte(code >>> 6 & 31 | 192);
      const b1 = moonbitlang$core$uint$$UInt$to_byte(code & 63 | 128);
      moonbitlang$core$buffer$$T$write_byte(buf, b0);
      moonbitlang$core$buffer$$T$write_byte(buf, b1);
      return;
    } else {
      if (code >>> 0 < 65536 >>> 0) {
        const b0 = moonbitlang$core$uint$$UInt$to_byte(code >>> 12 & 15 | 224);
        const b1 = moonbitlang$core$uint$$UInt$to_byte(code >>> 6 & 63 | 128);
        const b2 = moonbitlang$core$uint$$UInt$to_byte(code & 63 | 128);
        moonbitlang$core$buffer$$T$write_byte(buf, b0);
        moonbitlang$core$buffer$$T$write_byte(buf, b1);
        moonbitlang$core$buffer$$T$write_byte(buf, b2);
        return;
      } else {
        if (code >>> 0 < 1114112 >>> 0) {
          const b0 = moonbitlang$core$uint$$UInt$to_byte(code >>> 18 & 7 | 240);
          const b1 = moonbitlang$core$uint$$UInt$to_byte(code >>> 12 & 63 | 128);
          const b2 = moonbitlang$core$uint$$UInt$to_byte(code >>> 6 & 63 | 128);
          const b3 = moonbitlang$core$uint$$UInt$to_byte(code & 63 | 128);
          moonbitlang$core$buffer$$T$write_byte(buf, b0);
          moonbitlang$core$buffer$$T$write_byte(buf, b1);
          moonbitlang$core$buffer$$T$write_byte(buf, b2);
          moonbitlang$core$buffer$$T$write_byte(buf, b3);
          return;
        } else {
          moonbitlang$core$builtin$$abort$21$("Char out of range");
          return;
        }
      }
    }
  }
}
function moonbitlang$x$encoding$$encode(encoding, src) {
  _L: {
    _L$2: {
      switch (encoding) {
        case 1: {
          break _L$2;
        }
        case 2: {
          break _L$2;
        }
      }
      break _L;
    }
    return moonbitlang$core$string$$String$to_bytes(src);
  }
  const new_buf = moonbitlang$core$buffer$$new(Math.imul(src.length, 4) | 0);
  let write;
  switch (encoding) {
    case 0: {
      write = moonbitlang$x$encoding$$write_utf8_char;
      break;
    }
    case 3: {
      write = moonbitlang$x$encoding$$write_utf16be_char;
      break;
    }
    default: {
      write = moonbitlang$core$builtin$$abort$76$("unreachable");
    }
  }
  const _bind = moonbitlang$core$string$$String$iter(src);
  _bind((char) => {
    write(new_buf, char);
    return 1;
  });
  return moonbitlang$core$buffer$$T$to_bytes(new_buf);
}
function moonbitlang$core$builtin$$Eq$op_equal$63$(_x_505, _x_506) {
  return moonbitlang$core$builtin$$Eq$op_equal$136$(_x_505, _x_506);
}
function moonbitlang$core$builtin$$Hash$hash_combine$63$(_x_497, _x_498) {
  moonbitlang$core$builtin$$Hash$hash_combine$136$(_x_497, _x_498);
}
function moonbitlang$core$builtin$$Compare$compare$63$(_x_493, _x_494) {
  return moonbitlang$core$builtin$$Compare$compare$136$(_x_493, _x_494);
}
function moonbitlang$core$builtin$$Eq$op_equal$6$(_x_477, _x_478) {
  return moonbitlang$core$builtin$$Eq$op_equal$137$(_x_477, _x_478);
}
function moonbitlang$core$builtin$$Compare$compare$6$(_x_473, _x_474) {
  return moonbitlang$core$builtin$$Compare$compare$137$(_x_473, _x_474);
}
function moonbitlang$core$builtin$$Eq$op_equal$50$(_x_447, _x_448) {
  if (_x_447.$tag === 0) {
    const _Set = _x_447;
    const _$42$x0_449 = _Set._0;
    if (_x_448.$tag === 0) {
      const _Set$2 = _x_448;
      const _$42$y0_450 = _Set$2._0;
      return moonbitlang$core$builtin$$Eq$op_equal$12$(_$42$x0_449, _$42$y0_450);
    } else {
      return false;
    }
  } else {
    const _Copy = _x_447;
    const _$42$x0_451 = _Copy._0;
    const _$42$x1_452 = _Copy._1;
    if (_x_448.$tag === 1) {
      const _Copy$2 = _x_448;
      const _$42$y0_453 = _Copy$2._0;
      const _$42$y1_454 = _Copy$2._1;
      return moonbitlang$core$builtin$$Eq$op_equal$12$(_$42$x0_451, _$42$y0_453) && moonbitlang$core$builtin$$Eq$op_equal$12$(_$42$x1_452, _$42$y1_454);
    } else {
      return false;
    }
  }
}
function moonbitlang$core$builtin$$Compare$compare$50$(_x_429, _x_430) {
  if (_x_429.$tag === 0) {
    const _Set = _x_429;
    const _$42$x0_431 = _Set._0;
    if (_x_430.$tag === 0) {
      const _Set$2 = _x_430;
      const _$42$y0_432 = _Set$2._0;
      return moonbitlang$core$builtin$$Compare$compare$12$(_$42$x0_431, _$42$y0_432);
    } else {
      return -1;
    }
  } else {
    const _Copy = _x_429;
    const _$42$x0_433 = _Copy._0;
    const _$42$x1_434 = _Copy._1;
    if (_x_430.$tag === 0) {
      return 1;
    } else {
      const _Copy$2 = _x_430;
      const _$42$y0_435 = _Copy$2._0;
      const _$42$y1_436 = _Copy$2._1;
      const _bind = moonbitlang$core$builtin$$Compare$compare$12$(_$42$x0_433, _$42$y0_435);
      if (_bind === 0) {
        return moonbitlang$core$builtin$$Compare$compare$12$(_$42$x1_434, _$42$y1_436);
      } else {
        return _bind;
      }
    }
  }
}
function moonbitlang$ulex$lib$automaton$$TagState$new(size) {
  return moonbitlang$core$array$$Array$make$20$(size, undefined);
}
function moonbitlang$ulex$lib$automaton$$TagState$copy(self) {
  return moonbitlang$core$array$$Array$copy$20$(self);
}
function moonbitlang$ulex$lib$automaton$$TagState$update_by_tag(self, tag, rank) {
  const r = moonbitlang$core$array$$Array$op_get$20$(self, tag);
  if (moonbitlang$core$option$$Option$is_empty$8$(r) || moonbitlang$core$option$$Option$unwrap$8$(r) > rank) {
    moonbitlang$core$array$$Array$op_set$20$(self, tag, rank);
  }
  return self;
}
function moonbitlang$ulex$lib$automaton$$TagState$update_by_tags(self, tags) {
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i < self.length) {
      if (moonbitlang$ulex$lib$util$bitset$$Bitset$get(tags, i)) {
        moonbitlang$ulex$lib$automaton$$TagState$update_by_tag(self, i, -1);
      }
      _tmp = i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return self;
}
function moonbitlang$ulex$lib$automaton$$TagState$tagState_min(self, other) {
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i < self.length) {
      const _bind = moonbitlang$core$array$$Array$op_get$20$(self, i);
      const _bind$2 = moonbitlang$core$array$$Array$op_get$20$(other, i);
      if (_bind === undefined) {
        return other;
      } else {
        if (_bind$2 === undefined) {
          return self;
        } else {
          const _Some = _bind;
          const _r1 = _Some;
          const _Some$2 = _bind$2;
          const _r2 = _Some$2;
          if (_r1 !== _r2) {
            return _r1 < _r2 ? self : other;
          }
        }
      }
      _tmp = i + 1 | 0;
      continue;
    } else {
      return self;
    }
  }
}
function moonbitlang$ulex$lib$automaton$$DFA$new(code_blocks, captures) {
  const _bind = [];
  const _bind$2 = moonbitlang$core$builtin$$Map$from_array$97$([]);
  const _bind$3 = moonbitlang$core$builtin$$Map$new$93$(moonbitlang$core$builtin$$Map$new$46$capacity$46$default$93$());
  return { graph: _bind, start_node: -1, tag_actions: _bind$2, end_nodes: _bind$3, code_blocks: code_blocks, captures: captures, node_count: 0 };
}
function moonbitlang$ulex$lib$automaton$$DFA$new_node(self) {
  const id = self.node_count;
  self.node_count = self.node_count + 1 | 0;
  moonbitlang$core$array$$Array$push$84$(self.graph, []);
  return id;
}
function moonbitlang$ulex$lib$automaton$$DFA$add_edge(self, from, e, to) {
  const _arr = moonbitlang$core$array$$Array$op_get$84$(self.graph, from);
  const _len = _arr.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const tran = _arr[_i];
      if (moonbitlang$core$builtin$$Eq$op_equal$30$(tran._0, e) && tran._1 === to) {
        return undefined;
      }
      if (moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$subset(e, tran._0)) {
        $panic();
      }
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  moonbitlang$core$array$$Array$push$25$(moonbitlang$core$array$$Array$op_get$84$(self.graph, from), { _0: e, _1: to });
}
function moonbitlang$ulex$lib$automaton$$state_canonicalize(state, tag_count) {
  const mat = moonbitlang$core$array$$Array$makei$52$(tag_count, (_i) => []);
  const _bind = moonbitlang$core$immut$hashmap$$T$iter$56$(state);
  _bind((pair) => {
    const tags = pair._1;
    const _arr = tags;
    const _len = _arr.length;
    let _tmp = 0;
    while (true) {
      const _i = _tmp;
      if (_i < _len) {
        const rank = _arr[_i];
        if (!moonbitlang$core$option$$Option$is_empty$8$(rank)) {
          moonbitlang$core$array$$Array$push$8$(moonbitlang$core$array$$Array$op_get$52$(mat, _i), moonbitlang$core$option$$Option$unwrap$8$(rank));
        }
        _tmp = _i + 1 | 0;
        continue;
      } else {
        break;
      }
    }
    return 1;
  });
  moonbitlang$core$array$$Array$map_inplace$52$(mat, (x) => moonbitlang$core$sorted_set$$T$to_array$8$(moonbitlang$core$sorted_set$$from_iter$8$(moonbitlang$core$array$$Array$iter$8$(x))));
  const _bind$2 = moonbitlang$core$immut$hashmap$$T$iter$56$(state);
  const new_state = moonbitlang$core$immut$hashmap$$from_iter$56$((_p) => _bind$2((_p$2) => {
    const tags = _p$2._1;
    moonbitlang$core$array$$Array$mapi_inplace$20$(tags, (tag, op) => moonbitlang$core$option$$Option$map$67$(op, (x) => {
      const _arr = moonbitlang$core$array$$Array$op_get$52$(mat, tag);
      const _len = _arr.length;
      let _tmp = 0;
      while (true) {
        const _i = _tmp;
        if (_i < _len) {
          const y = _arr[_i];
          if (x === y) {
            return _i;
          }
          _tmp = _i + 1 | 0;
          continue;
        } else {
          return moonbitlang$core$builtin$$abort$8$("unreachable");
        }
      }
    }));
    return _p({ _0: _p$2._0, _1: tags });
  }));
  const tag_action = [];
  const _len = mat.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const ops = mat[_i];
      const _len$2 = ops.length;
      let _tmp$2 = 0;
      while (true) {
        const _i$2 = _tmp$2;
        if (_i$2 < _len$2) {
          const src_rank = ops[_i$2];
          if (src_rank === -1) {
            moonbitlang$core$array$$Array$push$50$(tag_action, new $64$moonbitlang$47$ulex$47$lib$47$automaton$46$TagOp$Set({ _0: _i, _1: _i$2 }));
          } else {
            if (_i$2 !== src_rank) {
              moonbitlang$core$array$$Array$push$50$(tag_action, new $64$moonbitlang$47$ulex$47$lib$47$automaton$46$TagOp$Copy({ _0: _i, _1: _i$2 }, { _0: _i, _1: src_rank }));
            }
          }
          _tmp$2 = _i$2 + 1 | 0;
          continue;
        } else {
          break;
        }
      }
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  moonbitlang$core$array$$Array$sort$50$(tag_action);
  return { _0: new_state, _1: tag_action };
}
function moonbitlang$ulex$lib$automaton$$DFA$register_node(self, nfa, node, os) {
  const code_blocks = moonbitlang$core$builtin$$Iter$collect$8$(moonbitlang$core$builtin$$Iter$filter_map$139$(moonbitlang$core$immut$hashmap$$T$iter$56$(os), (x) => moonbitlang$core$builtin$$Map$get$67$(nfa.end_nodes, x._0.num)));
  if (!moonbitlang$core$array$$Array$is_empty$8$(code_blocks)) {
    const min_code_block = moonbitlang$core$array$$Array$fold$67$(code_blocks, moonbitlang$core$array$$Array$op_get$8$(code_blocks, 0), moonbitlang$core$math$$minimum$8$);
    const _bind = moonbitlang$core$immut$hashmap$$T$iter$56$(os);
    const end_nodes = moonbitlang$core$builtin$$Iter$to_array$61$((_p) => _bind((_p$2) => moonbitlang$core$builtin$$Eq$op_equal$69$(moonbitlang$core$builtin$$Map$get$67$(nfa.end_nodes, _p$2._0.num), min_code_block) ? _p(_p$2) : 1));
    if (end_nodes.length === 1) {
      const tagState = moonbitlang$core$array$$Array$op_get$61$(end_nodes, 0)._1;
      const min_tags = moonbitlang$core$array$$Array$map$132$(moonbitlang$core$array$$Array$op_get$85$(nfa.captures, min_code_block), (_param1) => {
        const _x = _param1._1;
        const _begin = _x._0;
        const _end = _x._1;
        return { _0: { _0: _begin, _1: moonbitlang$core$option$$Option$unwrap$8$(moonbitlang$core$array$$Array$op_get$20$(tagState, _begin)) }, _1: { _0: _end, _1: moonbitlang$core$option$$Option$unwrap$8$(moonbitlang$core$array$$Array$op_get$20$(tagState, _end)) } };
      });
      moonbitlang$core$builtin$$Map$set$93$(self.end_nodes, node, { _0: min_code_block, _1: min_tags });
      return;
    } else {
      moonbitlang$core$builtin$$abort$21$("error");
      return;
    }
  } else {
    return;
  }
}
function moonbitlang$ulex$lib$automaton$$get_eps_closure$46$get_bits$124$9(_env, n) {
  const result = _env._1;
  const empty_bits = _env._0;
  return moonbitlang$core$builtin$$Map$get_or_default$57$(result, n, empty_bits);
}
function moonbitlang$ulex$lib$automaton$$NFA$get_eps_closure(self) {
  return moonbitlang$core$array$$Array$map$131$(self.graph, (x) => {
    const empty_bits = moonbitlang$ulex$lib$util$bitset$$new(self.tag_count);
    const result = moonbitlang$core$builtin$$Map$from_array$57$([{ _0: x, _1: empty_bits }]);
    const _env = { _0: empty_bits, _1: result };
    const queue = moonbitlang$core$queue$$from_array$58$([x]);
    while (true) {
      if (!moonbitlang$core$queue$$T$is_empty$58$(queue)) {
        const o = moonbitlang$core$queue$$T$unsafe_pop$58$(queue);
        const o_bits = moonbitlang$ulex$lib$automaton$$get_eps_closure$46$get_bits$124$9(_env, o);
        const _bind = moonbitlang$core$immut$sorted_set$$T$iter$29$(o.eps);
        _bind((e) => {
          const _u = e._0;
          const _tag = e._1;
          let new_u_bits = moonbitlang$ulex$lib$util$bitset$$Bitset$union(moonbitlang$ulex$lib$automaton$$get_eps_closure$46$get_bits$124$9(_env, _u), o_bits);
          if (!moonbitlang$core$option$$Option$is_empty$8$(_tag)) {
            new_u_bits = moonbitlang$ulex$lib$util$bitset$$Bitset$copy(new_u_bits);
            moonbitlang$ulex$lib$util$bitset$$Bitset$set(new_u_bits, moonbitlang$core$option$$Option$unwrap$8$(_tag), true);
          }
          if (moonbitlang$core$builtin$$op_notequal$79$(new_u_bits, moonbitlang$core$builtin$$Map$get$57$(result, _u))) {
            moonbitlang$core$builtin$$Map$set$57$(result, _u, new_u_bits);
            moonbitlang$core$queue$$T$push$58$(queue, _u);
          }
          return 1;
        });
        continue;
      } else {
        break;
      }
    }
    return moonbitlang$core$immut$hashmap$$from_iter$57$(moonbitlang$core$builtin$$Map$iter$57$(result));
  });
}
function moonbitlang$ulex$lib$automaton$$from_nfa$46$get_id$124$269(_env, state) {
  const node_map = _env._3;
  const dfa = _env._2;
  const nfa = _env._1;
  const queue = _env._0;
  return moonbitlang$core$builtin$$Map$get_or_init$90$(node_map, state, () => {
    const node = moonbitlang$ulex$lib$automaton$$DFA$new_node(dfa);
    moonbitlang$ulex$lib$automaton$$DFA$register_node(dfa, nfa, node, state);
    moonbitlang$core$queue$$T$push$2$(queue, state);
    return node;
  });
}
function moonbitlang$ulex$lib$automaton$$from_nfa$46$42$func$124$693(_env, _p) {
  const _bind = _env._1;
  const _tag_state = _env._0;
  return _bind((_p$2) => {
    const _cset = _p$2._0;
    const _x = _p$2._1;
    const _target = _x._0;
    const _tag = _x._1;
    return _p({ _0: _cset, _1: { _0: _target, _1: _tag_state, _2: _tag } });
  });
}
function moonbitlang$ulex$lib$automaton$$from_nfa$46$add_tran$124$293(new_nfa_trans, cset, targets) {
  if (!moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$is_empty(cset)) {
    moonbitlang$core$array$$Array$push$122$(new_nfa_trans, { _0: cset, _1: targets });
    return;
  } else {
    return;
  }
}
function moonbitlang$ulex$lib$automaton$$DFA$from_nfa(nfa) {
  const eps_closure = moonbitlang$ulex$lib$automaton$$NFA$get_eps_closure(nfa);
  const initial = moonbitlang$core$array$$Array$op_get$3$(eps_closure, 0);
  const _bind = moonbitlang$core$immut$hashmap$$T$iter$57$(initial);
  const initial_state = moonbitlang$core$immut$hashmap$$from_iter$56$((_p) => _bind((_p$2) => {
    const _x = _p$2._0;
    const _y = _p$2._1;
    return _p({ _0: _x, _1: moonbitlang$ulex$lib$automaton$$TagState$update_by_tags(moonbitlang$ulex$lib$automaton$$TagState$new(nfa.tag_count), _y) });
  }));
  const _bind$2 = moonbitlang$ulex$lib$automaton$$state_canonicalize(initial_state, nfa.tag_count);
  const _initial_state = _bind$2._0;
  const _start_action = _bind$2._1;
  const captures = moonbitlang$core$array$$Array$map$128$(nfa.captures, (x) => moonbitlang$core$array$$Array$map$129$(x, (y) => y._0));
  const dfa = moonbitlang$ulex$lib$automaton$$DFA$new(nfa.code_blocks, captures);
  const node_map = moonbitlang$core$builtin$$Map$new$90$(moonbitlang$core$builtin$$Map$new$46$capacity$46$default$90$());
  const queue = moonbitlang$core$queue$$new$2$();
  const _env = { _0: queue, _1: nfa, _2: dfa, _3: node_map };
  const start_node = moonbitlang$ulex$lib$automaton$$from_nfa$46$get_id$124$269(_env, _initial_state);
  dfa.start_node = start_node;
  moonbitlang$core$builtin$$Map$op_set$97$(dfa.tag_actions, start_node, _start_action);
  while (true) {
    if (!moonbitlang$core$queue$$T$is_empty$2$(queue)) {
      const cur_state = moonbitlang$core$option$$Option$unwrap$2$(moonbitlang$core$queue$$T$pop$2$(queue));
      const from_n = moonbitlang$core$option$$Option$unwrap$8$(moonbitlang$core$builtin$$Map$get$90$(node_map, cur_state));
      const _bind$3 = moonbitlang$core$immut$hashmap$$T$iter$56$(cur_state);
      const char_set_by_nfa_target = moonbitlang$core$builtin$$Map$from_array$94$([]);
      const _p = (nfa_tran) => {
        const _cset = nfa_tran._0;
        const _target = nfa_tran._1;
        const _bind$4 = moonbitlang$core$builtin$$Map$op_get$94$(char_set_by_nfa_target, _target);
        if (_bind$4 === undefined) {
          moonbitlang$core$builtin$$Map$op_set$94$(char_set_by_nfa_target, _target, _cset);
        } else {
          const _Some = _bind$4;
          const _old_cset = _Some;
          moonbitlang$core$builtin$$Map$op_set$94$(char_set_by_nfa_target, _target, moonbitlang$core$builtin$$Add$op_add$30$(_old_cset, _cset));
        }
        return 1;
      };
      _bind$3((_p$2) => {
        const _nfa_node = _p$2._0;
        const _tag_state = _p$2._1;
        const _bind$4 = moonbitlang$core$array$$Array$iter$116$(_nfa_node.trans);
        const _env$2 = { _0: _tag_state, _1: _bind$4 };
        return moonbitlang$ulex$lib$automaton$$from_nfa$46$42$func$124$693(_env$2, _p);
      });
      const nfa_trans = { val: [] };
      const all_char_set = { val: moonbitlang$ulex$lib$util$eof_char_set$$empty };
      const _bind$4 = moonbitlang$core$builtin$$Map$iter2$94$(char_set_by_nfa_target);
      _bind$4((target, char_set) => {
        const targets = moonbitlang$core$immut$sorted_set$$singleton$31$(target);
        const new_nfa_trans = [];
        moonbitlang$ulex$lib$automaton$$from_nfa$46$add_tran$124$293(new_nfa_trans, moonbitlang$core$builtin$$Sub$op_sub$30$(char_set, all_char_set.val), targets);
        const _arr = nfa_trans.val;
        const _len = _arr.length;
        let _tmp = 0;
        while (true) {
          const _i = _tmp;
          if (_i < _len) {
            const nfa_tran = _arr[_i];
            const _old_cset = nfa_tran._0;
            const _old_targets = nfa_tran._1;
            moonbitlang$ulex$lib$automaton$$from_nfa$46$add_tran$124$293(new_nfa_trans, moonbitlang$core$builtin$$BitAnd$land$30$(_old_cset, char_set), moonbitlang$core$builtin$$Add$op_add$40$(_old_targets, targets));
            moonbitlang$ulex$lib$automaton$$from_nfa$46$add_tran$124$293(new_nfa_trans, moonbitlang$core$builtin$$Sub$op_sub$30$(_old_cset, char_set), _old_targets);
            _tmp = _i + 1 | 0;
            continue;
          } else {
            break;
          }
        }
        all_char_set.val = moonbitlang$core$builtin$$Add$op_add$30$(all_char_set.val, char_set);
        nfa_trans.val = new_nfa_trans;
        return 1;
      });
      const next_states = moonbitlang$core$builtin$$Map$new$91$(moonbitlang$core$builtin$$Map$new$46$capacity$46$default$91$());
      const _arr = nfa_trans.val;
      const _len = _arr.length;
      let _tmp = 0;
      while (true) {
        const _i = _tmp;
        if (_i < _len) {
          const tran = _arr[_i];
          const _cset = tran._0;
          const _targets = tran._1;
          const _bind$5 = moonbitlang$core$immut$sorted_set$$T$iter$31$(_targets);
          _bind$5((target) => {
            const _step_node = target._0;
            const _from_tagState = target._1;
            const _tag = target._2;
            const state_map = { val: moonbitlang$core$option$$Option$or_else$2$(moonbitlang$core$builtin$$Map$op_get$91$(next_states, _cset), () => moonbitlang$core$immut$hashmap$$new$56$()) };
            if (moonbitlang$core$option$$Option$is_empty$8$(_tag)) {
              const _bind$6 = moonbitlang$core$immut$hashmap$$T$iter$57$(moonbitlang$core$array$$Array$op_get$3$(eps_closure, _step_node.num));
              _bind$6((pair) => {
                const _eps_node = pair._0;
                const _bits = pair._1;
                const upd_tagState = moonbitlang$ulex$lib$automaton$$TagState$update_by_tags(moonbitlang$ulex$lib$automaton$$TagState$copy(_from_tagState), _bits);
                const old_tagState = moonbitlang$core$immut$hashmap$$T$op_get$56$(state_map.val, _eps_node);
                const new_tagState = moonbitlang$core$option$$Option$is_empty$63$(old_tagState) ? upd_tagState : moonbitlang$ulex$lib$automaton$$TagState$tagState_min(upd_tagState, moonbitlang$core$option$$Option$unwrap$63$(old_tagState));
                state_map.val = moonbitlang$core$immut$hashmap$$T$add$56$(state_map.val, _eps_node, new_tagState);
                return 1;
              });
              moonbitlang$core$builtin$$Map$op_set$91$(next_states, _cset, state_map.val);
            } else {
              moonbitlang$core$builtin$$abort$21$("error");
            }
            return 1;
          });
          _tmp = _i + 1 | 0;
          continue;
        } else {
          break;
        }
      }
      const trans = moonbitlang$core$builtin$$Iter$to_array$117$(moonbitlang$core$builtin$$Map$iter$91$(next_states));
      const _len$2 = trans.length;
      let _tmp$2 = 0;
      while (true) {
        const _i = _tmp$2;
        if (_i < _len$2) {
          const tran = trans[_i];
          const _cset = tran._0;
          const _state = tran._1;
          const _bind$5 = moonbitlang$ulex$lib$automaton$$state_canonicalize(_state, nfa.tag_count);
          const _state$2 = _bind$5._0;
          const _action = _bind$5._1;
          const to_n = moonbitlang$ulex$lib$automaton$$from_nfa$46$get_id$124$269(_env, _state$2);
          moonbitlang$core$builtin$$Map$op_set$97$(dfa.tag_actions, to_n, _action);
          moonbitlang$ulex$lib$automaton$$DFA$add_edge(dfa, from_n, _cset, to_n);
          _tmp$2 = _i + 1 | 0;
          continue;
        } else {
          break;
        }
      }
      continue;
    } else {
      break;
    }
  }
  return dfa;
}
function moonbitlang$ulex$lib$automaton$$collect_disjoint_char_sets$46$check_add$124$123(new_temp_char_sets, temp_char_set) {
  if (!moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$is_empty(temp_char_set)) {
    new_temp_char_sets.val = moonbitlang$core$immut$sorted_set$$T$add$30$(new_temp_char_sets.val, temp_char_set);
    return;
  } else {
    return;
  }
}
function moonbitlang$ulex$lib$automaton$$collect_disjoint_char_sets(dfa) {
  let char_sets = moonbitlang$core$immut$sorted_set$$new$30$();
  const _arr = dfa.graph;
  const _len = _arr.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const trans = _arr[_i];
      const _len$2 = trans.length;
      let _tmp$2 = 0;
      while (true) {
        const _i$2 = _tmp$2;
        if (_i$2 < _len$2) {
          const tran = trans[_i$2];
          const _input = tran._0;
          char_sets = moonbitlang$core$immut$sorted_set$$T$add$30$(char_sets, _input);
          _tmp$2 = _i$2 + 1 | 0;
          continue;
        } else {
          break;
        }
      }
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  const all_char_set = { val: moonbitlang$ulex$lib$util$eof_char_set$$empty };
  const temp_char_sets = { val: moonbitlang$core$immut$sorted_set$$new$30$() };
  const _bind = moonbitlang$core$immut$sorted_set$$T$iter$30$(char_sets);
  _bind((char_set) => {
    const new_temp_char_sets = { val: moonbitlang$core$immut$sorted_set$$new$30$() };
    moonbitlang$ulex$lib$automaton$$collect_disjoint_char_sets$46$check_add$124$123(new_temp_char_sets, moonbitlang$core$builtin$$Sub$op_sub$30$(char_set, all_char_set.val));
    const _bind$2 = moonbitlang$core$immut$sorted_set$$T$iter$30$(temp_char_sets.val);
    _bind$2((temp_char_set) => {
      moonbitlang$ulex$lib$automaton$$collect_disjoint_char_sets$46$check_add$124$123(new_temp_char_sets, moonbitlang$core$builtin$$BitAnd$land$30$(temp_char_set, char_set));
      moonbitlang$ulex$lib$automaton$$collect_disjoint_char_sets$46$check_add$124$123(new_temp_char_sets, moonbitlang$core$builtin$$Sub$op_sub$30$(temp_char_set, char_set));
      return 1;
    });
    all_char_set.val = moonbitlang$core$builtin$$Add$op_add$30$(all_char_set.val, char_set);
    temp_char_sets.val = new_temp_char_sets.val;
    return 1;
  });
  return temp_char_sets.val;
}
function moonbitlang$ulex$lib$automaton$$minimize$46$get_new_state$124$169(_env, state) {
  const new_dfa = _env._3;
  const partition_to_new_state = _env._2;
  const state_to_partition = _env._1;
  const state_to_new_state = _env._0;
  const partition = moonbitlang$core$option$$Option$unwrap$28$(moonbitlang$core$builtin$$Map$op_get$95$(state_to_partition, state));
  const _bind = moonbitlang$core$builtin$$Map$op_get$96$(partition_to_new_state, partition);
  if (_bind === undefined) {
    const new_state = moonbitlang$ulex$lib$automaton$$DFA$new_node(new_dfa);
    moonbitlang$core$builtin$$Map$op_set$96$(partition_to_new_state, partition, new_state);
    const _bind$2 = moonbitlang$core$immut$sorted_set$$T$iter$8$(partition);
    _bind$2((state$2) => {
      moonbitlang$core$builtin$$Map$op_set$67$(state_to_new_state, state$2, new_state);
      return 1;
    });
    return new_state;
  } else {
    const _Some = _bind;
    const _new_state = _Some;
    return _new_state;
  }
}
function moonbitlang$ulex$lib$automaton$$DFA$minimize(dfa) {
  const char_sets = moonbitlang$ulex$lib$automaton$$collect_disjoint_char_sets(dfa);
  const all_states = moonbitlang$core$immut$sorted_set$$from_iter$8$(moonbitlang$core$int$$Int$until(0, dfa.graph.length - 1 | 0, moonbitlang$core$int$$Int$until$46$step$46$default(), true));
  const final_states = moonbitlang$core$immut$sorted_set$$from_iter$8$(moonbitlang$core$builtin$$Map$keys$93$(dfa.end_nodes));
  const partitions = { val: moonbitlang$core$immut$sorted_set$$new$28$() };
  const _end132 = dfa.code_blocks.length;
  let _tmp = 0;
  while (true) {
    const pattern_id = _tmp;
    if (pattern_id < _end132) {
      const groups = { val: moonbitlang$core$immut$sorted_map$$new$55$() };
      const _bind = moonbitlang$core$builtin$$Map$iter2$93$(dfa.end_nodes);
      _bind((end_node, end_node_info) => {
        const tag_action = moonbitlang$core$option$$Option$unwrap$6$(moonbitlang$core$builtin$$Map$op_get$97$(dfa.tag_actions, end_node));
        if (end_node_info._0 === pattern_id) {
          groups.val = moonbitlang$core$immut$sorted_map$$T$add$55$(groups.val, tag_action, moonbitlang$core$immut$sorted_set$$T$add$8$(moonbitlang$core$option$$Option$or$28$(moonbitlang$core$immut$sorted_map$$T$op_get$55$(groups.val, tag_action), moonbitlang$core$immut$sorted_set$$new$8$()), end_node));
        }
        return 1;
      });
      const _bind$2 = moonbitlang$core$immut$sorted_map$$T$iter2$55$(groups.val);
      _bind$2((__, partition) => {
        partitions.val = moonbitlang$core$immut$sorted_set$$T$add$28$(partitions.val, partition);
        return 1;
      });
      _tmp = pattern_id + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  const groups = { val: moonbitlang$core$immut$sorted_map$$new$55$() };
  const _bind = moonbitlang$core$immut$sorted_set$$T$iter$8$(moonbitlang$core$immut$sorted_set$$T$difference$8$(all_states, final_states));
  _bind((state) => {
    const tag_action = moonbitlang$core$option$$Option$unwrap$6$(moonbitlang$core$builtin$$Map$op_get$97$(dfa.tag_actions, state));
    groups.val = moonbitlang$core$immut$sorted_map$$T$add$55$(groups.val, tag_action, moonbitlang$core$immut$sorted_set$$T$add$8$(moonbitlang$core$option$$Option$or$28$(moonbitlang$core$immut$sorted_map$$T$op_get$55$(groups.val, tag_action), moonbitlang$core$immut$sorted_set$$new$8$()), state));
    return 1;
  });
  const _bind$2 = moonbitlang$core$immut$sorted_map$$T$iter2$55$(groups.val);
  _bind$2((__, partition) => {
    partitions.val = moonbitlang$core$immut$sorted_set$$T$add$28$(partitions.val, partition);
    return 1;
  });
  const worklist = { val: partitions.val };
  while (true) {
    if (!moonbitlang$core$immut$sorted_set$$T$is_empty$28$(worklist.val)) {
      const a = moonbitlang$core$immut$sorted_set$$T$min$28$(worklist.val);
      worklist.val = moonbitlang$core$immut$sorted_set$$T$remove_min$28$(worklist.val);
      let _foreach_result = $64$moonbitlang$47$core$47$builtin$46$ForeachResult$Continue$23$;
      const _bind$3 = moonbitlang$core$immut$sorted_set$$T$iter$30$(char_sets);
      _bind$3((symbol) => {
        const x = { val: moonbitlang$core$immut$sorted_set$$new$8$() };
        const _arr = dfa.graph;
        const _len = _arr.length;
        let _tmp$2 = 0;
        while (true) {
          const _i = _tmp$2;
          if (_i < _len) {
            const trans = _arr[_i];
            const _len$2 = trans.length;
            let _tmp$3 = 0;
            while (true) {
              const _i$2 = _tmp$3;
              if (_i$2 < _len$2) {
                const tran = trans[_i$2];
                const _input = tran._0;
                const _target = tran._1;
                if (moonbitlang$core$immut$sorted_set$$T$contains$8$(a, _target) && moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$subset(symbol, _input)) {
                  x.val = moonbitlang$core$immut$sorted_set$$T$add$8$(x.val, _i);
                }
                _tmp$3 = _i$2 + 1 | 0;
                continue;
              } else {
                break;
              }
            }
            _tmp$2 = _i + 1 | 0;
            continue;
          } else {
            break;
          }
        }
        if (!moonbitlang$core$immut$sorted_set$$T$is_empty$8$(x.val)) {
          const _bind$4 = moonbitlang$core$immut$sorted_set$$T$iter$28$(partitions.val);
          _bind$4((y) => {
            const intersection = moonbitlang$core$immut$sorted_set$$T$intersection$8$(x.val, y);
            const difference = moonbitlang$core$immut$sorted_set$$T$difference$8$(y, x.val);
            if (!moonbitlang$core$immut$sorted_set$$T$is_empty$8$(intersection) && !moonbitlang$core$immut$sorted_set$$T$is_empty$8$(difference)) {
              partitions.val = moonbitlang$core$immut$sorted_set$$T$remove$28$(partitions.val, y);
              partitions.val = moonbitlang$core$immut$sorted_set$$T$add$28$(partitions.val, intersection);
              partitions.val = moonbitlang$core$immut$sorted_set$$T$add$28$(partitions.val, difference);
              if (moonbitlang$core$immut$sorted_set$$T$contains$28$(worklist.val, y)) {
                worklist.val = moonbitlang$core$immut$sorted_set$$T$remove$28$(worklist.val, y);
                worklist.val = moonbitlang$core$immut$sorted_set$$T$add$28$(worklist.val, intersection);
                worklist.val = moonbitlang$core$immut$sorted_set$$T$add$28$(worklist.val, difference);
              } else {
                if (moonbitlang$core$immut$sorted_set$$T$size$8$(intersection) <= moonbitlang$core$immut$sorted_set$$T$size$8$(difference)) {
                  worklist.val = moonbitlang$core$immut$sorted_set$$T$add$28$(worklist.val, intersection);
                } else {
                  worklist.val = moonbitlang$core$immut$sorted_set$$T$add$28$(worklist.val, difference);
                }
              }
            }
            return 1;
          });
        } else {
          return 1;
        }
        return 1;
      });
      const _tmp$2 = _foreach_result;
      switch (_tmp$2.$tag) {
        case 0: {
          break;
        }
        case 1: {
          const _break = _tmp$2;
          _break._0;
          break;
        }
        case 2: {
          const _return = _tmp$2;
          return _return._0;
        }
        case 3: {
          $panic();
          break;
        }
        default: {
          $panic();
        }
      }
      continue;
    } else {
      break;
    }
  }
  const new_dfa = moonbitlang$ulex$lib$automaton$$DFA$new(dfa.code_blocks, dfa.captures);
  const state_to_partition = moonbitlang$core$builtin$$Map$from_array$95$([]);
  const _bind$3 = moonbitlang$core$immut$sorted_set$$T$iter$28$(partitions.val);
  _bind$3((partition) => {
    const _bind$4 = moonbitlang$core$immut$sorted_set$$T$iter$8$(partition);
    _bind$4((state) => {
      moonbitlang$core$builtin$$Map$op_set$95$(state_to_partition, state, partition);
      return 1;
    });
    return 1;
  });
  const partition_to_new_state = moonbitlang$core$builtin$$Map$from_array$96$([]);
  const state_to_new_state = moonbitlang$core$builtin$$Map$from_array$67$([]);
  const _env = { _0: state_to_new_state, _1: state_to_partition, _2: partition_to_new_state, _3: new_dfa };
  new_dfa.start_node = moonbitlang$ulex$lib$automaton$$minimize$46$get_new_state$124$169(_env, dfa.start_node);
  const _bind$4 = moonbitlang$core$immut$sorted_set$$T$iter$28$(partitions.val);
  _bind$4((partition) => {
    const new_state = moonbitlang$ulex$lib$automaton$$minimize$46$get_new_state$124$169(_env, moonbitlang$core$immut$sorted_set$$T$min$8$(partition));
    const _bind$5 = moonbitlang$core$immut$sorted_set$$T$iter$30$(char_sets);
    _bind$5((char_set) => {
      const _bind$6 = moonbitlang$core$immut$sorted_set$$T$iter$8$(partition);
      _bind$6((state) => {
        const _arr = moonbitlang$core$array$$Array$op_get$84$(dfa.graph, state);
        const _len = _arr.length;
        let _tmp$2 = 0;
        while (true) {
          const _i = _tmp$2;
          if (_i < _len) {
            const tran = _arr[_i];
            const _input = tran._0;
            const _target = tran._1;
            if (moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$subset(char_set, _input)) {
              const new_target = moonbitlang$ulex$lib$automaton$$minimize$46$get_new_state$124$169(_env, _target);
              moonbitlang$ulex$lib$automaton$$DFA$add_edge(new_dfa, new_state, char_set, new_target);
            }
            _tmp$2 = _i + 1 | 0;
            continue;
          } else {
            break;
          }
        }
        return 1;
      });
      return 1;
    });
    return 1;
  });
  const _bind$5 = moonbitlang$core$builtin$$Map$iter2$97$(dfa.tag_actions);
  _bind$5((node, tag_action) => {
    const _bind$6 = moonbitlang$core$builtin$$Map$op_get$67$(state_to_new_state, node);
    if (_bind$6 === undefined) {
    } else {
      const _Some = _bind$6;
      const _new_state = _Some;
      moonbitlang$core$builtin$$Map$op_set$97$(new_dfa.tag_actions, _new_state, tag_action);
    }
    return 1;
  });
  const _bind$6 = moonbitlang$core$builtin$$Map$iter2$93$(dfa.end_nodes);
  _bind$6((end_state, end_state_info) => {
    const _bind$7 = moonbitlang$core$builtin$$Map$op_get$67$(state_to_new_state, end_state);
    if (_bind$7 === undefined) {
    } else {
      const _Some = _bind$7;
      const _new_end_state = _Some;
      _L: {
        _L$2: {
          const _bind$8 = moonbitlang$core$builtin$$Map$op_get$93$(new_dfa.end_nodes, _new_end_state);
          if (_bind$8 === undefined) {
            break _L$2;
          } else {
            _L$3: {
              const _bind$9 = moonbitlang$core$builtin$$Map$op_get$93$(new_dfa.end_nodes, _new_end_state);
              if (_bind$9 === undefined) {
                break _L$3;
              } else {
                const _Some$2 = _bind$9;
                const _end_state_info2 = _Some$2;
                if (moonbitlang$core$builtin$$Eq$op_equal$86$(_end_state_info2, end_state_info)) {
                  break _L$2;
                } else {
                  break _L$3;
                }
              }
            }
            $panic();
          }
          break _L;
        }
        moonbitlang$core$builtin$$Map$op_set$93$(new_dfa.end_nodes, _new_end_state, end_state_info);
      }
    }
    return 1;
  });
  return new_dfa;
}
function moonbitlang$ulex$lib$automaton$$NFA$new_nfa() {
  const _bind = [];
  const _bind$2 = [];
  const _bind$3 = moonbitlang$core$builtin$$Map$new$67$(moonbitlang$core$builtin$$Map$new$46$capacity$46$default$67$());
  const _bind$4 = [];
  return { graph: _bind, end_nodes: _bind$3, code_blocks: _bind$2, captures: _bind$4, node_count: 0, tag_count: 0 };
}
function moonbitlang$ulex$lib$automaton$$NFA$new_node(self) {
  const new_id = self.node_count;
  self.node_count = self.node_count + 1 | 0;
  const node = { num: new_id, eps: moonbitlang$core$immut$sorted_set$$new$29$(), trans: [] };
  moonbitlang$core$array$$Array$push$58$(self.graph, node);
  return (new_id + 1 | 0) === self.graph.length ? node : $panic();
}
function moonbitlang$ulex$lib$automaton$$utf8_bytes_to_char(bytes) {
  const decoder = moonbitlang$x$encoding$$decoder(0);
  const str = moonbitlang$x$encoding$$Decoder$decode_lossy(decoder, bytes, moonbitlang$x$encoding$$Decoder$decode_lossy$46$stream$46$default());
  if (moonbitlang$core$string$$String$char_length_eq(str, 1, 0, str.length)) {
    const _c = moonbitlang$core$string$$String$unsafe_char_at(str, moonbitlang$core$string$$String$offset_of_nth_char(str, 0, 0, str.length));
    return _c;
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$automaton$$get_masked_range_cset(bytes, num_bytes, mask_index) {
  if (mask_index >= 1 && mask_index <= bytes.length) {
    const prefix = moonbitlang$core$bytes$$Bytes$op_as_view(bytes, 0, mask_index);
    const masked_min_suffix = moonbitlang$core$bytes$$Bytes$make(num_bytes - mask_index | 0, 128);
    const masked_max_suffix = moonbitlang$core$bytes$$Bytes$make(num_bytes - mask_index | 0, 191);
    const _self = moonbitlang$core$buffer$$new(moonbitlang$core$buffer$$new$46$size_hint$46$default());
    moonbitlang$core$buffer$$T$write_iter(_self, moonbitlang$core$bytes$$View$iter(prefix));
    moonbitlang$core$buffer$$T$write_iter(_self, moonbitlang$core$bytes$$Bytes$iter(masked_min_suffix));
    const masked_min_bytes = moonbitlang$core$buffer$$T$contents(_self);
    const _self$2 = moonbitlang$core$buffer$$new(moonbitlang$core$buffer$$new$46$size_hint$46$default());
    moonbitlang$core$buffer$$T$write_iter(_self$2, moonbitlang$core$bytes$$View$iter(prefix));
    moonbitlang$core$buffer$$T$write_iter(_self$2, moonbitlang$core$bytes$$Bytes$iter(masked_max_suffix));
    const masked_max_bytes = moonbitlang$core$buffer$$T$contents(_self$2);
    const masked_min = moonbitlang$ulex$lib$automaton$$utf8_bytes_to_char(masked_min_bytes);
    const masked_max = moonbitlang$ulex$lib$automaton$$utf8_bytes_to_char(masked_max_bytes);
    return moonbitlang$ulex$lib$util$eof_char_set$$range(masked_min, masked_max);
  } else {
    return $panic();
  }
}
function moonbitlang$ulex$lib$automaton$$lower_unicode_charclass_to_utf8$46$add_branch$124$204(_env, range_cset, pin_index) {
  const dedup = _env._2;
  const _num_bytes = _env._1;
  const branches = _env._0;
  if (moonbitlang$core$set$$Set$add_and_check$25$(dedup, { _0: range_cset, _1: pin_index })) {
    const ranges = moonbitlang$core$builtin$$Iter$to_array$119$(moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$iter_ranges(range_cset));
    if (ranges.length <= 1) {
      if (ranges.length === 1) {
        const _range = ranges[0];
        _L: {
          const _bind = moonbitlang$ulex$lib$util$eof_char_set$$EofChar$repr(_range._0);
          if (_bind.$tag === 1) {
            const _Char = _bind;
            const _min = _Char._0;
            const _bind$2 = moonbitlang$ulex$lib$util$eof_char_set$$EofChar$repr(_range._1);
            if (_bind$2.$tag === 1) {
              const _Char$2 = _bind$2;
              const _max = _Char$2._0;
              const min_bytes = moonbitlang$x$encoding$$encode(0, moonbitlang$core$string$$String$make(1, _min));
              const max_bytes = moonbitlang$x$encoding$$encode(0, moonbitlang$core$string$$String$make(1, _max));
              if (pin_index >= _num_bytes) {
                if ($bytes_equal(min_bytes, max_bytes)) {
                  const _self = [];
                  const _bind$3 = moonbitlang$core$bytes$$Bytes$iter(min_bytes);
                  moonbitlang$core$array$$Array$push_iter$30$(_self, moonbitlang$core$builtin$$Iter$iter$30$((_p) => _bind$3((_p$2) => _p(moonbitlang$ulex$lib$util$eof_char_set$$singleton(_p$2)))));
                  moonbitlang$core$array$$Array$push$123$(branches, _self);
                  return;
                } else {
                  $panic();
                  return;
                }
              } else {
                const common_prefix = moonbitlang$core$bytes$$Bytes$op_as_view(min_bytes, 0, pin_index);
                const common_prefix2 = moonbitlang$core$bytes$$Bytes$op_as_view(max_bytes, 0, pin_index);
                if (moonbitlang$core$builtin$$Eq$op_equal$48$(common_prefix, common_prefix2)) {
                  const _self = [];
                  const _bind$3 = moonbitlang$core$bytes$$View$iter(common_prefix);
                  moonbitlang$core$array$$Array$push_iter$30$(_self, moonbitlang$core$array$$Array$iter$30$(moonbitlang$core$builtin$$Iter$to_array$30$((_p) => _bind$3((_p$2) => _p(moonbitlang$ulex$lib$util$eof_char_set$$singleton(_p$2))))));
                  $bound_check(min_bytes, pin_index);
                  const _tmp = min_bytes[pin_index];
                  $bound_check(max_bytes, pin_index);
                  moonbitlang$core$array$$Array$push$30$(_self, moonbitlang$ulex$lib$util$eof_char_set$$range(_tmp, max_bytes[pin_index]));
                  moonbitlang$core$array$$Array$push_iter$30$(_self, moonbitlang$core$array$$Array$iter$30$(moonbitlang$core$array$$Array$repeat$30$([moonbitlang$ulex$lib$util$eof_char_set$$range(128, 191)], (_num_bytes - pin_index | 0) - 1 | 0)));
                  moonbitlang$core$array$$Array$push$123$(branches, _self);
                  return;
                } else {
                  $panic();
                  return;
                }
              }
            } else {
              break _L;
            }
          } else {
            break _L;
          }
        }
        $panic();
        return;
      } else {
        return;
      }
    } else {
      $panic();
      return;
    }
  } else {
    return;
  }
}
function moonbitlang$ulex$lib$automaton$$lower_unicode_charclass_to_utf8$46$process_endpoint$124$223(_env, bytes) {
  const _num_bytes = _env._2;
  const range_cset = _env._1;
  const _env$2 = _env._0;
  let _tmp = _num_bytes;
  while (true) {
    const i = _tmp;
    if (i >= 1) {
      const sub_range_cset = moonbitlang$core$builtin$$Sub$op_sub$30$(moonbitlang$core$builtin$$BitAnd$land$30$(moonbitlang$ulex$lib$automaton$$get_masked_range_cset(bytes, _num_bytes, i), range_cset), i === _num_bytes ? moonbitlang$ulex$lib$util$eof_char_set$$empty : moonbitlang$ulex$lib$automaton$$get_masked_range_cset(bytes, _num_bytes, i + 1 | 0));
      moonbitlang$ulex$lib$automaton$$lower_unicode_charclass_to_utf8$46$add_branch$124$204(_env$2, sub_range_cset, i);
      _tmp = i - 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$ulex$lib$automaton$$lower_unicode_charclass_to_utf8(cset) {
  const groups = [{ _0: 1, _1: moonbitlang$core$builtin$$BitAnd$land$30$(cset, moonbitlang$ulex$lib$util$eof_char_set$$range(0, 127)) }, { _0: 2, _1: moonbitlang$core$builtin$$BitAnd$land$30$(cset, moonbitlang$ulex$lib$util$eof_char_set$$range(128, 2047)) }, { _0: 3, _1: moonbitlang$core$builtin$$BitAnd$land$30$(cset, moonbitlang$ulex$lib$util$eof_char_set$$range(2048, 65535)) }, { _0: 4, _1: moonbitlang$core$builtin$$BitAnd$land$30$(cset, moonbitlang$ulex$lib$util$eof_char_set$$range(65536, 1114111)) }];
  const result = [];
  const _len = groups.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const group = groups[_i];
      const _num_bytes = group._0;
      const _cset = group._1;
      if (_num_bytes === 1) {
        if (!moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$is_empty(_cset)) {
          moonbitlang$core$array$$Array$push$123$(result, [_cset]);
        }
      } else {
        const branches = [];
        const dedup = moonbitlang$core$set$$Set$new$25$(moonbitlang$core$set$$Set$new$46$capacity$46$default$25$());
        const _env = { _0: branches, _1: _num_bytes, _2: dedup };
        const _bind = moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$iter_ranges(_cset);
        _bind((range) => {
          _L: {
            _L$2: {
              const _bind$2 = moonbitlang$ulex$lib$util$eof_char_set$$EofChar$repr(range._0);
              if (_bind$2.$tag === 1) {
                const _Char = _bind$2;
                const _min = _Char._0;
                const _bind$3 = moonbitlang$ulex$lib$util$eof_char_set$$EofChar$repr(range._1);
                if (_bind$3.$tag === 1) {
                  const _Char$2 = _bind$3;
                  const _max = _Char$2._0;
                  const range_cset = moonbitlang$ulex$lib$util$eof_char_set$$range(_min, _max);
                  const min_bytes = moonbitlang$x$encoding$$encode(0, moonbitlang$core$string$$String$make(1, _min));
                  const max_bytes = moonbitlang$x$encoding$$encode(0, moonbitlang$core$string$$String$make(1, _max));
                  const _env$2 = { _0: _env, _1: range_cset, _2: _num_bytes };
                  moonbitlang$ulex$lib$automaton$$lower_unicode_charclass_to_utf8$46$process_endpoint$124$223(_env$2, min_bytes);
                  const mid_range_csets = moonbitlang$core$builtin$$Sub$op_sub$30$(moonbitlang$core$builtin$$Sub$op_sub$30$(range_cset, moonbitlang$ulex$lib$automaton$$get_masked_range_cset(min_bytes, _num_bytes, 1)), moonbitlang$ulex$lib$automaton$$get_masked_range_cset(max_bytes, _num_bytes, 1));
                  const _bind$4 = moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$iter_ranges(mid_range_csets);
                  _bind$4((mid_range) => {
                    _L$3: {
                      _L$4: {
                        const _bind$5 = moonbitlang$ulex$lib$util$eof_char_set$$EofChar$repr(mid_range._0);
                        if (_bind$5.$tag === 1) {
                          const _Char$3 = _bind$5;
                          const _min$2 = _Char$3._0;
                          const _bind$6 = moonbitlang$ulex$lib$util$eof_char_set$$EofChar$repr(mid_range._1);
                          if (_bind$6.$tag === 1) {
                            const _Char$4 = _bind$6;
                            const _max$2 = _Char$4._0;
                            const mid_range_cset = moonbitlang$ulex$lib$util$eof_char_set$$range(_min$2, _max$2);
                            moonbitlang$ulex$lib$automaton$$lower_unicode_charclass_to_utf8$46$add_branch$124$204(_env, mid_range_cset, 0);
                          } else {
                            break _L$4;
                          }
                        } else {
                          break _L$4;
                        }
                        break _L$3;
                      }
                      $panic();
                    }
                    return 1;
                  });
                  moonbitlang$ulex$lib$automaton$$lower_unicode_charclass_to_utf8$46$process_endpoint$124$223(_env$2, max_bytes);
                } else {
                  break _L$2;
                }
              } else {
                break _L$2;
              }
              break _L;
            }
            $panic();
          }
          return 1;
        });
        const _len$2 = branches.length;
        let _tmp$2 = 0;
        while (true) {
          const _i$2 = _tmp$2;
          if (_i$2 < _len$2) {
            const branch = branches[_i$2];
            moonbitlang$core$array$$Array$push$123$(result, branch);
            _tmp$2 = _i$2 + 1 | 0;
            continue;
          } else {
            break;
          }
        }
      }
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return result;
}
function moonbitlang$ulex$lib$automaton$$NFA$add_edge(self, from, s, tag, to) {
  if (s.$tag === 0) {
    from.eps = moonbitlang$core$immut$sorted_set$$T$add$29$(from.eps, { _0: to, _1: tag });
    return;
  } else {
    const _EChar = s;
    const _c = _EChar._0;
    moonbitlang$core$array$$Array$push$116$(from.trans, { _0: _c, _1: { _0: to, _1: tag } });
    return;
  }
}
function moonbitlang$ulex$lib$automaton$$NFA$add_edge$46$tag$46$default() {
  return undefined;
}
function moonbitlang$ulex$lib$automaton$$NFA$register_regex_rec(self, node, re, name2tag, encoding) {
  const new_node = moonbitlang$ulex$lib$automaton$$NFA$new_node(self);
  moonbitlang$ulex$lib$automaton$$NFA$add_edge(self, node, $64$moonbitlang$47$ulex$47$lib$47$automaton$46$Input$Eps, moonbitlang$ulex$lib$automaton$$NFA$add_edge$46$tag$46$default(), new_node);
  let final_;
  switch (re.$tag) {
    case 0: {
      const next_node = moonbitlang$ulex$lib$automaton$$NFA$new_node(self);
      moonbitlang$ulex$lib$automaton$$NFA$add_edge(self, new_node, new $64$moonbitlang$47$ulex$47$lib$47$automaton$46$Input$EChar(moonbitlang$ulex$lib$util$eof_char_set$$eof), moonbitlang$ulex$lib$automaton$$NFA$add_edge$46$tag$46$default(), next_node);
      final_ = next_node;
      break;
    }
    case 1: {
      const _Character = re;
      const _cset = _Character._0;
      const next_node$2 = moonbitlang$ulex$lib$automaton$$NFA$new_node(self);
      if (encoding === undefined) {
        moonbitlang$ulex$lib$automaton$$NFA$add_edge(self, new_node, new $64$moonbitlang$47$ulex$47$lib$47$automaton$46$Input$EChar(_cset), moonbitlang$ulex$lib$automaton$$NFA$add_edge$46$tag$46$default(), next_node$2);
      } else {
        const _Some = encoding;
        const _x = _Some;
        switch (_x) {
          case 0: {
            moonbitlang$ulex$lib$automaton$$NFA$add_edge(self, new_node, new $64$moonbitlang$47$ulex$47$lib$47$automaton$46$Input$EChar(_cset), moonbitlang$ulex$lib$automaton$$NFA$add_edge$46$tag$46$default(), next_node$2);
            break;
          }
          case 1: {
            moonbitlang$ulex$lib$automaton$$NFA$add_edge(self, new_node, new $64$moonbitlang$47$ulex$47$lib$47$automaton$46$Input$EChar(_cset), moonbitlang$ulex$lib$automaton$$NFA$add_edge$46$tag$46$default(), next_node$2);
            break;
          }
          case 2: {
            const branches = moonbitlang$ulex$lib$automaton$$lower_unicode_charclass_to_utf8(_cset);
            const _len = branches.length;
            let _tmp = 0;
            while (true) {
              const _i = _tmp;
              if (_i < _len) {
                const branch = branches[_i];
                let prev_node = new_node;
                const _len$2 = branch.length;
                let _tmp$2 = 0;
                while (true) {
                  const _i$2 = _tmp$2;
                  if (_i$2 < _len$2) {
                    const byte_cset = branch[_i$2];
                    const prev_node$2 = prev_node;
                    const end_node = moonbitlang$ulex$lib$automaton$$NFA$new_node(self);
                    moonbitlang$ulex$lib$automaton$$NFA$add_edge(self, prev_node$2, new $64$moonbitlang$47$ulex$47$lib$47$automaton$46$Input$EChar(byte_cset), moonbitlang$ulex$lib$automaton$$NFA$add_edge$46$tag$46$default(), end_node);
                    prev_node = end_node;
                    _tmp$2 = _i$2 + 1 | 0;
                    continue;
                  } else {
                    break;
                  }
                }
                moonbitlang$ulex$lib$automaton$$NFA$add_edge(self, prev_node, $64$moonbitlang$47$ulex$47$lib$47$automaton$46$Input$Eps, moonbitlang$ulex$lib$automaton$$NFA$add_edge$46$tag$46$default(), next_node$2);
                _tmp = _i + 1 | 0;
                continue;
              } else {
                break;
              }
            }
            break;
          }
          default: {
            $panic();
          }
        }
      }
      final_ = next_node$2;
      break;
    }
    case 3: {
      const next_node$3 = moonbitlang$ulex$lib$automaton$$NFA$new_node(self);
      moonbitlang$ulex$lib$automaton$$NFA$add_edge(self, new_node, $64$moonbitlang$47$ulex$47$lib$47$automaton$46$Input$Eps, moonbitlang$ulex$lib$automaton$$NFA$add_edge$46$tag$46$default(), next_node$3);
      final_ = next_node$3;
      break;
    }
    case 2: {
      const _Repetition = re;
      const _re = _Repetition._0;
      const final_$2 = moonbitlang$ulex$lib$automaton$$NFA$register_regex_rec(self, new_node, _re, name2tag, encoding);
      moonbitlang$ulex$lib$automaton$$NFA$add_edge(self, final_$2, $64$moonbitlang$47$ulex$47$lib$47$automaton$46$Input$Eps, moonbitlang$ulex$lib$automaton$$NFA$add_edge$46$tag$46$default(), new_node);
      final_ = final_$2;
      break;
    }
    case 5: {
      const _Concat = re;
      const _re1 = _Concat._0;
      const _re2 = _Concat._1;
      const mid = moonbitlang$ulex$lib$automaton$$NFA$register_regex_rec(self, new_node, _re1, name2tag, encoding);
      final_ = moonbitlang$ulex$lib$automaton$$NFA$register_regex_rec(self, mid, _re2, name2tag, encoding);
      break;
    }
    case 4: {
      const _Alter = re;
      const _re1$2 = _Alter._0;
      const _re2$2 = _Alter._1;
      const final_1 = moonbitlang$ulex$lib$automaton$$NFA$register_regex_rec(self, new_node, _re1$2, name2tag, encoding);
      const final_2 = moonbitlang$ulex$lib$automaton$$NFA$register_regex_rec(self, new_node, _re2$2, name2tag, encoding);
      const final_$3 = moonbitlang$ulex$lib$automaton$$NFA$new_node(self);
      moonbitlang$ulex$lib$automaton$$NFA$add_edge(self, final_1, $64$moonbitlang$47$ulex$47$lib$47$automaton$46$Input$Eps, moonbitlang$ulex$lib$automaton$$NFA$add_edge$46$tag$46$default(), final_$3);
      moonbitlang$ulex$lib$automaton$$NFA$add_edge(self, final_2, $64$moonbitlang$47$ulex$47$lib$47$automaton$46$Input$Eps, moonbitlang$ulex$lib$automaton$$NFA$add_edge$46$tag$46$default(), final_$3);
      final_ = final_$3;
      break;
    }
    case 6: {
      const _Capture = re;
      const _re$2 = _Capture._0;
      const _name = _Capture._1;
      const start = moonbitlang$ulex$lib$automaton$$NFA$new_node(self);
      const final_$4 = moonbitlang$ulex$lib$automaton$$NFA$new_node(self);
      const tail = moonbitlang$ulex$lib$automaton$$NFA$register_regex_rec(self, start, _re$2, name2tag, encoding);
      const _bind = name2tag(_name);
      const _begin_tag = _bind._0;
      const _end_tag = _bind._1;
      moonbitlang$ulex$lib$automaton$$NFA$add_edge(self, new_node, $64$moonbitlang$47$ulex$47$lib$47$automaton$46$Input$Eps, _begin_tag, start);
      moonbitlang$ulex$lib$automaton$$NFA$add_edge(self, tail, $64$moonbitlang$47$ulex$47$lib$47$automaton$46$Input$Eps, _end_tag, final_$4);
      final_ = final_$4;
      break;
    }
    default: {
      const _Bytes = re;
      const _encoding = _Bytes._0;
      const _re$3 = _Bytes._1;
      final_ = moonbitlang$ulex$lib$automaton$$NFA$register_regex_rec(self, new_node, _re$3, name2tag, _encoding);
    }
  }
  const new_final = moonbitlang$ulex$lib$automaton$$NFA$new_node(self);
  moonbitlang$ulex$lib$automaton$$NFA$add_edge(self, final_, $64$moonbitlang$47$ulex$47$lib$47$automaton$46$Input$Eps, moonbitlang$ulex$lib$automaton$$NFA$add_edge$46$tag$46$default(), new_final);
  return new_final;
}
function moonbitlang$ulex$lib$automaton$$NFA$register_regex(self, node, re, code_block, name2tag, encoding) {
  const final_ = moonbitlang$ulex$lib$automaton$$NFA$register_regex_rec(self, node, re, name2tag, encoding);
  const id = self.code_blocks.length;
  moonbitlang$core$array$$Array$push$23$(self.code_blocks, code_block);
  moonbitlang$core$builtin$$Map$set$67$(self.end_nodes, final_.num, id);
}
function moonbitlang$ulex$lib$automaton$$NFA$from_rule(rule, encoding) {
  const nfa = moonbitlang$ulex$lib$automaton$$NFA$new_nfa();
  const node = moonbitlang$ulex$lib$automaton$$NFA$new_node(nfa);
  const _arr = rule.patterns;
  const _len = _arr.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const pattern = _arr[_i];
      const _re = pattern._0;
      const _code_block = pattern._1;
      const capture_names = moonbitlang$core$array$$Array$map$130$(moonbitlang$ulex$lib$type$$Regex$get_capture_names(_re), (var_) => {
        const begin_tag = nfa.tag_count;
        const end_tag = nfa.tag_count + 1 | 0;
        nfa.tag_count = nfa.tag_count + 2 | 0;
        return { _0: var_, _1: { _0: begin_tag, _1: end_tag } };
      });
      const _bind = moonbitlang$core$array$$Array$iter$118$(capture_names);
      const map = moonbitlang$core$builtin$$Map$from_iter$99$((_p) => _bind((_p$2) => {
        const _x = _p$2._0;
        const _name = _x._0;
        const _x$2 = _p$2._1;
        const _begin_tag = _x$2._0;
        const _end_tag = _x$2._1;
        return _p({ _0: _name, _1: { _0: _begin_tag, _1: _end_tag } });
      }));
      moonbitlang$ulex$lib$automaton$$NFA$register_regex(nfa, node, _re, _code_block, (x) => moonbitlang$core$option$$Option$unwrap$7$(moonbitlang$core$builtin$$Map$get$99$(map, x)), encoding);
      moonbitlang$core$array$$Array$push$85$(nfa.captures, capture_names);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return nfa;
}
function moonbitlang$ulex$lib$automaton$$DFA$from_rule(rule, encoding) {
  const dfa = moonbitlang$ulex$lib$automaton$$DFA$from_nfa(moonbitlang$ulex$lib$automaton$$NFA$from_rule(rule, encoding));
  const min_dfa = moonbitlang$ulex$lib$automaton$$DFA$minimize(dfa);
  return min_dfa;
}
function moonbitlang$core$builtin$$Eq$op_equal$58$(self, other) {
  return self.num === other.num;
}
function moonbitlang$core$builtin$$Compare$compare$58$(self, other) {
  return $compare_int(self.num, other.num);
}
function moonbitlang$core$builtin$$Hash$hash_combine$58$(self, hasher) {
  moonbitlang$core$builtin$$Hasher$combine_int(hasher, self.num);
}
function moonbitlang$ulex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace$141$(subst, lexbuf) {
  let _tmp = subst;
  let _tmp$2 = lexbuf;
  _L: while (true) {
    const subst$2 = _tmp;
    const lexbuf$2 = _tmp$2;
    let matched = moonbitlang$core$int$$max_value;
    const _end_pos = { val: -1 };
    const _start_pos = { val: moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2) };
    let _capture_0_start = -1;
    let _capture_0_end = -1;
    let _capture_1_start = -1;
    let _capture_1_end = -1;
    let _tag_0 = -1;
    let _tag_1 = -1;
    let _tag_2 = -1;
    let _tag_3 = -1;
    let _tag_4 = -1;
    let _tag_5 = -1;
    let _tmp$3 = 0;
    _L$2: while (true) {
      const _param = _tmp$3;
      switch (_param) {
        case 0: {
          if (matched >= 5) {
            matched = 5;
            _end_pos.val = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          const _bind = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$4;
          if (_bind >= 0 && _bind <= 35) {
            _tmp$4 = 1;
          } else {
            if (_bind === 36) {
              _tmp$4 = 2;
            } else {
              if (_bind >= 37 && _bind <= 122) {
                _tmp$4 = 1;
              } else {
                if (_bind === 123) {
                  _tmp$4 = 3;
                } else {
                  if (_bind === 124) {
                    _tmp$4 = 1;
                  } else {
                    if (_bind === 125) {
                      _tmp$4 = 4;
                    } else {
                      if (_bind >= 126 && _bind <= 1114111) {
                        _tmp$4 = 1;
                      } else {
                        break _L$2;
                      }
                    }
                  }
                }
              }
            }
          }
          _tmp$3 = _tmp$4;
          continue _L$2;
        }
        case 1: {
          if (matched >= 4) {
            matched = 4;
            _end_pos.val = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 2: {
          _tag_0 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          _tag_4 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 4) {
            matched = 4;
            _end_pos.val = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          const _bind$2 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$5;
          if (_bind$2 >= 65 && _bind$2 <= 90) {
            _tmp$5 = 5;
          } else {
            if (_bind$2 === 95) {
              _tmp$5 = 5;
            } else {
              if (_bind$2 >= 97 && _bind$2 <= 100) {
                _tmp$5 = 5;
              } else {
                if (_bind$2 === 101) {
                  _tmp$5 = 6;
                } else {
                  if (_bind$2 >= 102 && _bind$2 <= 114) {
                    _tmp$5 = 5;
                  } else {
                    if (_bind$2 === 115) {
                      _tmp$5 = 7;
                    } else {
                      if (_bind$2 >= 116 && _bind$2 <= 122) {
                        _tmp$5 = 5;
                      } else {
                        break _L$2;
                      }
                    }
                  }
                }
              }
            }
          }
          _tmp$3 = _tmp$5;
          continue _L$2;
        }
        case 3: {
          if (matched >= 0) {
            matched = 0;
            _end_pos.val = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 4: {
          if (matched >= 1) {
            matched = 1;
            _end_pos.val = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          }
          break _L$2;
        }
        case 5: {
          _tag_5 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 3) {
            matched = 3;
            _end_pos.val = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_4;
            _capture_0_end = _tag_5;
          }
          const _bind$3 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$6;
          if (_bind$3 >= 48 && _bind$3 <= 57) {
            _tmp$6 = 5;
          } else {
            if (_bind$3 >= 65 && _bind$3 <= 90) {
              _tmp$6 = 5;
            } else {
              if (_bind$3 === 95) {
                _tmp$6 = 5;
              } else {
                if (_bind$3 >= 97 && _bind$3 <= 122) {
                  _tmp$6 = 5;
                } else {
                  break _L$2;
                }
              }
            }
          }
          _tmp$3 = _tmp$6;
          continue _L$2;
        }
        case 6: {
          _tag_5 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 3) {
            matched = 3;
            _end_pos.val = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_4;
            _capture_0_end = _tag_5;
          }
          const _bind$4 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$7;
          if (_bind$4 >= 48 && _bind$4 <= 57) {
            _tmp$7 = 5;
          } else {
            if (_bind$4 >= 65 && _bind$4 <= 90) {
              _tmp$7 = 5;
            } else {
              if (_bind$4 === 95) {
                _tmp$7 = 5;
              } else {
                if (_bind$4 >= 97 && _bind$4 <= 109) {
                  _tmp$7 = 5;
                } else {
                  if (_bind$4 === 110) {
                    _tmp$7 = 9;
                  } else {
                    if (_bind$4 >= 111 && _bind$4 <= 122) {
                      _tmp$7 = 5;
                    } else {
                      break _L$2;
                    }
                  }
                }
              }
            }
          }
          _tmp$3 = _tmp$7;
          continue _L$2;
        }
        case 7: {
          _tag_5 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 3) {
            matched = 3;
            _end_pos.val = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_4;
            _capture_0_end = _tag_5;
          }
          const _bind$5 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$8;
          if (_bind$5 >= 48 && _bind$5 <= 57) {
            _tmp$8 = 5;
          } else {
            if (_bind$5 >= 65 && _bind$5 <= 90) {
              _tmp$8 = 5;
            } else {
              if (_bind$5 === 95) {
                _tmp$8 = 5;
              } else {
                if (_bind$5 >= 97 && _bind$5 <= 115) {
                  _tmp$8 = 5;
                } else {
                  if (_bind$5 === 116) {
                    _tmp$8 = 8;
                  } else {
                    if (_bind$5 >= 117 && _bind$5 <= 122) {
                      _tmp$8 = 5;
                    } else {
                      break _L$2;
                    }
                  }
                }
              }
            }
          }
          _tmp$3 = _tmp$8;
          continue _L$2;
        }
        case 8: {
          _tag_5 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 3) {
            matched = 3;
            _end_pos.val = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_4;
            _capture_0_end = _tag_5;
          }
          const _bind$6 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$9;
          if (_bind$6 >= 48 && _bind$6 <= 57) {
            _tmp$9 = 5;
          } else {
            if (_bind$6 >= 65 && _bind$6 <= 90) {
              _tmp$9 = 5;
            } else {
              if (_bind$6 === 95) {
                _tmp$9 = 5;
              } else {
                if (_bind$6 === 97) {
                  _tmp$9 = 10;
                } else {
                  if (_bind$6 >= 98 && _bind$6 <= 122) {
                    _tmp$9 = 5;
                  } else {
                    break _L$2;
                  }
                }
              }
            }
          }
          _tmp$3 = _tmp$9;
          continue _L$2;
        }
        case 9: {
          _tag_5 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 3) {
            matched = 3;
            _end_pos.val = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_4;
            _capture_0_end = _tag_5;
          }
          const _bind$7 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$10;
          if (_bind$7 >= 48 && _bind$7 <= 57) {
            _tmp$10 = 5;
          } else {
            if (_bind$7 >= 65 && _bind$7 <= 90) {
              _tmp$10 = 5;
            } else {
              if (_bind$7 === 95) {
                _tmp$10 = 5;
              } else {
                if (_bind$7 >= 97 && _bind$7 <= 99) {
                  _tmp$10 = 5;
                } else {
                  if (_bind$7 === 100) {
                    _tmp$10 = 11;
                  } else {
                    if (_bind$7 >= 101 && _bind$7 <= 122) {
                      _tmp$10 = 5;
                    } else {
                      break _L$2;
                    }
                  }
                }
              }
            }
          }
          _tmp$3 = _tmp$10;
          continue _L$2;
        }
        case 10: {
          _tag_5 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 3) {
            matched = 3;
            _end_pos.val = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_4;
            _capture_0_end = _tag_5;
          }
          const _bind$8 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$11;
          if (_bind$8 >= 48 && _bind$8 <= 57) {
            _tmp$11 = 5;
          } else {
            if (_bind$8 >= 65 && _bind$8 <= 90) {
              _tmp$11 = 5;
            } else {
              if (_bind$8 === 95) {
                _tmp$11 = 5;
              } else {
                if (_bind$8 >= 97 && _bind$8 <= 113) {
                  _tmp$11 = 5;
                } else {
                  if (_bind$8 === 114) {
                    _tmp$11 = 12;
                  } else {
                    if (_bind$8 >= 115 && _bind$8 <= 122) {
                      _tmp$11 = 5;
                    } else {
                      break _L$2;
                    }
                  }
                }
              }
            }
          }
          _tmp$3 = _tmp$11;
          continue _L$2;
        }
        case 11: {
          _tag_5 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 3) {
            matched = 3;
            _end_pos.val = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_4;
            _capture_0_end = _tag_5;
          }
          const _bind$9 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$12;
          if (_bind$9 >= 48 && _bind$9 <= 57) {
            _tmp$12 = 5;
          } else {
            if (_bind$9 >= 65 && _bind$9 <= 90) {
              _tmp$12 = 5;
            } else {
              if (_bind$9 === 95) {
                _tmp$12 = 5;
              } else {
                if (_bind$9 >= 97 && _bind$9 <= 111) {
                  _tmp$12 = 5;
                } else {
                  if (_bind$9 === 112) {
                    _tmp$12 = 13;
                  } else {
                    if (_bind$9 >= 113 && _bind$9 <= 122) {
                      _tmp$12 = 5;
                    } else {
                      break _L$2;
                    }
                  }
                }
              }
            }
          }
          _tmp$3 = _tmp$12;
          continue _L$2;
        }
        case 12: {
          _tag_5 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 3) {
            matched = 3;
            _end_pos.val = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_4;
            _capture_0_end = _tag_5;
          }
          const _bind$10 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$13;
          if (_bind$10 >= 48 && _bind$10 <= 57) {
            _tmp$13 = 5;
          } else {
            if (_bind$10 >= 65 && _bind$10 <= 90) {
              _tmp$13 = 5;
            } else {
              if (_bind$10 === 95) {
                _tmp$13 = 5;
              } else {
                if (_bind$10 >= 97 && _bind$10 <= 115) {
                  _tmp$13 = 5;
                } else {
                  if (_bind$10 === 116) {
                    _tmp$13 = 11;
                  } else {
                    if (_bind$10 >= 117 && _bind$10 <= 122) {
                      _tmp$13 = 5;
                    } else {
                      break _L$2;
                    }
                  }
                }
              }
            }
          }
          _tmp$3 = _tmp$13;
          continue _L$2;
        }
        case 13: {
          _tag_5 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 3) {
            matched = 3;
            _end_pos.val = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_4;
            _capture_0_end = _tag_5;
          }
          const _bind$11 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$14;
          if (_bind$11 >= 48 && _bind$11 <= 57) {
            _tmp$14 = 5;
          } else {
            if (_bind$11 >= 65 && _bind$11 <= 90) {
              _tmp$14 = 5;
            } else {
              if (_bind$11 === 95) {
                _tmp$14 = 5;
              } else {
                if (_bind$11 >= 97 && _bind$11 <= 110) {
                  _tmp$14 = 5;
                } else {
                  if (_bind$11 === 111) {
                    _tmp$14 = 14;
                  } else {
                    if (_bind$11 >= 112 && _bind$11 <= 122) {
                      _tmp$14 = 5;
                    } else {
                      break _L$2;
                    }
                  }
                }
              }
            }
          }
          _tmp$3 = _tmp$14;
          continue _L$2;
        }
        case 14: {
          _tag_5 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 3) {
            matched = 3;
            _end_pos.val = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_4;
            _capture_0_end = _tag_5;
          }
          const _bind$12 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$15;
          if (_bind$12 >= 48 && _bind$12 <= 57) {
            _tmp$15 = 5;
          } else {
            if (_bind$12 >= 65 && _bind$12 <= 90) {
              _tmp$15 = 5;
            } else {
              if (_bind$12 === 95) {
                _tmp$15 = 5;
              } else {
                if (_bind$12 >= 97 && _bind$12 <= 114) {
                  _tmp$15 = 5;
                } else {
                  if (_bind$12 === 115) {
                    _tmp$15 = 15;
                  } else {
                    if (_bind$12 >= 116 && _bind$12 <= 122) {
                      _tmp$15 = 5;
                    } else {
                      break _L$2;
                    }
                  }
                }
              }
            }
          }
          _tmp$3 = _tmp$15;
          continue _L$2;
        }
        case 15: {
          _tag_1 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          _tag_5 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          if (matched >= 3) {
            matched = 3;
            _end_pos.val = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_4;
            _capture_0_end = _tag_5;
          }
          const _bind$13 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$16;
          if (_bind$13 === 40) {
            _tmp$16 = 16;
          } else {
            if (_bind$13 >= 48 && _bind$13 <= 57) {
              _tmp$16 = 5;
            } else {
              if (_bind$13 >= 65 && _bind$13 <= 90) {
                _tmp$16 = 5;
              } else {
                if (_bind$13 === 95) {
                  _tmp$16 = 5;
                } else {
                  if (_bind$13 >= 97 && _bind$13 <= 122) {
                    _tmp$16 = 5;
                  } else {
                    break _L$2;
                  }
                }
              }
            }
          }
          _tmp$3 = _tmp$16;
          continue _L$2;
        }
        case 16: {
          _tag_2 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind$14 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$17;
          if (_bind$14 === 9) {
            _tmp$17 = 16;
          } else {
            if (_bind$14 === 32) {
              _tmp$17 = 16;
            } else {
              if (_bind$14 >= 65 && _bind$14 <= 90) {
                _tmp$17 = 17;
              } else {
                if (_bind$14 === 95) {
                  _tmp$17 = 17;
                } else {
                  if (_bind$14 >= 97 && _bind$14 <= 122) {
                    _tmp$17 = 17;
                  } else {
                    break _L$2;
                  }
                }
              }
            }
          }
          _tmp$3 = _tmp$17;
          continue _L$2;
        }
        case 17: {
          _tag_3 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
          const _bind$15 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$18;
          if (_bind$15 === 9) {
            _tmp$18 = 18;
          } else {
            if (_bind$15 === 32) {
              _tmp$18 = 18;
            } else {
              if (_bind$15 === 41) {
                _tmp$18 = 19;
              } else {
                if (_bind$15 >= 48 && _bind$15 <= 57) {
                  _tmp$18 = 17;
                } else {
                  if (_bind$15 >= 65 && _bind$15 <= 90) {
                    _tmp$18 = 17;
                  } else {
                    if (_bind$15 === 95) {
                      _tmp$18 = 17;
                    } else {
                      if (_bind$15 >= 97 && _bind$15 <= 122) {
                        _tmp$18 = 17;
                      } else {
                        break _L$2;
                      }
                    }
                  }
                }
              }
            }
          }
          _tmp$3 = _tmp$18;
          continue _L$2;
        }
        case 18: {
          const _bind$16 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$next_as_int$141$(lexbuf$2);
          let _tmp$19;
          switch (_bind$16) {
            case 9: {
              _tmp$19 = 18;
              break;
            }
            case 32: {
              _tmp$19 = 18;
              break;
            }
            case 41: {
              _tmp$19 = 19;
              break;
            }
            default: {
              break _L$2;
            }
          }
          _tmp$3 = _tmp$19;
          continue _L$2;
        }
        case 19: {
          if (matched >= 2) {
            matched = 2;
            _end_pos.val = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$curr_pos$141$(lexbuf$2);
            _capture_0_start = _tag_0;
            _capture_0_end = _tag_1;
            _capture_1_start = _tag_2;
            _capture_1_end = _tag_3;
          }
          break _L$2;
        }
        default: {
          $panic();
          break _L$2;
        }
      }
    }
    if (matched <= 5) {
      moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$reset$141$(lexbuf$2, _end_pos.val);
      const _bind = matched;
      switch (_bind) {
        case 0: {
          moonbitlang$ulex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace$141$(subst$2, lexbuf$2);
          continue _L;
        }
        case 1: {
          return;
        }
        case 2: {
          const _start_pos_of_t1 = _capture_0_start;
          const _end_pos_of_t1 = _capture_0_end;
          const t1 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$get_string$141$(lexbuf$2, _start_pos_of_t1, _end_pos_of_t1);
          const _start_pos_of_t2 = _capture_1_start;
          const _end_pos_of_t2 = _capture_1_end;
          const t2 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$get_string$141$(lexbuf$2, _start_pos_of_t2, _end_pos_of_t2);
          const _tmp$4 = _start_pos.val;
          const _tmp$5 = _end_pos.val;
          let _tmp$6;
          switch (t1) {
            case "startpos": {
              _tmp$6 = new $64$moonbitlang$47$ulex$47$lib$47$codegen$47$internal$47$codeblock_parser$46$SubstItemDesc$StartPosOf(t2);
              break;
            }
            case "endpos": {
              _tmp$6 = new $64$moonbitlang$47$ulex$47$lib$47$codegen$47$internal$47$codeblock_parser$46$SubstItemDesc$EndPosOf(t2);
              break;
            }
            default: {
              _tmp$6 = $panic();
            }
          }
          moonbitlang$core$array$$Array$push$121$(subst$2, { start: _tmp$4, end: _tmp$5, desc: _tmp$6 });
          continue _L;
        }
        case 3: {
          const _start_pos_of_t1$2 = _capture_0_start;
          const _end_pos_of_t1$2 = _capture_0_end;
          const t1$2 = moonbitlang$ulex$45$runtime$lexbuf$$IStringLexbuf$get_string$141$(lexbuf$2, _start_pos_of_t1$2, _end_pos_of_t1$2);
          _L$3: {
            _L$4: {
              switch (t1$2) {
                case "startpos": {
                  break _L$4;
                }
                case "endpos": {
                  break _L$4;
                }
              }
              break _L$3;
            }
            const _tmp$7 = _start_pos.val;
            const _tmp$8 = _end_pos.val;
            let _tmp$9;
            switch (t1$2) {
              case "startpos": {
                _tmp$9 = $64$moonbitlang$47$ulex$47$lib$47$codegen$47$internal$47$codeblock_parser$46$SubstItemDesc$StartPos;
                break;
              }
              case "endpos": {
                _tmp$9 = $64$moonbitlang$47$ulex$47$lib$47$codegen$47$internal$47$codeblock_parser$46$SubstItemDesc$EndPos;
                break;
              }
              default: {
                _tmp$9 = $panic();
              }
            }
            moonbitlang$core$array$$Array$push$121$(subst$2, { start: _tmp$7, end: _tmp$8, desc: _tmp$9 });
          }
          continue _L;
        }
        case 4: {
          continue _L;
        }
        case 5: {
          return;
        }
        default: {
          $panic();
          return;
        }
      }
    } else {
      $panic();
      return;
    }
  }
}
function moonbitlang$ulex$lib$codegen$internal$codeblock_parser$$parse_codeblock(str) {
  const lexbuf = moonbitlang$ulex$45$runtime$lexbuf$$StringLexbuf$from_string(str);
  const subst = [];
  moonbitlang$ulex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace$141$(subst, lexbuf);
  return subst;
}
function moonbitlang$ulex$lib$codegen$$group_trans$46$42$func$124$163(_env, _p) {
  const _bind = _env._1;
  const _state = _env._0;
  return _bind((_p$2) => {
    const _min = _p$2._0;
    const _max = _p$2._1;
    const _bind$2 = moonbitlang$ulex$lib$util$eof_char_set$$EofChar$repr(_min);
    let _tmp;
    if (_bind$2.$tag === 0) {
      _tmp = -1;
    } else {
      const _Char = _bind$2;
      const _c = _Char._0;
      _tmp = _c;
    }
    const _tmp$2 = _tmp;
    const _bind$3 = moonbitlang$ulex$lib$util$eof_char_set$$EofChar$repr(_max);
    let _tmp$3;
    if (_bind$3.$tag === 0) {
      _tmp$3 = -1;
    } else {
      const _Char = _bind$3;
      const _c = _Char._0;
      _tmp$3 = _c;
    }
    return _p({ _0: { _0: _tmp$2, _1: _tmp$3 }, _1: _state });
  });
}
function moonbitlang$ulex$lib$codegen$$group_trans(trans) {
  const char_set_by_state = moonbitlang$core$builtin$$Map$from_array$92$([]);
  const _len = trans.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const tran = trans[_i];
      const _char_set = tran._0;
      const _next_state = tran._1;
      const _bind = moonbitlang$core$builtin$$Map$op_get$92$(char_set_by_state, _next_state);
      if (_bind === undefined) {
        moonbitlang$core$builtin$$Map$op_set$92$(char_set_by_state, _next_state, _char_set);
      } else {
        const _Some = _bind;
        const _existing_char_set = _Some;
        moonbitlang$core$builtin$$Map$op_set$92$(char_set_by_state, _next_state, moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$union(_char_set, _existing_char_set));
      }
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  const _bind = moonbitlang$core$builtin$$Map$iter$92$(char_set_by_state);
  const result = moonbitlang$core$builtin$$Iter$to_array$49$((_p) => _bind((_p$2) => {
    const _state = _p$2._0;
    const _char_set = _p$2._1;
    const _bind$2 = moonbitlang$ulex$lib$util$eof_char_set$$EofCharSet$iter_ranges(_char_set);
    const _env = { _0: _state, _1: _bind$2 };
    return moonbitlang$ulex$lib$codegen$$group_trans$46$42$func$124$163(_env, _p);
  }));
  moonbitlang$core$array$$Array$sort$49$(result);
  return result;
}
function moonbitlang$ulex$lib$codegen$$rewrite_codeblock(codeblock, subst) {
  const buf = moonbitlang$core$builtin$$StringBuilder$new(moonbitlang$core$builtin$$StringBuilder$new$46$size_hint$46$default());
  let last_index = 0;
  const _len = subst.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const item = subst[_i];
      moonbitlang$core$builtin$$Logger$write_substring$22$(buf, codeblock, last_index, item.start - last_index | 0);
      const _bind = item.desc;
      switch (_bind.$tag) {
        case 0: {
          const _StartPosOf = _bind;
          const _name = _StartPosOf._0;
          moonbitlang$core$builtin$$Logger$write_string$22$(buf, `_start_pos_of_${moonbitlang$core$builtin$$Show$to_string$23$(_name)}`);
          break;
        }
        case 1: {
          const _EndPosOf = _bind;
          const _name$2 = _EndPosOf._0;
          moonbitlang$core$builtin$$Logger$write_string$22$(buf, `_end_pos_of_${moonbitlang$core$builtin$$Show$to_string$23$(_name$2)}`);
          break;
        }
        case 2: {
          moonbitlang$core$builtin$$Logger$write_string$22$(buf, "_start_pos");
          break;
        }
        default: {
          moonbitlang$core$builtin$$Logger$write_string$22$(buf, "_end_pos");
        }
      }
      last_index = item.end;
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  if (last_index < codeblock.length) {
    moonbitlang$core$builtin$$Logger$write_substring$22$(buf, codeblock, last_index, codeblock.length - last_index | 0);
  }
  return moonbitlang$core$builtin$$StringBuilder$to_string(buf);
}
function moonbitlang$ulex$lib$codegen$$codegen_rule$46$gen_tag_var$124$28(tag_id, rank) {
  return rank === 0 ? `_tag_${moonbitlang$core$builtin$$Show$to_string$8$(tag_id)}` : `_tag_${moonbitlang$core$builtin$$Show$to_string$8$(tag_id)}_${moonbitlang$core$builtin$$Show$to_string$8$(rank)}`;
}
function moonbitlang$ulex$lib$codegen$$codegen_rule(rule, code_unit, default_encoding) {
  const out = moonbitlang$core$builtin$$StringBuilder$new(moonbitlang$core$builtin$$StringBuilder$new$46$size_hint$46$default());
  let encoding;
  _L: {
    _L$2: {
      switch (code_unit) {
        case 0: {
          encoding = default_encoding;
          break;
        }
        case 1: {
          break _L$2;
        }
        default: {
          break _L$2;
        }
      }
      break _L;
    }
    encoding = undefined;
  }
  const dfa = moonbitlang$ulex$lib$automaton$$DFA$from_rule(rule, encoding);
  const _bind = moonbitlang$core$array$$Array$iter$83$(dfa.captures);
  const max_num_capture_vars = moonbitlang$core$option$$Option$or$8$(moonbitlang$core$builtin$$Iter$maximum$8$((_p) => _bind((_p$2) => _p(_p$2.length))), 0);
  const max_pattern_id = dfa.code_blocks.length - 1 | 0;
  moonbitlang$core$builtin$$Logger$write_string$22$(out, `fn ${moonbitlang$core$builtin$$Show$to_string$23$(rule.signature)} {\n  // The matched pattern id\n  let mut matched = @int.max_value\n  let mut _end_pos = -1\n  let mut _start_pos = lexbuf.curr_pos()\n`);
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i <= max_num_capture_vars) {
      moonbitlang$core$builtin$$Logger$write_string$22$(out, `  let mut _capture_${moonbitlang$core$builtin$$Show$to_string$8$(i)}_start = -1\n  let mut _capture_${moonbitlang$core$builtin$$Show$to_string$8$(i)}_end = -1\n`);
      _tmp = i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  const all_tag_actions = moonbitlang$core$sorted_set$$new$6$();
  const _bind$2 = moonbitlang$core$builtin$$Map$iter2$97$(dfa.tag_actions);
  _bind$2((__, tag_action) => {
    moonbitlang$core$sorted_set$$T$add$6$(all_tag_actions, tag_action);
    return 1;
  });
  const all_tag_vars = moonbitlang$core$sorted_set$$new$7$();
  const _bind$3 = moonbitlang$core$sorted_set$$T$iter$6$(all_tag_actions);
  _bind$3((tag_action) => {
    const _arr = tag_action;
    const _len = _arr.length;
    let _tmp$2 = 0;
    while (true) {
      const _i = _tmp$2;
      if (_i < _len) {
        const op = _arr[_i];
        if (op.$tag === 0) {
          const _Set = op;
          const _dest = _Set._0;
          moonbitlang$core$sorted_set$$T$add$7$(all_tag_vars, _dest);
        } else {
          const _Copy = op;
          const _dest = _Copy._0;
          const _src = _Copy._1;
          moonbitlang$core$sorted_set$$T$add$7$(all_tag_vars, _dest);
          moonbitlang$core$sorted_set$$T$add$7$(all_tag_vars, _src);
        }
        _tmp$2 = _i + 1 | 0;
        continue;
      } else {
        break;
      }
    }
    return 1;
  });
  const _bind$4 = moonbitlang$core$sorted_set$$T$iter$7$(all_tag_vars);
  _bind$4((tag_var) => {
    moonbitlang$core$builtin$$Logger$write_string$22$(out, `  let mut ${moonbitlang$core$builtin$$Show$to_string$23$(moonbitlang$ulex$lib$codegen$$codegen_rule$46$gen_tag_var$124$28(tag_var._0, tag_var._1))} = -1\n`);
    return 1;
  });
  const start_tags = moonbitlang$core$sorted_set$$new$8$();
  const _bind$5 = moonbitlang$core$sorted_set$$T$iter$8$(start_tags);
  _bind$5((tag) => {
    moonbitlang$core$builtin$$Logger$write_string$22$(out, `  ${moonbitlang$core$builtin$$Show$to_string$23$(moonbitlang$ulex$lib$codegen$$codegen_rule$46$gen_tag_var$124$28(tag, 0))} = lexbuf.curr_pos()\n`);
    return 1;
  });
  moonbitlang$core$builtin$$Logger$write_string$22$(out, `  loop ${moonbitlang$core$builtin$$Show$to_string$8$(dfa.start_node)} {\n`);
  const _arr = dfa.graph;
  const _len = _arr.length;
  let _tmp$2 = 0;
  while (true) {
    const _i = _tmp$2;
    if (_i < _len) {
      const trans = _arr[_i];
      moonbitlang$core$builtin$$Logger$write_string$22$(out, `    ${moonbitlang$core$builtin$$Show$to_string$8$(_i)} => {\n`);
      const tag_action = moonbitlang$core$option$$Option$unwrap$6$(moonbitlang$core$builtin$$Map$op_get$97$(dfa.tag_actions, _i));
      const buf = [];
      const _arr$2 = tag_action;
      const _len$2 = _arr$2.length;
      let _tmp$3 = 0;
      while (true) {
        const _i$2 = _tmp$3;
        if (_i$2 < _len$2) {
          const op = _arr$2[_i$2];
          if (op.$tag === 0) {
            const _Set = op;
            const _dest = _Set._0;
            moonbitlang$core$array$$Array$push$23$(buf, `${moonbitlang$core$builtin$$Show$to_string$23$(moonbitlang$ulex$lib$codegen$$codegen_rule$46$gen_tag_var$124$28(_dest._0, _dest._1))} = lexbuf.curr_pos()`);
          } else {
            const _Copy = op;
            const _dest = _Copy._0;
            const _src = _Copy._1;
            moonbitlang$core$array$$Array$push$23$(buf, `${moonbitlang$core$builtin$$Show$to_string$23$(moonbitlang$ulex$lib$codegen$$codegen_rule$46$gen_tag_var$124$28(_dest._0, _dest._1))} = ${moonbitlang$core$builtin$$Show$to_string$23$(moonbitlang$ulex$lib$codegen$$codegen_rule$46$gen_tag_var$124$28(_src._0, _src._1))}`);
          }
          _tmp$3 = _i$2 + 1 | 0;
          continue;
        } else {
          break;
        }
      }
      let _bind$6;
      if (moonbitlang$core$array$$Array$is_empty$23$(buf)) {
        _bind$6 = undefined;
      } else {
        const _bind$7 = moonbitlang$core$array$$Array$iter$23$(buf);
        _bind$6 = moonbitlang$core$builtin$$Iter$join((_p) => _bind$7((_p$2) => _p(`      ${moonbitlang$core$builtin$$Show$to_string$23$(_p$2)}`)), "\n");
      }
      if (_bind$6 === undefined) {
      } else {
        const _Some = _bind$6;
        const _tag_action_code = _Some;
        moonbitlang$core$builtin$$Logger$write_string$22$(out, `${moonbitlang$core$builtin$$Show$to_string$23$(_tag_action_code)}\n`);
      }
      const _bind$7 = moonbitlang$core$builtin$$Map$op_get$93$(dfa.end_nodes, _i);
      if (_bind$7 === undefined) {
      } else {
        const _Some = _bind$7;
        const _x = _Some;
        const _pattern_id = _x._0;
        const _captures = _x._1;
        moonbitlang$core$builtin$$Logger$write_string$22$(out, `      if matched >= ${moonbitlang$core$builtin$$Show$to_string$8$(_pattern_id)} {\n        matched = ${moonbitlang$core$builtin$$Show$to_string$8$(_pattern_id)}\n        _end_pos = lexbuf.curr_pos()\n`);
        const _len$3 = _captures.length;
        let _tmp$4 = 0;
        while (true) {
          const _i$2 = _tmp$4;
          if (_i$2 < _len$3) {
            const capture = _captures[_i$2];
            const _x$2 = capture._0;
            const _begin_tag = _x$2._0;
            const _begin_rank = _x$2._1;
            const _x$3 = capture._1;
            const _end_tag = _x$3._0;
            const _end_rank = _x$3._1;
            const begin_tag_var = moonbitlang$ulex$lib$codegen$$codegen_rule$46$gen_tag_var$124$28(_begin_tag, _begin_rank);
            const end_tag_var = moonbitlang$ulex$lib$codegen$$codegen_rule$46$gen_tag_var$124$28(_end_tag, _end_rank);
            moonbitlang$core$builtin$$Logger$write_string$22$(out, `        _capture_${moonbitlang$core$builtin$$Show$to_string$8$(_i$2)}_start = ${moonbitlang$core$builtin$$Show$to_string$23$(begin_tag_var)}\n`);
            moonbitlang$core$builtin$$Logger$write_string$22$(out, `        _capture_${moonbitlang$core$builtin$$Show$to_string$8$(_i$2)}_end = ${moonbitlang$core$builtin$$Show$to_string$23$(end_tag_var)}\n`);
            _tmp$4 = _i$2 + 1 | 0;
            continue;
          } else {
            break;
          }
        }
        moonbitlang$core$builtin$$Logger$write_string$22$(out, "      }\n");
      }
      const grouped_trans = moonbitlang$ulex$lib$codegen$$group_trans(trans);
      if (moonbitlang$core$array$$Array$is_empty$49$(grouped_trans)) {
        moonbitlang$core$builtin$$Logger$write_string$22$(out, "      break\n");
      } else {
        moonbitlang$core$builtin$$Logger$write_string$22$(out, "      continue match lexbuf.next_as_int() {\n");
        const _len$3 = grouped_trans.length;
        let _tmp$4 = 0;
        while (true) {
          const _i$2 = _tmp$4;
          if (_i$2 < _len$3) {
            const tran = grouped_trans[_i$2];
            const _x = tran._0;
            const _first_char = _x._0;
            const _last_char = _x._1;
            const _next_state = tran._1;
            const pattern = _first_char === _last_char ? moonbitlang$core$builtin$$Show$to_string$8$(_first_char) : `${moonbitlang$core$builtin$$Show$to_string$8$(_first_char)}..=${moonbitlang$core$builtin$$Show$to_string$8$(_last_char)}`;
            moonbitlang$core$builtin$$Logger$write_string$22$(out, `        ${moonbitlang$core$builtin$$Show$to_string$23$(pattern)} => ${moonbitlang$core$builtin$$Show$to_string$8$(_next_state)}\n`);
            _tmp$4 = _i$2 + 1 | 0;
            continue;
          } else {
            break;
          }
        }
        moonbitlang$core$builtin$$Logger$write_string$22$(out, "        _ => break\n      }\n");
      }
      moonbitlang$core$builtin$$Logger$write_string$22$(out, "    }\n");
      _tmp$2 = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  moonbitlang$core$builtin$$Logger$write_string$22$(out, "    _ => panic()\n  }\n");
  moonbitlang$core$builtin$$Logger$write_string$22$(out, `\n  guard matched <= ${moonbitlang$core$builtin$$Show$to_string$8$(max_pattern_id)} else {\n    // No pattern matched\n    panic()\n  }\n\n  lexbuf.reset(pos=_end_pos)\n  match matched {\n`);
  const _arr$2 = dfa.code_blocks;
  const _len$2 = _arr$2.length;
  let _tmp$3 = 0;
  while (true) {
    const _i = _tmp$3;
    if (_i < _len$2) {
      const codeblock = _arr$2[_i];
      moonbitlang$core$builtin$$Logger$write_string$22$(out, `    ${moonbitlang$core$builtin$$Show$to_string$8$(_i)} => {\n      ()\n`);
      const subst = moonbitlang$ulex$lib$codegen$internal$codeblock_parser$$parse_codeblock(codeblock);
      const _arr$3 = moonbitlang$core$array$$Array$op_get$83$(dfa.captures, _i);
      const _len$3 = _arr$3.length;
      let _tmp$4 = 0;
      while (true) {
        const _i$2 = _tmp$4;
        if (_i$2 < _len$3) {
          const capture = _arr$3[_i$2];
          const _name = capture._0;
          const _var_type = capture._1;
          if (_var_type === 0) {
            moonbitlang$core$builtin$$Logger$write_string$22$(out, `      let _start_pos_of_${moonbitlang$core$builtin$$Show$to_string$23$(_name)} = _capture_${moonbitlang$core$builtin$$Show$to_string$8$(_i$2)}_start\n      let _end_pos_of_${moonbitlang$core$builtin$$Show$to_string$23$(_name)} = _capture_${moonbitlang$core$builtin$$Show$to_string$8$(_i$2)}_end\n      let ${moonbitlang$core$builtin$$Show$to_string$23$(_name)} = lexbuf.get_char(_start_pos_of_${moonbitlang$core$builtin$$Show$to_string$23$(_name)}, _end_pos_of_${moonbitlang$core$builtin$$Show$to_string$23$(_name)})\n`);
          } else {
            moonbitlang$core$builtin$$Logger$write_string$22$(out, `      let _start_pos_of_${moonbitlang$core$builtin$$Show$to_string$23$(_name)} = _capture_${moonbitlang$core$builtin$$Show$to_string$8$(_i$2)}_start\n      let _end_pos_of_${moonbitlang$core$builtin$$Show$to_string$23$(_name)} = _capture_${moonbitlang$core$builtin$$Show$to_string$8$(_i$2)}_end\n      let ${moonbitlang$core$builtin$$Show$to_string$23$(_name)} = lexbuf.get_string(_start_pos_of_${moonbitlang$core$builtin$$Show$to_string$23$(_name)}, _end_pos_of_${moonbitlang$core$builtin$$Show$to_string$23$(_name)})\n`);
          }
          let _tmp$5;
          let _return_value;
          _L$2: {
            _L$3: {
              const _len$4 = subst.length;
              let _tmp$6 = 0;
              while (true) {
                const _i$3 = _tmp$6;
                if (_i$3 < _len$4) {
                  const item = subst[_i$3];
                  let n;
                  _L$4: {
                    _L$5: {
                      const _bind$6 = item.desc;
                      switch (_bind$6.$tag) {
                        case 0: {
                          const _StartPosOf = _bind$6;
                          const _n = _StartPosOf._0;
                          n = _n;
                          break _L$5;
                        }
                        case 1: {
                          const _EndPosOf = _bind$6;
                          const _n$2 = _EndPosOf._0;
                          n = _n$2;
                          break _L$5;
                        }
                        case 2: {
                          break;
                        }
                      }
                      break _L$4;
                    }
                    if (n === _name) {
                      _return_value = true;
                      break _L$3;
                    }
                  }
                  _tmp$6 = _i$3 + 1 | 0;
                  continue;
                } else {
                  break;
                }
              }
              _tmp$5 = false;
              break _L$2;
            }
            _tmp$5 = _return_value;
          }
          if (_tmp$5) {
            moonbitlang$core$builtin$$Logger$write_string$22$(out, `      let _ = ${moonbitlang$core$builtin$$Show$to_string$23$(_name)}\n`);
          }
          _tmp$4 = _i$2 + 1 | 0;
          continue;
        } else {
          break;
        }
      }
      moonbitlang$core$builtin$$Logger$write_string$22$(out, `${moonbitlang$core$builtin$$Show$to_string$23$(moonbitlang$ulex$lib$codegen$$rewrite_codeblock(codeblock, subst))}\n`);
      moonbitlang$core$builtin$$Logger$write_string$22$(out, "    }\n");
      _tmp$3 = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  moonbitlang$core$builtin$$Logger$write_string$22$(out, "    _ => panic()\n  }\n}\n\n");
  return moonbitlang$core$builtin$$StringBuilder$to_string(out);
}
function moonbitlang$ulex$lib$codegen$$codegen_lex(lex, code_unit, default_encoding) {
  const _tmp = lex.header;
  const _lhs = moonbitlang$core$array$$Array$map$127$(lex.rules, (rule) => moonbitlang$ulex$lib$codegen$$codegen_rule(rule, code_unit, default_encoding));
  const _tmp$2 = moonbitlang$core$string$$concat(_lhs, "\n");
  const _lhs$2 = [_tmp, _tmp$2, lex.trailer];
  return moonbitlang$core$string$$concat(_lhs$2, "\n\n");
}
function Yoorkin$trie$$T$lookup$143$(self, path) {
  const _bind = moonbitlang$core$string$$String$to_array(path);
  let _tmp = { buf: _bind, start: 0, len: _bind.length };
  let _tmp$2 = self;
  while (true) {
    const _param = _tmp;
    const _param$2 = _tmp$2;
    if (_param.len === 0) {
      return _param$2.value;
    } else {
      const _x = _param.buf[_param.start];
      const _tmp$3 = _param.buf;
      const _tmp$4 = 1 + _param.start | 0;
      const _some = _param.len;
      const _x$2 = { buf: _tmp$3, start: _tmp$4, len: _some - 1 | 0 };
      const _bind$2 = moonbitlang$core$immut$sorted_map$$T$op_get$54$(_param$2.forks, _x);
      if (_bind$2 === undefined) {
        return undefined;
      } else {
        const _Some = _bind$2;
        const _subtree = _Some;
        _tmp = _x$2;
        _tmp$2 = _subtree;
        continue;
      }
    }
  }
}
function Yoorkin$trie$$add$46$aux$47$5737(value, _param1, _param2) {
  if (_param1.len === 0) {
    return { value: value, forks: _param2.forks };
  } else {
    const _x = _param1.buf[_param1.start];
    const _tmp = _param1.buf;
    const _tmp$2 = 1 + _param1.start | 0;
    const _some = _param1.len;
    const _x$2 = { buf: _tmp, start: _tmp$2, len: _some - 1 | 0 };
    const subtree = moonbitlang$core$option$$Option$or$68$(moonbitlang$core$immut$sorted_map$$T$op_get$54$(_param2.forks, _x), { value: undefined, forks: moonbitlang$core$immut$sorted_map$$new$54$() });
    return { value: _param2.value, forks: moonbitlang$core$immut$sorted_map$$T$add$54$(_param2.forks, _x, Yoorkin$trie$$add$46$aux$47$5737(value, _x$2, subtree)) };
  }
}
function Yoorkin$trie$$T$add$143$(self, path, value) {
  const _bind = moonbitlang$core$string$$String$to_array(path);
  return Yoorkin$trie$$add$46$aux$47$5737(value, { buf: _bind, start: 0, len: _bind.length }, self);
}
function Yoorkin$trie$$empty$143$() {
  return { value: undefined, forks: moonbitlang$core$immut$sorted_map$$new$54$() };
}
function Yoorkin$ArgParser$$interpret(trie, xs, fallback) {
  const _bind = xs.length;
  let _tmp = xs;
  let _tmp$2 = 0;
  let _tmp$3 = _bind;
  _L: while (true) {
    const _param_buf = _tmp;
    const _param_start = _tmp$2;
    const _param_len = _tmp$3;
    if (_param_len === 0) {
      return;
    } else {
      const _x = _param_buf[_param_start];
      const _bind$2 = 1 + _param_start | 0;
      const _some = _param_len;
      const _bind$3 = _some - 1 | 0;
      const _bind$4 = Yoorkin$trie$$T$lookup$143$(trie, _x);
      if (_bind$4 === undefined) {
        fallback(_x);
        _tmp$2 = _bind$2;
        _tmp$3 = _bind$3;
        continue;
      } else {
        const _Some = _bind$4;
        const _spec = _Some;
        _L$2: {
          switch (_spec.$tag) {
            case 1: {
              const _String = _spec;
              const _f = _String._0;
              if (_bind$3 >= 1) {
                const _y = _param_buf[_bind$2];
                const _bind$5 = 1 + _bind$2 | 0;
                const _some$2 = _bind$3;
                const _bind$6 = _some$2 - 1 | 0;
                _f(_y);
                _tmp$2 = _bind$5;
                _tmp$3 = _bind$6;
                continue _L;
              } else {
                break _L$2;
              }
            }
            case 2: {
              const _Set_string = _spec;
              const _r = _Set_string._0;
              if (_bind$3 >= 1) {
                const _y = _param_buf[_bind$2];
                const _bind$5 = 1 + _bind$2 | 0;
                const _some$2 = _bind$3;
                const _bind$6 = _some$2 - 1 | 0;
                _r.val = _y;
                _tmp$2 = _bind$5;
                _tmp$3 = _bind$6;
                continue _L;
              } else {
                break _L$2;
              }
            }
            case 3: {
              const _Set = _spec;
              const _r$2 = _Set._0;
              _r$2.val = true;
              _tmp$2 = _bind$2;
              _tmp$3 = _bind$3;
              continue _L;
            }
            case 4: {
              const _Clear = _spec;
              const _r$3 = _Clear._0;
              _r$3.val = false;
              _tmp$2 = _bind$2;
              _tmp$3 = _bind$3;
              continue _L;
            }
            default: {
              const _Unit = _spec;
              const _f$2 = _Unit._0;
              _f$2();
              _tmp$2 = _bind$2;
              _tmp$3 = _bind$3;
              continue _L;
            }
          }
        }
        moonbitlang$core$builtin$$println$23$(`missing argument for ${moonbitlang$core$builtin$$Show$to_string$23$(_x)}`);
        return;
      }
    }
  }
}
function Yoorkin$ArgParser$$parse$46$aux$124$7(_param1, _param2) {
  const _x = _param1._0;
  const _help_msg = _param1._1;
  const _a = _param2._0;
  const _b = _param2._1;
  const _spec = _param2._2;
  const _help = _param2._3;
  const trie = Yoorkin$trie$$T$add$143$(Yoorkin$trie$$T$add$143$(_x, _a, _spec), _b, _spec);
  const help_msg = `${_help_msg}  ${moonbitlang$core$builtin$$Show$to_string$23$(_a)}\t${moonbitlang$core$builtin$$Show$to_string$23$(_b)}\t${_help}\n`;
  return { _0: trie, _1: help_msg };
}
function Yoorkin$ArgParser$$parse(speclist, rest, usage_msg, argv) {
  const _bind = moonbitlang$core$array$$Array$fold$138$(speclist, { _0: Yoorkin$trie$$empty$143$(), _1: `${usage_msg}\n options:\n` }, Yoorkin$ArgParser$$parse$46$aux$124$7);
  const _trie = _bind._0;
  const _help_msg = _bind._1;
  const help_spec = new $64$Yoorkin$47$ArgParser$46$Spec$Unit(() => {
    moonbitlang$core$builtin$$println$23$(_help_msg);
  });
  const trie = Yoorkin$trie$$T$add$143$(Yoorkin$trie$$T$add$143$(_trie, "--help", help_spec), "-h", help_spec);
  Yoorkin$ArgParser$$interpret(trie, argv, rest);
}
function moonbitlang$x$internal$ffi$$mbt_string_to_utf8_bytes(str, is_filename) {
  const res = [];
  const len = str.length;
  let i = 0;
  while (true) {
    if (i < len) {
      const _tmp = i;
      $bound_check(str, _tmp);
      let c = str.charCodeAt(_tmp);
      if (55296 <= c && c <= 56319) {
        c = c - 55296 | 0;
        i = i + 1 | 0;
        const _tmp$2 = i;
        $bound_check(str, _tmp$2);
        const l = str.charCodeAt(_tmp$2) - 56320 | 0;
        c = ((c << 10) + l | 0) + 65536 | 0;
      }
      if (c < 128) {
        moonbitlang$core$array$$Array$push$47$(res, c & 255);
      } else {
        if (c < 2048) {
          moonbitlang$core$array$$Array$push$47$(res, (192 + (c >> 6) | 0) & 255);
          moonbitlang$core$array$$Array$push$47$(res, (128 + (c & 63) | 0) & 255);
        } else {
          if (c < 65536) {
            moonbitlang$core$array$$Array$push$47$(res, (224 + (c >> 12) | 0) & 255);
            moonbitlang$core$array$$Array$push$47$(res, (128 + (c >> 6 & 63) | 0) & 255);
            moonbitlang$core$array$$Array$push$47$(res, (128 + (c & 63) | 0) & 255);
          } else {
            moonbitlang$core$array$$Array$push$47$(res, (240 + (c >> 18) | 0) & 255);
            moonbitlang$core$array$$Array$push$47$(res, (128 + (c >> 12 & 63) | 0) & 255);
            moonbitlang$core$array$$Array$push$47$(res, (128 + (c >> 6 & 63) | 0) & 255);
            moonbitlang$core$array$$Array$push$47$(res, (128 + (c & 63) | 0) & 255);
          }
        }
      }
      i = i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  if (is_filename) {
    moonbitlang$core$array$$Array$push$47$(res, 0 & 255);
  }
  return moonbitlang$core$bytes$$Bytes$from_array(res);
}
function moonbitlang$x$internal$ffi$$utf8_bytes_to_mbt_string(bytes) {
  const res = [];
  const len = bytes.length;
  let i = 0;
  while (true) {
    if (i < len) {
      const _tmp = i;
      $bound_check(bytes, _tmp);
      let c = bytes[_tmp];
      if (c < 128) {
        moonbitlang$core$array$$Array$push$24$(res, c);
        i = i + 1 | 0;
      } else {
        if (c < 224) {
          if ((i + 1 | 0) >= len) {
            break;
          }
          const _tmp$2 = (c & 31) << 6;
          const _tmp$3 = i + 1 | 0;
          $bound_check(bytes, _tmp$3);
          c = _tmp$2 | bytes[_tmp$3] & 63;
          moonbitlang$core$array$$Array$push$24$(res, c);
          i = i + 2 | 0;
        } else {
          if (c < 240) {
            if ((i + 2 | 0) >= len) {
              break;
            }
            const _tmp$2 = (c & 15) << 12;
            const _tmp$3 = i + 1 | 0;
            $bound_check(bytes, _tmp$3);
            const _tmp$4 = _tmp$2 | (bytes[_tmp$3] & 63) << 6;
            const _tmp$5 = i + 2 | 0;
            $bound_check(bytes, _tmp$5);
            c = _tmp$4 | bytes[_tmp$5] & 63;
            moonbitlang$core$array$$Array$push$24$(res, c);
            i = i + 3 | 0;
          } else {
            if ((i + 3 | 0) >= len) {
              break;
            }
            const _tmp$2 = (c & 7) << 18;
            const _tmp$3 = i + 1 | 0;
            $bound_check(bytes, _tmp$3);
            const _tmp$4 = _tmp$2 | (bytes[_tmp$3] & 63) << 12;
            const _tmp$5 = i + 2 | 0;
            $bound_check(bytes, _tmp$5);
            const _tmp$6 = _tmp$4 | (bytes[_tmp$5] & 63) << 6;
            const _tmp$7 = i + 3 | 0;
            $bound_check(bytes, _tmp$7);
            c = _tmp$6 | bytes[_tmp$7] & 63;
            c = c - 65536 | 0;
            moonbitlang$core$array$$Array$push$24$(res, (c >> 10) + 55296 | 0);
            moonbitlang$core$array$$Array$push$24$(res, (c & 1023) + 56320 | 0);
            i = i + 4 | 0;
          }
        }
      }
      continue;
    } else {
      break;
    }
  }
  return moonbitlang$core$string$$String$from_array(res);
}
function moonbitlang$x$sys$internal$ffi$$get_cli_args() {
  return moonbitlang$x$sys$internal$ffi$$get_cli_args_internal();
}
function moonbitlang$x$sys$$get_cli_args() {
  return moonbitlang$x$sys$internal$ffi$$get_cli_args();
}
function moonbitlang$x$fs$$read_file_to_bytes_internal(path) {
  const res = moonbitlang$x$fs$$read_file_ffi(path);
  if (res === -1) {
    return new Result$Err$24$(new Error$moonbitlang$47$x$47$fs$46$IOError$46$IOError(moonbitlang$x$fs$$get_error_message_ffi()));
  }
  return new Result$Ok$25$(moonbitlang$x$fs$$get_file_content_ffi());
}
function moonbitlang$x$fs$$read_file_to_string_internal(path, encoding) {
  if (encoding === "utf8") {
    const _bind = moonbitlang$x$fs$$read_file_to_bytes_internal(path);
    let bytes;
    if (_bind.$tag === 1) {
      const _ok = _bind;
      bytes = _ok._0;
    } else {
      return _bind;
    }
    return new Result$Ok$27$(moonbitlang$x$internal$ffi$$utf8_bytes_to_mbt_string(bytes));
  } else {
    return new Result$Err$26$(new Error$moonbitlang$47$x$47$fs$46$IOError$46$IOError(`Unsupported encoding: ${moonbitlang$core$builtin$$Show$to_string$23$(encoding)}, only utf8 is supported for now`));
  }
}
function moonbitlang$x$fs$$write_bytes_to_file_internal(path, content) {
  const res = moonbitlang$x$fs$$write_file_ffi(path, content);
  if (res === -1) {
    return new Result$Err$29$(new Error$moonbitlang$47$x$47$fs$46$IOError$46$IOError(moonbitlang$x$fs$$get_error_message_ffi()));
  } else {
    return new Result$Ok$28$(undefined);
  }
}
function moonbitlang$x$fs$$write_string_to_file_internal(path, content, encoding) {
  if (encoding === "utf8") {
    const bytes = moonbitlang$x$internal$ffi$$mbt_string_to_utf8_bytes(content, false);
    return moonbitlang$x$fs$$write_bytes_to_file_internal(path, bytes);
  } else {
    return new Result$Err$29$(new Error$moonbitlang$47$x$47$fs$46$IOError$46$IOError(`Unsupported encoding: ${moonbitlang$core$builtin$$Show$to_string$23$(encoding)}, only utf8 is supported for now`));
  }
}
function moonbitlang$x$fs$$read_file_to_string(path, encoding) {
  return moonbitlang$x$fs$$read_file_to_string_internal(path, encoding);
}
function moonbitlang$x$fs$$read_file_to_string$46$encoding$46$default() {
  return "utf8";
}
function moonbitlang$x$fs$$write_string_to_file(path, content, encoding) {
  return moonbitlang$x$fs$$write_string_to_file_internal(path, content, encoding);
}
function moonbitlang$x$fs$$write_string_to_file$46$encoding$46$default() {
  return "utf8";
}
function moonbitlang$ulex$main$util$$exit$21$(code) {
  moonbitlang$ulex$main$util$$ffi_exit(code);
  $panic();
}
function moonbitlang$ulex$main$util$$exit$142$(code) {
  moonbitlang$ulex$main$util$$ffi_exit(code);
  return $panic();
}
function moonbitlang$ulex$main$$offset_to_line_column(content, offset) {
  let line = 1;
  let column = 1;
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i < offset) {
      $bound_check(content, i);
      if (content.charCodeAt(i) === 10) {
        line = line + 1 | 0;
        column = 1;
      } else {
        column = column + 1 | 0;
      }
      _tmp = i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return { _0: line, _1: column };
}
function moonbitlang$ulex$main$$array_to_or_list(arr) {
  if (arr.len === 0) {
    return $panic();
  } else {
    if (arr.len === 1) {
      const _x = arr.buf[arr.start];
      return _x;
    } else {
      const _x = arr.buf[arr.start + (arr.len - 1 | 0) | 0];
      const _tmp = arr.buf;
      const _tmp$2 = arr.start;
      const _some = arr.len - 1 | 0;
      const _x$2 = { buf: _tmp, start: _tmp$2, len: _some };
      const _self = [];
      moonbitlang$core$array$$Array$push_iter$23$(_self, moonbitlang$core$array$$ArrayView$iter$23$(_x$2));
      const left = moonbitlang$core$string$$concat(_self, ", ");
      return `${moonbitlang$core$builtin$$Show$to_string$23$(left)} or ${moonbitlang$core$builtin$$Show$to_string$23$(_x)}`;
    }
  }
}
function moonbitlang$ulex$main$$loc_to_string(filename, content, loc) {
  const _bind = moonbitlang$ulex$main$$offset_to_line_column(content, loc._0);
  const _start_line = _bind._0;
  const _start_column = _bind._1;
  const _bind$2 = moonbitlang$ulex$main$$offset_to_line_column(content, loc._1);
  const _end_line = _bind$2._0;
  const _end_column = _bind$2._1;
  return _start_line === _end_line ? `${moonbitlang$core$builtin$$Show$to_string$23$(filename)}:${moonbitlang$core$builtin$$Show$to_string$8$(_start_line)}:${moonbitlang$core$builtin$$Show$to_string$8$(_start_column)}-${moonbitlang$core$builtin$$Show$to_string$8$(_end_column)}` : `${moonbitlang$core$builtin$$Show$to_string$23$(filename)}:${moonbitlang$core$builtin$$Show$to_string$8$(_start_line)}:${moonbitlang$core$builtin$$Show$to_string$8$(_start_column)}-${moonbitlang$core$builtin$$Show$to_string$8$(_end_line)}:${moonbitlang$core$builtin$$Show$to_string$8$(_end_column)}`;
}
(() => {
  const output_file = moonbitlang$core$ref$$new$23$("");
  const input_file = moonbitlang$core$ref$$new$23$("");
  const code_unit = { val: 2 };
  const default_encoding = { val: undefined };
  Yoorkin$ArgParser$$parse([{ _0: "--output-file", _1: "-o", _2: new $64$Yoorkin$47$ArgParser$46$Spec$Set_string(output_file), _3: "Output file" }, { _0: "--version", _1: "-v", _2: new $64$Yoorkin$47$ArgParser$46$Spec$Unit(() => {
    moonbitlang$core$builtin$$println$23$("moonlex 0.1.0");
    moonbitlang$ulex$main$util$$exit$21$(0);
  }), _3: "Show version" }, { _0: "--code-unit", _1: "", _2: new $64$Yoorkin$47$ArgParser$46$Spec$String((code_unit_str) => {
    let _tmp;
    switch (code_unit_str) {
      case "1": {
        _tmp = 0;
        break;
      }
      case "2": {
        _tmp = 1;
        break;
      }
      case "4": {
        _tmp = 2;
        break;
      }
      default: {
        moonbitlang$core$builtin$$abort$21$(`Invalid code unit: ${moonbitlang$core$builtin$$Show$to_string$23$(code_unit_str)}`);
        return undefined;
      }
    }
    code_unit.val = _tmp;
  }), _3: "Set code unit (1, 2, or 4)" }, { _0: "--default-encoding", _1: "", _2: new $64$Yoorkin$47$ArgParser$46$Spec$String((encoding) => {
    let _tmp;
    switch (encoding) {
      case "ascii": {
        _tmp = 0;
        break;
      }
      case "latin1": {
        _tmp = 1;
        break;
      }
      case "utf8": {
        _tmp = 2;
        break;
      }
      case "utf16": {
        _tmp = 3;
        break;
      }
      default: {
        moonbitlang$core$builtin$$abort$21$(`Invalid encoding: ${moonbitlang$core$builtin$$Show$to_string$23$(encoding)}`);
        return undefined;
      }
    }
    default_encoding.val = _tmp;
  }), _3: "Set default encoding (ascii, latin1, utf8, or utf16). Only valid when code unit is 1" }], (rest) => {
    input_file.val = rest;
  }, moonbitlang$ulex$main$$_init$42$46$usage$124$1, moonbitlang$x$sys$$get_cli_args());
  if (moonbitlang$core$builtin$$op_notequal$23$(input_file.val, "")) {
    const lexer_spec_src = moonbitlang$core$result$$Result$unwrap$44$(moonbitlang$x$fs$$read_file_to_string(input_file.val, moonbitlang$x$fs$$read_file_to_string$46$encoding$46$default()));
    let lex;
    let _try_err;
    _L: {
      _L$2: {
        const _bind = moonbitlang$ulex$lib$parser$$parse_lex_from_string(lexer_spec_src);
        if (_bind.$tag === 1) {
          const _ok = _bind;
          lex = _ok._0;
        } else {
          const _err = _bind;
          const _tmp = _err._0;
          _try_err = _tmp;
          break _L$2;
        }
        break _L;
      }
      const _UnexpectedToken = _try_err;
      const _token = _UnexpectedToken._0;
      const _loc = _UnexpectedToken._1;
      const _expected = _UnexpectedToken._2;
      const loc_str = moonbitlang$ulex$main$$loc_to_string(input_file.val, lexer_spec_src, _loc);
      const _bind = moonbitlang$core$array$$Array$map$126$(_expected, moonbitlang$core$builtin$$Show$to_string$133$);
      const expected_str = moonbitlang$ulex$main$$array_to_or_list({ buf: _bind, start: 0, len: _bind.length });
      moonbitlang$ulex$main$util$$println_to_stderr(`SyntaxError: Unexpected token ${moonbitlang$core$builtin$$Show$to_string$133$(moonbitlang$ulex$lib$parser$$Token$kind(_token))}, expected ${moonbitlang$core$builtin$$Show$to_string$23$(expected_str)}.\n  at ${moonbitlang$core$builtin$$Show$to_string$23$(loc_str)}`);
      lex = moonbitlang$ulex$main$util$$exit$142$(1);
    }
    const output = moonbitlang$ulex$lib$codegen$$codegen_lex(lex, code_unit.val, default_encoding.val);
    if (output_file.val === "") {
      moonbitlang$core$builtin$$println$23$(output);
      return;
    } else {
      moonbitlang$core$result$$Result$unwrap$45$(moonbitlang$x$fs$$write_string_to_file(output_file.val, output, moonbitlang$x$fs$$write_string_to_file$46$encoding$46$default()));
      return;
    }
  } else {
    moonbitlang$core$builtin$$abort$21$("Input file is required");
    return;
  }
})();
