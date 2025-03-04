const $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Underscore = { $tag: 0 };
const $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$EOF = { $tag: 1 };
function $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$ReStr(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$lex$47$lib$47$type$46$Regex$ReStr.prototype.$tag = 2;
function $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$ReChar(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$lex$47$lib$47$type$46$Regex$ReChar.prototype.$tag = 3;
function $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$CharSet(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$lex$47$lib$47$type$46$Regex$CharSet.prototype.$tag = 4;
function $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Repetition(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Repetition.prototype.$tag = 5;
function $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Option(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Option.prototype.$tag = 6;
function $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Alter(param0, param1) {
  this._0 = param0;
  this._1 = param1;
}
$64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Alter.prototype.$tag = 7;
function $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Concat(param0, param1) {
  this._0 = param0;
  this._1 = param1;
}
$64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Concat.prototype.$tag = 8;
function $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Capture(param0, param1) {
  this._0 = param0;
  this._1 = param1;
}
$64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Capture.prototype.$tag = 9;
function $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Named(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Named.prototype.$tag = 10;
function $compare_int(a, b) {
  return (a >= b) - (a <= b);
}
function $make_array_len_and_init(a, b) {
  const arr = new Array(a);
  for (let i = 0; i < a; i++) {
    arr[i] = b;
  }
  return arr;
}
const moonbitlang$core$array$$JSArray$copy = (arr) => arr.slice(0);
function $i32_popcnt(a) {
  a = a - ((a >>> 1) & 0x55555555);
  a = (a & 0x33333333) + ((a >>> 2) & 0x33333333);
  a = (a + (a >>> 4)) & 0x0f0f0f0f;
  a = a + (a >>> 8);
  a = a + (a >>> 16);
  return a & 0x3f;
}
const $64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Empty$0$ = { $tag: 0 };
function $64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Tree$0$(param0, param1, param2, param3, param4) {
  this._0 = param0;
  this._1 = param1;
  this._2 = param2;
  this._3 = param3;
  this._4 = param4;
}
$64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Tree$0$.prototype.$tag = 1;
class $PanicError extends Error {}
function $panic() {
  throw new $PanicError();
}
const $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Empty$1$ = { $tag: 0 };
function $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Leaf$1$(param0, param1) {
  this._0 = param0;
  this._1 = param1;
}
$64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Leaf$1$.prototype.$tag = 1;
function $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Collision$1$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Collision$1$.prototype.$tag = 2;
function $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Branch$1$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Branch$1$.prototype.$tag = 3;
const $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Empty$2$ = { $tag: 0 };
function $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Leaf$2$(param0, param1) {
  this._0 = param0;
  this._1 = param1;
}
$64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Leaf$2$.prototype.$tag = 1;
function $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Collision$2$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Collision$2$.prototype.$tag = 2;
function $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Branch$2$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Branch$2$.prototype.$tag = 3;
const Option$None$3$ = { $tag: 0 };
function Option$Some$3$(param0) {
  this._0 = param0;
}
Option$Some$3$.prototype.$tag = 1;
function $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$Just_One$1$(param0, param1) {
  this._0 = param0;
  this._1 = param1;
}
$64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$Just_One$1$.prototype.$tag = 0;
function $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$1$(param0, param1, param2) {
  this._0 = param0;
  this._1 = param1;
  this._2 = param2;
}
$64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$1$.prototype.$tag = 1;
function $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$Just_One$2$(param0, param1) {
  this._0 = param0;
  this._1 = param1;
}
$64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$Just_One$2$.prototype.$tag = 0;
function $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$2$(param0, param1, param2) {
  this._0 = param0;
  this._1 = param1;
  this._2 = param2;
}
$64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$2$.prototype.$tag = 1;
const $64$moonbitlang$47$core$47$builtin$46$ForeachResult$Continue$4$ = { $tag: 0 };
function $64$moonbitlang$47$core$47$builtin$46$ForeachResult$Break$4$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$builtin$46$ForeachResult$Break$4$.prototype.$tag = 1;
function $64$moonbitlang$47$core$47$builtin$46$ForeachResult$Return$4$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$builtin$46$ForeachResult$Return$4$.prototype.$tag = 2;
function $64$moonbitlang$47$core$47$builtin$46$ForeachResult$Error$4$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$builtin$46$ForeachResult$Error$4$.prototype.$tag = 3;
function $64$moonbitlang$47$core$47$builtin$46$ForeachResult$JumpOuter$4$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$builtin$46$ForeachResult$JumpOuter$4$.prototype.$tag = 4;
const $64$moonbitlang$47$core$47$queue$46$Cell$Nil$5$ = { $tag: 0 };
function $64$moonbitlang$47$core$47$queue$46$Cell$Cons$5$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$queue$46$Cell$Cons$5$.prototype.$tag = 1;
const $64$moonbitlang$47$core$47$queue$46$Cell$Nil$6$ = { $tag: 0 };
function $64$moonbitlang$47$core$47$queue$46$Cell$Cons$6$(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$core$47$queue$46$Cell$Cons$6$.prototype.$tag = 1;
const Option$None$7$ = { $tag: 0 };
function Option$Some$7$(param0) {
  this._0 = param0;
}
Option$Some$7$.prototype.$tag = 1;
const moonbitlang$core$builtin$$JSArray$push = (arr, val) => { arr.push(val); };
const moonbitlang$core$builtin$$JSArray$set_length = (arr, len) => { arr.length = len; };
const moonbitlang$core$builtin$$JSArray$pop = (arr) => arr.pop();
const $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Empty$8$ = { $tag: 0 };
function $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Node$8$(param0, param1, param2, param3, param4) {
  this._0 = param0;
  this._1 = param1;
  this._2 = param2;
  this._3 = param3;
  this._4 = param4;
}
$64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Node$8$.prototype.$tag = 1;
const $64$moonbitlang$47$lex$47$lib$47$automaton$46$Symbol$Eps = { $tag: 0 };
function $64$moonbitlang$47$lex$47$lib$47$automaton$46$Symbol$EChar(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$lex$47$lib$47$automaton$46$Symbol$EChar.prototype.$tag = 1;
function $64$moonbitlang$47$lex$47$lib$47$codegen$47$internal$47$codeblock_parser$46$SubstItemDesc$StartPosOf(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$lex$47$lib$47$codegen$47$internal$47$codeblock_parser$46$SubstItemDesc$StartPosOf.prototype.$tag = 0;
function $64$moonbitlang$47$lex$47$lib$47$codegen$47$internal$47$codeblock_parser$46$SubstItemDesc$EndPosOf(param0) {
  this._0 = param0;
}
$64$moonbitlang$47$lex$47$lib$47$codegen$47$internal$47$codeblock_parser$46$SubstItemDesc$EndPosOf.prototype.$tag = 1;
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
function Result$Err$9$(param0) {
  this._0 = param0;
}
Result$Err$9$.prototype.$tag = 0;
function Result$Ok$9$(param0) {
  this._0 = param0;
}
Result$Ok$9$.prototype.$tag = 1;
function Error$moonbitlang$47$x$47$fs$46$IOError$46$IOError(param0) {
  this._0 = param0;
}
Error$moonbitlang$47$x$47$fs$46$IOError$46$IOError.prototype.$tag = 0;
function Result$Err$10$(param0) {
  this._0 = param0;
}
Result$Err$10$.prototype.$tag = 0;
function Result$Ok$10$(param0) {
  this._0 = param0;
}
Result$Ok$10$.prototype.$tag = 1;
function Result$Err$11$(param0) {
  this._0 = param0;
}
Result$Err$11$.prototype.$tag = 0;
function Result$Ok$11$(param0) {
  this._0 = param0;
}
Result$Ok$11$.prototype.$tag = 1;
function Result$Err$12$(param0) {
  this._0 = param0;
}
Result$Err$12$.prototype.$tag = 0;
function Result$Ok$12$(param0) {
  this._0 = param0;
}
Result$Ok$12$.prototype.$tag = 1;
function Result$Err$13$(param0) {
  this._0 = param0;
}
Result$Err$13$.prototype.$tag = 0;
function Result$Ok$13$(param0) {
  this._0 = param0;
}
Result$Ok$13$.prototype.$tag = 1;
function Result$Err$14$(param0) {
  this._0 = param0;
}
Result$Err$14$.prototype.$tag = 0;
function Result$Ok$14$(param0) {
  this._0 = param0;
}
Result$Ok$14$.prototype.$tag = 1;
const moonbitlang$core$immut$internal$sparse_array$$empty_bitset = 0;
const moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0 = [];
const moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_2 = [-1];
const moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1 = [0];
const moonbitlang$lex$lib$codegen$$runtime = "///|\nstruct Lexbuf {\n  content : String\n  mut pos : Int\n}\n\n///|\npub fn Lexbuf::from_string(content : String) -> Lexbuf {\n  { content, pos: 0 }\n}\n\n// NOTE: MoonBit do have unboxed Option[Char] optimization\n///|\nfn next(self : Lexbuf) -> Char? {\n  if self.pos < self.content.length() {\n    let ch = self.content[self.pos]\n    self.pos += 1\n    Some(ch)\n  } else {\n    None\n  }\n}\n\n///|\nfn substring(self : Lexbuf, start : Int, end : Int) -> String {\n  self.content.substring(start~, end~)\n}\n\n///|\ntypealias LexTagAction = Array[Array[Int]]\n\n///|\ntypealias LexState = Int\n\n///|\ntypealias LexInput = Int\n\n///|\npub(all) struct LexEngine {\n  graph : Array[(LexState) -> (LexState, LexTagAction)]\n  end_nodes : Array[(Int, Array[((Int, Int), (Int, Int))])?]\n  start_tags : Array[Int]\n  code_blocks_n : Int\n}\n\n///|\npub fn run(self : LexEngine, lexbuf : Lexbuf) -> (Int, Array[(Int, Int)]) {\n  let mut state = 1\n  let mut tagState : Array[Array[Int]] = []\n  let backtrace = Array::make(self.code_blocks_n, None)\n  for tag in self.start_tags {\n    while tagState.length() <= tag {\n      tagState.push([])\n    }\n    tagState[tag].push(lexbuf.pos)\n  }\n  while state != 0 {\n    match self.end_nodes[state] {\n      Some(t) => backtrace[t.0] = Some((lexbuf.pos, state, tagState))\n      _ => ()\n    }\n    let b = match lexbuf.next() {\n      Some(b) => b\n      None => '\\x00'\n    }\n    let next = self.graph[state](b.to_int())\n    state = next.0\n    let new_tagState : Array[Array[Int]] = []\n    for i = 0; i < next.1.length(); i = i + 1 {\n      new_tagState.push([])\n      for j = 0; j < next.1[i].length(); j = j + 1 {\n        let t = next.1[i][j]\n        if t == -1 {\n          new_tagState[i].push(lexbuf.pos)\n        } else {\n          new_tagState[i].push(tagState[i][t])\n        }\n      }\n    }\n    tagState = new_tagState\n  }\n  for index, b in backtrace {\n    match b {\n      Some((p, state, tagState)) => {\n        lexbuf.pos = p\n        let captures = self.end_nodes[state].unwrap().1.map(\n          fn {\n            ((b_t, b_r), (e_t, e_r)) => (tagState[b_t][b_r], tagState[e_t][e_r])\n          },\n        )\n        break (index, captures)\n      }\n      None => ()\n    }\n  } else {\n    (self.code_blocks_n, [])\n  }\n}\n";
const moonbitlang$lex$main$$_init$42$46$usage$0$ = "Usage: moonlex [options] <input-file>";
const moonbitlang$lex$lib$parser$$digit_re = new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$CharSet(moonbitlang$lex$lib$util$char_set$$range(48, 57));
const moonbitlang$lex$lib$parser$$hex_digit_re = new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Alter(moonbitlang$lex$lib$parser$$digit_re, new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Alter(new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$CharSet(moonbitlang$lex$lib$util$char_set$$range(97, 102)), new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$CharSet(moonbitlang$lex$lib$util$char_set$$range(65, 70))));
const moonbitlang$lex$lib$parser$$char_re = new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Concat(new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$ReChar(39), new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Alter(new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Concat($64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Underscore, new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$ReChar(39)), new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Concat(new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Concat(new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$ReChar(92), new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Alter(new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Concat(new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$ReChar(120), new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Concat(moonbitlang$lex$lib$parser$$hex_digit_re, moonbitlang$lex$lib$parser$$hex_digit_re)), $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Underscore)), new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$ReChar(39))));
const moonbitlang$lex$lib$parser$$string_re = new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Concat(new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$ReChar(34), new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Concat(new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Option(new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Repetition(new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Alter(new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$ReStr("\\\""), new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$CharSet(moonbitlang$lex$lib$util$char_set$$CharSet$complement(moonbitlang$lex$lib$util$char_set$$singleton(34)))))), new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$ReChar(34)));
const moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_4 = [moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_2, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0];
const moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 = [moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0];
const moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_2 = [moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0];
const moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_5 = [moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_2];
const moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_1 = [moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_2, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0];
const moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_3 = [moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_2, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0];
const moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_6 = [moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_0, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1];
const moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_7 = [moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_2, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_row_1];
const moonbitlang$lex$lib$codegen$internal$codeblock_parser$$__mbtlex_engine_scan_codeblock_rbrace = { graph: [moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_0, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_1, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_2, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_3, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_4, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_5, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_6, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_7, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_8, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_9, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_10, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_11, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_12, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_13, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_14, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_15, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_16, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_17, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_18, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_19, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_20, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_21, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_22, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_23, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_24, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_25, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_26, moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_27], end_nodes: [undefined, { _0: 5, _1: [] }, { _0: 4, _1: [] }, { _0: 0, _1: [] }, { _0: 1, _1: [] }, { _0: 4, _1: [] }, { _0: 3, _1: [] }, { _0: 3, _1: [] }, { _0: 3, _1: [] }, { _0: 3, _1: [] }, { _0: 3, _1: [] }, { _0: 3, _1: [] }, { _0: 3, _1: [] }, { _0: 3, _1: [] }, { _0: 3, _1: [] }, { _0: 3, _1: [] }, { _0: 3, _1: [] }, { _0: 3, _1: [] }, { _0: 3, _1: [] }, { _0: 3, _1: [] }, undefined, { _0: 3, _1: [] }, undefined, undefined, { _0: 3, _1: [] }, undefined, { _0: 2, _1: [{ _0: { _0: 0, _1: 0 }, _1: { _0: 1, _1: 0 } }, { _0: { _0: 2, _1: 0 }, _1: { _0: 3, _1: 0 } }, { _0: { _0: 4, _1: 0 }, _1: { _0: 5, _1: 0 } }] }, undefined], start_tags: [0], code_blocks_n: 6 };
function moonbitlang$core$bytes$$Bytes$from_array(arr) {
  return moonbitlang$core$bytes$$Bytes$makei(arr.length, (i) => moonbitlang$core$array$$Array$op_get$1$(arr, i));
}
function moonbitlang$core$string$$is_leading_surrogate(c) {
  return 55296 <= c && c <= 56319;
}
function moonbitlang$core$string$$is_trailing_surrogate(c) {
  return 56320 <= c && c <= 57343;
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
      moonbitlang$core$builtin$$StringBuilder$write_char(buf, c);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return moonbitlang$core$builtin$$StringBuilder$to_string(buf);
}
function moonbitlang$core$string$$String$concat(strings, separator) {
  const buf = moonbitlang$core$builtin$$StringBuilder$new(moonbitlang$core$builtin$$StringBuilder$new$46$size_hint$46$default());
  if (separator === "") {
    const _len = strings.length;
    let _tmp = 0;
    while (true) {
      const _i = _tmp;
      if (_i < _len) {
        const s = strings[_i];
        moonbitlang$core$builtin$$StringBuilder$write_string(buf, s);
        _tmp = _i + 1 | 0;
        continue;
      } else {
        break;
      }
    }
  } else {
    if (strings.length === 0) {
    } else {
      const _x = moonbitlang$core$array$$Array$op_get$2$(strings, 0);
      const _x$2 = moonbitlang$core$array$$Array$op_as_view$2$(strings, 1, strings.length - 0 | 0);
      moonbitlang$core$builtin$$StringBuilder$write_string(buf, _x);
      const _len = moonbitlang$core$array$$ArrayView$length$2$(_x$2);
      let _tmp = 0;
      while (true) {
        const _i = _tmp;
        if (_i < _len) {
          const s = _x$2.buf[_x$2.start + _i | 0];
          moonbitlang$core$builtin$$StringBuilder$write_string(buf, separator);
          moonbitlang$core$builtin$$StringBuilder$write_string(buf, s);
          _tmp = _i + 1 | 0;
          continue;
        } else {
          break;
        }
      }
    }
  }
  return moonbitlang$core$builtin$$StringBuilder$to_string(buf);
}
function moonbitlang$core$string$$String$compare(self, other) {
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
function moonbitlang$core$string$$String$iter(self) {
  return moonbitlang$core$builtin$$Iter$new$3$((yield_) => {
    const len = self.length;
    let _tmp = 0;
    while (true) {
      const index = _tmp;
      if (index < len) {
        const c1 = self.charCodeAt(index);
        if (moonbitlang$core$string$$is_leading_surrogate(c1) && (index + 1 | 0) < len) {
          const c2 = self.charCodeAt(index + 1 | 0);
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
  const _bind$2 = moonbitlang$core$array$$Array$new$3$(self.length);
  const _acc = { val: _bind$2 };
  _bind((_p) => {
    const rv = _acc.val;
    moonbitlang$core$array$$Array$push$3$(rv, _p);
    _acc.val = rv;
    return 1;
  });
  return _acc.val;
}
function moonbitlang$core$result$$Result$unwrap$4$(self) {
  if (self.$tag === 1) {
    const _Ok = self;
    _Ok._0;
    return;
  } else {
    moonbitlang$core$builtin$$abort$5$("called `Result::unwrap()` on an `Err` value");
    return;
  }
}
function moonbitlang$core$result$$Result$unwrap$6$(self) {
  if (self.$tag === 1) {
    const _Ok = self;
    const _x = _Ok._0;
    return _x;
  } else {
    return moonbitlang$core$builtin$$abort$2$("called `Result::unwrap()` on an `Err` value");
  }
}
function moonbitlang$core$sorted_set$$new$7$() {
  return { root: undefined, size: 0 };
}
function moonbitlang$core$sorted_set$$height$7$(node) {
  if (node === undefined) {
    return 0;
  } else {
    const _Some = node;
    const _x = _Some;
    return _x.height;
  }
}
function moonbitlang$core$sorted_set$$height_ge$7$(x1, x2) {
  if (x2 === undefined) {
    return true;
  } else {
    const _Some = x2;
    const _x = _Some;
    if (x1 === undefined) {
      return false;
    } else {
      const _Some$2 = x1;
      const _x$2 = _Some$2;
      return _x$2.height >= _x.height;
    }
  }
}
function moonbitlang$core$sorted_set$$max(x, y) {
  return x > y ? x : y;
}
function moonbitlang$core$sorted_set$$Node$update_height$7$(self) {
  self.height = 1 + moonbitlang$core$sorted_set$$max(moonbitlang$core$sorted_set$$height$7$(self.left), moonbitlang$core$sorted_set$$height$7$(self.right)) | 0;
}
function moonbitlang$core$sorted_set$$rotate_l$7$(n) {
  const r = moonbitlang$core$option$$Option$unwrap$8$(n.right);
  n.right = r.left;
  r.left = n;
  moonbitlang$core$sorted_set$$Node$update_height$7$(n);
  moonbitlang$core$sorted_set$$Node$update_height$7$(r);
  return r;
}
function moonbitlang$core$sorted_set$$rotate_r$7$(n) {
  const l = moonbitlang$core$option$$Option$unwrap$8$(n.left);
  n.left = l.right;
  l.right = n;
  moonbitlang$core$sorted_set$$Node$update_height$7$(n);
  moonbitlang$core$sorted_set$$Node$update_height$7$(l);
  return l;
}
function moonbitlang$core$sorted_set$$rotate_lr$7$(n) {
  const l = moonbitlang$core$option$$Option$unwrap$8$(n.left);
  const v = moonbitlang$core$sorted_set$$rotate_l$7$(l);
  n.left = v;
  return moonbitlang$core$sorted_set$$rotate_r$7$(n);
}
function moonbitlang$core$sorted_set$$rotate_rl$7$(n) {
  const r = moonbitlang$core$option$$Option$unwrap$8$(n.right);
  const v = moonbitlang$core$sorted_set$$rotate_r$7$(r);
  n.right = v;
  return moonbitlang$core$sorted_set$$rotate_l$7$(n);
}
function moonbitlang$core$sorted_set$$balance$7$(root) {
  const l = root.left;
  const r = root.right;
  const hl = moonbitlang$core$sorted_set$$height$7$(l);
  const hr = moonbitlang$core$sorted_set$$height$7$(r);
  let new_root;
  if (hl > (hr + 1 | 0)) {
    const _bind = moonbitlang$core$option$$Option$unwrap$8$(l);
    const _x = _bind.left;
    const _x$2 = _bind.right;
    new_root = moonbitlang$core$sorted_set$$height_ge$7$(_x, _x$2) ? moonbitlang$core$sorted_set$$rotate_r$7$(root) : moonbitlang$core$sorted_set$$rotate_lr$7$(root);
  } else {
    if (hr > (hl + 1 | 0)) {
      const _bind = moonbitlang$core$option$$Option$unwrap$8$(r);
      const _x = _bind.left;
      const _x$2 = _bind.right;
      new_root = moonbitlang$core$sorted_set$$height_ge$7$(_x$2, _x) ? moonbitlang$core$sorted_set$$rotate_l$7$(root) : moonbitlang$core$sorted_set$$rotate_rl$7$(root);
    } else {
      new_root = root;
    }
  }
  moonbitlang$core$sorted_set$$Node$update_height$7$(new_root);
  return new_root;
}
function moonbitlang$core$sorted_set$$new_node$7$(value, left, right, height) {
  return { value: value, left: left, right: right, height: height };
}
function moonbitlang$core$sorted_set$$new_node$46$left$46$default$7$() {
  return undefined;
}
function moonbitlang$core$sorted_set$$new_node$46$right$46$default$7$() {
  return undefined;
}
function moonbitlang$core$sorted_set$$new_node$46$height$46$default$7$() {
  return 1;
}
function moonbitlang$core$sorted_set$$add_node$7$(root, value) {
  if (root === undefined) {
    return { _0: moonbitlang$core$sorted_set$$new_node$7$(value, moonbitlang$core$sorted_set$$new_node$46$left$46$default$7$(), moonbitlang$core$sorted_set$$new_node$46$right$46$default$7$(), moonbitlang$core$sorted_set$$new_node$46$height$46$default$7$()), _1: true };
  } else {
    const _Some = root;
    const _x = _Some;
    const comp = $compare_int(value, _x.value);
    if (comp === 0) {
      _x.value = value;
      return { _0: _x, _1: false };
    } else {
      const l = _x.left;
      const r = _x.right;
      if (comp < 0) {
        const _bind = moonbitlang$core$sorted_set$$add_node$7$(l, value);
        const _x$2 = _bind._0;
        const _x$3 = _bind._1;
        _x.left = _x$2;
        return { _0: moonbitlang$core$sorted_set$$balance$7$(_x), _1: _x$3 };
      } else {
        const _bind = moonbitlang$core$sorted_set$$add_node$7$(r, value);
        const _x$2 = _bind._0;
        const _x$3 = _bind._1;
        _x.right = _x$2;
        return { _0: moonbitlang$core$sorted_set$$balance$7$(_x), _1: _x$3 };
      }
    }
  }
}
function moonbitlang$core$sorted_set$$T$add$7$(self, value) {
  const _bind = moonbitlang$core$sorted_set$$add_node$7$(self.root, value);
  const _x = _bind._0;
  const _x$2 = _bind._1;
  if (moonbitlang$core$builtin$$op_notequal$9$(self.root, _x)) {
    self.root = _x;
  }
  if (_x$2) {
    self.size = self.size + 1 | 0;
    return;
  } else {
    return;
  }
}
function moonbitlang$core$sorted_set$$T$to_array$7$(self) {
  if (self.size === 0) {
    return [];
  } else {
    const padding = moonbitlang$core$option$$Option$unwrap$8$(self.root).value;
    const arr = moonbitlang$core$array$$Array$make$7$(self.size, padding);
    const i = { val: 0 };
    const _env = { _0: arr, _1: i };
    moonbitlang$core$sorted_set$$to_array$46$dfs$47$111(_env, self.root);
    return arr;
  }
}
function moonbitlang$core$sorted_set$$to_array$46$dfs$47$111(_env, root) {
  const i = _env._1;
  const arr = _env._0;
  if (root === undefined) {
  } else {
    const _Some = root;
    const _x = _Some;
    moonbitlang$core$sorted_set$$to_array$46$dfs$47$111(_env, _x.left);
    moonbitlang$core$array$$Array$op_set$7$(arr, i.val, _x.value);
    i.val = i.val + 1 | 0;
    moonbitlang$core$sorted_set$$to_array$46$dfs$47$111(_env, _x.right);
  }
}
function moonbitlang$core$sorted_set$$from_iter$7$(iter) {
  const s = moonbitlang$core$sorted_set$$new$7$();
  iter((_p) => {
    moonbitlang$core$sorted_set$$T$add$7$(s, _p);
    return 1;
  });
  return s;
}
function moonbitlang$core$sorted_set$$Node$op_equal$7$(self, other) {
  return self.value === other.value;
}
function moonbitlang$core$ref$$new$2$(x) {
  return { val: x };
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
function moonbitlang$core$array$$ArrayView$rev_inplace$2$(self) {
  const mid_len = moonbitlang$core$array$$ArrayView$length$2$(self) / 2 | 0;
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i < mid_len) {
      const j = (moonbitlang$core$array$$ArrayView$length$2$(self) - i | 0) - 1 | 0;
      moonbitlang$core$array$$ArrayView$swap$2$(self, i, j);
      _tmp = i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$choose_pivot$2$(arr) {
  const len = moonbitlang$core$array$$ArrayView$length$2$(arr);
  const swaps = { val: 0 };
  const b = Math.imul(len / 4 | 0, 2) | 0;
  if (len >= 8) {
    const a = Math.imul(len / 4 | 0, 1) | 0;
    const c = Math.imul(len / 4 | 0, 3) | 0;
    const _env = { _0: swaps, _1: arr };
    if (len > 50) {
      moonbitlang$core$array$$choose_pivot$46$sort_3$47$139(_env, a - 1 | 0, a, a + 1 | 0);
      moonbitlang$core$array$$choose_pivot$46$sort_3$47$139(_env, b - 1 | 0, b, b + 1 | 0);
      moonbitlang$core$array$$choose_pivot$46$sort_3$47$139(_env, c - 1 | 0, c, c + 1 | 0);
    }
    moonbitlang$core$array$$choose_pivot$46$sort_3$47$139(_env, a, b, c);
  }
  if (swaps.val === 12) {
    moonbitlang$core$array$$ArrayView$rev_inplace$2$(arr);
    return { _0: (len - b | 0) - 1 | 0, _1: true };
  } else {
    return { _0: b, _1: swaps.val === 0 };
  }
}
function moonbitlang$core$array$$choose_pivot$46$sort_2$47$138(_env, a, b) {
  const arr = _env._1;
  const swaps = _env._0;
  if (moonbitlang$core$builtin$$op_gt$2$(moonbitlang$core$array$$ArrayView$op_get$2$(arr, a), moonbitlang$core$array$$ArrayView$op_get$2$(arr, b))) {
    moonbitlang$core$array$$ArrayView$swap$2$(arr, a, b);
    swaps.val = swaps.val + 1 | 0;
    return;
  } else {
    return;
  }
}
function moonbitlang$core$array$$choose_pivot$46$sort_3$47$139(_env, a, b, c) {
  moonbitlang$core$array$$choose_pivot$46$sort_2$47$138(_env, a, b);
  moonbitlang$core$array$$choose_pivot$46$sort_2$47$138(_env, b, c);
  moonbitlang$core$array$$choose_pivot$46$sort_2$47$138(_env, a, b);
}
function moonbitlang$core$array$$sift_down$2$(arr, index) {
  let index$2 = index;
  const len = moonbitlang$core$array$$ArrayView$length$2$(arr);
  let child = (Math.imul(index$2, 2) | 0) + 1 | 0;
  while (true) {
    if (child < len) {
      if ((child + 1 | 0) < len && moonbitlang$core$builtin$$op_lt$2$(moonbitlang$core$array$$ArrayView$op_get$2$(arr, child), moonbitlang$core$array$$ArrayView$op_get$2$(arr, child + 1 | 0))) {
        child = child + 1 | 0;
      }
      if (moonbitlang$core$builtin$$op_ge$2$(moonbitlang$core$array$$ArrayView$op_get$2$(arr, index$2), moonbitlang$core$array$$ArrayView$op_get$2$(arr, child))) {
        return undefined;
      }
      moonbitlang$core$array$$ArrayView$swap$2$(arr, index$2, child);
      index$2 = child;
      child = (Math.imul(index$2, 2) | 0) + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$heap_sort$2$(arr) {
  const len = moonbitlang$core$array$$ArrayView$length$2$(arr);
  let _tmp = (len / 2 | 0) - 1 | 0;
  while (true) {
    const i = _tmp;
    if (i >= 0) {
      moonbitlang$core$array$$sift_down$2$(arr, i);
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
      moonbitlang$core$array$$ArrayView$swap$2$(arr, 0, i);
      moonbitlang$core$array$$sift_down$2$(moonbitlang$core$array$$ArrayView$op_as_view$2$(arr, 0, i), 0);
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
function moonbitlang$core$array$$partition$2$(arr, pivot_index) {
  moonbitlang$core$array$$ArrayView$swap$2$(arr, pivot_index, moonbitlang$core$array$$ArrayView$length$2$(arr) - 1 | 0);
  const pivot = moonbitlang$core$array$$ArrayView$op_get$2$(arr, moonbitlang$core$array$$ArrayView$length$2$(arr) - 1 | 0);
  let i = 0;
  let partitioned = true;
  let _tmp = 0;
  while (true) {
    const j = _tmp;
    if (j < (moonbitlang$core$array$$ArrayView$length$2$(arr) - 1 | 0)) {
      if (moonbitlang$core$builtin$$op_lt$2$(moonbitlang$core$array$$ArrayView$op_get$2$(arr, j), pivot)) {
        if (i !== j) {
          moonbitlang$core$array$$ArrayView$swap$2$(arr, i, j);
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
  moonbitlang$core$array$$ArrayView$swap$2$(arr, i, moonbitlang$core$array$$ArrayView$length$2$(arr) - 1 | 0);
  return { _0: i, _1: partitioned };
}
function moonbitlang$core$array$$try_bubble_sort$2$(arr) {
  let tries = 0;
  let _tmp = 1;
  while (true) {
    const i = _tmp;
    if (i < moonbitlang$core$array$$ArrayView$length$2$(arr)) {
      let sorted = true;
      let _tmp$2 = i;
      while (true) {
        const j = _tmp$2;
        if (j > 0 && moonbitlang$core$builtin$$op_gt$2$(moonbitlang$core$array$$ArrayView$op_get$2$(arr, j - 1 | 0), moonbitlang$core$array$$ArrayView$op_get$2$(arr, j))) {
          sorted = false;
          moonbitlang$core$array$$ArrayView$swap$2$(arr, j, j - 1 | 0);
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
function moonbitlang$core$array$$ArrayView$insertion_sort$2$(arr) {
  let _tmp = 1;
  while (true) {
    const i = _tmp;
    if (i < moonbitlang$core$array$$ArrayView$length$2$(arr)) {
      let _tmp$2 = i;
      while (true) {
        const j = _tmp$2;
        if (j > 0 && moonbitlang$core$builtin$$op_gt$2$(moonbitlang$core$array$$ArrayView$op_get$2$(arr, j - 1 | 0), moonbitlang$core$array$$ArrayView$op_get$2$(arr, j))) {
          moonbitlang$core$array$$ArrayView$swap$2$(arr, j, j - 1 | 0);
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
function moonbitlang$core$array$$quick_sort$2$(arr, pred, limit) {
  let limit$2 = limit;
  let arr$2 = arr;
  let pred$2 = pred;
  let was_partitioned = true;
  let balanced = true;
  while (true) {
    const len = moonbitlang$core$array$$ArrayView$length$2$(arr$2);
    if (len <= 16) {
      if (len >= 2) {
        moonbitlang$core$array$$ArrayView$insertion_sort$2$(arr$2);
      }
      return undefined;
    }
    if (limit$2 === 0) {
      moonbitlang$core$array$$heap_sort$2$(arr$2);
      return undefined;
    }
    const _bind = moonbitlang$core$array$$choose_pivot$2$(arr$2);
    const _x = _bind._0;
    const _x$2 = _bind._1;
    if (was_partitioned && (balanced && _x$2)) {
      if (moonbitlang$core$array$$try_bubble_sort$2$(arr$2)) {
        return undefined;
      }
    }
    const _bind$2 = moonbitlang$core$array$$partition$2$(arr$2, _x);
    const _x$3 = _bind$2._0;
    const _x$4 = _bind$2._1;
    was_partitioned = _x$4;
    balanced = moonbitlang$core$array$$minimum(_x$3, len - _x$3 | 0) >= (len / 8 | 0);
    if (!balanced) {
      limit$2 = limit$2 - 1 | 0;
    }
    const _bind$3 = pred$2;
    if (_bind$3 === undefined) {
    } else {
      const _Some = _bind$3;
      const _x$5 = _Some;
      if (_x$5 === moonbitlang$core$array$$ArrayView$op_get$2$(arr$2, _x$3)) {
        let i = _x$3;
        while (true) {
          if (i < len && _x$5 === moonbitlang$core$array$$ArrayView$op_get$2$(arr$2, i)) {
            i = i + 1 | 0;
            continue;
          } else {
            break;
          }
        }
        arr$2 = moonbitlang$core$array$$ArrayView$op_as_view$2$(arr$2, i, len);
        continue;
      }
    }
    const left = moonbitlang$core$array$$ArrayView$op_as_view$2$(arr$2, 0, _x$3);
    const right = moonbitlang$core$array$$ArrayView$op_as_view$2$(arr$2, _x$3 + 1 | 0, len);
    if (moonbitlang$core$array$$ArrayView$length$2$(left) < moonbitlang$core$array$$ArrayView$length$2$(right)) {
      moonbitlang$core$array$$quick_sort$2$(left, pred$2, limit$2);
      pred$2 = moonbitlang$core$array$$ArrayView$op_get$2$(arr$2, _x$3);
      arr$2 = right;
    } else {
      moonbitlang$core$array$$quick_sort$2$(right, moonbitlang$core$array$$ArrayView$op_get$2$(arr$2, _x$3), limit$2);
      arr$2 = left;
    }
    continue;
  }
}
function moonbitlang$core$array$$Array$sort$2$(self) {
  const len = self.length;
  moonbitlang$core$array$$quick_sort$2$(moonbitlang$core$array$$Array$op_as_view$2$(self, moonbitlang$core$array$$Array$op_as_view$46$start$46$default$2$(), len), undefined, moonbitlang$core$array$$get_limit(len));
}
function moonbitlang$core$array$$Array$makei$10$(length, value) {
  if (length <= 0) {
    return [];
  } else {
    const array = moonbitlang$core$array$$Array$make$10$(length, value(0));
    let _tmp = 1;
    while (true) {
      const i = _tmp;
      if (i < length) {
        moonbitlang$core$array$$Array$op_set$10$(array, i, value(i));
        _tmp = i + 1 | 0;
        continue;
      } else {
        break;
      }
    }
    return array;
  }
}
function moonbitlang$core$array$$Array$makei$11$(length, value) {
  if (length <= 0) {
    return [];
  } else {
    const array = moonbitlang$core$array$$Array$make$11$(length, value(0));
    let _tmp = 1;
    while (true) {
      const i = _tmp;
      if (i < length) {
        moonbitlang$core$array$$Array$op_set$11$(array, i, value(i));
        _tmp = i + 1 | 0;
        continue;
      } else {
        break;
      }
    }
    return array;
  }
}
function moonbitlang$core$array$$Array$makei$2$(length, value) {
  if (length <= 0) {
    return [];
  } else {
    const array = moonbitlang$core$array$$Array$make$2$(length, value(0));
    let _tmp = 1;
    while (true) {
      const i = _tmp;
      if (i < length) {
        moonbitlang$core$array$$Array$op_set$2$(array, i, value(i));
        _tmp = i + 1 | 0;
        continue;
      } else {
        break;
      }
    }
    return array;
  }
}
function moonbitlang$core$array$$Array$makei$12$(length, value) {
  if (length <= 0) {
    return [];
  } else {
    const array = moonbitlang$core$array$$Array$make$12$(length, value(0));
    let _tmp = 1;
    while (true) {
      const i = _tmp;
      if (i < length) {
        moonbitlang$core$array$$Array$op_set$12$(array, i, value(i));
        _tmp = i + 1 | 0;
        continue;
      } else {
        break;
      }
    }
    return array;
  }
}
function moonbitlang$core$array$$FixedArray$copy$11$(self) {
  const len = self.length;
  if (len === 0) {
    return [];
  } else {
    const arr = $make_array_len_and_init(len, self[0]);
    moonbitlang$core$array$$FixedArray$unsafe_blit$11$(arr, 0, self, 0, len);
    return arr;
  }
}
function moonbitlang$core$array$$FixedArray$copy$13$(self) {
  const len = self.length;
  if (len === 0) {
    return [];
  } else {
    const arr = $make_array_len_and_init(len, self[0]);
    moonbitlang$core$array$$FixedArray$unsafe_blit$13$(arr, 0, self, 0, len);
    return arr;
  }
}
function moonbitlang$core$array$$FixedArray$copy$7$(self) {
  const len = self.length;
  if (len === 0) {
    return [];
  } else {
    const arr = $make_array_len_and_init(len, self[0]);
    moonbitlang$core$array$$FixedArray$unsafe_blit$7$(arr, 0, self, 0, len);
    return arr;
  }
}
function moonbitlang$core$array$$Array$copy$14$(self) {
  return moonbitlang$core$array$$JSArray$copy(self);
}
function moonbitlang$core$array$$FixedArray$makei$7$(length, value) {
  if (length <= 0) {
    return [];
  } else {
    const array = $make_array_len_and_init(length, value(0));
    let _tmp = 1;
    while (true) {
      const i = _tmp;
      if (i < length) {
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
function moonbitlang$core$array$$FixedArray$op_equal$7$(self, that) {
  if (self.length !== that.length) {
    return false;
  }
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i < self.length) {
      if (self[i] !== that[i]) {
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
function moonbitlang$core$array$$Array$push_iter$15$(self, iter) {
  iter((x) => {
    moonbitlang$core$array$$Array$push$15$(self, x);
    return 1;
  });
}
function moonbitlang$core$builtin$$Hash$hash$3$(self) {
  return self;
}
function moonbitlang$core$builtin$$Hash$hash_combine$3$(self, hasher) {
  moonbitlang$core$builtin$$Hasher$combine_char(hasher, self);
}
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
function moonbitlang$core$immut$internal$sparse_array$$singleton$11$(idx, value) {
  return { elem_info: moonbitlang$core$immut$internal$sparse_array$$Bitset$add(moonbitlang$core$immut$internal$sparse_array$$empty_bitset, idx), data: [value] };
}
function moonbitlang$core$immut$internal$sparse_array$$singleton$13$(idx, value) {
  return { elem_info: moonbitlang$core$immut$internal$sparse_array$$Bitset$add(moonbitlang$core$immut$internal$sparse_array$$empty_bitset, idx), data: [value] };
}
function moonbitlang$core$immut$internal$sparse_array$$SparseArray$op_get$11$(self, idx) {
  return moonbitlang$core$immut$internal$sparse_array$$Bitset$has(self.elem_info, idx) ? self.data[moonbitlang$core$immut$internal$sparse_array$$Bitset$index_of(self.elem_info, idx)] : undefined;
}
function moonbitlang$core$immut$internal$sparse_array$$SparseArray$op_get$13$(self, idx) {
  return moonbitlang$core$immut$internal$sparse_array$$Bitset$has(self.elem_info, idx) ? self.data[moonbitlang$core$immut$internal$sparse_array$$Bitset$index_of(self.elem_info, idx)] : undefined;
}
function moonbitlang$core$immut$internal$sparse_array$$SparseArray$add$11$(self, idx, value) {
  const old_data = self.data;
  const old_len = old_data.length;
  const new_len = old_len + 1 | 0;
  const pos_of_new_item = moonbitlang$core$immut$internal$sparse_array$$Bitset$index_of(self.elem_info, idx);
  const new_data = $make_array_len_and_init(new_len, value);
  moonbitlang$core$array$$FixedArray$blit_to$11$(old_data, new_data, pos_of_new_item, moonbitlang$core$array$$FixedArray$blit_to$46$src_offset$46$default$11$(), moonbitlang$core$array$$FixedArray$blit_to$46$dst_offset$46$default$11$());
  moonbitlang$core$array$$FixedArray$blit_to$11$(old_data, new_data, old_len - pos_of_new_item | 0, pos_of_new_item, pos_of_new_item + 1 | 0);
  return { elem_info: moonbitlang$core$immut$internal$sparse_array$$Bitset$add(self.elem_info, idx), data: new_data };
}
function moonbitlang$core$immut$internal$sparse_array$$SparseArray$add$13$(self, idx, value) {
  const old_data = self.data;
  const old_len = old_data.length;
  const new_len = old_len + 1 | 0;
  const pos_of_new_item = moonbitlang$core$immut$internal$sparse_array$$Bitset$index_of(self.elem_info, idx);
  const new_data = $make_array_len_and_init(new_len, value);
  moonbitlang$core$array$$FixedArray$blit_to$13$(old_data, new_data, pos_of_new_item, moonbitlang$core$array$$FixedArray$blit_to$46$src_offset$46$default$13$(), moonbitlang$core$array$$FixedArray$blit_to$46$dst_offset$46$default$13$());
  moonbitlang$core$array$$FixedArray$blit_to$13$(old_data, new_data, old_len - pos_of_new_item | 0, pos_of_new_item, pos_of_new_item + 1 | 0);
  return { elem_info: moonbitlang$core$immut$internal$sparse_array$$Bitset$add(self.elem_info, idx), data: new_data };
}
function moonbitlang$core$immut$internal$sparse_array$$SparseArray$replace$11$(self, idx, value) {
  const new_data = moonbitlang$core$array$$FixedArray$copy$11$(self.data);
  new_data[moonbitlang$core$immut$internal$sparse_array$$Bitset$index_of(self.elem_info, idx)] = value;
  return { elem_info: self.elem_info, data: new_data };
}
function moonbitlang$core$immut$internal$sparse_array$$SparseArray$replace$13$(self, idx, value) {
  const new_data = moonbitlang$core$array$$FixedArray$copy$13$(self.data);
  new_data[moonbitlang$core$immut$internal$sparse_array$$Bitset$index_of(self.elem_info, idx)] = value;
  return { elem_info: self.elem_info, data: new_data };
}
function moonbitlang$core$immut$internal$sparse_array$$SparseArray$each$13$(self, f) {
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i < moonbitlang$core$immut$internal$sparse_array$$Bitset$size(self.elem_info)) {
      f(self.data[i]);
      _tmp = i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$immut$sorted_map$$T$size$16$(self) {
  if (self.$tag === 0) {
    return 0;
  } else {
    const _Tree = self;
    return _Tree._2;
  }
}
function moonbitlang$core$immut$sorted_map$$make_tree$16$(key, value, l, r) {
  const size = (moonbitlang$core$immut$sorted_map$$T$size$16$(l) + moonbitlang$core$immut$sorted_map$$T$size$16$(r) | 0) + 1 | 0;
  return new $64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Tree$0$(key, value, size, l, r);
}
function moonbitlang$core$immut$sorted_map$$balance$16$(key, value, l, r) {
  const ln = moonbitlang$core$immut$sorted_map$$T$size$16$(l);
  const rn = moonbitlang$core$immut$sorted_map$$T$size$16$(r);
  if ((ln + rn | 0) < 2) {
    return moonbitlang$core$immut$sorted_map$$make_tree$16$(key, value, l, r);
  } else {
    if (rn > (Math.imul(5, ln) | 0)) {
      if (r.$tag === 1) {
        const _Tree = r;
        const _x = _Tree._3;
        const _x$2 = _Tree._4;
        const rln = moonbitlang$core$immut$sorted_map$$T$size$16$(_x);
        const rrn = moonbitlang$core$immut$sorted_map$$T$size$16$(_x$2);
        if (rln < rrn) {
          if (r.$tag === 1) {
            const _Tree$2 = r;
            const _x$3 = _Tree$2._0;
            const _x$4 = _Tree$2._1;
            const _x$5 = _Tree$2._3;
            const _x$6 = _Tree$2._4;
            return moonbitlang$core$immut$sorted_map$$make_tree$16$(_x$3, _x$4, moonbitlang$core$immut$sorted_map$$make_tree$16$(key, value, l, _x$5), _x$6);
          } else {
            return $panic();
          }
        } else {
          _L: {
            if (r.$tag === 1) {
              const _Tree$2 = r;
              const _x$3 = _Tree$2._0;
              const _x$4 = _Tree$2._1;
              const _x$5 = _Tree$2._3;
              if (_x$5.$tag === 1) {
                const _Tree$3 = _x$5;
                const _x$6 = _Tree$3._0;
                const _x$7 = _Tree$3._1;
                const _x$8 = _Tree$3._3;
                const _x$9 = _Tree$3._4;
                const _x$10 = _Tree$2._4;
                return moonbitlang$core$immut$sorted_map$$make_tree$16$(_x$6, _x$7, moonbitlang$core$immut$sorted_map$$make_tree$16$(key, value, l, _x$8), moonbitlang$core$immut$sorted_map$$make_tree$16$(_x$3, _x$4, _x$9, _x$10));
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
          const _x = _Tree._3;
          const _x$2 = _Tree._4;
          const lln = moonbitlang$core$immut$sorted_map$$T$size$16$(_x);
          const lrn = moonbitlang$core$immut$sorted_map$$T$size$16$(_x$2);
          if (lrn < lln) {
            if (l.$tag === 1) {
              const _Tree$2 = l;
              const _x$3 = _Tree$2._0;
              const _x$4 = _Tree$2._1;
              const _x$5 = _Tree$2._3;
              const _x$6 = _Tree$2._4;
              return moonbitlang$core$immut$sorted_map$$make_tree$16$(_x$3, _x$4, _x$5, moonbitlang$core$immut$sorted_map$$make_tree$16$(key, value, _x$6, r));
            } else {
              return $panic();
            }
          } else {
            _L: {
              if (l.$tag === 1) {
                const _Tree$2 = l;
                const _x$3 = _Tree$2._0;
                const _x$4 = _Tree$2._1;
                const _x$5 = _Tree$2._3;
                const _x$6 = _Tree$2._4;
                if (_x$6.$tag === 1) {
                  const _Tree$3 = _x$6;
                  const _x$7 = _Tree$3._0;
                  const _x$8 = _Tree$3._1;
                  const _x$9 = _Tree$3._3;
                  const _x$10 = _Tree$3._4;
                  return moonbitlang$core$immut$sorted_map$$make_tree$16$(_x$7, _x$8, moonbitlang$core$immut$sorted_map$$make_tree$16$(_x$3, _x$4, _x$5, _x$9), moonbitlang$core$immut$sorted_map$$make_tree$16$(key, value, _x$10, r));
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
        return moonbitlang$core$immut$sorted_map$$make_tree$16$(key, value, l, r);
      }
    }
  }
}
function moonbitlang$core$immut$sorted_map$$singleton$16$(key, value) {
  return new $64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Tree$0$(key, value, 1, $64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Empty$0$, $64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Empty$0$);
}
function moonbitlang$core$immut$sorted_map$$T$add$16$(self, key, value) {
  if (self.$tag === 0) {
    return moonbitlang$core$immut$sorted_map$$singleton$16$(key, value);
  } else {
    const _Tree = self;
    const _x = _Tree._0;
    const _x$2 = _Tree._1;
    const _x$3 = _Tree._3;
    const _x$4 = _Tree._4;
    const c = $compare_int(key, _x);
    return c === 0 ? moonbitlang$core$immut$sorted_map$$make_tree$16$(_x, value, _x$3, _x$4) : c < 0 ? moonbitlang$core$immut$sorted_map$$balance$16$(_x, _x$2, moonbitlang$core$immut$sorted_map$$T$add$16$(_x$3, key, value), _x$4) : moonbitlang$core$immut$sorted_map$$balance$16$(_x, _x$2, _x$3, moonbitlang$core$immut$sorted_map$$T$add$16$(_x$4, key, value));
  }
}
function moonbitlang$core$immut$sorted_map$$new$16$() {
  return $64$moonbitlang$47$core$47$immut$47$sorted_map$46$T$Empty$0$;
}
function moonbitlang$core$immut$sorted_map$$T$lookup$16$(self, key) {
  let _tmp = self;
  while (true) {
    const _param = _tmp;
    if (_param.$tag === 0) {
      return undefined;
    } else {
      const _Tree = _param;
      const _x = _Tree._0;
      const _x$2 = _Tree._1;
      const _x$3 = _Tree._3;
      const _x$4 = _Tree._4;
      const c = $compare_int(key, _x);
      if (c === 0) {
        return _x$2;
      } else {
        if (c < 0) {
          _tmp = _x$3;
          continue;
        } else {
          _tmp = _x$4;
          continue;
        }
      }
    }
  }
}
function moonbitlang$core$immut$sorted_map$$T$op_get$16$(self, key) {
  return moonbitlang$core$immut$sorted_map$$T$lookup$16$(self, key);
}
function moonbitlang$core$immut$hashmap$$new$17$() {
  return $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Empty$1$;
}
function moonbitlang$core$immut$hashmap$$new$18$() {
  return $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Empty$2$;
}
function moonbitlang$core$immut$hashmap$$Bucket$find$18$(self, key) {
  let _tmp = self;
  let _tmp$2 = key;
  while (true) {
    const self$2 = _tmp;
    const key$2 = _tmp$2;
    if (self$2.$tag === 0) {
      const _Just_One = self$2;
      const _x = _Just_One._0;
      const _x$2 = _Just_One._1;
      return key$2 === _x ? new Option$Some$3$(_x$2) : Option$None$3$;
    } else {
      const _More = self$2;
      const _x = _More._0;
      const _x$2 = _More._1;
      const _x$3 = _More._2;
      if (key$2 === _x) {
        return new Option$Some$3$(_x$2);
      } else {
        _tmp = _x$3;
        continue;
      }
    }
  }
}
function moonbitlang$core$immut$hashmap$$T$find$18$(self, key) {
  let _tmp = self;
  let _tmp$2 = moonbitlang$core$builtin$$Hash$hash$7$(key);
  _L: while (true) {
    const _param = _tmp;
    const _param$2 = _tmp$2;
    switch (_param.$tag) {
      case 0: {
        return Option$None$3$;
      }
      case 1: {
        const _Leaf = _param;
        const _x = _Leaf._0;
        const _x$2 = _Leaf._1;
        return key === _x ? new Option$Some$3$(_x$2) : Option$None$3$;
      }
      case 2: {
        const _Collision = _param;
        const _x$3 = _Collision._0;
        return moonbitlang$core$immut$hashmap$$Bucket$find$18$(_x$3, key);
      }
      default: {
        const _Branch = _param;
        const _x$4 = _Branch._0;
        const idx = _param$2 & 31;
        if (moonbitlang$core$immut$internal$sparse_array$$Bitset$has(_x$4.elem_info, idx)) {
          const child = _x$4.data[moonbitlang$core$immut$internal$sparse_array$$Bitset$index_of(_x$4.elem_info, idx)];
          const _tmp$3 = _param$2 >>> 5 | 0;
          _tmp = child;
          _tmp$2 = _tmp$3;
          continue _L;
        }
        return Option$None$3$;
      }
    }
  }
}
function moonbitlang$core$immut$hashmap$$T$op_get$18$(self, key) {
  return moonbitlang$core$immut$hashmap$$T$find$18$(self, key);
}
function moonbitlang$core$immut$hashmap$$Bucket$add$17$(self, key, value) {
  if (self.$tag === 0) {
    const _Just_One = self;
    const _x = _Just_One._0;
    return key === _x ? new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$Just_One$1$(key, value) : new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$1$(key, value, self);
  } else {
    const _More = self;
    const _x = _More._0;
    const _x$2 = _More._1;
    const _x$3 = _More._2;
    return key === _x ? new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$1$(key, value, _x$3) : new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$1$(_x, _x$2, moonbitlang$core$immut$hashmap$$Bucket$add$17$(_x$3, key, value));
  }
}
function moonbitlang$core$immut$hashmap$$Bucket$add$18$(self, key, value) {
  if (self.$tag === 0) {
    const _Just_One = self;
    const _x = _Just_One._0;
    return key === _x ? new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$Just_One$2$(key, value) : new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$2$(key, value, self);
  } else {
    const _More = self;
    const _x = _More._0;
    const _x$2 = _More._1;
    const _x$3 = _More._2;
    return key === _x ? new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$2$(key, value, _x$3) : new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$2$(_x, _x$2, moonbitlang$core$immut$hashmap$$Bucket$add$18$(_x$3, key, value));
  }
}
function moonbitlang$core$immut$hashmap$$T$add_with_hash$17$(self, key, depth, hash, value) {
  switch (self.$tag) {
    case 0: {
      return moonbitlang$core$immut$hashmap$$add_with_hash$46$make_leaf$47$426(depth, key, hash, value);
    }
    case 1: {
      const _Leaf = self;
      const _x = _Leaf._0;
      const _x$2 = _Leaf._1;
      return key === _x ? new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Leaf$1$(key, value) : new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Collision$1$(new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$1$(key, value, new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$Just_One$1$(_x, _x$2)));
    }
    case 2: {
      const _Collision = self;
      const _x$3 = _Collision._0;
      return new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Collision$1$(moonbitlang$core$immut$hashmap$$Bucket$add$17$(_x$3, key, value));
    }
    default: {
      const _Branch = self;
      const _x$4 = _Branch._0;
      const idx = hash & 31;
      const _bind = moonbitlang$core$immut$internal$sparse_array$$SparseArray$op_get$11$(_x$4, idx);
      if (_bind === undefined) {
        const child = moonbitlang$core$immut$hashmap$$add_with_hash$46$make_leaf$47$426(depth + 5 | 0, key, hash >>> 5 | 0, value);
        return new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Branch$1$(moonbitlang$core$immut$internal$sparse_array$$SparseArray$add$11$(_x$4, idx, child));
      } else {
        const _Some = _bind;
        const _x$5 = _Some;
        const child = moonbitlang$core$immut$hashmap$$T$add_with_hash$17$(_x$5, key, depth + 5 | 0, hash >>> 5 | 0, value);
        return new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Branch$1$(moonbitlang$core$immut$internal$sparse_array$$SparseArray$replace$11$(_x$4, idx, child));
      }
    }
  }
}
function moonbitlang$core$immut$hashmap$$add_with_hash$46$make_leaf$47$426(depth, key, hash, value) {
  if (depth >= 32) {
    return new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Leaf$1$(key, value);
  } else {
    const idx = hash & 31;
    const child = moonbitlang$core$immut$hashmap$$add_with_hash$46$make_leaf$47$426(depth + 5 | 0, key, hash >>> 5 | 0, value);
    return new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Branch$1$(moonbitlang$core$immut$internal$sparse_array$$singleton$11$(idx, child));
  }
}
function moonbitlang$core$immut$hashmap$$T$add_with_hash$18$(self, key, depth, hash, value) {
  switch (self.$tag) {
    case 0: {
      return moonbitlang$core$immut$hashmap$$add_with_hash$46$make_leaf$47$451(depth, key, hash, value);
    }
    case 1: {
      const _Leaf = self;
      const _x = _Leaf._0;
      const _x$2 = _Leaf._1;
      return key === _x ? new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Leaf$2$(key, value) : new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Collision$2$(new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$More$2$(key, value, new $64$moonbitlang$47$core$47$immut$47$hashmap$46$Bucket$Just_One$2$(_x, _x$2)));
    }
    case 2: {
      const _Collision = self;
      const _x$3 = _Collision._0;
      return new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Collision$2$(moonbitlang$core$immut$hashmap$$Bucket$add$18$(_x$3, key, value));
    }
    default: {
      const _Branch = self;
      const _x$4 = _Branch._0;
      const idx = hash & 31;
      const _bind = moonbitlang$core$immut$internal$sparse_array$$SparseArray$op_get$13$(_x$4, idx);
      if (_bind === undefined) {
        const child = moonbitlang$core$immut$hashmap$$add_with_hash$46$make_leaf$47$451(depth + 5 | 0, key, hash >>> 5 | 0, value);
        return new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Branch$2$(moonbitlang$core$immut$internal$sparse_array$$SparseArray$add$13$(_x$4, idx, child));
      } else {
        const _Some = _bind;
        const _x$5 = _Some;
        const child = moonbitlang$core$immut$hashmap$$T$add_with_hash$18$(_x$5, key, depth + 5 | 0, hash >>> 5 | 0, value);
        return new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Branch$2$(moonbitlang$core$immut$internal$sparse_array$$SparseArray$replace$13$(_x$4, idx, child));
      }
    }
  }
}
function moonbitlang$core$immut$hashmap$$add_with_hash$46$make_leaf$47$451(depth, key, hash, value) {
  if (depth >= 32) {
    return new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Leaf$2$(key, value);
  } else {
    const idx = hash & 31;
    const child = moonbitlang$core$immut$hashmap$$add_with_hash$46$make_leaf$47$451(depth + 5 | 0, key, hash >>> 5 | 0, value);
    return new $64$moonbitlang$47$core$47$immut$47$hashmap$46$T$Branch$2$(moonbitlang$core$immut$internal$sparse_array$$singleton$13$(idx, child));
  }
}
function moonbitlang$core$immut$hashmap$$T$add$17$(self, key, value) {
  return moonbitlang$core$immut$hashmap$$T$add_with_hash$17$(self, key, 0, moonbitlang$core$builtin$$Hash$hash$7$(key), value);
}
function moonbitlang$core$immut$hashmap$$T$add$18$(self, key, value) {
  return moonbitlang$core$immut$hashmap$$T$add_with_hash$18$(self, key, 0, moonbitlang$core$builtin$$Hash$hash$7$(key), value);
}
function moonbitlang$core$immut$hashmap$$Bucket$size$18$(self) {
  let _tmp = self;
  let _tmp$2 = 1;
  while (true) {
    const _param = _tmp;
    const _param$2 = _tmp$2;
    if (_param.$tag === 0) {
      return _param$2;
    } else {
      const _More = _param;
      const _x = _More._2;
      const _tmp$3 = _param$2 + 1 | 0;
      _tmp = _x;
      _tmp$2 = _tmp$3;
      continue;
    }
  }
}
function moonbitlang$core$immut$hashmap$$T$size$18$(self) {
  switch (self.$tag) {
    case 0: {
      return 0;
    }
    case 1: {
      return 1;
    }
    case 2: {
      const _Collision = self;
      const _x = _Collision._0;
      return moonbitlang$core$immut$hashmap$$Bucket$size$18$(_x);
    }
    default: {
      const _Branch = self;
      const _x$2 = _Branch._0;
      let _tmp = 0;
      let _tmp$2 = 0;
      while (true) {
        const i = _tmp;
        const total_size = _tmp$2;
        if (i < _x$2.data.length) {
          const _tmp$3 = i + 1 | 0;
          const _tmp$4 = total_size + moonbitlang$core$immut$hashmap$$T$size$18$(_x$2.data[i]) | 0;
          _tmp = _tmp$3;
          _tmp$2 = _tmp$4;
          continue;
        } else {
          return total_size;
        }
      }
    }
  }
}
function moonbitlang$core$immut$hashmap$$Bucket$each$18$(self, f) {
  let _tmp = self;
  while (true) {
    const _param = _tmp;
    if (_param.$tag === 0) {
      const _Just_One = _param;
      const _x = _Just_One._0;
      const _x$2 = _Just_One._1;
      f(_x, _x$2);
      return;
    } else {
      const _More = _param;
      const _x = _More._0;
      const _x$2 = _More._1;
      const _x$3 = _More._2;
      f(_x, _x$2);
      _tmp = _x$3;
      continue;
    }
  }
}
function moonbitlang$core$immut$hashmap$$T$each$18$(self, f) {
  switch (self.$tag) {
    case 0: {
      return;
    }
    case 1: {
      const _Leaf = self;
      const _x = _Leaf._0;
      const _x$2 = _Leaf._1;
      f(_x, _x$2);
      return;
    }
    case 2: {
      const _Collision = self;
      const _x$3 = _Collision._0;
      moonbitlang$core$immut$hashmap$$Bucket$each$18$(_x$3, f);
      return;
    }
    default: {
      const _Branch = self;
      const _x$4 = _Branch._0;
      moonbitlang$core$immut$internal$sparse_array$$SparseArray$each$13$(_x$4, (child) => {
        moonbitlang$core$immut$hashmap$$T$each$18$(child, f);
      });
      return;
    }
  }
}
function moonbitlang$core$immut$hashmap$$Bucket$iter$17$(self) {
  return moonbitlang$core$builtin$$Iter$new$19$((f) => {
    let _tmp = self;
    while (true) {
      const _param = _tmp;
      if (_param.$tag === 0) {
        const _Just_One = _param;
        const _x = _Just_One._0;
        const _x$2 = _Just_One._1;
        return f({ _0: _x, _1: _x$2 });
      } else {
        const _More = _param;
        const _x = _More._0;
        const _x$2 = _More._1;
        const _x$3 = _More._2;
        if (moonbitlang$core$builtin$$Eq$op_equal$20$(f({ _0: _x, _1: _x$2 }), 1)) {
          _tmp = _x$3;
          continue;
        } else {
          return 0;
        }
      }
    }
  });
}
function moonbitlang$core$immut$hashmap$$Bucket$iter$18$(self) {
  return moonbitlang$core$builtin$$Iter$new$21$((f) => {
    let _tmp = self;
    while (true) {
      const _param = _tmp;
      if (_param.$tag === 0) {
        const _Just_One = _param;
        const _x = _Just_One._0;
        const _x$2 = _Just_One._1;
        return f({ _0: _x, _1: _x$2 });
      } else {
        const _More = _param;
        const _x = _More._0;
        const _x$2 = _More._1;
        const _x$3 = _More._2;
        if (moonbitlang$core$builtin$$Eq$op_equal$20$(f({ _0: _x, _1: _x$2 }), 1)) {
          _tmp = _x$3;
          continue;
        } else {
          return 0;
        }
      }
    }
  });
}
function moonbitlang$core$immut$hashmap$$T$iter$18$(self) {
  switch (self.$tag) {
    case 0: {
      return moonbitlang$core$builtin$$Iter$empty$21$();
    }
    case 1: {
      const _Leaf = self;
      const _x = _Leaf._0;
      const _x$2 = _Leaf._1;
      return moonbitlang$core$builtin$$Iter$singleton$21$({ _0: _x, _1: _x$2 });
    }
    case 2: {
      const _Collision = self;
      const _x$3 = _Collision._0;
      return moonbitlang$core$immut$hashmap$$Bucket$iter$18$(_x$3);
    }
    default: {
      const _Branch = self;
      const _x$4 = _Branch._0;
      const _bind = _x$4.data;
      return (_p) => {
        const _len = _bind.length;
        let _tmp = 0;
        while (true) {
          const _i = _tmp;
          if (_i < _len) {
            const _p$2 = _bind[_i];
            const _func = moonbitlang$core$immut$hashmap$$T$iter$18$(_p$2);
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
function moonbitlang$core$immut$hashmap$$T$iter$17$(self) {
  switch (self.$tag) {
    case 0: {
      return moonbitlang$core$builtin$$Iter$empty$19$();
    }
    case 1: {
      const _Leaf = self;
      const _x = _Leaf._0;
      const _x$2 = _Leaf._1;
      return moonbitlang$core$builtin$$Iter$singleton$19$({ _0: _x, _1: _x$2 });
    }
    case 2: {
      const _Collision = self;
      const _x$3 = _Collision._0;
      return moonbitlang$core$immut$hashmap$$Bucket$iter$17$(_x$3);
    }
    default: {
      const _Branch = self;
      const _x$4 = _Branch._0;
      const _bind = _x$4.data;
      return (_p) => {
        const _len = _bind.length;
        let _tmp = 0;
        while (true) {
          const _i = _tmp;
          if (_i < _len) {
            const _p$2 = _bind[_i];
            const _func = moonbitlang$core$immut$hashmap$$T$iter$17$(_p$2);
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
function moonbitlang$core$immut$hashmap$$from_iter$17$(iter) {
  const _bind = moonbitlang$core$immut$hashmap$$new$17$();
  const _acc = { val: _bind };
  iter((_p) => {
    const m = _acc.val;
    _acc.val = moonbitlang$core$immut$hashmap$$T$add$17$(m, _p._0, _p._1);
    return 1;
  });
  return _acc.val;
}
function moonbitlang$core$immut$hashmap$$from_iter$18$(iter) {
  const _bind = moonbitlang$core$immut$hashmap$$new$18$();
  const _acc = { val: _bind };
  iter((_p) => {
    const m = _acc.val;
    _acc.val = moonbitlang$core$immut$hashmap$$T$add$18$(m, _p._0, _p._1);
    return 1;
  });
  return _acc.val;
}
function moonbitlang$core$builtin$$Eq$op_equal$22$(self, other) {
  if (moonbitlang$core$immut$hashmap$$T$size$18$(self) !== moonbitlang$core$immut$hashmap$$T$size$18$(other)) {
    return false;
  }
  const _foreach_result = { val: $64$moonbitlang$47$core$47$builtin$46$ForeachResult$Continue$4$ };
  const _bind = moonbitlang$core$immut$hashmap$$T$iter$18$(self);
  _bind((kv) => {
    const _bind$2 = moonbitlang$core$immut$hashmap$$T$find$18$(other, kv._0);
    if (_bind$2.$tag === 1) {
      const _Some = _bind$2;
      const _x = _Some._0;
      if (moonbitlang$core$builtin$$op_notequal$23$(_x, kv._1)) {
        _foreach_result.val = new $64$moonbitlang$47$core$47$builtin$46$ForeachResult$Break$4$(false);
        return 0;
      }
    } else {
      _foreach_result.val = new $64$moonbitlang$47$core$47$builtin$46$ForeachResult$Break$4$(false);
      return 0;
    }
    return 1;
  });
  const _tmp = _foreach_result.val;
  switch (_tmp.$tag) {
    case 0: {
      return true;
    }
    case 1: {
      const _break = _tmp;
      return _break._0;
    }
    case 2: {
      const _return = _tmp;
      return _return._0;
    }
    case 3: {
      return $panic();
    }
    default: {
      return $panic();
    }
  }
}
function moonbitlang$core$builtin$$Hash$hash_combine$22$(self, hasher) {
  moonbitlang$core$immut$hashmap$$T$each$18$(self, (k, v) => {
    moonbitlang$core$builtin$$Hasher$combine$7$(hasher, k);
    moonbitlang$core$builtin$$Hasher$combine$23$(hasher, v);
  });
}
function moonbitlang$core$option$$when$24$(condition, value) {
  return condition ? value() : undefined;
}
function moonbitlang$core$option$$Option$map$25$(self, f) {
  if (self === undefined) {
    return undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    return f(_x);
  }
}
function moonbitlang$core$option$$Option$map$26$(self, f) {
  if (self === undefined) {
    return undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    return f(_x);
  }
}
function moonbitlang$core$option$$Option$map$27$(self, f) {
  if (self === undefined) {
    return undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    return f(_x);
  }
}
function moonbitlang$core$option$$Option$map$28$(self, f) {
  if (self === undefined) {
    return undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    return f(_x);
  }
}
function moonbitlang$core$option$$Option$map$29$(self, f) {
  if (self === undefined) {
    return undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    return f(_x);
  }
}
function moonbitlang$core$option$$Option$map$30$(self, f) {
  if (self === undefined) {
    return undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    return f(_x);
  }
}
function moonbitlang$core$option$$Option$map$31$(self, f) {
  if (self === undefined) {
    return undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    return f(_x);
  }
}
function moonbitlang$core$option$$Option$map$32$(self, f) {
  if (self === undefined) {
    return undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    return f(_x);
  }
}
function moonbitlang$core$option$$Option$map$33$(self, f) {
  if (self === undefined) {
    return undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    return f(_x);
  }
}
function moonbitlang$core$option$$Option$map$34$(self, f) {
  if (self === -1) {
    return undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    return f(_x);
  }
}
function moonbitlang$core$option$$Option$bind$25$(self, f) {
  if (self === undefined) {
    return undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    return f(_x);
  }
}
function moonbitlang$core$option$$Option$bind$29$(self, f) {
  if (self === undefined) {
    return undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    return f(_x);
  }
}
function moonbitlang$core$option$$Option$bind$35$(self, f) {
  if (self === undefined) {
    return undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    return f(_x);
  }
}
function moonbitlang$core$option$$Option$bind$36$(self, f) {
  if (self === undefined) {
    return undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    return f(_x);
  }
}
function moonbitlang$core$option$$Option$bind$32$(self, f) {
  if (self === undefined) {
    return undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    return f(_x);
  }
}
function moonbitlang$core$option$$Option$bind$34$(self, f) {
  if (self === -1) {
    return undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    return f(_x);
  }
}
function moonbitlang$core$option$$Option$bind$31$(self, f) {
  if (self === undefined) {
    return undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    return f(_x);
  }
}
function moonbitlang$core$option$$Option$bind$33$(self, f) {
  if (self === undefined) {
    return undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    return f(_x);
  }
}
function moonbitlang$core$option$$Option$is_empty$23$(self) {
  if (self.$tag === 0) {
    return true;
  } else {
    return false;
  }
}
function moonbitlang$core$option$$Option$is_empty$7$(self) {
  return self === undefined;
}
function moonbitlang$core$option$$Option$or$37$(self, default_) {
  if (self === undefined) {
    return default_;
  } else {
    const _Some = self;
    const _x = _Some;
    return _x;
  }
}
function moonbitlang$core$option$$Option$or_else$13$(self, default_) {
  if (self === undefined) {
    return default_();
  } else {
    const _Some = self;
    const _x = _Some;
    return _x;
  }
}
function moonbitlang$core$sorted_map$$new_node$38$(key, value) {
  return { key: key, value: value, left: undefined, right: undefined, height: 1 };
}
function moonbitlang$core$sorted_map$$new_node$39$(key, value) {
  return { key: key, value: value, left: undefined, right: undefined, height: 1 };
}
function moonbitlang$core$sorted_map$$Node$op_equal$38$(self, other) {
  return moonbitlang$core$array$$Array$op_equal$10$(self.key, other.key);
}
function moonbitlang$core$sorted_map$$Node$op_equal$39$(self, other) {
  return moonbitlang$core$array$$Array$op_equal$7$(self.key, other.key);
}
function moonbitlang$core$sorted_map$$max(x, y) {
  return x > y ? x : y;
}
function moonbitlang$core$sorted_map$$height$38$(node) {
  if (node === undefined) {
    return 0;
  } else {
    const _Some = node;
    const _x = _Some;
    return _x.height;
  }
}
function moonbitlang$core$sorted_map$$height$39$(node) {
  if (node === undefined) {
    return 0;
  } else {
    const _Some = node;
    const _x = _Some;
    return _x.height;
  }
}
function moonbitlang$core$sorted_map$$new$38$() {
  return { root: undefined, size: 0 };
}
function moonbitlang$core$sorted_map$$new$39$() {
  return { root: undefined, size: 0 };
}
function moonbitlang$core$sorted_map$$height_ge$38$(x1, x2) {
  if (x2 === undefined) {
    return true;
  } else {
    const _Some = x2;
    const _x = _Some;
    if (x1 === undefined) {
      return false;
    } else {
      const _Some$2 = x1;
      const _x$2 = _Some$2;
      return _x$2.height >= _x.height;
    }
  }
}
function moonbitlang$core$sorted_map$$height_ge$39$(x1, x2) {
  if (x2 === undefined) {
    return true;
  } else {
    const _Some = x2;
    const _x = _Some;
    if (x1 === undefined) {
      return false;
    } else {
      const _Some$2 = x1;
      const _x$2 = _Some$2;
      return _x$2.height >= _x.height;
    }
  }
}
function moonbitlang$core$sorted_map$$Node$update_height$38$(self) {
  self.height = 1 + moonbitlang$core$sorted_map$$max(moonbitlang$core$sorted_map$$height$38$(self.left), moonbitlang$core$sorted_map$$height$38$(self.right)) | 0;
}
function moonbitlang$core$sorted_map$$Node$update_height$39$(self) {
  self.height = 1 + moonbitlang$core$sorted_map$$max(moonbitlang$core$sorted_map$$height$39$(self.left), moonbitlang$core$sorted_map$$height$39$(self.right)) | 0;
}
function moonbitlang$core$sorted_map$$rotate_l$38$(n) {
  const r = moonbitlang$core$option$$Option$unwrap$40$(n.right);
  n.right = r.left;
  r.left = n;
  moonbitlang$core$sorted_map$$Node$update_height$38$(n);
  moonbitlang$core$sorted_map$$Node$update_height$38$(r);
  return r;
}
function moonbitlang$core$sorted_map$$rotate_l$39$(n) {
  const r = moonbitlang$core$option$$Option$unwrap$41$(n.right);
  n.right = r.left;
  r.left = n;
  moonbitlang$core$sorted_map$$Node$update_height$39$(n);
  moonbitlang$core$sorted_map$$Node$update_height$39$(r);
  return r;
}
function moonbitlang$core$sorted_map$$rotate_r$38$(n) {
  const l = moonbitlang$core$option$$Option$unwrap$40$(n.left);
  n.left = l.right;
  l.right = n;
  moonbitlang$core$sorted_map$$Node$update_height$38$(n);
  moonbitlang$core$sorted_map$$Node$update_height$38$(l);
  return l;
}
function moonbitlang$core$sorted_map$$rotate_r$39$(n) {
  const l = moonbitlang$core$option$$Option$unwrap$41$(n.left);
  n.left = l.right;
  l.right = n;
  moonbitlang$core$sorted_map$$Node$update_height$39$(n);
  moonbitlang$core$sorted_map$$Node$update_height$39$(l);
  return l;
}
function moonbitlang$core$sorted_map$$rotate_lr$38$(n) {
  const l = moonbitlang$core$option$$Option$unwrap$40$(n.left);
  const v = moonbitlang$core$sorted_map$$rotate_l$38$(l);
  n.left = v;
  return moonbitlang$core$sorted_map$$rotate_r$38$(n);
}
function moonbitlang$core$sorted_map$$rotate_lr$39$(n) {
  const l = moonbitlang$core$option$$Option$unwrap$41$(n.left);
  const v = moonbitlang$core$sorted_map$$rotate_l$39$(l);
  n.left = v;
  return moonbitlang$core$sorted_map$$rotate_r$39$(n);
}
function moonbitlang$core$sorted_map$$rotate_rl$38$(n) {
  const r = moonbitlang$core$option$$Option$unwrap$40$(n.right);
  const v = moonbitlang$core$sorted_map$$rotate_r$38$(r);
  n.right = v;
  return moonbitlang$core$sorted_map$$rotate_l$38$(n);
}
function moonbitlang$core$sorted_map$$rotate_rl$39$(n) {
  const r = moonbitlang$core$option$$Option$unwrap$41$(n.right);
  const v = moonbitlang$core$sorted_map$$rotate_r$39$(r);
  n.right = v;
  return moonbitlang$core$sorted_map$$rotate_l$39$(n);
}
function moonbitlang$core$sorted_map$$balance$38$(root) {
  const l = root.left;
  const r = root.right;
  const hl = moonbitlang$core$sorted_map$$height$38$(l);
  const hr = moonbitlang$core$sorted_map$$height$38$(r);
  let new_root;
  if (hl > (hr + 1 | 0)) {
    const _bind = moonbitlang$core$option$$Option$unwrap$40$(l);
    const _x = _bind.left;
    const _x$2 = _bind.right;
    new_root = moonbitlang$core$sorted_map$$height_ge$38$(_x, _x$2) ? moonbitlang$core$sorted_map$$rotate_r$38$(root) : moonbitlang$core$sorted_map$$rotate_lr$38$(root);
  } else {
    if (hr > (hl + 1 | 0)) {
      const _bind = moonbitlang$core$option$$Option$unwrap$40$(r);
      const _x = _bind.left;
      const _x$2 = _bind.right;
      new_root = moonbitlang$core$sorted_map$$height_ge$38$(_x$2, _x) ? moonbitlang$core$sorted_map$$rotate_l$38$(root) : moonbitlang$core$sorted_map$$rotate_rl$38$(root);
    } else {
      new_root = root;
    }
  }
  moonbitlang$core$sorted_map$$Node$update_height$38$(new_root);
  return new_root;
}
function moonbitlang$core$sorted_map$$balance$39$(root) {
  const l = root.left;
  const r = root.right;
  const hl = moonbitlang$core$sorted_map$$height$39$(l);
  const hr = moonbitlang$core$sorted_map$$height$39$(r);
  let new_root;
  if (hl > (hr + 1 | 0)) {
    const _bind = moonbitlang$core$option$$Option$unwrap$41$(l);
    const _x = _bind.left;
    const _x$2 = _bind.right;
    new_root = moonbitlang$core$sorted_map$$height_ge$39$(_x, _x$2) ? moonbitlang$core$sorted_map$$rotate_r$39$(root) : moonbitlang$core$sorted_map$$rotate_lr$39$(root);
  } else {
    if (hr > (hl + 1 | 0)) {
      const _bind = moonbitlang$core$option$$Option$unwrap$41$(r);
      const _x = _bind.left;
      const _x$2 = _bind.right;
      new_root = moonbitlang$core$sorted_map$$height_ge$39$(_x$2, _x) ? moonbitlang$core$sorted_map$$rotate_l$39$(root) : moonbitlang$core$sorted_map$$rotate_rl$39$(root);
    } else {
      new_root = root;
    }
  }
  moonbitlang$core$sorted_map$$Node$update_height$39$(new_root);
  return new_root;
}
function moonbitlang$core$sorted_map$$add_node$38$(root, key, value) {
  if (root === undefined) {
    return { _0: moonbitlang$core$sorted_map$$new_node$38$(key, value), _1: true };
  } else {
    const _Some = root;
    const _x = _Some;
    if (moonbitlang$core$array$$Array$op_equal$10$(key, _x.key)) {
      _x.value = value;
      return { _0: _x, _1: false };
    } else {
      const l = _x.left;
      const r = _x.right;
      if (moonbitlang$core$builtin$$op_lt$42$(key, _x.key)) {
        const _bind = moonbitlang$core$sorted_map$$add_node$38$(l, key, value);
        const _x$2 = _bind._0;
        const _x$3 = _bind._1;
        _x.left = _x$2;
        return { _0: moonbitlang$core$sorted_map$$balance$38$(_x), _1: _x$3 };
      } else {
        const _bind = moonbitlang$core$sorted_map$$add_node$38$(r, key, value);
        const _x$2 = _bind._0;
        const _x$3 = _bind._1;
        _x.right = _x$2;
        return { _0: moonbitlang$core$sorted_map$$balance$38$(_x), _1: _x$3 };
      }
    }
  }
}
function moonbitlang$core$sorted_map$$add_node$39$(root, key, value) {
  if (root === undefined) {
    return { _0: moonbitlang$core$sorted_map$$new_node$39$(key, value), _1: true };
  } else {
    const _Some = root;
    const _x = _Some;
    if (moonbitlang$core$array$$Array$op_equal$7$(key, _x.key)) {
      _x.value = value;
      return { _0: _x, _1: false };
    } else {
      const l = _x.left;
      const r = _x.right;
      if (moonbitlang$core$builtin$$op_lt$10$(key, _x.key)) {
        const _bind = moonbitlang$core$sorted_map$$add_node$39$(l, key, value);
        const _x$2 = _bind._0;
        const _x$3 = _bind._1;
        _x.left = _x$2;
        return { _0: moonbitlang$core$sorted_map$$balance$39$(_x), _1: _x$3 };
      } else {
        const _bind = moonbitlang$core$sorted_map$$add_node$39$(r, key, value);
        const _x$2 = _bind._0;
        const _x$3 = _bind._1;
        _x.right = _x$2;
        return { _0: moonbitlang$core$sorted_map$$balance$39$(_x), _1: _x$3 };
      }
    }
  }
}
function moonbitlang$core$sorted_map$$T$add$38$(self, key, value) {
  const _bind = moonbitlang$core$sorted_map$$add_node$38$(self.root, key, value);
  const _x = _bind._0;
  const _x$2 = _bind._1;
  if (moonbitlang$core$builtin$$op_notequal$43$(self.root, _x)) {
    self.root = _x;
  }
  if (_x$2) {
    self.size = self.size + 1 | 0;
    return;
  } else {
    return;
  }
}
function moonbitlang$core$sorted_map$$T$add$39$(self, key, value) {
  const _bind = moonbitlang$core$sorted_map$$add_node$39$(self.root, key, value);
  const _x = _bind._0;
  const _x$2 = _bind._1;
  if (moonbitlang$core$builtin$$op_notequal$44$(self.root, _x)) {
    self.root = _x;
  }
  if (_x$2) {
    self.size = self.size + 1 | 0;
    return;
  } else {
    return;
  }
}
function moonbitlang$core$sorted_map$$T$op_set$38$(self, key, value) {
  moonbitlang$core$sorted_map$$T$add$38$(self, key, value);
}
function moonbitlang$core$sorted_map$$T$op_set$39$(self, key, value) {
  moonbitlang$core$sorted_map$$T$add$39$(self, key, value);
}
function moonbitlang$core$sorted_map$$T$get$38$(self, key) {
  let _tmp = self.root;
  while (true) {
    const _param = _tmp;
    if (_param === undefined) {
      return undefined;
    } else {
      const _Some = _param;
      const _x = _Some;
      const cmp = moonbitlang$core$array$$Array$compare$10$(key, _x.key);
      if (cmp === 0) {
        return _x.value;
      } else {
        if (cmp > 0) {
          _tmp = _x.right;
          continue;
        } else {
          _tmp = _x.left;
          continue;
        }
      }
    }
  }
}
function moonbitlang$core$sorted_map$$T$get$39$(self, key) {
  let _tmp = self.root;
  while (true) {
    const _param = _tmp;
    if (_param === undefined) {
      return undefined;
    } else {
      const _Some = _param;
      const _x = _Some;
      const cmp = moonbitlang$core$array$$Array$compare$7$(key, _x.key);
      if (cmp === 0) {
        return _x.value;
      } else {
        if (cmp > 0) {
          _tmp = _x.right;
          continue;
        } else {
          _tmp = _x.left;
          continue;
        }
      }
    }
  }
}
function moonbitlang$core$sorted_map$$T$op_get$38$(self, key) {
  return moonbitlang$core$sorted_map$$T$get$38$(self, key);
}
function moonbitlang$core$sorted_map$$T$op_get$39$(self, key) {
  return moonbitlang$core$sorted_map$$T$get$39$(self, key);
}
function moonbitlang$core$sorted_map$$iter_aux2$38$(node) {
  return moonbitlang$core$builtin$$Iter2$new$38$((yield_) => {
    if (node === undefined) {
      return 1;
    } else {
      const _Some = node;
      const _x = _Some;
      return moonbitlang$core$builtin$$Eq$op_equal$20$(moonbitlang$core$builtin$$Iter2$run$38$(moonbitlang$core$sorted_map$$iter_aux2$38$(_x.left), yield_), 0) ? 0 : moonbitlang$core$builtin$$Eq$op_equal$20$(yield_(_x.key, _x.value), 0) ? 0 : moonbitlang$core$builtin$$Eq$op_equal$20$(moonbitlang$core$builtin$$Iter2$run$38$(moonbitlang$core$sorted_map$$iter_aux2$38$(_x.right), yield_), 0) ? 0 : 1;
    }
  });
}
function moonbitlang$core$sorted_map$$iter_aux2$39$(node) {
  return moonbitlang$core$builtin$$Iter2$new$39$((yield_) => {
    if (node === undefined) {
      return 1;
    } else {
      const _Some = node;
      const _x = _Some;
      return moonbitlang$core$builtin$$Eq$op_equal$20$(moonbitlang$core$builtin$$Iter2$run$39$(moonbitlang$core$sorted_map$$iter_aux2$39$(_x.left), yield_), 0) ? 0 : moonbitlang$core$builtin$$Eq$op_equal$20$(yield_(_x.key, _x.value), 0) ? 0 : moonbitlang$core$builtin$$Eq$op_equal$20$(moonbitlang$core$builtin$$Iter2$run$39$(moonbitlang$core$sorted_map$$iter_aux2$39$(_x.right), yield_), 0) ? 0 : 1;
    }
  });
}
function moonbitlang$core$sorted_map$$T$iter2$39$(self) {
  return moonbitlang$core$sorted_map$$iter_aux2$39$(self.root);
}
function moonbitlang$core$sorted_map$$T$iter2$38$(self) {
  return moonbitlang$core$sorted_map$$iter_aux2$38$(self.root);
}
function moonbitlang$core$math$$minimum$7$(x, y) {
  return x > y ? y : x;
}
function moonbitlang$core$bool$$Bool$to_int(self) {
  return self ? 1 : 0;
}
function moonbitlang$core$queue$$new$7$() {
  return { length: 0, first: $64$moonbitlang$47$core$47$queue$46$Cell$Nil$5$, last: $64$moonbitlang$47$core$47$queue$46$Cell$Nil$5$ };
}
function moonbitlang$core$queue$$new$13$() {
  return { length: 0, first: $64$moonbitlang$47$core$47$queue$46$Cell$Nil$6$, last: $64$moonbitlang$47$core$47$queue$46$Cell$Nil$6$ };
}
function moonbitlang$core$queue$$from_array$7$(arr) {
  if (arr.length === 0) {
    return moonbitlang$core$queue$$new$7$();
  }
  const queue = moonbitlang$core$queue$$new$7$();
  queue.length = arr.length;
  queue.last = new $64$moonbitlang$47$core$47$queue$46$Cell$Cons$5$({ content: moonbitlang$core$array$$Array$op_get$7$(arr, queue.length - 1 | 0), next: $64$moonbitlang$47$core$47$queue$46$Cell$Nil$5$ });
  queue.first = queue.last;
  let _tmp = arr.length - 2 | 0;
  while (true) {
    const i = _tmp;
    if (i >= 0) {
      queue.first = new $64$moonbitlang$47$core$47$queue$46$Cell$Cons$5$({ content: moonbitlang$core$array$$Array$op_get$7$(arr, i), next: queue.first });
      _tmp = i - 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return queue;
}
function moonbitlang$core$queue$$T$push$13$(self, x) {
  const cell = new $64$moonbitlang$47$core$47$queue$46$Cell$Cons$6$({ content: x, next: $64$moonbitlang$47$core$47$queue$46$Cell$Nil$6$ });
  const _bind = self.last;
  if (_bind.$tag === 0) {
    self.length = 1;
    self.first = cell;
    self.last = cell;
    return;
  } else {
    const _Cons = _bind;
    const _x = _Cons._0;
    _x.next = cell;
    self.length = self.length + 1 | 0;
    self.last = cell;
    return;
  }
}
function moonbitlang$core$queue$$T$push$7$(self, x) {
  const cell = new $64$moonbitlang$47$core$47$queue$46$Cell$Cons$5$({ content: x, next: $64$moonbitlang$47$core$47$queue$46$Cell$Nil$5$ });
  const _bind = self.last;
  if (_bind.$tag === 0) {
    self.length = 1;
    self.first = cell;
    self.last = cell;
    return;
  } else {
    const _Cons = _bind;
    const _x = _Cons._0;
    _x.next = cell;
    self.length = self.length + 1 | 0;
    self.last = cell;
    return;
  }
}
function moonbitlang$core$queue$$T$clear$7$(self) {
  self.length = 0;
  self.first = $64$moonbitlang$47$core$47$queue$46$Cell$Nil$5$;
  self.last = $64$moonbitlang$47$core$47$queue$46$Cell$Nil$5$;
}
function moonbitlang$core$queue$$T$clear$13$(self) {
  self.length = 0;
  self.first = $64$moonbitlang$47$core$47$queue$46$Cell$Nil$6$;
  self.last = $64$moonbitlang$47$core$47$queue$46$Cell$Nil$6$;
}
function moonbitlang$core$queue$$T$is_empty$7$(self) {
  return self.length === 0;
}
function moonbitlang$core$queue$$T$is_empty$13$(self) {
  return self.length === 0;
}
function moonbitlang$core$queue$$T$unsafe_pop$13$(self) {
  const _bind = self.first;
  if (_bind.$tag === 0) {
    return moonbitlang$core$builtin$$abort$13$("Queue is empty");
  } else {
    const _Cons = _bind;
    const _x = _Cons._0;
    const _x$2 = _x.content;
    const _x$3 = _x.next;
    if (_x$3.$tag === 0) {
      moonbitlang$core$queue$$T$clear$13$(self);
      return _x$2;
    } else {
      self.length = self.length - 1 | 0;
      self.first = _x$3;
      return _x$2;
    }
  }
}
function moonbitlang$core$queue$$T$unsafe_pop$7$(self) {
  const _bind = self.first;
  if (_bind.$tag === 0) {
    return moonbitlang$core$builtin$$abort$7$("Queue is empty");
  } else {
    const _Cons = _bind;
    const _x = _Cons._0;
    const _x$2 = _x.content;
    const _x$3 = _x.next;
    if (_x$3.$tag === 0) {
      moonbitlang$core$queue$$T$clear$7$(self);
      return _x$2;
    } else {
      self.length = self.length - 1 | 0;
      self.first = _x$3;
      return _x$2;
    }
  }
}
function moonbitlang$core$queue$$T$pop$13$(self) {
  return self.length === 0 ? undefined : moonbitlang$core$queue$$T$unsafe_pop$13$(self);
}
function moonbitlang$core$builtin$$abort$45$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$13$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$3$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$7$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$46$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$47$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$48$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$2$(msg) {
  return $panic();
}
function moonbitlang$core$builtin$$abort$5$(msg) {
  $panic();
}
function moonbitlang$core$builtin$$rotl(x, r) {
  return x << r | (x >>> (32 - r | 0) | 0);
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
function moonbitlang$core$builtin$$op_notequal$9$(x, y) {
  return !moonbitlang$core$option$$Option$op_equal$8$(x, y);
}
function moonbitlang$core$builtin$$op_notequal$23$(x, y) {
  return !moonbitlang$core$builtin$$Eq$op_equal$23$(x, y);
}
function moonbitlang$core$builtin$$op_notequal$43$(x, y) {
  return !moonbitlang$core$option$$Option$op_equal$40$(x, y);
}
function moonbitlang$core$builtin$$op_notequal$49$(x, y) {
  return !moonbitlang$core$option$$Option$op_equal$45$(x, y);
}
function moonbitlang$core$builtin$$op_notequal$50$(x, y) {
  return !moonbitlang$core$tuple$$Tuple2$op_equal$51$(x, y);
}
function moonbitlang$core$builtin$$op_notequal$44$(x, y) {
  return !moonbitlang$core$option$$Option$op_equal$41$(x, y);
}
function moonbitlang$core$builtin$$op_notequal$52$(x, y) {
  return !moonbitlang$core$option$$Option$op_equal$3$(x, y);
}
function moonbitlang$core$builtin$$op_notequal$2$(x, y) {
  return !(x === y);
}
function moonbitlang$core$builtin$$println$2$(input) {
  console.log(moonbitlang$core$builtin$$Show$to_string$2$(input));
}
function moonbitlang$core$builtin$$op_lt$2$(self_, other) {
  return moonbitlang$core$string$$String$compare(self_, other) < 0;
}
function moonbitlang$core$builtin$$op_lt$42$(self_, other) {
  return moonbitlang$core$array$$Array$compare$10$(self_, other) < 0;
}
function moonbitlang$core$builtin$$op_lt$10$(self_, other) {
  return moonbitlang$core$array$$Array$compare$7$(self_, other) < 0;
}
function moonbitlang$core$builtin$$op_ge$2$(self_, other) {
  return moonbitlang$core$string$$String$compare(self_, other) >= 0;
}
function moonbitlang$core$builtin$$StringBuilder$write_char(self, ch) {
  const _bind = self;
  _bind.val = `${_bind.val}${String.fromCodePoint(ch)}`;
}
function moonbitlang$core$array$$Array$op_get$53$(self, index) {
  const len = self.length;
  return index >= 0 && index < len ? self[index] : $panic();
}
function moonbitlang$core$array$$Array$op_get$54$(self, index) {
  const len = self.length;
  return index >= 0 && index < len ? self[index] : $panic();
}
function moonbitlang$core$array$$Array$op_get$21$(self, index) {
  const len = self.length;
  return index >= 0 && index < len ? self[index] : $panic();
}
function moonbitlang$core$array$$Array$op_get$7$(self, index) {
  const len = self.length;
  return index >= 0 && index < len ? self[index] : $panic();
}
function moonbitlang$core$array$$Array$op_get$55$(self, index) {
  const len = self.length;
  return index >= 0 && index < len ? self[index] : $panic();
}
function moonbitlang$core$array$$Array$op_get$12$(self, index) {
  const len = self.length;
  return index >= 0 && index < len ? self[index] : $panic();
}
function moonbitlang$core$array$$Array$op_get$10$(self, index) {
  const len = self.length;
  return index >= 0 && index < len ? self[index] : $panic();
}
function moonbitlang$core$array$$Array$op_get$56$(self, index) {
  const len = self.length;
  return index >= 0 && index < len ? self[index] : $panic();
}
function moonbitlang$core$array$$Array$op_get$14$(self, index) {
  const len = self.length;
  return index >= 0 && index < len ? self[index] : $panic();
}
function moonbitlang$core$array$$Array$op_get$48$(self, index) {
  const len = self.length;
  return index >= 0 && index < len ? self[index] : $panic();
}
function moonbitlang$core$array$$Array$op_get$57$(self, index) {
  const len = self.length;
  return index >= 0 && index < len ? self[index] : $panic();
}
function moonbitlang$core$array$$Array$op_get$58$(self, index) {
  const len = self.length;
  return index >= 0 && index < len ? self[index] : $panic();
}
function moonbitlang$core$array$$Array$op_get$11$(self, index) {
  const len = self.length;
  return index >= 0 && index < len ? self[index] : $panic();
}
function moonbitlang$core$array$$Array$op_get$1$(self, index) {
  const len = self.length;
  return index >= 0 && index < len ? self[index] : $panic();
}
function moonbitlang$core$array$$Array$op_get$59$(self, index) {
  const len = self.length;
  return index >= 0 && index < len ? self[index] : $panic();
}
function moonbitlang$core$array$$Array$op_get$2$(self, index) {
  const len = self.length;
  return index >= 0 && index < len ? self[index] : $panic();
}
function moonbitlang$core$array$$Array$op_get$60$(self, index) {
  const len = self.length;
  return index >= 0 && index < len ? self[index] : $panic();
}
function moonbitlang$core$builtin$$StringBuilder$write_string(self, str) {
  const _bind = self;
  _bind.val = `${_bind.val}${str}`;
}
function moonbitlang$core$bytes$$Bytes$makei(length, value) {
  if (length <= 0) {
    return new Uint8Array([]);
  }
  const arr = $make_array_len_and_init(length, value(0));
  let _tmp = 1;
  while (true) {
    const i = _tmp;
    if (i < length) {
      arr[i] = value(i);
      _tmp = i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return arr;
}
function moonbitlang$core$tuple$$Tuple2$op_equal$51$(self, other) {
  return self._0 === other._0 && moonbitlang$core$array$$Array$op_equal$10$(self._1, other._1);
}
function moonbitlang$core$builtin$$Logger$write_object$57$(self, obj) {
  moonbitlang$core$builtin$$Show$output$61$(obj, self);
}
function moonbitlang$core$builtin$$Logger$write_object$62$(self, obj) {
  moonbitlang$core$builtin$$Show$output$63$(obj, self);
}
function moonbitlang$core$builtin$$Logger$write_object$64$(self, obj) {
  moonbitlang$core$builtin$$Show$output$65$(obj, self);
}
function moonbitlang$core$builtin$$Logger$write_object$66$(self, obj) {
  moonbitlang$core$builtin$$Show$output$67$(obj, self);
}
function moonbitlang$core$builtin$$Logger$write_object$7$(self, obj) {
  moonbitlang$core$builtin$$Show$output$7$(obj, self);
}
function moonbitlang$core$builtin$$Logger$write_object$12$(self, obj) {
  moonbitlang$core$builtin$$Show$output$68$(obj, self);
}
function moonbitlang$core$builtin$$Show$output$61$(self, logger) {
  const _x = self._0;
  const _x$2 = self._1;
  logger.method_0(logger.self, "(");
  moonbitlang$core$builtin$$Logger$write_object$7$(logger, _x);
  logger.method_0(logger.self, ", ");
  moonbitlang$core$builtin$$Logger$write_object$7$(logger, _x$2);
  logger.method_0(logger.self, ")");
}
function moonbitlang$core$builtin$$Show$output$63$(self, logger) {
  const _x = self._0;
  const _x$2 = self._1;
  logger.method_0(logger.self, "(");
  moonbitlang$core$builtin$$Logger$write_object$57$(logger, _x);
  logger.method_0(logger.self, ", ");
  moonbitlang$core$builtin$$Logger$write_object$57$(logger, _x$2);
  logger.method_0(logger.self, ")");
}
function moonbitlang$core$builtin$$Show$output$67$(self, logger) {
  const _x = self._0;
  const _x$2 = self._1;
  logger.method_0(logger.self, "(");
  moonbitlang$core$builtin$$Logger$write_object$7$(logger, _x);
  logger.method_0(logger.self, ", ");
  moonbitlang$core$builtin$$Logger$write_object$64$(logger, _x$2);
  logger.method_0(logger.self, ")");
}
function moonbitlang$core$string$$String$substring(self, start, end) {
  const len = self.length;
  let end$2;
  if (end === undefined) {
    end$2 = len;
  } else {
    const _Some = end;
    const _x = _Some;
    end$2 = _x;
  }
  return start >= 0 && (start <= end$2 && end$2 <= len) ? self.substring(start, end$2) : $panic();
}
function moonbitlang$core$builtin$$op_gt$2$(self_, other) {
  return moonbitlang$core$string$$String$compare(self_, other) > 0;
}
function moonbitlang$core$builtin$$StringBuilder$write_substring(self, str, start, len) {
  const _bind = self;
  _bind.val = `${_bind.val}${moonbitlang$core$string$$String$substring(str, start, start + len | 0)}`;
}
function moonbitlang$core$builtin$$Show$output$69$(self, logger) {
  logger.method_0(logger.self, self.val);
}
function moonbitlang$core$builtin$$Hasher$combine$14$(self, value) {
  moonbitlang$core$builtin$$Hash$hash_combine$70$(value, self);
}
function moonbitlang$core$builtin$$Hasher$combine$7$(self, value) {
  moonbitlang$core$builtin$$Hash$hash_combine$7$(value, self);
}
function moonbitlang$core$builtin$$Hasher$combine$23$(self, value) {
  moonbitlang$core$builtin$$Hash$hash_combine$23$(value, self);
}
function moonbitlang$core$builtin$$Hasher$combine$71$(self, value) {
  moonbitlang$core$builtin$$Hash$hash_combine$71$(value, self);
}
function moonbitlang$core$builtin$$Hasher$combine$13$(self, value) {
  moonbitlang$core$builtin$$Hash$hash_combine$22$(value, self);
}
function moonbitlang$core$builtin$$Hasher$combine$2$(self, value) {
  moonbitlang$core$builtin$$Hash$hash_combine$2$(value, self);
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
function moonbitlang$core$builtin$$Map$new$17$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  return { entries: $make_array_len_and_init(capacity$2, undefined), list: $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined }), size: 0, capacity: capacity$2, capacity_mask: capacity$2 - 1 | 0, growAt: moonbitlang$core$builtin$$calc_grow_threshold(capacity$2), head: undefined, tail: undefined };
}
function moonbitlang$core$builtin$$Map$new$72$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  return { entries: $make_array_len_and_init(capacity$2, undefined), list: $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined }), size: 0, capacity: capacity$2, capacity_mask: capacity$2 - 1 | 0, growAt: moonbitlang$core$builtin$$calc_grow_threshold(capacity$2), head: undefined, tail: undefined };
}
function moonbitlang$core$builtin$$Map$new$26$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  return { entries: $make_array_len_and_init(capacity$2, undefined), list: $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined }), size: 0, capacity: capacity$2, capacity_mask: capacity$2 - 1 | 0, growAt: moonbitlang$core$builtin$$calc_grow_threshold(capacity$2), head: undefined, tail: undefined };
}
function moonbitlang$core$builtin$$Map$new$73$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  return { entries: $make_array_len_and_init(capacity$2, undefined), list: $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined }), size: 0, capacity: capacity$2, capacity_mask: capacity$2 - 1 | 0, growAt: moonbitlang$core$builtin$$calc_grow_threshold(capacity$2), head: undefined, tail: undefined };
}
function moonbitlang$core$builtin$$Map$new$74$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  return { entries: $make_array_len_and_init(capacity$2, undefined), list: $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined }), size: 0, capacity: capacity$2, capacity_mask: capacity$2 - 1 | 0, growAt: moonbitlang$core$builtin$$calc_grow_threshold(capacity$2), head: undefined, tail: undefined };
}
function moonbitlang$core$builtin$$Map$new$75$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  return { entries: $make_array_len_and_init(capacity$2, undefined), list: $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined }), size: 0, capacity: capacity$2, capacity_mask: capacity$2 - 1 | 0, growAt: moonbitlang$core$builtin$$calc_grow_threshold(capacity$2), head: undefined, tail: undefined };
}
function moonbitlang$core$builtin$$Map$new$76$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  return { entries: $make_array_len_and_init(capacity$2, undefined), list: $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined }), size: 0, capacity: capacity$2, capacity_mask: capacity$2 - 1 | 0, growAt: moonbitlang$core$builtin$$calc_grow_threshold(capacity$2), head: undefined, tail: undefined };
}
function moonbitlang$core$builtin$$Map$new$77$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  return { entries: $make_array_len_and_init(capacity$2, undefined), list: $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined }), size: 0, capacity: capacity$2, capacity_mask: capacity$2 - 1 | 0, growAt: moonbitlang$core$builtin$$calc_grow_threshold(capacity$2), head: undefined, tail: undefined };
}
function moonbitlang$core$builtin$$Map$new$78$(capacity) {
  const capacity$2 = moonbitlang$core$builtin$$power_2_above(8, capacity);
  return { entries: $make_array_len_and_init(capacity$2, undefined), list: $make_array_len_and_init(capacity$2, { prev: undefined, next: undefined }), size: 0, capacity: capacity$2, capacity_mask: capacity$2 - 1 | 0, growAt: moonbitlang$core$builtin$$calc_grow_threshold(capacity$2), head: undefined, tail: undefined };
}
function moonbitlang$core$builtin$$Map$new$46$capacity$46$default$26$() {
  return 8;
}
function moonbitlang$core$builtin$$Map$new$46$capacity$46$default$73$() {
  return 8;
}
function moonbitlang$core$builtin$$Map$new$46$capacity$46$default$74$() {
  return 8;
}
function moonbitlang$core$builtin$$Map$new$46$capacity$46$default$75$() {
  return 8;
}
function moonbitlang$core$builtin$$Map$new$46$capacity$46$default$76$() {
  return 8;
}
function moonbitlang$core$builtin$$Map$new$46$capacity$46$default$77$() {
  return 8;
}
function moonbitlang$core$array$$Array$each$14$(self, f) {
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
function moonbitlang$core$array$$Array$each$19$(self, f) {
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
function moonbitlang$core$array$$Array$each$79$(self, f) {
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
function moonbitlang$core$array$$Array$each$80$(self, f) {
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
function moonbitlang$core$builtin$$Map$add_entry_to_tail$73$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _x = _Some;
    self.list[_x.idx].next = entry;
    self.list[entry.idx].prev = _x;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$add_entry_to_tail$74$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _x = _Some;
    self.list[_x.idx].next = entry;
    self.list[entry.idx].prev = _x;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$add_entry_to_tail$77$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _x = _Some;
    self.list[_x.idx].next = entry;
    self.list[entry.idx].prev = _x;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$add_entry_to_tail$17$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _x = _Some;
    self.list[_x.idx].next = entry;
    self.list[entry.idx].prev = _x;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$add_entry_to_tail$26$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _x = _Some;
    self.list[_x.idx].next = entry;
    self.list[entry.idx].prev = _x;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$add_entry_to_tail$75$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _x = _Some;
    self.list[_x.idx].next = entry;
    self.list[entry.idx].prev = _x;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$add_entry_to_tail$72$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _x = _Some;
    self.list[_x.idx].next = entry;
    self.list[entry.idx].prev = _x;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$add_entry_to_tail$76$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _x = _Some;
    self.list[_x.idx].next = entry;
    self.list[entry.idx].prev = _x;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$add_entry_to_tail$78$(self, entry) {
  const _bind = self.tail;
  if (_bind === undefined) {
    self.head = entry;
    self.tail = entry;
    return;
  } else {
    const _Some = _bind;
    const _x = _Some;
    self.list[_x.idx].next = entry;
    self.list[entry.idx].prev = _x;
    self.tail = entry;
    return;
  }
}
function moonbitlang$core$builtin$$Map$set$73$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$73$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$81$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const _param = _tmp;
    const _param$2 = _tmp$2;
    const _param$3 = _tmp$3;
    const _param$4 = _tmp$4;
    const _bind = self.entries[_param$2];
    if (_bind === undefined) {
      self.entries[_param$2] = _param$3;
      self.list[_param$2] = _param$4;
      _param$3.idx = _param$2;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$73$(self, insert_entry);
      self.size = self.size + 1 | 0;
      return;
    } else {
      const _Some = _bind;
      const _x = _Some;
      const curr_node = self.list[_x.idx];
      if (_x.hash === _param$3.hash && moonbitlang$core$builtin$$Eq$op_equal$71$(_x.key, _param$3.key)) {
        _x.value = _param$3.value;
        break;
      }
      if (_param$3.psl > _x.psl) {
        self.entries[_param$2] = _param$3;
        self.list[_param$2] = _param$4;
        _param$3.idx = _param$2;
        _x.psl = _x.psl + 1 | 0;
        const _tmp$5 = _param + 1 | 0;
        const _tmp$6 = _param$2 + 1 & self.capacity_mask;
        _tmp = _tmp$5;
        _tmp$2 = _tmp$6;
        _tmp$3 = _x;
        _tmp$4 = curr_node;
        continue;
      } else {
        _param$3.psl = _param$3.psl + 1 | 0;
        const _tmp$5 = _param + 1 | 0;
        const _tmp$6 = _param$2 + 1 & self.capacity_mask;
        _tmp = _tmp$5;
        _tmp$2 = _tmp$6;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$set$77$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$77$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$82$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const _param = _tmp;
    const _param$2 = _tmp$2;
    const _param$3 = _tmp$3;
    const _param$4 = _tmp$4;
    const _bind = self.entries[_param$2];
    if (_bind === undefined) {
      self.entries[_param$2] = _param$3;
      self.list[_param$2] = _param$4;
      _param$3.idx = _param$2;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$77$(self, insert_entry);
      self.size = self.size + 1 | 0;
      return;
    } else {
      const _Some = _bind;
      const _x = _Some;
      const curr_node = self.list[_x.idx];
      if (_x.hash === _param$3.hash && moonbitlang$core$builtin$$Eq$op_equal$22$(_x.key, _param$3.key)) {
        _x.value = _param$3.value;
        break;
      }
      if (_param$3.psl > _x.psl) {
        self.entries[_param$2] = _param$3;
        self.list[_param$2] = _param$4;
        _param$3.idx = _param$2;
        _x.psl = _x.psl + 1 | 0;
        const _tmp$5 = _param + 1 | 0;
        const _tmp$6 = _param$2 + 1 & self.capacity_mask;
        _tmp = _tmp$5;
        _tmp$2 = _tmp$6;
        _tmp$3 = _x;
        _tmp$4 = curr_node;
        continue;
      } else {
        _param$3.psl = _param$3.psl + 1 | 0;
        const _tmp$5 = _param + 1 | 0;
        const _tmp$6 = _param$2 + 1 & self.capacity_mask;
        _tmp = _tmp$5;
        _tmp$2 = _tmp$6;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$set$74$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$74$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$7$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const _param = _tmp;
    const _param$2 = _tmp$2;
    const _param$3 = _tmp$3;
    const _param$4 = _tmp$4;
    const _bind = self.entries[_param$2];
    if (_bind === undefined) {
      self.entries[_param$2] = _param$3;
      self.list[_param$2] = _param$4;
      _param$3.idx = _param$2;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$74$(self, insert_entry);
      self.size = self.size + 1 | 0;
      return;
    } else {
      const _Some = _bind;
      const _x = _Some;
      const curr_node = self.list[_x.idx];
      if (_x.hash === _param$3.hash && _x.key === _param$3.key) {
        _x.value = _param$3.value;
        break;
      }
      if (_param$3.psl > _x.psl) {
        self.entries[_param$2] = _param$3;
        self.list[_param$2] = _param$4;
        _param$3.idx = _param$2;
        _x.psl = _x.psl + 1 | 0;
        const _tmp$5 = _param + 1 | 0;
        const _tmp$6 = _param$2 + 1 & self.capacity_mask;
        _tmp = _tmp$5;
        _tmp$2 = _tmp$6;
        _tmp$3 = _x;
        _tmp$4 = curr_node;
        continue;
      } else {
        _param$3.psl = _param$3.psl + 1 | 0;
        const _tmp$5 = _param + 1 | 0;
        const _tmp$6 = _param$2 + 1 & self.capacity_mask;
        _tmp = _tmp$5;
        _tmp$2 = _tmp$6;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$set$72$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$72$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$83$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const _param = _tmp;
    const _param$2 = _tmp$2;
    const _param$3 = _tmp$3;
    const _param$4 = _tmp$4;
    const _bind = self.entries[_param$2];
    if (_bind === undefined) {
      self.entries[_param$2] = _param$3;
      self.list[_param$2] = _param$4;
      _param$3.idx = _param$2;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$72$(self, insert_entry);
      self.size = self.size + 1 | 0;
      return;
    } else {
      const _Some = _bind;
      const _x = _Some;
      const curr_node = self.list[_x.idx];
      if (_x.hash === _param$3.hash && _x.key === _param$3.key) {
        _x.value = _param$3.value;
        break;
      }
      if (_param$3.psl > _x.psl) {
        self.entries[_param$2] = _param$3;
        self.list[_param$2] = _param$4;
        _param$3.idx = _param$2;
        _x.psl = _x.psl + 1 | 0;
        const _tmp$5 = _param + 1 | 0;
        const _tmp$6 = _param$2 + 1 & self.capacity_mask;
        _tmp = _tmp$5;
        _tmp$2 = _tmp$6;
        _tmp$3 = _x;
        _tmp$4 = curr_node;
        continue;
      } else {
        _param$3.psl = _param$3.psl + 1 | 0;
        const _tmp$5 = _param + 1 | 0;
        const _tmp$6 = _param$2 + 1 & self.capacity_mask;
        _tmp = _tmp$5;
        _tmp$2 = _tmp$6;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$set$75$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$75$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$3$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const _param = _tmp;
    const _param$2 = _tmp$2;
    const _param$3 = _tmp$3;
    const _param$4 = _tmp$4;
    const _bind = self.entries[_param$2];
    if (_bind === undefined) {
      self.entries[_param$2] = _param$3;
      self.list[_param$2] = _param$4;
      _param$3.idx = _param$2;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$75$(self, insert_entry);
      self.size = self.size + 1 | 0;
      return;
    } else {
      const _Some = _bind;
      const _x = _Some;
      const curr_node = self.list[_x.idx];
      if (_x.hash === _param$3.hash && _x.key === _param$3.key) {
        _x.value = _param$3.value;
        break;
      }
      if (_param$3.psl > _x.psl) {
        self.entries[_param$2] = _param$3;
        self.list[_param$2] = _param$4;
        _param$3.idx = _param$2;
        _x.psl = _x.psl + 1 | 0;
        const _tmp$5 = _param + 1 | 0;
        const _tmp$6 = _param$2 + 1 & self.capacity_mask;
        _tmp = _tmp$5;
        _tmp$2 = _tmp$6;
        _tmp$3 = _x;
        _tmp$4 = curr_node;
        continue;
      } else {
        _param$3.psl = _param$3.psl + 1 | 0;
        const _tmp$5 = _param + 1 | 0;
        const _tmp$6 = _param$2 + 1 & self.capacity_mask;
        _tmp = _tmp$5;
        _tmp$2 = _tmp$6;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$set$26$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$26$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$7$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const _param = _tmp;
    const _param$2 = _tmp$2;
    const _param$3 = _tmp$3;
    const _param$4 = _tmp$4;
    const _bind = self.entries[_param$2];
    if (_bind === undefined) {
      self.entries[_param$2] = _param$3;
      self.list[_param$2] = _param$4;
      _param$3.idx = _param$2;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$26$(self, insert_entry);
      self.size = self.size + 1 | 0;
      return;
    } else {
      const _Some = _bind;
      const _x = _Some;
      const curr_node = self.list[_x.idx];
      if (_x.hash === _param$3.hash && _x.key === _param$3.key) {
        _x.value = _param$3.value;
        break;
      }
      if (_param$3.psl > _x.psl) {
        self.entries[_param$2] = _param$3;
        self.list[_param$2] = _param$4;
        _param$3.idx = _param$2;
        _x.psl = _x.psl + 1 | 0;
        const _tmp$5 = _param + 1 | 0;
        const _tmp$6 = _param$2 + 1 & self.capacity_mask;
        _tmp = _tmp$5;
        _tmp$2 = _tmp$6;
        _tmp$3 = _x;
        _tmp$4 = curr_node;
        continue;
      } else {
        _param$3.psl = _param$3.psl + 1 | 0;
        const _tmp$5 = _param + 1 | 0;
        const _tmp$6 = _param$2 + 1 & self.capacity_mask;
        _tmp = _tmp$5;
        _tmp$2 = _tmp$6;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$set$17$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$17$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$7$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const _param = _tmp;
    const _param$2 = _tmp$2;
    const _param$3 = _tmp$3;
    const _param$4 = _tmp$4;
    const _bind = self.entries[_param$2];
    if (_bind === undefined) {
      self.entries[_param$2] = _param$3;
      self.list[_param$2] = _param$4;
      _param$3.idx = _param$2;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$17$(self, insert_entry);
      self.size = self.size + 1 | 0;
      return;
    } else {
      const _Some = _bind;
      const _x = _Some;
      const curr_node = self.list[_x.idx];
      if (_x.hash === _param$3.hash && _x.key === _param$3.key) {
        _x.value = _param$3.value;
        break;
      }
      if (_param$3.psl > _x.psl) {
        self.entries[_param$2] = _param$3;
        self.list[_param$2] = _param$4;
        _param$3.idx = _param$2;
        _x.psl = _x.psl + 1 | 0;
        const _tmp$5 = _param + 1 | 0;
        const _tmp$6 = _param$2 + 1 & self.capacity_mask;
        _tmp = _tmp$5;
        _tmp$2 = _tmp$6;
        _tmp$3 = _x;
        _tmp$4 = curr_node;
        continue;
      } else {
        _param$3.psl = _param$3.psl + 1 | 0;
        const _tmp$5 = _param + 1 | 0;
        const _tmp$6 = _param$2 + 1 & self.capacity_mask;
        _tmp = _tmp$5;
        _tmp$2 = _tmp$6;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$set$76$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$76$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$3$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const _param = _tmp;
    const _param$2 = _tmp$2;
    const _param$3 = _tmp$3;
    const _param$4 = _tmp$4;
    const _bind = self.entries[_param$2];
    if (_bind === undefined) {
      self.entries[_param$2] = _param$3;
      self.list[_param$2] = _param$4;
      _param$3.idx = _param$2;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$76$(self, insert_entry);
      self.size = self.size + 1 | 0;
      return;
    } else {
      const _Some = _bind;
      const _x = _Some;
      const curr_node = self.list[_x.idx];
      if (_x.hash === _param$3.hash && _x.key === _param$3.key) {
        _x.value = _param$3.value;
        break;
      }
      if (_param$3.psl > _x.psl) {
        self.entries[_param$2] = _param$3;
        self.list[_param$2] = _param$4;
        _param$3.idx = _param$2;
        _x.psl = _x.psl + 1 | 0;
        const _tmp$5 = _param + 1 | 0;
        const _tmp$6 = _param$2 + 1 & self.capacity_mask;
        _tmp = _tmp$5;
        _tmp$2 = _tmp$6;
        _tmp$3 = _x;
        _tmp$4 = curr_node;
        continue;
      } else {
        _param$3.psl = _param$3.psl + 1 | 0;
        const _tmp$5 = _param + 1 | 0;
        const _tmp$6 = _param$2 + 1 & self.capacity_mask;
        _tmp = _tmp$5;
        _tmp$2 = _tmp$6;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$set$78$(self, key, value) {
  if (self.size >= self.growAt) {
    moonbitlang$core$builtin$$Map$grow$78$(self);
  }
  const hash = moonbitlang$core$builtin$$Hash$hash$83$(key);
  const insert_entry = { idx: -1, psl: 0, hash: hash, key: key, value: value };
  const list_node = { prev: undefined, next: undefined };
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  let _tmp$3 = insert_entry;
  let _tmp$4 = list_node;
  while (true) {
    const _param = _tmp;
    const _param$2 = _tmp$2;
    const _param$3 = _tmp$3;
    const _param$4 = _tmp$4;
    const _bind = self.entries[_param$2];
    if (_bind === undefined) {
      self.entries[_param$2] = _param$3;
      self.list[_param$2] = _param$4;
      _param$3.idx = _param$2;
      moonbitlang$core$builtin$$Map$add_entry_to_tail$78$(self, insert_entry);
      self.size = self.size + 1 | 0;
      return;
    } else {
      const _Some = _bind;
      const _x = _Some;
      const curr_node = self.list[_x.idx];
      if (_x.hash === _param$3.hash && _x.key === _param$3.key) {
        _x.value = _param$3.value;
        break;
      }
      if (_param$3.psl > _x.psl) {
        self.entries[_param$2] = _param$3;
        self.list[_param$2] = _param$4;
        _param$3.idx = _param$2;
        _x.psl = _x.psl + 1 | 0;
        const _tmp$5 = _param + 1 | 0;
        const _tmp$6 = _param$2 + 1 & self.capacity_mask;
        _tmp = _tmp$5;
        _tmp$2 = _tmp$6;
        _tmp$3 = _x;
        _tmp$4 = curr_node;
        continue;
      } else {
        _param$3.psl = _param$3.psl + 1 | 0;
        const _tmp$5 = _param + 1 | 0;
        const _tmp$6 = _param$2 + 1 & self.capacity_mask;
        _tmp = _tmp$5;
        _tmp$2 = _tmp$6;
        continue;
      }
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$73$(self) {
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
      const _x$2 = _x.idx;
      const _x$3 = _x.key;
      const _x$4 = _x.value;
      moonbitlang$core$builtin$$Map$set$73$(self, _x$3, _x$4);
      _tmp = old_list[_x$2].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$74$(self) {
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
      const _x$2 = _x.idx;
      const _x$3 = _x.key;
      const _x$4 = _x.value;
      moonbitlang$core$builtin$$Map$set$74$(self, _x$3, _x$4);
      _tmp = old_list[_x$2].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$77$(self) {
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
      const _x$2 = _x.idx;
      const _x$3 = _x.key;
      const _x$4 = _x.value;
      moonbitlang$core$builtin$$Map$set$77$(self, _x$3, _x$4);
      _tmp = old_list[_x$2].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$17$(self) {
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
      const _x$2 = _x.idx;
      const _x$3 = _x.key;
      const _x$4 = _x.value;
      moonbitlang$core$builtin$$Map$set$17$(self, _x$3, _x$4);
      _tmp = old_list[_x$2].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$26$(self) {
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
      const _x$2 = _x.idx;
      const _x$3 = _x.key;
      const _x$4 = _x.value;
      moonbitlang$core$builtin$$Map$set$26$(self, _x$3, _x$4);
      _tmp = old_list[_x$2].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$75$(self) {
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
      const _x$2 = _x.idx;
      const _x$3 = _x.key;
      const _x$4 = _x.value;
      moonbitlang$core$builtin$$Map$set$75$(self, _x$3, _x$4);
      _tmp = old_list[_x$2].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$72$(self) {
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
      const _x$2 = _x.idx;
      const _x$3 = _x.key;
      const _x$4 = _x.value;
      moonbitlang$core$builtin$$Map$set$72$(self, _x$3, _x$4);
      _tmp = old_list[_x$2].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$76$(self) {
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
      const _x$2 = _x.idx;
      const _x$3 = _x.key;
      const _x$4 = _x.value;
      moonbitlang$core$builtin$$Map$set$76$(self, _x$3, _x$4);
      _tmp = old_list[_x$2].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$grow$78$(self) {
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
      const _x$2 = _x.idx;
      const _x$3 = _x.key;
      const _x$4 = _x.value;
      moonbitlang$core$builtin$$Map$set$78$(self, _x$3, _x$4);
      _tmp = old_list[_x$2].next;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$from_array$17$(arr) {
  const m = moonbitlang$core$builtin$$Map$new$17$(arr.length);
  moonbitlang$core$array$$Array$each$19$(arr, (e) => {
    moonbitlang$core$builtin$$Map$set$17$(m, e._0, e._1);
  });
  return m;
}
function moonbitlang$core$builtin$$Map$from_array$72$(arr) {
  const m = moonbitlang$core$builtin$$Map$new$72$(arr.length);
  moonbitlang$core$array$$Array$each$79$(arr, (e) => {
    moonbitlang$core$builtin$$Map$set$72$(m, e._0, e._1);
  });
  return m;
}
function moonbitlang$core$builtin$$Map$from_array$78$(arr) {
  const m = moonbitlang$core$builtin$$Map$new$78$(arr.length);
  moonbitlang$core$array$$Array$each$80$(arr, (e) => {
    moonbitlang$core$builtin$$Map$set$78$(m, e._0, e._1);
  });
  return m;
}
function moonbitlang$core$builtin$$Map$get$73$(self, key) {
  const hash = moonbitlang$core$builtin$$Hash$hash$81$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _bind = self.entries[idx];
    if (_bind === undefined) {
      return Option$None$7$;
    } else {
      const _Some = _bind;
      const _x = _Some;
      if (_x.hash === hash && moonbitlang$core$builtin$$Eq$op_equal$71$(_x.key, key)) {
        return new Option$Some$7$(_x.value);
      }
      if (i > _x.psl) {
        return Option$None$7$;
      }
      const _tmp$3 = i + 1 | 0;
      const _tmp$4 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$3;
      _tmp$2 = _tmp$4;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get$26$(self, key) {
  const hash = moonbitlang$core$builtin$$Hash$hash$7$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _bind = self.entries[idx];
    if (_bind === undefined) {
      return undefined;
    } else {
      const _Some = _bind;
      const _x = _Some;
      if (_x.hash === hash && _x.key === key) {
        return _x.value;
      }
      if (i > _x.psl) {
        return undefined;
      }
      const _tmp$3 = i + 1 | 0;
      const _tmp$4 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$3;
      _tmp$2 = _tmp$4;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get$76$(self, key) {
  const hash = moonbitlang$core$builtin$$Hash$hash$3$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _bind = self.entries[idx];
    if (_bind === undefined) {
      return undefined;
    } else {
      const _Some = _bind;
      const _x = _Some;
      if (_x.hash === hash && _x.key === key) {
        return _x.value;
      }
      if (i > _x.psl) {
        return undefined;
      }
      const _tmp$3 = i + 1 | 0;
      const _tmp$4 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$3;
      _tmp$2 = _tmp$4;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get$17$(self, key) {
  const hash = moonbitlang$core$builtin$$Hash$hash$7$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _bind = self.entries[idx];
    if (_bind === undefined) {
      return undefined;
    } else {
      const _Some = _bind;
      const _x = _Some;
      if (_x.hash === hash && _x.key === key) {
        return _x.value;
      }
      if (i > _x.psl) {
        return undefined;
      }
      const _tmp$3 = i + 1 | 0;
      const _tmp$4 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$3;
      _tmp$2 = _tmp$4;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get$75$(self, key) {
  const hash = moonbitlang$core$builtin$$Hash$hash$3$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _bind = self.entries[idx];
    if (_bind === undefined) {
      return undefined;
    } else {
      const _Some = _bind;
      const _x = _Some;
      if (_x.hash === hash && _x.key === key) {
        return _x.value;
      }
      if (i > _x.psl) {
        return undefined;
      }
      const _tmp$3 = i + 1 | 0;
      const _tmp$4 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$3;
      _tmp$2 = _tmp$4;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get$77$(self, key) {
  const hash = moonbitlang$core$builtin$$Hash$hash$82$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _bind = self.entries[idx];
    if (_bind === undefined) {
      return undefined;
    } else {
      const _Some = _bind;
      const _x = _Some;
      if (_x.hash === hash && moonbitlang$core$builtin$$Eq$op_equal$22$(_x.key, key)) {
        return _x.value;
      }
      if (i > _x.psl) {
        return undefined;
      }
      const _tmp$3 = i + 1 | 0;
      const _tmp$4 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$3;
      _tmp$2 = _tmp$4;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get$72$(self, key) {
  const hash = moonbitlang$core$builtin$$Hash$hash$83$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _bind = self.entries[idx];
    if (_bind === undefined) {
      return undefined;
    } else {
      const _Some = _bind;
      const _x = _Some;
      if (_x.hash === hash && _x.key === key) {
        return _x.value;
      }
      if (i > _x.psl) {
        return undefined;
      }
      const _tmp$3 = i + 1 | 0;
      const _tmp$4 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$3;
      _tmp$2 = _tmp$4;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get$78$(self, key) {
  const hash = moonbitlang$core$builtin$$Hash$hash$83$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _bind = self.entries[idx];
    if (_bind === undefined) {
      return undefined;
    } else {
      const _Some = _bind;
      const _x = _Some;
      if (_x.hash === hash && _x.key === key) {
        return _x.value;
      }
      if (i > _x.psl) {
        return undefined;
      }
      const _tmp$3 = i + 1 | 0;
      const _tmp$4 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$3;
      _tmp$2 = _tmp$4;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get$74$(self, key) {
  const hash = moonbitlang$core$builtin$$Hash$hash$7$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _bind = self.entries[idx];
    if (_bind === undefined) {
      return undefined;
    } else {
      const _Some = _bind;
      const _x = _Some;
      if (_x.hash === hash && _x.key === key) {
        return _x.value;
      }
      if (i > _x.psl) {
        return undefined;
      }
      const _tmp$3 = i + 1 | 0;
      const _tmp$4 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$3;
      _tmp$2 = _tmp$4;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$op_get$76$(self, key) {
  return moonbitlang$core$builtin$$Map$get$76$(self, key);
}
function moonbitlang$core$builtin$$Map$op_get$75$(self, key) {
  return moonbitlang$core$builtin$$Map$get$75$(self, key);
}
function moonbitlang$core$builtin$$Map$get_or_default$17$(self, key, default_) {
  const hash = moonbitlang$core$builtin$$Hash$hash$7$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _bind = self.entries[idx];
    if (_bind === undefined) {
      return default_;
    } else {
      const _Some = _bind;
      const _x = _Some;
      if (_x.hash === hash && _x.key === key) {
        return _x.value;
      }
      if (i > _x.psl) {
        return default_;
      }
      const _tmp$3 = i + 1 | 0;
      const _tmp$4 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$3;
      _tmp$2 = _tmp$4;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get_or_default$73$(self, key, default_) {
  const hash = moonbitlang$core$builtin$$Hash$hash$81$(key);
  let _tmp = 0;
  let _tmp$2 = hash & self.capacity_mask;
  while (true) {
    const i = _tmp;
    const idx = _tmp$2;
    const _bind = self.entries[idx];
    if (_bind === undefined) {
      return default_;
    } else {
      const _Some = _bind;
      const _x = _Some;
      if (_x.hash === hash && moonbitlang$core$builtin$$Eq$op_equal$71$(_x.key, key)) {
        return _x.value;
      }
      if (i > _x.psl) {
        return default_;
      }
      const _tmp$3 = i + 1 | 0;
      const _tmp$4 = idx + 1 & self.capacity_mask;
      _tmp = _tmp$3;
      _tmp$2 = _tmp$4;
      continue;
    }
  }
}
function moonbitlang$core$builtin$$Map$get_or_init$73$(self, key, default_) {
  const _bind = moonbitlang$core$builtin$$Map$get$73$(self, key);
  if (_bind.$tag === 1) {
    const _Some = _bind;
    const _x = _Some._0;
    return _x;
  } else {
    const v = default_();
    moonbitlang$core$builtin$$Map$set$73$(self, key, v);
    return v;
  }
}
function moonbitlang$core$builtin$$Map$get_or_init$77$(self, key, default_) {
  const _bind = moonbitlang$core$builtin$$Map$get$77$(self, key);
  if (_bind === undefined) {
    const v = default_();
    moonbitlang$core$builtin$$Map$set$77$(self, key, v);
    return v;
  } else {
    const _Some = _bind;
    const _x = _Some;
    return _x;
  }
}
function moonbitlang$core$option$$Option$unwrap$40$(self) {
  if (self === undefined) {
    return $panic();
  } else {
    const _Some = self;
    const _x = _Some;
    return _x;
  }
}
function moonbitlang$core$option$$Option$unwrap$41$(self) {
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
function moonbitlang$core$option$$Option$unwrap$66$(self) {
  if (self === undefined) {
    return $panic();
  } else {
    const _Some = self;
    const _x = _Some;
    return _x;
  }
}
function moonbitlang$core$option$$Option$unwrap$23$(self) {
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
function moonbitlang$core$option$$Option$unwrap$13$(self) {
  if (self === undefined) {
    return $panic();
  } else {
    const _Some = self;
    const _x = _Some;
    return _x;
  }
}
function moonbitlang$core$option$$Option$unwrap$57$(self) {
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
function moonbitlang$core$option$$Option$unwrap$48$(self) {
  if (self === undefined) {
    return $panic();
  } else {
    const _Some = self;
    const _x = _Some;
    return _x;
  }
}
function moonbitlang$core$builtin$$Map$size$75$(self) {
  return self.size;
}
function moonbitlang$core$builtin$$Iter$new$62$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$84$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$21$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$19$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$7$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$12$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$3$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter$new$15$(f) {
  return f;
}
function moonbitlang$core$builtin$$Map$iter$17$(self) {
  return moonbitlang$core$builtin$$Iter$new$19$((yield_) => {
    let _tmp = self.head;
    while (true) {
      const _param = _tmp;
      if (_param === undefined) {
        return 1;
      } else {
        const _Some = _param;
        const _x = _Some;
        const _x$2 = _x.key;
        const _x$3 = _x.value;
        const _x$4 = _x.idx;
        if (moonbitlang$core$builtin$$Eq$op_equal$20$(yield_({ _0: _x$2, _1: _x$3 }), 0)) {
          return 0;
        }
        _tmp = self.list[_x$4].next;
        continue;
      }
    }
  });
}
function moonbitlang$core$builtin$$Iter2$new$73$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter2$new$76$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter2$new$39$(f) {
  return f;
}
function moonbitlang$core$builtin$$Iter2$new$38$(f) {
  return f;
}
function moonbitlang$core$builtin$$Map$iter2$76$(self) {
  return moonbitlang$core$builtin$$Iter2$new$76$((yield_) => {
    let _tmp = self.head;
    while (true) {
      const _param = _tmp;
      if (_param === undefined) {
        return 1;
      } else {
        const _Some = _param;
        const _x = _Some;
        const _x$2 = _x.key;
        const _x$3 = _x.value;
        const _x$4 = _x.idx;
        if (moonbitlang$core$builtin$$Eq$op_equal$20$(yield_(_x$2, _x$3), 0)) {
          return 0;
        } else {
          _tmp = self.list[_x$4].next;
          continue;
        }
      }
    }
  });
}
function moonbitlang$core$builtin$$Map$iter2$73$(self) {
  return moonbitlang$core$builtin$$Iter2$new$73$((yield_) => {
    let _tmp = self.head;
    while (true) {
      const _param = _tmp;
      if (_param === undefined) {
        return 1;
      } else {
        const _Some = _param;
        const _x = _Some;
        const _x$2 = _x.key;
        const _x$3 = _x.value;
        const _x$4 = _x.idx;
        if (moonbitlang$core$builtin$$Eq$op_equal$20$(yield_(_x$2, _x$3), 0)) {
          return 0;
        } else {
          _tmp = self.list[_x$4].next;
          continue;
        }
      }
    }
  });
}
function moonbitlang$core$array$$Array$new$85$(capacity) {
  return [];
}
function moonbitlang$core$array$$Array$new$3$(capacity) {
  return [];
}
function moonbitlang$core$array$$Array$new$46$capacity$46$default$85$() {
  return 0;
}
function moonbitlang$core$array$$Array$push$86$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$21$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$56$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$53$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$10$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$58$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$87$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$48$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$54$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$1$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$85$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$88$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$3$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$2$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$80$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$89$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$15$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$Array$push$7$(self, value) {
  moonbitlang$core$builtin$$JSArray$push(self, value);
}
function moonbitlang$core$array$$ArrayView$length$2$(self) {
  return self.len;
}
function moonbitlang$core$array$$ArrayView$op_get$2$(self, index) {
  return index >= 0 && index < self.len ? self.buf[self.start + index | 0] : moonbitlang$core$builtin$$abort$2$(`index out of bounds: the len is from 0 to ${moonbitlang$core$builtin$$Show$to_string$7$(self.len)} but the index is ${moonbitlang$core$builtin$$Show$to_string$7$(index)}`);
}
function moonbitlang$core$array$$ArrayView$swap$2$(self, i, j) {
  if (i >= 0 && (i < self.len && (j >= 0 && j < self.len))) {
    const temp = self.buf[self.start + i | 0];
    self.buf[self.start + i | 0] = self.buf[self.start + j | 0];
    self.buf[self.start + j | 0] = temp;
    return;
  } else {
    moonbitlang$core$builtin$$abort$5$(`index out of bounds: the len is from 0 to ${moonbitlang$core$builtin$$Show$to_string$7$(self.len)} but the index is (${moonbitlang$core$builtin$$Show$to_string$7$(i)}, ${moonbitlang$core$builtin$$Show$to_string$7$(j)})`);
    return;
  }
}
function moonbitlang$core$array$$Array$op_as_view$2$(self, start, end) {
  const len = self.length;
  let end$2;
  if (end === undefined) {
    end$2 = len;
  } else {
    const _Some = end;
    const _x = _Some;
    end$2 = _x < 0 ? len + _x | 0 : _x;
  }
  const start$2 = start < 0 ? len + start | 0 : start;
  return start$2 >= 0 && (start$2 <= end$2 && end$2 <= len) ? { buf: self, start: start$2, len: end$2 - start$2 | 0 } : moonbitlang$core$builtin$$abort$47$("View index out of bounds");
}
function moonbitlang$core$array$$Array$op_as_view$46$start$46$default$2$() {
  return 0;
}
function moonbitlang$core$array$$ArrayView$op_as_view$2$(self, start, end) {
  const len = moonbitlang$core$array$$ArrayView$length$2$(self);
  let end$2;
  if (end === undefined) {
    end$2 = len;
  } else {
    const _Some = end;
    const _x = _Some;
    end$2 = _x < 0 ? len + _x | 0 : _x;
  }
  const start$2 = start < 0 ? len + start | 0 : start;
  return start$2 >= 0 && (start$2 <= end$2 && end$2 <= len) ? { buf: self.buf, start: self.start + start$2 | 0, len: end$2 - start$2 | 0 } : moonbitlang$core$builtin$$abort$47$("View index out of bounds");
}
function moonbitlang$core$array$$Array$unsafe_pop$3$(self) {
  return moonbitlang$core$builtin$$JSArray$pop(self);
}
function moonbitlang$core$array$$Array$pop$3$(self) {
  if (self.length === 0) {
    return -1;
  } else {
    const v = moonbitlang$core$array$$Array$unsafe_pop$3$(self);
    return v;
  }
}
function moonbitlang$core$array$$Array$unsafe_grow_to_length$2$(self, new_len) {
  if (new_len >= self.length) {
    moonbitlang$core$builtin$$JSArray$set_length(self, new_len);
    return;
  } else {
    $panic();
    return;
  }
}
function moonbitlang$core$builtin$$Hasher$new(seed) {
  return { acc: seed + 374761393 | 0 };
}
function moonbitlang$core$builtin$$Hasher$new$46$seed$46$default() {
  return 0;
}
function moonbitlang$core$builtin$$Hasher$consume4(self, input) {
  self.acc = Math.imul(moonbitlang$core$builtin$$rotl(self.acc + (Math.imul(input, -1028477379) | 0) | 0, 17), 668265263) | 0;
}
function moonbitlang$core$builtin$$Hasher$combine_int(self, value) {
  self.acc = self.acc + 4 | 0;
  moonbitlang$core$builtin$$Hasher$consume4(self, value);
}
function moonbitlang$core$builtin$$Hasher$combine_string(self, value) {
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i < value.length) {
      moonbitlang$core$builtin$$Hasher$combine_int(self, value.charCodeAt(i));
      _tmp = i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$builtin$$Hasher$combine_char(self, value) {
  moonbitlang$core$builtin$$Hasher$combine_int(self, value);
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
function moonbitlang$core$builtin$$Hash$hash_combine$2$(self, hasher) {
  moonbitlang$core$builtin$$Hasher$combine_string(hasher, self);
}
function moonbitlang$core$builtin$$Hash$hash$7$(self) {
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
function moonbitlang$core$builtin$$Hash$hash_combine$7$(self, hasher) {
  moonbitlang$core$builtin$$Hasher$combine_int(hasher, self);
}
function moonbitlang$core$builtin$$Hash$hash_combine$70$(self, hasher) {
  if (self === undefined) {
    moonbitlang$core$builtin$$Hasher$combine_int(hasher, 0);
    return;
  } else {
    const _Some = self;
    const _x = _Some;
    moonbitlang$core$builtin$$Hasher$combine_int(hasher, 1);
    moonbitlang$core$builtin$$Hasher$combine$7$(hasher, _x);
    return;
  }
}
function moonbitlang$core$array$$FixedArray$unsafe_blit$11$(dst, dst_offset, src, src_offset, len) {
  if (dst === src && dst_offset < src_offset) {
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < len) {
        dst[dst_offset + i | 0] = src[src_offset + i | 0];
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
        dst[dst_offset + i | 0] = src[src_offset + i | 0];
        _tmp = i - 1 | 0;
        continue;
      } else {
        return;
      }
    }
  }
}
function moonbitlang$core$array$$FixedArray$unsafe_blit$13$(dst, dst_offset, src, src_offset, len) {
  if (dst === src && dst_offset < src_offset) {
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < len) {
        dst[dst_offset + i | 0] = src[src_offset + i | 0];
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
        dst[dst_offset + i | 0] = src[src_offset + i | 0];
        _tmp = i - 1 | 0;
        continue;
      } else {
        return;
      }
    }
  }
}
function moonbitlang$core$array$$FixedArray$unsafe_blit$7$(dst, dst_offset, src, src_offset, len) {
  if (dst === src && dst_offset < src_offset) {
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < len) {
        dst[dst_offset + i | 0] = src[src_offset + i | 0];
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
        dst[dst_offset + i | 0] = src[src_offset + i | 0];
        _tmp = i - 1 | 0;
        continue;
      } else {
        return;
      }
    }
  }
}
function moonbitlang$core$array$$FixedArray$unsafe_blit$90$(dst, dst_offset, src, src_offset, len) {
  if (dst === src && dst_offset < src_offset) {
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < len) {
        dst[dst_offset + i | 0] = src[src_offset + i | 0];
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
        dst[dst_offset + i | 0] = src[src_offset + i | 0];
        _tmp = i - 1 | 0;
        continue;
      } else {
        return;
      }
    }
  }
}
function moonbitlang$core$array$$FixedArray$unsafe_blit$91$(dst, dst_offset, src, src_offset, len) {
  if (dst === src && dst_offset < src_offset) {
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < len) {
        dst[dst_offset + i | 0] = src[src_offset + i | 0];
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
        dst[dst_offset + i | 0] = src[src_offset + i | 0];
        _tmp = i - 1 | 0;
        continue;
      } else {
        return;
      }
    }
  }
}
function moonbitlang$core$array$$FixedArray$blit_to$11$(self, dst, len, src_offset, dst_offset) {
  if ((dst_offset + len | 0) > dst.length || (src_offset + len | 0) > self.length) {
    $panic();
  }
  moonbitlang$core$array$$FixedArray$unsafe_blit$11$(dst, dst_offset, self, src_offset, len);
}
function moonbitlang$core$array$$FixedArray$blit_to$13$(self, dst, len, src_offset, dst_offset) {
  if ((dst_offset + len | 0) > dst.length || (src_offset + len | 0) > self.length) {
    $panic();
  }
  moonbitlang$core$array$$FixedArray$unsafe_blit$13$(dst, dst_offset, self, src_offset, len);
}
function moonbitlang$core$array$$FixedArray$blit_to$46$src_offset$46$default$11$() {
  return 0;
}
function moonbitlang$core$array$$FixedArray$blit_to$46$src_offset$46$default$13$() {
  return 0;
}
function moonbitlang$core$array$$FixedArray$blit_to$46$dst_offset$46$default$11$() {
  return 0;
}
function moonbitlang$core$array$$FixedArray$blit_to$46$dst_offset$46$default$13$() {
  return 0;
}
function moonbitlang$core$builtin$$to_string$46$abs$92$(n) {
  return n < 0 ? 0 - n | 0 : n;
}
function moonbitlang$core$builtin$$to_string$46$write_digits$93$(_env, num) {
  const buf = _env._1;
  const radix = _env._0;
  const num2 = num / radix | 0;
  if (num2 !== 0) {
    moonbitlang$core$builtin$$to_string$46$write_digits$93$(_env, num2);
  }
  moonbitlang$core$builtin$$StringBuilder$write_char(buf, "0123456789abcdefghijklmnopqrstuvwxyz".charCodeAt(moonbitlang$core$builtin$$to_string$46$abs$92$(num % radix | 0)));
}
function moonbitlang$core$int$$Int$to_string(self, radix) {
  const size_hint = 2 <= radix && radix < 7 ? 36 : 8 <= radix && radix < 15 ? 18 : 16 <= radix && radix <= 36 ? 10 : moonbitlang$core$builtin$$abort$7$("radix must be between 2 and 36");
  const buf = moonbitlang$core$builtin$$StringBuilder$new(size_hint);
  if (self < 0) {
    moonbitlang$core$builtin$$StringBuilder$write_char(buf, 45);
  }
  const _env = { _0: radix, _1: buf };
  moonbitlang$core$builtin$$to_string$46$write_digits$93$(_env, moonbitlang$core$builtin$$to_string$46$abs$92$(self));
  return moonbitlang$core$builtin$$StringBuilder$to_string(buf);
}
function moonbitlang$core$int$$Int$to_string$46$radix$46$default() {
  return 10;
}
function moonbitlang$core$builtin$$Show$to_string$7$(self) {
  return moonbitlang$core$int$$Int$to_string(self, 10);
}
function moonbitlang$core$array$$Array$map$94$(self, f) {
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
function moonbitlang$core$array$$Array$map$95$(self, f) {
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
function moonbitlang$core$array$$Array$map$96$(self, f) {
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
function moonbitlang$core$array$$Array$map$97$(self, f) {
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
function moonbitlang$core$array$$Array$map$98$(self, f) {
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
function moonbitlang$core$array$$Array$map$99$(self, f) {
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
function moonbitlang$core$array$$Array$map$100$(self, f) {
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
function moonbitlang$core$array$$Array$map$101$(self, f) {
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
function moonbitlang$core$array$$Array$map$102$(self, f) {
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
function moonbitlang$core$array$$Array$make$7$(len, elem) {
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
function moonbitlang$core$array$$Array$make$11$(len, elem) {
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
function moonbitlang$core$array$$Array$make$10$(len, elem) {
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
function moonbitlang$core$array$$Array$make$14$(len, elem) {
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
function moonbitlang$core$array$$Array$make$103$(len, elem) {
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
function moonbitlang$core$array$$Array$make$12$(len, elem) {
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
function moonbitlang$core$array$$Array$make$2$(len, elem) {
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
function moonbitlang$core$array$$Array$op_set$14$(self, index, value) {
  const len = self.length;
  if (index >= 0 && index < len) {
    self[index] = value;
    return;
  } else {
    $panic();
    return;
  }
}
function moonbitlang$core$array$$Array$op_set$7$(self, index, value) {
  const len = self.length;
  if (index >= 0 && index < len) {
    self[index] = value;
    return;
  } else {
    $panic();
    return;
  }
}
function moonbitlang$core$array$$Array$op_set$11$(self, index, value) {
  const len = self.length;
  if (index >= 0 && index < len) {
    self[index] = value;
    return;
  } else {
    $panic();
    return;
  }
}
function moonbitlang$core$array$$Array$op_set$10$(self, index, value) {
  const len = self.length;
  if (index >= 0 && index < len) {
    self[index] = value;
    return;
  } else {
    $panic();
    return;
  }
}
function moonbitlang$core$array$$Array$op_set$103$(self, index, value) {
  const len = self.length;
  if (index >= 0 && index < len) {
    self[index] = value;
    return;
  } else {
    $panic();
    return;
  }
}
function moonbitlang$core$array$$Array$op_set$12$(self, index, value) {
  const len = self.length;
  if (index >= 0 && index < len) {
    self[index] = value;
    return;
  } else {
    $panic();
    return;
  }
}
function moonbitlang$core$array$$Array$op_set$2$(self, index, value) {
  const len = self.length;
  if (index >= 0 && index < len) {
    self[index] = value;
    return;
  } else {
    $panic();
    return;
  }
}
function moonbitlang$core$array$$Array$unsafe_blit$2$(dst, dst_offset, src, src_offset, len) {
  moonbitlang$core$array$$FixedArray$unsafe_blit$90$(dst, dst_offset, src, src_offset, len);
}
function moonbitlang$core$array$$Array$blit_to$2$(self, dst, len, src_offset, dst_offset) {
  if (len >= 0 && (dst_offset >= 0 && (src_offset >= 0 && (dst_offset <= dst.length && (src_offset + len | 0) <= self.length)))) {
    if ((dst_offset + len | 0) > dst.length) {
      moonbitlang$core$array$$Array$unsafe_grow_to_length$2$(dst, dst_offset + len | 0);
    }
    moonbitlang$core$array$$Array$unsafe_blit$2$(dst, dst_offset, self, src_offset, len);
    return;
  } else {
    $panic();
    return;
  }
}
function moonbitlang$core$builtin$$Show$output$7$(self, logger) {
  logger.method_0(logger.self, moonbitlang$core$int$$Int$to_string(self, moonbitlang$core$int$$Int$to_string$46$radix$46$default()));
}
function moonbitlang$core$builtin$$Show$to_string$2$(self) {
  return self;
}
function moonbitlang$core$builtin$$Show$output$68$(self, logger) {
  if (self === undefined) {
    logger.method_0(logger.self, "None");
    return;
  } else {
    const _Some = self;
    const _x = _Some;
    logger.method_0(logger.self, "Some(");
    moonbitlang$core$builtin$$Logger$write_object$66$(logger, _x);
    logger.method_0(logger.self, ")");
    return;
  }
}
function moonbitlang$core$builtin$$Logger$write_iter$62$(self, iter, prefix, suffix, sep, trailing) {
  self.method_0(self.self, prefix);
  if (trailing) {
    iter((x) => {
      moonbitlang$core$builtin$$Logger$write_object$62$(self, x);
      self.method_0(self.self, sep);
      return 1;
    });
  } else {
    const first = { val: true };
    iter((x) => {
      if (first.val) {
        first.val = false;
      } else {
        self.method_0(self.self, sep);
      }
      moonbitlang$core$builtin$$Logger$write_object$62$(self, x);
      return 1;
    });
  }
  self.method_0(self.self, suffix);
}
function moonbitlang$core$builtin$$Logger$write_iter$12$(self, iter, prefix, suffix, sep, trailing) {
  self.method_0(self.self, prefix);
  if (trailing) {
    iter((x) => {
      moonbitlang$core$builtin$$Logger$write_object$12$(self, x);
      self.method_0(self.self, sep);
      return 1;
    });
  } else {
    const first = { val: true };
    iter((x) => {
      if (first.val) {
        first.val = false;
      } else {
        self.method_0(self.self, sep);
      }
      moonbitlang$core$builtin$$Logger$write_object$12$(self, x);
      return 1;
    });
  }
  self.method_0(self.self, suffix);
}
function moonbitlang$core$builtin$$Logger$write_iter$7$(self, iter, prefix, suffix, sep, trailing) {
  self.method_0(self.self, prefix);
  if (trailing) {
    iter((x) => {
      moonbitlang$core$builtin$$Logger$write_object$7$(self, x);
      self.method_0(self.self, sep);
      return 1;
    });
  } else {
    const first = { val: true };
    iter((x) => {
      if (first.val) {
        first.val = false;
      } else {
        self.method_0(self.self, sep);
      }
      moonbitlang$core$builtin$$Logger$write_object$7$(self, x);
      return 1;
    });
  }
  self.method_0(self.self, suffix);
}
function moonbitlang$core$builtin$$Logger$write_iter$46$prefix$46$default$62$() {
  return "[";
}
function moonbitlang$core$builtin$$Logger$write_iter$46$prefix$46$default$12$() {
  return "[";
}
function moonbitlang$core$builtin$$Logger$write_iter$46$prefix$46$default$7$() {
  return "[";
}
function moonbitlang$core$builtin$$Logger$write_iter$46$suffix$46$default$62$() {
  return "]";
}
function moonbitlang$core$builtin$$Logger$write_iter$46$suffix$46$default$12$() {
  return "]";
}
function moonbitlang$core$builtin$$Logger$write_iter$46$suffix$46$default$7$() {
  return "]";
}
function moonbitlang$core$builtin$$Logger$write_iter$46$sep$46$default$62$() {
  return ", ";
}
function moonbitlang$core$builtin$$Logger$write_iter$46$sep$46$default$12$() {
  return ", ";
}
function moonbitlang$core$builtin$$Logger$write_iter$46$sep$46$default$7$() {
  return ", ";
}
function moonbitlang$core$builtin$$Logger$write_iter$46$trailing$46$default$62$() {
  return false;
}
function moonbitlang$core$builtin$$Logger$write_iter$46$trailing$46$default$12$() {
  return false;
}
function moonbitlang$core$builtin$$Logger$write_iter$46$trailing$46$default$7$() {
  return false;
}
function moonbitlang$core$array$$Array$iter$62$(self) {
  return moonbitlang$core$builtin$$Iter$new$62$((yield_) => {
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
function moonbitlang$core$array$$Array$iter$12$(self) {
  return moonbitlang$core$builtin$$Iter$new$12$((yield_) => {
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
function moonbitlang$core$array$$Array$iter$7$(self) {
  return moonbitlang$core$builtin$$Iter$new$7$((yield_) => {
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
function moonbitlang$core$array$$Array$iter$15$(self) {
  return moonbitlang$core$builtin$$Iter$new$15$((yield_) => {
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
function moonbitlang$core$builtin$$Show$output$65$(self, logger) {
  moonbitlang$core$builtin$$Logger$write_iter$62$(logger, moonbitlang$core$array$$Array$iter$62$(self), moonbitlang$core$builtin$$Logger$write_iter$46$prefix$46$default$62$(), moonbitlang$core$builtin$$Logger$write_iter$46$suffix$46$default$62$(), moonbitlang$core$builtin$$Logger$write_iter$46$sep$46$default$62$(), moonbitlang$core$builtin$$Logger$write_iter$46$trailing$46$default$62$());
}
function moonbitlang$core$builtin$$Show$output$104$(self, logger) {
  moonbitlang$core$builtin$$Logger$write_iter$7$(logger, moonbitlang$core$array$$Array$iter$7$(self), moonbitlang$core$builtin$$Logger$write_iter$46$prefix$46$default$7$(), moonbitlang$core$builtin$$Logger$write_iter$46$suffix$46$default$7$(), moonbitlang$core$builtin$$Logger$write_iter$46$sep$46$default$7$(), moonbitlang$core$builtin$$Logger$write_iter$46$trailing$46$default$7$());
}
function moonbitlang$core$builtin$$Show$output$105$(self, logger) {
  moonbitlang$core$builtin$$Logger$write_iter$12$(logger, moonbitlang$core$array$$Array$iter$12$(self), moonbitlang$core$builtin$$Logger$write_iter$46$prefix$46$default$12$(), moonbitlang$core$builtin$$Logger$write_iter$46$suffix$46$default$12$(), moonbitlang$core$builtin$$Logger$write_iter$46$sep$46$default$12$(), moonbitlang$core$builtin$$Logger$write_iter$46$trailing$46$default$12$());
}
function moonbitlang$core$builtin$$Hash$hash$81$(self) {
  const hasher = moonbitlang$core$builtin$$Hasher$new(moonbitlang$core$builtin$$Hasher$new$46$seed$46$default());
  moonbitlang$core$builtin$$Hasher$combine$71$(hasher, self);
  return moonbitlang$core$builtin$$Hasher$finalize(hasher);
}
function moonbitlang$core$builtin$$Hash$hash$82$(self) {
  const hasher = moonbitlang$core$builtin$$Hasher$new(moonbitlang$core$builtin$$Hasher$new$46$seed$46$default());
  moonbitlang$core$builtin$$Hasher$combine$13$(hasher, self);
  return moonbitlang$core$builtin$$Hasher$finalize(hasher);
}
function moonbitlang$core$builtin$$Hash$hash$83$(self) {
  const hasher = moonbitlang$core$builtin$$Hasher$new(moonbitlang$core$builtin$$Hasher$new$46$seed$46$default());
  moonbitlang$core$builtin$$Hasher$combine$2$(hasher, self);
  return moonbitlang$core$builtin$$Hasher$finalize(hasher);
}
function moonbitlang$core$builtin$$Logger$write_sub_string$106$(self, value, start, len) {
  moonbitlang$core$builtin$$StringBuilder$write_substring(self, value, start, len);
}
function moonbitlang$core$builtin$$Show$to_string$107$(self) {
  const logger = moonbitlang$core$builtin$$StringBuilder$new(moonbitlang$core$builtin$$StringBuilder$new$46$size_hint$46$default());
  moonbitlang$core$builtin$$Show$output$105$(self, { self: logger, method_0: moonbitlang$core$builtin$$StringBuilder$write_string, method_1: moonbitlang$core$builtin$$StringBuilder$write_substring, method_2: moonbitlang$core$builtin$$Logger$write_sub_string$106$, method_3: moonbitlang$core$builtin$$StringBuilder$write_char });
  return moonbitlang$core$builtin$$StringBuilder$to_string(logger);
}
function moonbitlang$core$builtin$$Show$to_string$108$(self) {
  const logger = moonbitlang$core$builtin$$StringBuilder$new(moonbitlang$core$builtin$$StringBuilder$new$46$size_hint$46$default());
  moonbitlang$core$builtin$$Show$output$104$(self, { self: logger, method_0: moonbitlang$core$builtin$$StringBuilder$write_string, method_1: moonbitlang$core$builtin$$StringBuilder$write_substring, method_2: moonbitlang$core$builtin$$Logger$write_sub_string$106$, method_3: moonbitlang$core$builtin$$StringBuilder$write_char });
  return moonbitlang$core$builtin$$StringBuilder$to_string(logger);
}
function moonbitlang$core$builtin$$Show$to_string$106$(self) {
  const logger = moonbitlang$core$builtin$$StringBuilder$new(moonbitlang$core$builtin$$StringBuilder$new$46$size_hint$46$default());
  moonbitlang$core$builtin$$Show$output$69$(self, { self: logger, method_0: moonbitlang$core$builtin$$StringBuilder$write_string, method_1: moonbitlang$core$builtin$$StringBuilder$write_substring, method_2: moonbitlang$core$builtin$$Logger$write_sub_string$106$, method_3: moonbitlang$core$builtin$$StringBuilder$write_char });
  return moonbitlang$core$builtin$$StringBuilder$to_string(logger);
}
function moonbitlang$core$builtin$$Iter2$run$39$(self, f) {
  const _func = self;
  return _func(f);
}
function moonbitlang$core$builtin$$Iter2$run$38$(self, f) {
  const _func = self;
  return _func(f);
}
function moonbitlang$core$option$$Option$op_equal$8$(self, other) {
  if (self === undefined) {
    return other === undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    if (other === undefined) {
      return false;
    } else {
      const _Some$2 = other;
      const _x$2 = _Some$2;
      return moonbitlang$core$sorted_set$$Node$op_equal$7$(_x, _x$2);
    }
  }
}
function moonbitlang$core$option$$Option$op_equal$45$(self, other) {
  if (self === undefined) {
    return other === undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    if (other === undefined) {
      return false;
    } else {
      const _Some$2 = other;
      const _x$2 = _Some$2;
      return moonbitlang$core$builtin$$Eq$op_equal$45$(_x, _x$2);
    }
  }
}
function moonbitlang$core$option$$Option$op_equal$40$(self, other) {
  if (self === undefined) {
    return other === undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    if (other === undefined) {
      return false;
    } else {
      const _Some$2 = other;
      const _x$2 = _Some$2;
      return moonbitlang$core$sorted_map$$Node$op_equal$38$(_x, _x$2);
    }
  }
}
function moonbitlang$core$option$$Option$op_equal$7$(self, other) {
  if (self === undefined) {
    return other === undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    if (other === undefined) {
      return false;
    } else {
      const _Some$2 = other;
      const _x$2 = _Some$2;
      return _x === _x$2;
    }
  }
}
function moonbitlang$core$option$$Option$op_equal$41$(self, other) {
  if (self === undefined) {
    return other === undefined;
  } else {
    const _Some = self;
    const _x = _Some;
    if (other === undefined) {
      return false;
    } else {
      const _Some$2 = other;
      const _x$2 = _Some$2;
      return moonbitlang$core$sorted_map$$Node$op_equal$39$(_x, _x$2);
    }
  }
}
function moonbitlang$core$option$$Option$op_equal$3$(self, other) {
  if (self === -1) {
    return other === -1;
  } else {
    const _Some = self;
    const _x = _Some;
    if (other === -1) {
      return false;
    } else {
      const _Some$2 = other;
      const _x$2 = _Some$2;
      return _x === _x$2;
    }
  }
}
function moonbitlang$core$array$$Array$get$48$(self, index) {
  const len = self.length;
  return index >= 0 && index < len ? self[index] : undefined;
}
function moonbitlang$core$array$$Array$op_equal$14$(self, other) {
  const self_len = self.length;
  const other_len = other.length;
  if (self_len === other_len) {
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < self_len) {
        if (moonbitlang$core$option$$Option$op_equal$7$(self[i], other[i])) {
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
function moonbitlang$core$array$$Array$op_equal$10$(self, other) {
  const self_len = self.length;
  const other_len = other.length;
  if (self_len === other_len) {
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < self_len) {
        if (moonbitlang$core$array$$Array$op_equal$7$(self[i], other[i])) {
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
function moonbitlang$core$array$$Array$op_equal$7$(self, other) {
  const self_len = self.length;
  const other_len = other.length;
  if (self_len === other_len) {
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < self_len) {
        if (self[i] === other[i]) {
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
function moonbitlang$core$array$$Array$compare$10$(self, other) {
  const len_self = self.length;
  const len_other = other.length;
  const cmp = $compare_int(len_self, len_other);
  if (cmp === 0) {
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < len_self) {
        const cmp$2 = moonbitlang$core$array$$Array$compare$7$(self[i], other[i]);
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
function moonbitlang$core$array$$Array$compare$7$(self, other) {
  const len_self = self.length;
  const len_other = other.length;
  const cmp = $compare_int(len_self, len_other);
  if (cmp === 0) {
    let _tmp = 0;
    while (true) {
      const i = _tmp;
      if (i < len_self) {
        const cmp$2 = $compare_int(self[i], other[i]);
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
function moonbitlang$core$builtin$$UninitializedArray$unsafe_blit$48$(dst, dst_offset, src, src_offset, len) {
  moonbitlang$core$array$$FixedArray$unsafe_blit$91$(dst, dst_offset, src, src_offset, len);
}
function moonbitlang$core$array$$Array$append$2$(self, other) {
  moonbitlang$core$array$$Array$blit_to$2$(other, self, other.length, 0, self.length);
}
function moonbitlang$core$array$$Array$map_inplace$10$(self, f) {
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      moonbitlang$core$array$$Array$op_set$10$(self, _i, f(v));
      _tmp = _i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$Array$mapi$109$(self, f) {
  if (self.length === 0) {
    return [];
  }
  const arr = new Array(self.length);
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      arr[_i] = f(_i, v);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return arr;
}
function moonbitlang$core$array$$Array$mapi_inplace$14$(self, f) {
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      moonbitlang$core$array$$Array$op_set$14$(self, _i, f(_i, v));
      _tmp = _i + 1 | 0;
      continue;
    } else {
      return;
    }
  }
}
function moonbitlang$core$array$$Array$is_empty$3$(self) {
  return self.length === 0;
}
function moonbitlang$core$array$$Array$is_empty$7$(self) {
  return self.length === 0;
}
function moonbitlang$core$array$$Array$is_empty$80$(self) {
  return self.length === 0;
}
function moonbitlang$core$array$$Array$split_at$48$(self, index) {
  if (index < 0 || index > self.length) {
    const len = self.length;
    moonbitlang$core$builtin$$abort$5$(`index out of bounds: the len is from 0 to ${moonbitlang$core$builtin$$Show$to_string$7$(len)} but the index is ${moonbitlang$core$builtin$$Show$to_string$7$(index)}`);
  }
  const v1 = new Array(index);
  const v2 = new Array(self.length - index | 0);
  moonbitlang$core$builtin$$UninitializedArray$unsafe_blit$48$(v1, 0, self, 0, index);
  if (index !== self.length) {
    moonbitlang$core$builtin$$UninitializedArray$unsafe_blit$48$(v2, 0, self, index, self.length - index | 0);
  }
  return { _0: v1, _1: v2 };
}
function moonbitlang$core$array$$Array$contains$3$(self, value) {
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const v = self[_i];
      if (v === value) {
        return true;
      }
      _tmp = _i + 1 | 0;
      continue;
    } else {
      return false;
    }
  }
}
function moonbitlang$core$array$$Array$flatten$2$(self) {
  const v = [];
  const _len = self.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const arr = self[_i];
      moonbitlang$core$array$$Array$append$2$(v, arr);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return v;
}
function moonbitlang$core$array$$Array$fold$26$(self, init, f) {
  let _tmp = 0;
  let _tmp$2 = init;
  while (true) {
    const i = _tmp;
    const acc = _tmp$2;
    if (i < self.length) {
      const _tmp$3 = i + 1 | 0;
      const _tmp$4 = f(acc, moonbitlang$core$array$$Array$op_get$7$(self, i));
      _tmp = _tmp$3;
      _tmp$2 = _tmp$4;
      continue;
    } else {
      return acc;
    }
  }
}
function moonbitlang$core$array$$Array$fold$110$(self, init, f) {
  let _tmp = 0;
  let _tmp$2 = init;
  while (true) {
    const i = _tmp;
    const acc = _tmp$2;
    if (i < self.length) {
      const _tmp$3 = i + 1 | 0;
      const _tmp$4 = f(acc, moonbitlang$core$array$$Array$op_get$53$(self, i));
      _tmp = _tmp$3;
      _tmp$2 = _tmp$4;
      continue;
    } else {
      return acc;
    }
  }
}
function moonbitlang$core$array$$Array$fold$111$(self, init, f) {
  let _tmp = 0;
  let _tmp$2 = init;
  while (true) {
    const i = _tmp;
    const acc = _tmp$2;
    if (i < self.length) {
      const _tmp$3 = i + 1 | 0;
      const _tmp$4 = f(acc, moonbitlang$core$array$$Array$op_get$48$(self, i));
      _tmp = _tmp$3;
      _tmp$2 = _tmp$4;
      continue;
    } else {
      return acc;
    }
  }
}
function moonbitlang$core$array$$Array$fold$109$(self, init, f) {
  let _tmp = 0;
  let _tmp$2 = init;
  while (true) {
    const i = _tmp;
    const acc = _tmp$2;
    if (i < self.length) {
      const _tmp$3 = i + 1 | 0;
      const _tmp$4 = f(acc, moonbitlang$core$array$$Array$op_get$2$(self, i));
      _tmp = _tmp$3;
      _tmp$2 = _tmp$4;
      continue;
    } else {
      return acc;
    }
  }
}
function moonbitlang$core$array$$Array$fold$112$(self, init, f) {
  let _tmp = 0;
  let _tmp$2 = init;
  while (true) {
    const i = _tmp;
    const acc = _tmp$2;
    if (i < self.length) {
      const _tmp$3 = i + 1 | 0;
      const _tmp$4 = f(acc, moonbitlang$core$array$$Array$op_get$60$(self, i));
      _tmp = _tmp$3;
      _tmp$2 = _tmp$4;
      continue;
    } else {
      return acc;
    }
  }
}
function moonbitlang$core$builtin$$Iter$run$84$(self, f) {
  const _func = self;
  return _func(f);
}
function moonbitlang$core$builtin$$Iter$run$21$(self, f) {
  const _func = self;
  return _func(f);
}
function moonbitlang$core$builtin$$Iter$run$2$(self, f) {
  const _func = self;
  return _func(f);
}
function moonbitlang$core$builtin$$Eq$op_equal$20$(_x_159, _x_160) {
  if (_x_159 === 0) {
    if (_x_160 === 0) {
      return true;
    } else {
      return false;
    }
  } else {
    if (_x_160 === 1) {
      return true;
    } else {
      return false;
    }
  }
}
function moonbitlang$core$builtin$$Iter$empty$2$() {
  return (_param3) => 1;
}
function moonbitlang$core$builtin$$Iter$empty$19$() {
  return (_param3) => 1;
}
function moonbitlang$core$builtin$$Iter$empty$21$() {
  return (_param3) => 1;
}
function moonbitlang$core$builtin$$Iter$singleton$19$(a) {
  return (yield_) => yield_(a);
}
function moonbitlang$core$builtin$$Iter$singleton$21$(a) {
  return (yield_) => yield_(a);
}
function moonbitlang$core$builtin$$Iter$filter_map$113$(self, f) {
  return (yield_) => moonbitlang$core$builtin$$Iter$run$21$(self, (a) => {
    const _bind = f(a);
    if (_bind === undefined) {
      return 1;
    } else {
      const _Some = _bind;
      const _x = _Some;
      return yield_(_x);
    }
  });
}
function moonbitlang$core$builtin$$Iter$append$2$(self, a) {
  return (yield_) => moonbitlang$core$builtin$$Eq$op_equal$20$(moonbitlang$core$builtin$$Iter$run$2$(self, yield_), 1) ? yield_(a) : 0;
}
function moonbitlang$core$builtin$$Iter$to_array$21$(self) {
  const result = [];
  self((e) => {
    moonbitlang$core$array$$Array$push$21$(result, e);
    return 1;
  });
  return result;
}
function moonbitlang$core$builtin$$Iter$to_array$3$(self) {
  const result = [];
  self((e) => {
    moonbitlang$core$array$$Array$push$3$(result, e);
    return 1;
  });
  return result;
}
function moonbitlang$core$builtin$$Iter$collect$7$(self) {
  const result = [];
  self((_p) => {
    moonbitlang$core$array$$Array$push$7$(result, _p);
    return 1;
  });
  return result;
}
function moonbitlang$core$builtin$$Iter$collect$2$(self) {
  const result = [];
  self((_p) => {
    moonbitlang$core$array$$Array$push$2$(result, _p);
    return 1;
  });
  return result;
}
function moonbitlang$lex$lib$util$bounded_enum$$BoundedEnum$pred$3$(self) {
  return self - 1 | 0;
}
function moonbitlang$lex$lib$util$bounded_enum$$BoundedEnum$succ$3$(self) {
  return self + 1 | 0;
}
function moonbitlang$lex$lib$util$bounded_enum$$BoundedEnum$lower_bound$3$() {
  return 0;
}
function moonbitlang$lex$lib$util$bounded_enum$$BoundedEnum$upper_bound$3$() {
  return 1114111;
}
function moonbitlang$lex$lib$util$diet$$Tree$size$3$(self) {
  if (self.$tag === 0) {
    return 0;
  } else {
    const _Node = self;
    const _x = _Node._2;
    return _x;
  }
}
function moonbitlang$lex$lib$util$diet$$make_node$3$(min, max, l, r) {
  const size = (moonbitlang$lex$lib$util$diet$$Tree$size$3$(l) + moonbitlang$lex$lib$util$diet$$Tree$size$3$(r) | 0) + 1 | 0;
  return new $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Node$8$(l, r, size, min, max);
}
function moonbitlang$lex$lib$util$diet$$double_l$3$(min, max, l, r) {
  _L: {
    if (r.$tag === 1) {
      const _Node = r;
      const _x = _Node._0;
      if (_x.$tag === 1) {
        const _Node$2 = _x;
        return moonbitlang$lex$lib$util$diet$$make_node$3$(_Node$2._3, _Node$2._4, moonbitlang$lex$lib$util$diet$$make_node$3$(min, max, l, _Node$2._0), moonbitlang$lex$lib$util$diet$$make_node$3$(_Node._3, _Node._4, _Node$2._1, _Node._1));
      } else {
        break _L;
      }
    } else {
      break _L;
    }
  }
  return $panic();
}
function moonbitlang$lex$lib$util$diet$$double_r$3$(min, max, l, r) {
  _L: {
    if (l.$tag === 1) {
      const _Node = l;
      const _x = _Node._1;
      if (_x.$tag === 1) {
        const _Node$2 = _x;
        return moonbitlang$lex$lib$util$diet$$make_node$3$(_Node$2._3, _Node$2._4, moonbitlang$lex$lib$util$diet$$make_node$3$(_Node._3, _Node._4, _Node._0, _Node$2._0), moonbitlang$lex$lib$util$diet$$make_node$3$(min, max, _Node$2._1, r));
      } else {
        break _L;
      }
    } else {
      break _L;
    }
  }
  return $panic();
}
function moonbitlang$lex$lib$util$diet$$single_l$3$(min, max, l, r) {
  if (r.$tag === 1) {
    const _Node = r;
    return moonbitlang$lex$lib$util$diet$$make_node$3$(_Node._3, _Node._4, moonbitlang$lex$lib$util$diet$$make_node$3$(min, max, l, _Node._0), _Node._1);
  } else {
    return $panic();
  }
}
function moonbitlang$lex$lib$util$diet$$single_r$3$(min, max, l, r) {
  if (l.$tag === 1) {
    const _Node = l;
    return moonbitlang$lex$lib$util$diet$$make_node$3$(_Node._3, _Node._4, _Node._0, moonbitlang$lex$lib$util$diet$$make_node$3$(min, max, _Node._1, r));
  } else {
    return $panic();
  }
}
function moonbitlang$lex$lib$util$diet$$balance$3$(min, max, l, r) {
  const l_size = moonbitlang$lex$lib$util$diet$$Tree$size$3$(l);
  const r_size = moonbitlang$lex$lib$util$diet$$Tree$size$3$(r);
  if ((l_size + r_size | 0) <= 1) {
    return moonbitlang$lex$lib$util$diet$$make_node$3$(min, max, l, r);
  } else {
    if ((r_size + 1 | 0) > (Math.imul(3, l_size + 1 | 0) | 0)) {
      if (r.$tag === 1) {
        const _Node = r;
        return (moonbitlang$lex$lib$util$diet$$Tree$size$3$(_Node._0) + 1 | 0) < (Math.imul(2, moonbitlang$lex$lib$util$diet$$Tree$size$3$(_Node._1) + 1 | 0) | 0) ? moonbitlang$lex$lib$util$diet$$single_l$3$(min, max, l, _Node) : moonbitlang$lex$lib$util$diet$$double_l$3$(min, max, l, _Node);
      } else {
        return $panic();
      }
    } else {
      if ((l_size + 1 | 0) > (Math.imul(3, r_size + 1 | 0) | 0)) {
        if (l.$tag === 1) {
          const _Node = l;
          return (moonbitlang$lex$lib$util$diet$$Tree$size$3$(_Node._1) + 1 | 0) < (Math.imul(2, moonbitlang$lex$lib$util$diet$$Tree$size$3$(_Node._0) + 1 | 0) | 0) ? moonbitlang$lex$lib$util$diet$$single_r$3$(min, max, _Node, r) : moonbitlang$lex$lib$util$diet$$double_r$3$(min, max, _Node, r);
        } else {
          return $panic();
        }
      } else {
        return moonbitlang$lex$lib$util$diet$$make_node$3$(min, max, l, r);
      }
    }
  }
}
function moonbitlang$lex$lib$util$diet$$Tree$slice_from$3$(self, x) {
  let _tmp = self;
  let _tmp$2 = x;
  while (true) {
    const self$2 = _tmp;
    const x$2 = _tmp$2;
    if (self$2.$tag === 0) {
      return $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Empty$8$;
    } else {
      const _Node = self$2;
      if (x$2 < _Node._3) {
        return moonbitlang$lex$lib$util$diet$$balance$3$(_Node._3, _Node._4, moonbitlang$lex$lib$util$diet$$Tree$slice_from$3$(_Node._0, x$2), _Node._1);
      } else {
        if (x$2 > _Node._4) {
          _tmp = _Node._1;
          continue;
        } else {
          return moonbitlang$lex$lib$util$diet$$balance$3$(x$2, _Node._4, $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Empty$8$, _Node._1);
        }
      }
    }
  }
}
function moonbitlang$lex$lib$util$diet$$Tree$slice_util$3$(self, x) {
  let _tmp = self;
  let _tmp$2 = x;
  while (true) {
    const self$2 = _tmp;
    const x$2 = _tmp$2;
    if (self$2.$tag === 0) {
      return $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Empty$8$;
    } else {
      const _Node = self$2;
      if (x$2 > _Node._4) {
        return moonbitlang$lex$lib$util$diet$$balance$3$(_Node._3, _Node._4, _Node._0, moonbitlang$lex$lib$util$diet$$Tree$slice_util$3$(_Node._1, x$2));
      } else {
        if (x$2 < _Node._3) {
          _tmp = _Node._0;
          continue;
        } else {
          return moonbitlang$lex$lib$util$diet$$balance$3$(_Node._3, x$2, _Node._0, _Node._1);
        }
      }
    }
  }
}
function moonbitlang$lex$lib$util$diet$$Tree$slice_before$3$(self, x) {
  return x === moonbitlang$lex$lib$util$bounded_enum$$BoundedEnum$lower_bound$3$() ? $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Empty$8$ : moonbitlang$lex$lib$util$diet$$Tree$slice_util$3$(self, moonbitlang$lex$lib$util$bounded_enum$$BoundedEnum$pred$3$(x));
}
function moonbitlang$lex$lib$util$diet$$Tree$slice_after$3$(self, x) {
  return x === moonbitlang$lex$lib$util$bounded_enum$$BoundedEnum$upper_bound$3$() ? $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Empty$8$ : moonbitlang$lex$lib$util$diet$$Tree$slice_from$3$(self, moonbitlang$lex$lib$util$bounded_enum$$BoundedEnum$succ$3$(x));
}
function moonbitlang$lex$lib$util$diet$$Tree$slice$3$(self, min, max) {
  if (min === -1) {
    if (max === -1) {
      return $panic();
    } else {
      const _Some = max;
      const _x = _Some;
      return moonbitlang$lex$lib$util$diet$$Tree$slice_util$3$(self, _x);
    }
  } else {
    const _Some = min;
    const _x = _Some;
    if (max === -1) {
      return moonbitlang$lex$lib$util$diet$$Tree$slice_from$3$(self, _x);
    } else {
      const _Some$2 = max;
      const _x$2 = _Some$2;
      return moonbitlang$lex$lib$util$diet$$Tree$slice_util$3$(moonbitlang$lex$lib$util$diet$$Tree$slice_from$3$(self, _x), _x$2);
    }
  }
}
function moonbitlang$lex$lib$util$diet$$split_leftmost$3$(t) {
  if (t.$tag === 0) {
    return $panic();
  } else {
    const _Node = t;
    const _x = _Node._0;
    if (_x.$tag === 0) {
      const _x$2 = _Node._1;
      const _x$3 = _Node._3;
      const _x$4 = _Node._4;
      return { _0: { _0: _x$3, _1: _x$4 }, _1: _x$2 };
    } else {
      const _bind = moonbitlang$lex$lib$util$diet$$split_leftmost$3$(_Node._0);
      const _x$2 = _bind._0;
      const _x$3 = _x$2._0;
      const _x$4 = _x$2._1;
      const _x$5 = _bind._1;
      return { _0: { _0: _x$3, _1: _x$4 }, _1: moonbitlang$lex$lib$util$diet$$make_node$3$(_Node._3, _Node._4, _x$5, _Node._1) };
    }
  }
}
function moonbitlang$lex$lib$util$diet$$split_rightmost$3$(t) {
  if (t.$tag === 0) {
    return $panic();
  } else {
    const _Node = t;
    const _x = _Node._0;
    const _x$2 = _Node._1;
    if (_x$2.$tag === 0) {
      const _x$3 = _Node._3;
      const _x$4 = _Node._4;
      return { _0: { _0: _x$3, _1: _x$4 }, _1: _x };
    } else {
      const _bind = moonbitlang$lex$lib$util$diet$$split_rightmost$3$(_Node._1);
      const _x$3 = _bind._0;
      const _x$4 = _x$3._0;
      const _x$5 = _x$3._1;
      const _x$6 = _bind._1;
      return { _0: { _0: _x$4, _1: _x$5 }, _1: moonbitlang$lex$lib$util$diet$$make_node$3$(_Node._3, _Node._4, _Node._0, _x$6) };
    }
  }
}
function moonbitlang$lex$lib$util$diet$$empty$3$() {
  return $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Empty$8$;
}
function moonbitlang$lex$lib$util$diet$$singleton$3$(x) {
  return moonbitlang$lex$lib$util$diet$$make_node$3$(x, x, $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Empty$8$, $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Empty$8$);
}
function moonbitlang$lex$lib$util$diet$$interval$3$(min, max) {
  return moonbitlang$lex$lib$util$diet$$make_node$3$(min, max, $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Empty$8$, $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Empty$8$);
}
function moonbitlang$lex$lib$util$diet$$union$3$(t1, t2) {
  let t;
  _L: {
    if (t1.$tag === 0) {
      if (t2.$tag === 0) {
        return $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Empty$8$;
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
        return moonbitlang$lex$lib$util$diet$$union_aux$3$(t1$2, t2$2);
      }
    }
  }
  return t;
}
function moonbitlang$lex$lib$util$diet$$union_aux$3$(t1, t2) {
  if (t1.$tag === 1) {
    const _Node = t1;
    if (t2.$tag === 1) {
      const _Node$2 = t2;
      const l1 = _Node._0;
      const r1 = _Node._1;
      const l2 = moonbitlang$lex$lib$util$diet$$Tree$slice_before$3$(_Node$2, _Node._3);
      const r2 = moonbitlang$lex$lib$util$diet$$Tree$slice_after$3$(_Node$2, _Node._4);
      let _bind;
      if (_Node._3 === moonbitlang$lex$lib$util$bounded_enum$$BoundedEnum$lower_bound$3$()) {
        _bind = { _0: _Node._3, _1: $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Empty$8$ };
      } else {
        const l = moonbitlang$lex$lib$util$diet$$union$3$(l1, l2);
        if (l.$tag === 0) {
          _bind = { _0: _Node._3, _1: $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Empty$8$ };
        } else {
          const _bind$2 = moonbitlang$lex$lib$util$diet$$split_rightmost$3$(l);
          const _x = _bind$2._0;
          const _x$2 = _x._0;
          const _x$3 = _x._1;
          const _x$4 = _bind$2._1;
          _bind = moonbitlang$lex$lib$util$bounded_enum$$BoundedEnum$succ$3$(_x$3) === _Node._3 ? { _0: _x$2, _1: _x$4 } : { _0: _Node._3, _1: l };
        }
      }
      const _x = _bind._0;
      const _x$2 = _bind._1;
      let _bind$2;
      if (_Node._4 === moonbitlang$lex$lib$util$bounded_enum$$BoundedEnum$upper_bound$3$()) {
        _bind$2 = { _0: _Node._4, _1: $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Empty$8$ };
      } else {
        const r = moonbitlang$lex$lib$util$diet$$union$3$(r1, r2);
        if (r.$tag === 0) {
          _bind$2 = { _0: _Node._4, _1: $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Empty$8$ };
        } else {
          const _bind$3 = moonbitlang$lex$lib$util$diet$$split_leftmost$3$(r);
          const _x$3 = _bind$3._0;
          const _x$4 = _x$3._0;
          const _x$5 = _x$3._1;
          const _x$6 = _bind$3._1;
          _bind$2 = moonbitlang$lex$lib$util$bounded_enum$$BoundedEnum$pred$3$(_x$4) === _Node._4 ? { _0: _x$5, _1: _x$6 } : { _0: _Node._4, _1: r };
        }
      }
      const _x$3 = _bind$2._0;
      const _x$4 = _bind$2._1;
      return moonbitlang$lex$lib$util$diet$$balance$3$(_x, _x$3, _x$2, _x$4);
    } else {
      return $panic();
    }
  } else {
    return $panic();
  }
}
function moonbitlang$lex$lib$util$diet$$of$3$(array) {
  let t = $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Empty$8$;
  const _len = array.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const x = array[_i];
      t = moonbitlang$lex$lib$util$diet$$union$3$(t, moonbitlang$lex$lib$util$diet$$singleton$3$(x));
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return t;
}
function moonbitlang$lex$lib$util$diet$$Tree$contains$3$(self, x) {
  let _tmp = self;
  let _tmp$2 = x;
  while (true) {
    const self$2 = _tmp;
    const x$2 = _tmp$2;
    if (self$2.$tag === 0) {
      return false;
    } else {
      const _Node = self$2;
      if (x$2 < _Node._3) {
        _tmp = _Node._0;
        continue;
      } else {
        if (x$2 > _Node._4) {
          _tmp = _Node._1;
          continue;
        } else {
          return true;
        }
      }
    }
  }
}
function moonbitlang$lex$lib$util$diet$$concat$3$(l, r) {
  if (l.$tag === 0) {
    return r;
  } else {
    if (r.$tag === 0) {
      return l;
    } else {
      const _Node = l;
      const _Node$2 = r;
      const _bind = moonbitlang$lex$lib$util$diet$$split_leftmost$3$(_Node$2);
      const _x = _bind._0;
      const _x$2 = _x._0;
      const _x$3 = _x._1;
      const _x$4 = _bind._1;
      return moonbitlang$lex$lib$util$diet$$balance$3$(_x$2, _x$3, _Node, _x$4);
    }
  }
}
function moonbitlang$lex$lib$util$diet$$intersection$3$(t1, t2) {
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
        return moonbitlang$lex$lib$util$diet$$intersection_aux$3$(t1$2, t2$2);
      }
    }
  }
  return $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Empty$8$;
}
function moonbitlang$lex$lib$util$diet$$intersection_aux$3$(t1, t2) {
  if (t1.$tag === 1) {
    const _Node = t1;
    if (t2.$tag === 1) {
      const _Node$2 = t2;
      const l1 = _Node._0;
      const r1 = _Node._1;
      const l2 = moonbitlang$lex$lib$util$diet$$Tree$slice_before$3$(_Node$2, _Node._3);
      const r2 = moonbitlang$lex$lib$util$diet$$Tree$slice_after$3$(_Node$2, _Node._4);
      const l = moonbitlang$lex$lib$util$diet$$intersection$3$(l1, l2);
      const r = moonbitlang$lex$lib$util$diet$$intersection$3$(r1, r2);
      const m = moonbitlang$lex$lib$util$diet$$Tree$slice$3$(_Node$2, _Node._3, _Node._4);
      return moonbitlang$lex$lib$util$diet$$concat$3$(moonbitlang$lex$lib$util$diet$$concat$3$(l, m), r);
    } else {
      return $panic();
    }
  } else {
    return $panic();
  }
}
function moonbitlang$lex$lib$util$diet$$complement_aux$3$(min, max, t) {
  if (t.$tag === 0) {
    return moonbitlang$lex$lib$util$diet$$interval$3$(min, max);
  } else {
    const _Node = t;
    const l = _Node._3 === moonbitlang$lex$lib$util$bounded_enum$$BoundedEnum$lower_bound$3$() ? $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Empty$8$ : moonbitlang$lex$lib$util$diet$$complement_aux$3$(min, moonbitlang$lex$lib$util$bounded_enum$$BoundedEnum$pred$3$(_Node._3), _Node._0);
    const r = _Node._4 === moonbitlang$lex$lib$util$bounded_enum$$BoundedEnum$upper_bound$3$() ? $64$moonbitlang$47$lex$47$lib$47$util$47$diet$46$Tree$Empty$8$ : moonbitlang$lex$lib$util$diet$$complement_aux$3$(moonbitlang$lex$lib$util$bounded_enum$$BoundedEnum$succ$3$(_Node._4), max, _Node._1);
    return moonbitlang$lex$lib$util$diet$$concat$3$(l, r);
  }
}
function moonbitlang$lex$lib$util$diet$$Tree$complement$3$(self) {
  return moonbitlang$lex$lib$util$diet$$complement_aux$3$(moonbitlang$lex$lib$util$bounded_enum$$BoundedEnum$lower_bound$3$(), moonbitlang$lex$lib$util$bounded_enum$$BoundedEnum$upper_bound$3$(), self);
}
function moonbitlang$lex$lib$util$diet$$Tree$iter_intervals$3$(self) {
  return moonbitlang$core$builtin$$Iter$new$84$((yield_) => {
    if (self.$tag === 0) {
      return 1;
    } else {
      const _Node = self;
      const _bind = moonbitlang$core$builtin$$Iter$run$84$(moonbitlang$lex$lib$util$diet$$Tree$iter_intervals$3$(_Node._0), yield_);
      if (_bind === 1) {
        const _bind$2 = yield_({ _0: _Node._3, _1: _Node._4 });
        if (_bind$2 === 1) {
          const _bind$3 = moonbitlang$core$builtin$$Iter$run$84$(moonbitlang$lex$lib$util$diet$$Tree$iter_intervals$3$(_Node._1), yield_);
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
function moonbitlang$lex$lib$util$diet$$Tree$iter$3$(self) {
  const _bind = moonbitlang$lex$lib$util$diet$$Tree$iter_intervals$3$(self);
  return (_p) => _bind((_p$2) => {
    const _x = _p$2._0;
    const _x$2 = _p$2._1;
    const _func = moonbitlang$core$builtin$$Iter$new$3$((yield_) => {
      let _tmp = _x;
      while (true) {
        const x = _tmp;
        if (x <= _x$2) {
          const _bind$2 = yield_(x);
          if (_bind$2 === 1) {
          } else {
            return 0;
          }
          _tmp = moonbitlang$lex$lib$util$bounded_enum$$BoundedEnum$succ$3$(x);
          continue;
        } else {
          break;
        }
      }
      return 1;
    });
    return _func(_p);
  });
}
function moonbitlang$lex$lib$util$char_set$$empty() {
  return moonbitlang$lex$lib$util$diet$$empty$3$();
}
function moonbitlang$lex$lib$util$char_set$$singleton(x) {
  return moonbitlang$lex$lib$util$diet$$singleton$3$(x);
}
function moonbitlang$lex$lib$util$char_set$$range(min, max) {
  return moonbitlang$lex$lib$util$diet$$interval$3$(min, max);
}
function moonbitlang$lex$lib$util$char_set$$from_string(x) {
  return moonbitlang$lex$lib$util$diet$$of$3$(moonbitlang$core$builtin$$Iter$to_array$3$(moonbitlang$core$string$$String$iter(x)));
}
function moonbitlang$lex$lib$util$char_set$$CharSet$contains(self, x) {
  return moonbitlang$lex$lib$util$diet$$Tree$contains$3$(self, x);
}
function moonbitlang$lex$lib$util$char_set$$CharSet$union(self, other) {
  return moonbitlang$lex$lib$util$diet$$union$3$(self, other);
}
function moonbitlang$lex$lib$util$char_set$$CharSet$intersection(self, other) {
  return moonbitlang$lex$lib$util$diet$$intersection$3$(self, other);
}
function moonbitlang$lex$lib$util$char_set$$CharSet$complement(self) {
  return moonbitlang$lex$lib$util$diet$$Tree$complement$3$(self);
}
function moonbitlang$lex$lib$util$char_set$$CharSet$op_add(self, other) {
  return moonbitlang$lex$lib$util$char_set$$CharSet$union(self, other);
}
function moonbitlang$lex$lib$util$char_set$$CharSet$land(self, other) {
  return moonbitlang$lex$lib$util$char_set$$CharSet$intersection(self, other);
}
function moonbitlang$lex$lib$util$char_set$$CharSet$iter(self) {
  return moonbitlang$lex$lib$util$diet$$Tree$iter$3$(self);
}
function moonbitlang$lex$lib$type$$Regex$get_capture_names_rec(self) {
  let _tmp = self;
  _L: while (true) {
    const self$2 = _tmp;
    let re1;
    let re2;
    _L$2: {
      let re;
      _L$3: {
        switch (self$2.$tag) {
          case 9: {
            const _Capture = self$2;
            const _x = _Capture._0;
            const _x$2 = _Capture._1;
            return moonbitlang$core$builtin$$Iter$append$2$(moonbitlang$lex$lib$type$$Regex$get_capture_names_rec(_x), _x$2);
          }
          case 5: {
            const _Repetition = self$2;
            const _x$3 = _Repetition._0;
            re = _x$3;
            break _L$3;
          }
          case 6: {
            const _Option = self$2;
            const _x$4 = _Option._0;
            re = _x$4;
            break _L$3;
          }
          case 7: {
            const _Alter = self$2;
            const _x$5 = _Alter._0;
            const _x$6 = _Alter._1;
            re1 = _x$5;
            re2 = _x$6;
            break _L$2;
          }
          case 8: {
            const _Concat = self$2;
            const _x$7 = _Concat._0;
            const _x$8 = _Concat._1;
            re1 = _x$7;
            re2 = _x$8;
            break _L$2;
          }
          default: {
            return moonbitlang$core$builtin$$Iter$empty$2$();
          }
        }
      }
      _tmp = re;
      continue;
    }
    const _bind = moonbitlang$lex$lib$type$$Regex$get_capture_names_rec(re1);
    const _bind$2 = moonbitlang$lex$lib$type$$Regex$get_capture_names_rec(re2);
    return (_p) => _bind(_p) === 1 && _bind$2(_p) === 1 ? 1 : 0;
  }
}
function moonbitlang$lex$lib$type$$Regex$get_capture_names(self) {
  const result = moonbitlang$core$builtin$$Iter$collect$2$(moonbitlang$lex$lib$type$$Regex$get_capture_names_rec(self));
  moonbitlang$core$array$$Array$sort$2$(result);
  let _tmp = 1;
  while (true) {
    const i = _tmp;
    if (i < result.length) {
      if (moonbitlang$core$array$$Array$op_get$2$(result, i - 1 | 0) === moonbitlang$core$array$$Array$op_get$2$(result, i)) {
        moonbitlang$core$builtin$$abort$5$("duplicated capture var");
      }
      _tmp = i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return result;
}
function moonbitlang$lex$lib$type$$eliminate_named$46$eliminate_named_regex$114$(named_regexes, re) {
  let _tmp = re;
  _L: while (true) {
    const re$2 = _tmp;
    _L$2: {
      switch (re$2.$tag) {
        case 0: {
          break _L$2;
        }
        case 1: {
          break _L$2;
        }
        case 2: {
          break _L$2;
        }
        case 3: {
          break _L$2;
        }
        case 4: {
          break _L$2;
        }
        case 5: {
          const _Repetition = re$2;
          const _x = _Repetition._0;
          return new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Repetition(moonbitlang$lex$lib$type$$eliminate_named$46$eliminate_named_regex$114$(named_regexes, _x));
        }
        case 6: {
          const _Option = re$2;
          const _x$2 = _Option._0;
          return new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Option(moonbitlang$lex$lib$type$$eliminate_named$46$eliminate_named_regex$114$(named_regexes, _x$2));
        }
        case 7: {
          const _Alter = re$2;
          const _x$3 = _Alter._0;
          const _x$4 = _Alter._1;
          return new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Alter(moonbitlang$lex$lib$type$$eliminate_named$46$eliminate_named_regex$114$(named_regexes, _x$3), moonbitlang$lex$lib$type$$eliminate_named$46$eliminate_named_regex$114$(named_regexes, _x$4));
        }
        case 8: {
          const _Concat = re$2;
          const _x$5 = _Concat._0;
          const _x$6 = _Concat._1;
          return new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Concat(moonbitlang$lex$lib$type$$eliminate_named$46$eliminate_named_regex$114$(named_regexes, _x$5), moonbitlang$lex$lib$type$$eliminate_named$46$eliminate_named_regex$114$(named_regexes, _x$6));
        }
        case 9: {
          const _Capture = re$2;
          const _x$7 = _Capture._0;
          const _x$8 = _Capture._1;
          return new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Capture(moonbitlang$lex$lib$type$$eliminate_named$46$eliminate_named_regex$114$(named_regexes, _x$7), _x$8);
        }
        default: {
          const _Named = re$2;
          const _x$9 = _Named._0;
          const _bind = moonbitlang$core$builtin$$Map$get$78$(named_regexes, _x$9);
          if (_bind === undefined) {
            return moonbitlang$core$builtin$$abort$48$("Named regex not found");
          } else {
            const _Some = _bind;
            const _x$10 = _Some;
            _tmp = _x$10;
            continue _L;
          }
        }
      }
    }
    return re$2;
  }
}
function moonbitlang$lex$lib$type$$Lex$eliminate_named(self) {
  if (!moonbitlang$core$array$$Array$is_empty$80$(self.named_regexes)) {
    const named_regexes = moonbitlang$core$builtin$$Map$from_array$78$(self.named_regexes);
    return { header: self.header, named_regexes: [], rules: moonbitlang$core$array$$Array$map$102$(self.rules, (rule) => ({ name: rule.name, return_type: rule.return_type, vars: rule.vars, patterns: moonbitlang$core$array$$Array$map$101$(rule.patterns, (pattern) => {
      const _x = pattern._0;
      const _x$2 = pattern._1;
      return { _0: moonbitlang$lex$lib$type$$eliminate_named$46$eliminate_named_regex$114$(named_regexes, _x), _1: _x$2 };
    }) })), trailer: self.trailer };
  } else {
    return self;
  }
}
function moonbitlang$lex$lib$parser$$ParserBuf$from_string(content) {
  return { ptr: 0, content: content };
}
function moonbitlang$lex$lib$parser$$ParserBuf$step(self, i) {
  return { ptr: self.ptr + i | 0, content: self.content };
}
function moonbitlang$lex$lib$parser$$ParserBuf$step$46$i$46$default() {
  return 1;
}
function moonbitlang$lex$lib$parser$$ParserBuf$peek(self, i) {
  return (self.ptr + i | 0) >= self.content.length ? -1 : self.content.charCodeAt(self.ptr + i | 0);
}
function moonbitlang$lex$lib$parser$$ParserBuf$peek$46$i$46$default() {
  return 0;
}
function moonbitlang$lex$lib$parser$$ParserBuf$get_str(self, i) {
  return (self.ptr + i | 0) > self.content.length ? undefined : moonbitlang$core$string$$String$substring(self.content, self.ptr, self.ptr + i | 0);
}
function moonbitlang$lex$lib$parser$$ParserBuf$match_str(self, pattern) {
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i < pattern.length) {
      if (moonbitlang$core$builtin$$op_notequal$52$(moonbitlang$lex$lib$parser$$ParserBuf$peek(self, i), pattern.charCodeAt(i))) {
        return undefined;
      }
      _tmp = i + 1 | 0;
      continue;
    } else {
      return moonbitlang$lex$lib$parser$$ParserBuf$step(self, pattern.length);
    }
  }
}
function moonbitlang$lex$lib$parser$$ParserBuf$skip_ws(self) {
  let _tmp = self;
  while (true) {
    const p = _tmp;
    _L: {
      _L$2: {
        const _bind = moonbitlang$lex$lib$parser$$ParserBuf$peek(p, moonbitlang$lex$lib$parser$$ParserBuf$peek$46$i$46$default());
        if (_bind === -1) {
          break _L;
        } else {
          const _Some = _bind;
          const _x = _Some;
          switch (_x) {
            case 32: {
              break _L$2;
            }
            case 10: {
              break _L$2;
            }
            default: {
              break _L;
            }
          }
        }
      }
      _tmp = moonbitlang$lex$lib$parser$$ParserBuf$step(p, moonbitlang$lex$lib$parser$$ParserBuf$step$46$i$46$default());
      continue;
    }
    return p;
  }
}
function moonbitlang$lex$lib$parser$$ParserBuf$match_str_array(self, patterns) {
  let p = self;
  const _len = patterns.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const pattern = patterns[_i];
      const _bind = moonbitlang$lex$lib$parser$$ParserBuf$match_str(moonbitlang$lex$lib$parser$$ParserBuf$skip_ws(p), pattern);
      if (_bind === undefined) {
        return undefined;
      } else {
        const _Some = _bind;
        const _x = _Some;
        p = _x;
      }
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return p;
}
function moonbitlang$lex$lib$parser$$bind_none$24$(opt, f) {
  return opt === undefined ? f() : opt;
}
function moonbitlang$lex$lib$parser$$ParserBuf$match_re(self, re) {
  switch (re.$tag) {
    case 0: {
      return moonbitlang$core$option$$Option$map$34$(moonbitlang$lex$lib$parser$$ParserBuf$peek(self, moonbitlang$lex$lib$parser$$ParserBuf$peek$46$i$46$default()), (c) => ({ _0: moonbitlang$lex$lib$parser$$ParserBuf$step(self, moonbitlang$lex$lib$parser$$ParserBuf$step$46$i$46$default()), _1: moonbitlang$core$string$$String$from_array([c]) }));
    }
    case 1: {
      return moonbitlang$core$option$$when$24$(self.ptr === self.content.length, () => ({ _0: self, _1: "" }));
    }
    case 2: {
      const _ReStr = re;
      const _x = _ReStr._0;
      return moonbitlang$core$option$$Option$map$33$(moonbitlang$lex$lib$parser$$ParserBuf$match_str(self, _x), (p) => ({ _0: p, _1: _x }));
    }
    case 3: {
      const _ReChar = re;
      const _x$2 = _ReChar._0;
      return moonbitlang$core$option$$Option$bind$34$(moonbitlang$lex$lib$parser$$ParserBuf$peek(self, moonbitlang$lex$lib$parser$$ParserBuf$peek$46$i$46$default()), (c) => moonbitlang$core$option$$when$24$(_x$2 === c, () => ({ _0: moonbitlang$lex$lib$parser$$ParserBuf$step(self, moonbitlang$lex$lib$parser$$ParserBuf$step$46$i$46$default()), _1: moonbitlang$core$string$$String$from_array([c]) })));
    }
    case 4: {
      const _CharSet = re;
      const _x$3 = _CharSet._0;
      return moonbitlang$core$option$$Option$bind$34$(moonbitlang$lex$lib$parser$$ParserBuf$peek(self, moonbitlang$lex$lib$parser$$ParserBuf$peek$46$i$46$default()), (c) => moonbitlang$core$option$$when$24$(moonbitlang$lex$lib$util$char_set$$CharSet$contains(_x$3, c), () => ({ _0: moonbitlang$lex$lib$parser$$ParserBuf$step(self, moonbitlang$lex$lib$parser$$ParserBuf$step$46$i$46$default()), _1: moonbitlang$core$string$$String$from_array([c]) })));
    }
    case 5: {
      const _Repetition = re;
      const _x$4 = _Repetition._0;
      const _bind = moonbitlang$lex$lib$parser$$ParserBuf$match_re(self, _x$4);
      if (_bind === undefined) {
        return undefined;
      } else {
        const _Some = _bind;
        const _x$5 = _Some;
        const _x$6 = _x$5._0;
        const _x$7 = _x$5._1;
        return moonbitlang$core$option$$Option$map$32$(moonbitlang$lex$lib$parser$$ParserBuf$match_re(_x$6, new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Option(new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Repetition(_x$4))), (_param1) => {
          const _x$8 = _param1._0;
          const _x$9 = _param1._1;
          return { _0: _x$8, _1: `${_x$7}${_x$9}` };
        });
      }
    }
    case 6: {
      const _Option = re;
      const _x$5 = _Option._0;
      return moonbitlang$lex$lib$parser$$bind_none$24$(moonbitlang$lex$lib$parser$$ParserBuf$match_re(self, _x$5), () => ({ _0: self, _1: "" }));
    }
    case 7: {
      const _Alter = re;
      const _x$6 = _Alter._0;
      const _x$7 = _Alter._1;
      return moonbitlang$lex$lib$parser$$bind_none$24$(moonbitlang$lex$lib$parser$$ParserBuf$match_re(self, _x$6), () => moonbitlang$lex$lib$parser$$ParserBuf$match_re(self, _x$7));
    }
    case 8: {
      const _Concat = re;
      const _x$8 = _Concat._0;
      const _x$9 = _Concat._1;
      return moonbitlang$core$option$$Option$bind$32$(moonbitlang$lex$lib$parser$$ParserBuf$match_re(self, _x$8), (_param2) => {
        const _x$10 = _param2._0;
        const _x$11 = _param2._1;
        return moonbitlang$core$option$$Option$map$32$(moonbitlang$lex$lib$parser$$ParserBuf$match_re(_x$10, _x$9), (_param3) => {
          const _x$12 = _param3._0;
          const _x$13 = _param3._1;
          return { _0: _x$12, _1: `${_x$11}${_x$13}` };
        });
      });
    }
    case 9: {
      return moonbitlang$core$builtin$$abort$46$("Capture is not allowed in ParserBuf");
    }
    default: {
      return moonbitlang$core$builtin$$abort$46$("Named is not allowed in ParserBuf");
    }
  }
}
function moonbitlang$lex$lib$parser$$ParserBuf$repeat_match$53$(self, match_fn) {
  let _tmp = self;
  let _tmp$2 = [];
  while (true) {
    const p = _tmp;
    const arr = _tmp$2;
    const _bind = match_fn(p);
    if (_bind === undefined) {
      return { _0: p, _1: arr };
    } else {
      const _Some = _bind;
      const _x = _Some;
      const _x$2 = _x._0;
      const _x$3 = _x._1;
      moonbitlang$core$array$$Array$push$53$(arr, _x$3);
      _tmp = _x$2;
      continue;
    }
  }
}
function moonbitlang$lex$lib$parser$$ParserBuf$repeat_match$48$(self, match_fn) {
  let _tmp = self;
  let _tmp$2 = [];
  while (true) {
    const p = _tmp;
    const arr = _tmp$2;
    const _bind = match_fn(p);
    if (_bind === undefined) {
      return { _0: p, _1: arr };
    } else {
      const _Some = _bind;
      const _x = _Some;
      const _x$2 = _x._0;
      const _x$3 = _x._1;
      moonbitlang$core$array$$Array$push$48$(arr, _x$3);
      _tmp = _x$2;
      continue;
    }
  }
}
function moonbitlang$lex$lib$parser$$ParserBuf$repeat_match$88$(self, match_fn) {
  let _tmp = self;
  let _tmp$2 = [];
  while (true) {
    const p = _tmp;
    const arr = _tmp$2;
    const _bind = match_fn(p);
    if (_bind === undefined) {
      return { _0: p, _1: arr };
    } else {
      const _Some = _bind;
      const _x = _Some;
      const _x$2 = _x._0;
      const _x$3 = _x._1;
      moonbitlang$core$array$$Array$push$88$(arr, _x$3);
      _tmp = _x$2;
      continue;
    }
  }
}
function moonbitlang$lex$lib$parser$$ParserBuf$repeat_match$15$(self, match_fn) {
  let _tmp = self;
  let _tmp$2 = [];
  while (true) {
    const p = _tmp;
    const arr = _tmp$2;
    const _bind = match_fn(p);
    if (_bind === undefined) {
      return { _0: p, _1: arr };
    } else {
      const _Some = _bind;
      const _x = _Some;
      const _x$2 = _x._0;
      const _x$3 = _x._1;
      moonbitlang$core$array$$Array$push$15$(arr, _x$3);
      _tmp = _x$2;
      continue;
    }
  }
}
function moonbitlang$lex$lib$parser$$ParserBuf$repeat_match$89$(self, match_fn) {
  let _tmp = self;
  let _tmp$2 = [];
  while (true) {
    const p = _tmp;
    const arr = _tmp$2;
    const _bind = match_fn(p);
    if (_bind === undefined) {
      return { _0: p, _1: arr };
    } else {
      const _Some = _bind;
      const _x = _Some;
      const _x$2 = _x._0;
      const _x$3 = _x._1;
      moonbitlang$core$array$$Array$push$89$(arr, _x$3);
      _tmp = _x$2;
      continue;
    }
  }
}
function moonbitlang$lex$lib$parser$$ParserBuf$repeat_match$80$(self, match_fn) {
  let _tmp = self;
  let _tmp$2 = [];
  while (true) {
    const p = _tmp;
    const arr = _tmp$2;
    const _bind = match_fn(p);
    if (_bind === undefined) {
      return { _0: p, _1: arr };
    } else {
      const _Some = _bind;
      const _x = _Some;
      const _x$2 = _x._0;
      const _x$3 = _x._1;
      moonbitlang$core$array$$Array$push$80$(arr, _x$3);
      _tmp = _x$2;
      continue;
    }
  }
}
function moonbitlang$lex$lib$parser$$char$46$hex_char_to_int$115$(c) {
  const c$2 = c;
  return c$2 >= 48 && c$2 <= 57 ? c$2 - 48 | 0 : c$2 >= 97 && c$2 <= 102 ? (c$2 - 97 | 0) + 10 | 0 : c$2 >= 65 && c$2 <= 70 ? (c$2 - 65 | 0) + 10 | 0 : moonbitlang$core$builtin$$abort$7$("illegal hex char");
}
function moonbitlang$lex$lib$parser$$ParserBuf$char(self) {
  return moonbitlang$core$option$$Option$map$27$(moonbitlang$lex$lib$parser$$ParserBuf$match_re(self, moonbitlang$lex$lib$parser$$char_re), (_param4) => {
    const _x = _param4._0;
    const _x$2 = _param4._1;
    let ch;
    if (_x$2.length === 3) {
      ch = _x$2.charCodeAt(1);
    } else {
      if (_x$2.length === 4) {
        const _bind = _x$2.charCodeAt(2);
        switch (_bind) {
          case 116: {
            ch = 9;
            break;
          }
          case 114: {
            ch = 13;
            break;
          }
          case 110: {
            ch = 10;
            break;
          }
          case 92: {
            ch = 92;
            break;
          }
          case 39: {
            ch = 39;
            break;
          }
          default: {
            ch = moonbitlang$core$builtin$$abort$3$("unsupported escaped char");
          }
        }
      } else {
        if (_x$2.length === 6) {
          const c1 = moonbitlang$lex$lib$parser$$char$46$hex_char_to_int$115$(_x$2.charCodeAt(3));
          const c2 = moonbitlang$lex$lib$parser$$char$46$hex_char_to_int$115$(_x$2.charCodeAt(4));
          ch = (Math.imul(c1, 16) | 0) + c2 | 0;
        } else {
          ch = moonbitlang$core$builtin$$abort$3$("illegal char");
        }
      }
    }
    return { _0: _x, _1: ch };
  });
}
function moonbitlang$lex$lib$parser$$ParserBuf$string(self) {
  return moonbitlang$core$option$$Option$map$32$(moonbitlang$lex$lib$parser$$ParserBuf$match_re(self, moonbitlang$lex$lib$parser$$string_re), (_param5) => {
    const _x = _param5._0;
    const _x$2 = _param5._1;
    return { _0: _x, _1: moonbitlang$core$string$$String$substring(_x$2, 1, _x$2.length - 1 | 0) };
  });
}
function moonbitlang$lex$lib$parser$$ParserBuf$charset_inside(self) {
  const _bind = moonbitlang$lex$lib$parser$$ParserBuf$repeat_match$53$(self, (p) => {
    const c = moonbitlang$lex$lib$parser$$ParserBuf$char(moonbitlang$lex$lib$parser$$ParserBuf$skip_ws(p));
    return moonbitlang$core$option$$Option$bind$25$(c, (_param6) => {
      const _x = _param6._0;
      const _x$2 = _param6._1;
      const p$2 = moonbitlang$lex$lib$parser$$ParserBuf$skip_ws(_x);
      if (moonbitlang$core$option$$Option$op_equal$3$(moonbitlang$lex$lib$parser$$ParserBuf$peek(p$2, moonbitlang$lex$lib$parser$$ParserBuf$peek$46$i$46$default()), 45)) {
        const ch_end = moonbitlang$lex$lib$parser$$ParserBuf$char(moonbitlang$lex$lib$parser$$ParserBuf$skip_ws(moonbitlang$lex$lib$parser$$ParserBuf$step(p$2, moonbitlang$lex$lib$parser$$ParserBuf$step$46$i$46$default())));
        return moonbitlang$core$option$$Option$map$25$(ch_end, (_param7) => {
          const _x$3 = _param7._0;
          const _x$4 = _param7._1;
          return { _0: _x$3, _1: moonbitlang$lex$lib$util$char_set$$range(_x$2, _x$4) };
        });
      } else {
        return { _0: p$2, _1: moonbitlang$lex$lib$util$char_set$$singleton(_x$2) };
      }
    });
  });
  const _x = _bind._0;
  const _x$2 = _bind._1;
  return { _0: _x, _1: moonbitlang$core$array$$Array$fold$110$(_x$2, moonbitlang$lex$lib$util$char_set$$empty(), moonbitlang$lex$lib$util$char_set$$CharSet$union) };
}
function moonbitlang$lex$lib$parser$$ParserBuf$identifier(self) {
  const re = new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Concat(new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$CharSet(moonbitlang$lex$lib$util$char_set$$range(97, 122)), new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Option(new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Repetition(new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$CharSet(moonbitlang$lex$lib$util$char_set$$CharSet$op_add(moonbitlang$lex$lib$util$char_set$$CharSet$op_add(moonbitlang$lex$lib$util$char_set$$CharSet$op_add(moonbitlang$lex$lib$util$char_set$$range(97, 122), moonbitlang$lex$lib$util$char_set$$range(65, 90)), moonbitlang$lex$lib$util$char_set$$range(48, 57)), moonbitlang$lex$lib$util$char_set$$singleton(95))))));
  return moonbitlang$lex$lib$parser$$ParserBuf$match_re(self, re);
}
function moonbitlang$lex$lib$parser$$ParserBuf$regex_nonleftrec(self) {
  const p = moonbitlang$lex$lib$parser$$ParserBuf$skip_ws(self);
  _L: {
    _L$2: {
      _L$3: {
        const _bind = moonbitlang$lex$lib$parser$$ParserBuf$peek(p, moonbitlang$lex$lib$parser$$ParserBuf$peek$46$i$46$default());
        const _bind$2 = moonbitlang$lex$lib$parser$$ParserBuf$peek(p, 1);
        if (_bind === -1) {
          break _L;
        } else {
          const _Some = _bind;
          const _x = _Some;
          switch (_x) {
            case 39: {
              return moonbitlang$core$option$$Option$map$28$(moonbitlang$lex$lib$parser$$ParserBuf$char(p), (_param8) => {
                const _x$2 = _param8._0;
                const _x$3 = _param8._1;
                return { _0: _x$2, _1: new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$ReChar(_x$3) };
              });
            }
            case 34: {
              return moonbitlang$core$option$$Option$map$30$(moonbitlang$lex$lib$parser$$ParserBuf$string(p), (_param9) => {
                const _x$2 = _param9._0;
                const _x$3 = _param9._1;
                return { _0: _x$2, _1: new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$ReStr(_x$3) };
              });
            }
            case 91: {
              if (_bind$2 === -1) {
                break _L$3;
              } else {
                const _Some$2 = _bind$2;
                const _x$2 = _Some$2;
                if (_x$2 === 94) {
                  const _bind$3 = moonbitlang$lex$lib$parser$$ParserBuf$charset_inside(moonbitlang$lex$lib$parser$$ParserBuf$step(p, 2));
                  const _x$3 = _bind$3._0;
                  const _x$4 = _bind$3._1;
                  return moonbitlang$core$option$$Option$map$29$(moonbitlang$lex$lib$parser$$ParserBuf$match_str(_x$3, "]"), (p$2) => ({ _0: p$2, _1: new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$CharSet(moonbitlang$lex$lib$util$char_set$$CharSet$complement(_x$4)) }));
                } else {
                  break _L$3;
                }
              }
            }
            case 40: {
              return moonbitlang$core$option$$Option$bind$31$(moonbitlang$lex$lib$parser$$ParserBuf$regex(moonbitlang$lex$lib$parser$$ParserBuf$step(p, moonbitlang$lex$lib$parser$$ParserBuf$step$46$i$46$default())), (_param10) => {
                const _x$2 = _param10._0;
                const _x$3 = _param10._1;
                return moonbitlang$core$option$$Option$map$29$(moonbitlang$lex$lib$parser$$ParserBuf$match_str(_x$2, ")"), (p$2) => ({ _0: p$2, _1: _x$3 }));
              });
            }
            default: {
              if (65 <= _x && _x <= 90) {
                break _L$2;
              } else {
                if (97 <= _x && _x <= 122) {
                  break _L$2;
                } else {
                  if (_x === 95) {
                    return { _0: moonbitlang$lex$lib$parser$$ParserBuf$step(p, moonbitlang$lex$lib$parser$$ParserBuf$step$46$i$46$default()), _1: $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Underscore };
                  } else {
                    break _L;
                  }
                }
              }
            }
          }
        }
      }
      const _bind = moonbitlang$lex$lib$parser$$ParserBuf$charset_inside(moonbitlang$lex$lib$parser$$ParserBuf$step(p, moonbitlang$lex$lib$parser$$ParserBuf$step$46$i$46$default()));
      const _x = _bind._0;
      const _x$2 = _bind._1;
      return moonbitlang$core$option$$Option$map$29$(moonbitlang$lex$lib$parser$$ParserBuf$match_str(_x, "]"), (p$2) => ({ _0: p$2, _1: new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$CharSet(_x$2) }));
    }
    return moonbitlang$core$option$$Option$map$30$(moonbitlang$lex$lib$parser$$ParserBuf$identifier(p), (_param11) => {
      const _x = _param11._0;
      const _x$2 = _param11._1;
      return _x$2 === "eof" ? { _0: _x, _1: $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$EOF } : { _0: _x, _1: new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Named(_x$2) };
    });
  }
  return undefined;
}
function moonbitlang$lex$lib$parser$$ParserBuf$regex(self) {
  const _bind = moonbitlang$lex$lib$parser$$ParserBuf$repeat_match$48$(self, (p) => moonbitlang$core$option$$Option$bind$31$(moonbitlang$lex$lib$parser$$ParserBuf$regex_nonleftrec(p), (_param14) => {
    const _x = _param14._0;
    const _x$2 = _param14._1;
    return moonbitlang$lex$lib$parser$$ParserBuf$regex_leftrec(_x, _x$2);
  }));
  const _x = _bind._0;
  const _x$2 = _bind._1;
  if (_x$2.length === 0) {
    return undefined;
  } else {
    const head = moonbitlang$core$option$$Option$unwrap$48$(moonbitlang$core$array$$Array$get$48$(_x$2, 0));
    return { _0: _x, _1: moonbitlang$core$array$$Array$fold$111$(moonbitlang$core$array$$Array$split_at$48$(_x$2, 1)._1, head, (a, b) => new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Concat(a, b)) };
  }
}
function moonbitlang$lex$lib$parser$$ParserBuf$regex_leftrec(self, re) {
  let _tmp = self;
  let _tmp$2 = re;
  _L: while (true) {
    const self$2 = _tmp;
    const re$2 = _tmp$2;
    const p = moonbitlang$lex$lib$parser$$ParserBuf$skip_ws(self$2);
    _L$2: {
      const _bind = moonbitlang$lex$lib$parser$$ParserBuf$peek(p, moonbitlang$lex$lib$parser$$ParserBuf$peek$46$i$46$default());
      if (_bind === -1) {
        break _L$2;
      } else {
        const _Some = _bind;
        const _x = _Some;
        switch (_x) {
          case 124: {
            return moonbitlang$core$option$$Option$map$31$(moonbitlang$lex$lib$parser$$ParserBuf$regex(moonbitlang$lex$lib$parser$$ParserBuf$step(p, moonbitlang$lex$lib$parser$$ParserBuf$step$46$i$46$default())), (_param12) => {
              const _x$2 = _param12._0;
              const _x$3 = _param12._1;
              return { _0: _x$2, _1: new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Alter(re$2, _x$3) };
            });
          }
          case 42: {
            const _tmp$3 = moonbitlang$lex$lib$parser$$ParserBuf$step(p, moonbitlang$lex$lib$parser$$ParserBuf$step$46$i$46$default());
            const _tmp$4 = new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Option(new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Repetition(re$2));
            _tmp = _tmp$3;
            _tmp$2 = _tmp$4;
            continue _L;
          }
          case 43: {
            const _tmp$5 = moonbitlang$lex$lib$parser$$ParserBuf$step(p, moonbitlang$lex$lib$parser$$ParserBuf$step$46$i$46$default());
            const _tmp$6 = new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Repetition(re$2);
            _tmp = _tmp$5;
            _tmp$2 = _tmp$6;
            continue _L;
          }
          case 63: {
            const _tmp$7 = moonbitlang$lex$lib$parser$$ParserBuf$step(p, moonbitlang$lex$lib$parser$$ParserBuf$step$46$i$46$default());
            const _tmp$8 = new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Option(re$2);
            _tmp = _tmp$7;
            _tmp$2 = _tmp$8;
            continue _L;
          }
          case 97: {
            return moonbitlang$core$option$$Option$bind$29$(moonbitlang$lex$lib$parser$$ParserBuf$match_str(p, "as"), (p$2) => moonbitlang$core$option$$Option$map$30$(moonbitlang$lex$lib$parser$$ParserBuf$identifier(moonbitlang$lex$lib$parser$$ParserBuf$skip_ws(p$2)), (_param13) => {
              const _x$2 = _param13._0;
              const _x$3 = _param13._1;
              return { _0: _x$2, _1: new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Capture(re$2, _x$3) };
            }));
          }
          default: {
            break _L$2;
          }
        }
      }
    }
    return { _0: p, _1: re$2 };
  }
}
function moonbitlang$lex$lib$parser$$ParserBuf$ty(self) {
  const stack = [];
  let _tmp = 0;
  _L: while (true) {
    const i = _tmp;
    _L$2: {
      let c;
      _L$3: {
        _L$4: {
          const _bind = moonbitlang$lex$lib$parser$$ParserBuf$peek(self, i);
          if (_bind === -1) {
            return undefined;
          } else {
            const _Some = _bind;
            const _x = _Some;
            switch (_x) {
              case 91: {
                c = _x;
                break _L$4;
              }
              case 40: {
                c = _x;
                break _L$4;
              }
              case 44: {
                if (moonbitlang$core$array$$Array$is_empty$3$(stack)) {
                  return { _0: moonbitlang$lex$lib$parser$$ParserBuf$step(self, i), _1: moonbitlang$core$option$$Option$unwrap$2$(moonbitlang$lex$lib$parser$$ParserBuf$get_str(self, i)) };
                }
                break;
              }
              case 123: {
                if (moonbitlang$core$array$$Array$is_empty$3$(stack)) {
                  return { _0: moonbitlang$lex$lib$parser$$ParserBuf$step(self, i), _1: moonbitlang$core$option$$Option$unwrap$2$(moonbitlang$lex$lib$parser$$ParserBuf$get_str(self, i)) };
                } else {
                  return undefined;
                }
              }
              case 41: {
                if (moonbitlang$core$array$$Array$is_empty$3$(stack)) {
                  return { _0: moonbitlang$lex$lib$parser$$ParserBuf$step(self, i), _1: moonbitlang$core$option$$Option$unwrap$2$(moonbitlang$lex$lib$parser$$ParserBuf$get_str(self, i)) };
                } else {
                  if (moonbitlang$core$builtin$$op_notequal$52$(moonbitlang$core$array$$Array$pop$3$(stack), 40)) {
                    return undefined;
                  }
                }
                break;
              }
              case 93: {
                if (moonbitlang$core$builtin$$op_notequal$52$(moonbitlang$core$array$$Array$pop$3$(stack), 91)) {
                  return undefined;
                }
                break;
              }
              default: {
                break _L$2;
              }
            }
          }
          break _L$3;
        }
        moonbitlang$core$array$$Array$push$3$(stack, c);
      }
      break _L$2;
    }
    _tmp = i + 1 | 0;
    continue;
  }
}
function moonbitlang$lex$lib$parser$$ParserBuf$var_definition(self) {
  return moonbitlang$core$option$$Option$bind$36$(moonbitlang$lex$lib$parser$$ParserBuf$identifier(moonbitlang$lex$lib$parser$$ParserBuf$skip_ws(self)), (_param15) => {
    const _x = _param15._0;
    const _x$2 = _param15._1;
    return moonbitlang$core$option$$Option$bind$35$(moonbitlang$lex$lib$parser$$ParserBuf$match_str(moonbitlang$lex$lib$parser$$ParserBuf$skip_ws(_x), ":"), (p) => {
      const _bind = moonbitlang$lex$lib$parser$$ParserBuf$ty(p);
      if (_bind === undefined) {
        return undefined;
      } else {
        const _Some = _bind;
        const _x$3 = _Some;
        const _x$4 = _x$3._0;
        const _x$5 = _x$3._1;
        return { _0: _x$4, _1: { identifier: _x$2, ty: _x$5 } };
      }
    });
  });
}
function moonbitlang$lex$lib$parser$$ParserBuf$code_block(self) {
  const re = new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Option(new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Repetition(new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Alter(new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$CharSet(moonbitlang$lex$lib$util$char_set$$CharSet$complement(moonbitlang$lex$lib$util$char_set$$from_string("{}'\""))), new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Alter(moonbitlang$lex$lib$parser$$char_re, moonbitlang$lex$lib$parser$$string_re))));
  return moonbitlang$core$option$$Option$bind$33$(moonbitlang$lex$lib$parser$$ParserBuf$match_str(moonbitlang$lex$lib$parser$$ParserBuf$skip_ws(self), "{"), (p) => {
    const strbuf = [];
    let mut_p = p;
    let _tmp = 1;
    _L: while (true) {
      const count = _tmp;
      const _bind = moonbitlang$lex$lib$parser$$ParserBuf$match_re(mut_p, re);
      if (_bind === undefined) {
        return undefined;
      } else {
        const _Some = _bind;
        const _x = _Some;
        const _x$2 = _x._0;
        const _x$3 = _x._1;
        moonbitlang$core$array$$Array$push$2$(strbuf, _x$3);
        _L$2: {
          const _bind$2 = moonbitlang$lex$lib$parser$$ParserBuf$peek(_x$2, moonbitlang$lex$lib$parser$$ParserBuf$peek$46$i$46$default());
          if (_bind$2 === -1) {
            break _L$2;
          } else {
            const _Some$2 = _bind$2;
            const _x$4 = _Some$2;
            switch (_x$4) {
              case 123: {
                moonbitlang$core$array$$Array$push$2$(strbuf, "{");
                mut_p = moonbitlang$lex$lib$parser$$ParserBuf$step(_x$2, moonbitlang$lex$lib$parser$$ParserBuf$step$46$i$46$default());
                _tmp = count + 1 | 0;
                continue _L;
              }
              case 125: {
                mut_p = moonbitlang$lex$lib$parser$$ParserBuf$step(_x$2, moonbitlang$lex$lib$parser$$ParserBuf$step$46$i$46$default());
                if (count === 1) {
                  break _L;
                } else {
                  moonbitlang$core$array$$Array$push$2$(strbuf, "}");
                  _tmp = count - 1 | 0;
                  continue _L;
                }
              }
              default: {
                break _L$2;
              }
            }
          }
        }
        moonbitlang$core$builtin$$abort$5$("unreachable");
      }
      continue;
    }
    return { _0: mut_p, _1: moonbitlang$core$array$$Array$fold$109$(strbuf, "", (a, b) => `${a}${b}`) };
  });
}
function moonbitlang$lex$lib$parser$$ParserBuf$named_regex(self) {
  const _bind = moonbitlang$lex$lib$parser$$ParserBuf$match_str(moonbitlang$lex$lib$parser$$ParserBuf$skip_ws(self), "let");
  if (_bind === undefined) {
    return undefined;
  } else {
    const _Some = _bind;
    const _x = _Some;
    const _bind$2 = moonbitlang$lex$lib$parser$$ParserBuf$identifier(moonbitlang$lex$lib$parser$$ParserBuf$skip_ws(_x));
    if (_bind$2 === undefined) {
      return undefined;
    } else {
      const _Some$2 = _bind$2;
      const _x$2 = _Some$2;
      const _x$3 = _x$2._0;
      const _x$4 = _x$2._1;
      const _bind$3 = moonbitlang$lex$lib$parser$$ParserBuf$match_str(moonbitlang$lex$lib$parser$$ParserBuf$skip_ws(_x$3), "=");
      if (_bind$3 === undefined) {
        return undefined;
      } else {
        const _Some$3 = _bind$3;
        const _x$5 = _Some$3;
        const _bind$4 = moonbitlang$lex$lib$parser$$ParserBuf$regex(_x$5);
        if (_bind$4 === undefined) {
          return undefined;
        } else {
          const _Some$4 = _bind$4;
          const _x$6 = _Some$4;
          const _x$7 = _x$6._0;
          const _x$8 = _x$6._1;
          const _bind$5 = moonbitlang$lex$lib$parser$$ParserBuf$match_str(moonbitlang$lex$lib$parser$$ParserBuf$skip_ws(_x$7), ";");
          if (_bind$5 === undefined) {
            return undefined;
          } else {
            const _Some$5 = _bind$5;
            const _x$9 = _Some$5;
            return { _0: _x$9, _1: { _0: _x$4, _1: _x$8 } };
          }
        }
      }
    }
  }
}
function moonbitlang$lex$lib$parser$$ParserBuf$rule(self) {
  const _bind = moonbitlang$lex$lib$parser$$ParserBuf$match_str(moonbitlang$lex$lib$parser$$ParserBuf$skip_ws(self), "rule");
  if (_bind === undefined) {
    return undefined;
  } else {
    const _Some = _bind;
    const _x = _Some;
    const _bind$2 = moonbitlang$lex$lib$parser$$ParserBuf$identifier(moonbitlang$lex$lib$parser$$ParserBuf$skip_ws(_x));
    if (_bind$2 === undefined) {
      return undefined;
    } else {
      const _Some$2 = _bind$2;
      const _x$2 = _Some$2;
      const _x$3 = _x$2._0;
      const _x$4 = _x$2._1;
      const _bind$3 = moonbitlang$lex$lib$parser$$ParserBuf$match_str(moonbitlang$lex$lib$parser$$ParserBuf$skip_ws(_x$3), "(");
      if (_bind$3 === undefined) {
        return undefined;
      } else {
        const _Some$3 = _bind$3;
        const _x$5 = _Some$3;
        const _bind$4 = moonbitlang$lex$lib$parser$$ParserBuf$repeat_match$15$(_x$5, (p) => {
          const _bind$5 = moonbitlang$lex$lib$parser$$ParserBuf$var_definition(p);
          if (_bind$5 === undefined) {
            return undefined;
          } else {
            const _Some$4 = _bind$5;
            const _x$6 = _Some$4;
            const _x$7 = _x$6._0;
            const _x$8 = _x$6._1;
            const _bind$6 = moonbitlang$lex$lib$parser$$ParserBuf$match_re(moonbitlang$lex$lib$parser$$ParserBuf$skip_ws(_x$7), new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$Option(new $64$moonbitlang$47$lex$47$lib$47$type$46$Regex$ReStr(",")));
            if (_bind$6 === undefined) {
              return undefined;
            } else {
              const _Some$5 = _bind$6;
              const _x$9 = _Some$5;
              const _x$10 = _x$9._0;
              return { _0: _x$10, _1: _x$8 };
            }
          }
        });
        const _x$6 = _bind$4._0;
        const _x$7 = _bind$4._1;
        const _bind$5 = moonbitlang$lex$lib$parser$$ParserBuf$match_str_array(_x$6, [")", "->"]);
        if (_bind$5 === undefined) {
          return undefined;
        } else {
          const _Some$4 = _bind$5;
          const _x$8 = _Some$4;
          const _bind$6 = moonbitlang$lex$lib$parser$$ParserBuf$ty(_x$8);
          if (_bind$6 === undefined) {
            return undefined;
          } else {
            const _Some$5 = _bind$6;
            const _x$9 = _Some$5;
            const _x$10 = _x$9._0;
            const _x$11 = _x$9._1;
            const _bind$7 = moonbitlang$lex$lib$parser$$ParserBuf$match_str_array(_x$10, ["{", "parse", "{"]);
            if (_bind$7 === undefined) {
              return undefined;
            } else {
              const _Some$6 = _bind$7;
              const _x$12 = _Some$6;
              const _bind$8 = moonbitlang$lex$lib$parser$$ParserBuf$repeat_match$88$(_x$12, (p) => {
                const p$2 = moonbitlang$lex$lib$parser$$ParserBuf$skip_ws(p);
                const _bind$9 = moonbitlang$lex$lib$parser$$ParserBuf$regex(p$2);
                if (_bind$9 === undefined) {
                  return undefined;
                } else {
                  const _Some$7 = _bind$9;
                  const _x$13 = _Some$7;
                  const _x$14 = _x$13._0;
                  const _x$15 = _x$13._1;
                  const _bind$10 = moonbitlang$lex$lib$parser$$ParserBuf$match_str(moonbitlang$lex$lib$parser$$ParserBuf$skip_ws(_x$14), "=>");
                  if (_bind$10 === undefined) {
                    return undefined;
                  } else {
                    const _Some$8 = _bind$10;
                    const _x$16 = _Some$8;
                    const _bind$11 = moonbitlang$lex$lib$parser$$ParserBuf$code_block(_x$16);
                    if (_bind$11 === undefined) {
                      return undefined;
                    } else {
                      const _Some$9 = _bind$11;
                      const _x$17 = _Some$9;
                      const _x$18 = _x$17._0;
                      const _x$19 = _x$17._1;
                      return { _0: _x$18, _1: { _0: _x$15, _1: _x$19 } };
                    }
                  }
                }
              });
              const _x$13 = _bind$8._0;
              const _x$14 = _bind$8._1;
              const _bind$9 = moonbitlang$lex$lib$parser$$ParserBuf$match_str_array(_x$13, ["}", "}"]);
              if (_bind$9 === undefined) {
                return undefined;
              } else {
                const _Some$7 = _bind$9;
                const _x$15 = _Some$7;
                return { _0: _x$15, _1: { name: _x$4, return_type: _x$11, vars: _x$7, patterns: _x$14 } };
              }
            }
          }
        }
      }
    }
  }
}
function moonbitlang$lex$lib$parser$$ParserBuf$lex(self) {
  const _bind = moonbitlang$lex$lib$parser$$ParserBuf$code_block(self);
  if (_bind === undefined) {
    return undefined;
  } else {
    const _Some = _bind;
    const _x = _Some;
    const _x$2 = _x._0;
    const _x$3 = _x._1;
    const _bind$2 = moonbitlang$lex$lib$parser$$ParserBuf$repeat_match$80$(_x$2, moonbitlang$lex$lib$parser$$ParserBuf$named_regex);
    const _x$4 = _bind$2._0;
    const _x$5 = _bind$2._1;
    const _bind$3 = moonbitlang$lex$lib$parser$$ParserBuf$repeat_match$89$(_x$4, moonbitlang$lex$lib$parser$$ParserBuf$rule);
    const _x$6 = _bind$3._0;
    const _x$7 = _bind$3._1;
    const _bind$4 = moonbitlang$lex$lib$parser$$ParserBuf$code_block(_x$6);
    if (_bind$4 === undefined) {
      return undefined;
    } else {
      const _Some$2 = _bind$4;
      const _x$8 = _Some$2;
      const _x$9 = _x$8._0;
      const _x$10 = _x$8._1;
      return { _0: _x$9, _1: { header: _x$3, named_regexes: _x$5, rules: _x$7, trailer: _x$10 } };
    }
  }
}
function moonbitlang$core$builtin$$Eq$op_equal$45$(_x_21, _x_22) {
  return moonbitlang$core$array$$FixedArray$op_equal$7$(_x_21.bits, _x_22.bits) && _x_21.len === _x_22.len;
}
function moonbitlang$lex$lib$util$bitset$$new(len) {
  return { bits: moonbitlang$core$array$$FixedArray$makei$7$((len + 32 | 0) / 32 | 0, (_i) => 0), len: len };
}
function moonbitlang$lex$lib$util$bitset$$Bitset$copy(self) {
  return { bits: moonbitlang$core$array$$FixedArray$copy$7$(self.bits), len: self.len };
}
function moonbitlang$lex$lib$util$bitset$$Bitset$get(self, index) {
  return (self.bits[index / 32 | 0] & 1 << (index % 32 | 0)) !== 0;
}
function moonbitlang$lex$lib$util$bitset$$Bitset$set(self, index, value) {
  const t = index / 32 | 0;
  self.bits[t] = self.bits[t] | moonbitlang$core$bool$$Bool$to_int(value) << index;
}
function moonbitlang$lex$lib$util$bitset$$Bitset$union(self, other) {
  return self.len !== other.len ? moonbitlang$core$builtin$$abort$45$("") : { bits: moonbitlang$core$array$$FixedArray$makei$7$(self.bits.length, (i) => self.bits[i] | other.bits[i]), len: self.len };
}
function moonbitlang$core$builtin$$Eq$op_equal$23$(_x_233, _x_234) {
  return moonbitlang$core$array$$Array$op_equal$14$(_x_233, _x_234);
}
function moonbitlang$core$builtin$$Hash$hash_combine$23$(self, hasher) {
  moonbitlang$core$array$$Array$each$14$(self, (x) => {
    moonbitlang$core$builtin$$Hasher$combine$14$(hasher, x);
  });
}
function moonbitlang$lex$lib$automaton$$TagState$new(size) {
  return moonbitlang$core$array$$Array$make$14$(size, undefined);
}
function moonbitlang$lex$lib$automaton$$TagState$copy(self) {
  return moonbitlang$core$array$$Array$copy$14$(self);
}
function moonbitlang$lex$lib$automaton$$TagState$update_by_tag(self, tag, rank) {
  const r = moonbitlang$core$array$$Array$op_get$14$(self, tag);
  if (moonbitlang$core$option$$Option$is_empty$7$(r) || moonbitlang$core$option$$Option$unwrap$7$(r) > rank) {
    moonbitlang$core$array$$Array$op_set$14$(self, tag, rank);
  }
  return self;
}
function moonbitlang$lex$lib$automaton$$TagState$update_by_tags(self, tags) {
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i < self.length) {
      if (moonbitlang$lex$lib$util$bitset$$Bitset$get(tags, i)) {
        moonbitlang$lex$lib$automaton$$TagState$update_by_tag(self, i, -1);
      }
      _tmp = i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return self;
}
function moonbitlang$lex$lib$automaton$$TagState$tagState_min(self, other) {
  let _tmp = 0;
  while (true) {
    const i = _tmp;
    if (i < self.length) {
      const _bind = moonbitlang$core$array$$Array$op_get$14$(self, i);
      const _bind$2 = moonbitlang$core$array$$Array$op_get$14$(other, i);
      if (_bind === undefined) {
        return other;
      } else {
        if (_bind$2 === undefined) {
          return self;
        } else {
          const _Some = _bind;
          const _x = _Some;
          const _Some$2 = _bind$2;
          const _x$2 = _Some$2;
          if (_x !== _x$2) {
            return _x < _x$2 ? self : other;
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
function moonbitlang$lex$lib$automaton$$DFA$new(code_blocks, captures, start_action) {
  return { graph: [moonbitlang$core$builtin$$Map$new$75$(moonbitlang$core$builtin$$Map$new$46$capacity$46$default$75$())], end_nodes: moonbitlang$core$builtin$$Map$new$74$(moonbitlang$core$builtin$$Map$new$46$capacity$46$default$74$()), code_blocks: code_blocks, captures: captures, start_action: start_action, node_count: 1 };
}
function moonbitlang$lex$lib$automaton$$DFA$new_node(self) {
  const id = self.node_count;
  self.node_count = self.node_count + 1 | 0;
  moonbitlang$core$array$$Array$push$56$(self.graph, moonbitlang$core$builtin$$Map$new$75$(moonbitlang$core$builtin$$Map$new$46$capacity$46$default$75$()));
  return id;
}
function moonbitlang$lex$lib$automaton$$DFA$add_edge(self, from, e, action, to) {
  moonbitlang$core$builtin$$Map$set$75$(moonbitlang$core$array$$Array$op_get$56$(self.graph, from), e, { _0: to, _1: action });
}
function moonbitlang$lex$lib$automaton$$state_canonicalize(state, tag_count) {
  const mat = moonbitlang$core$array$$Array$makei$10$(tag_count, (_i) => []);
  const _bind = moonbitlang$core$immut$hashmap$$T$iter$18$(state);
  _bind((pair) => {
    const tags = pair._1;
    const _arr = tags;
    const _len = _arr.length;
    let _tmp = 0;
    while (true) {
      const _i = _tmp;
      if (_i < _len) {
        const rank = _arr[_i];
        if (!moonbitlang$core$option$$Option$is_empty$7$(rank)) {
          moonbitlang$core$array$$Array$push$7$(moonbitlang$core$array$$Array$op_get$10$(mat, _i), moonbitlang$core$option$$Option$unwrap$7$(rank));
        }
        _tmp = _i + 1 | 0;
        continue;
      } else {
        break;
      }
    }
    return 1;
  });
  moonbitlang$core$array$$Array$map_inplace$10$(mat, (x) => moonbitlang$core$sorted_set$$T$to_array$7$(moonbitlang$core$sorted_set$$from_iter$7$(moonbitlang$core$array$$Array$iter$7$(x))));
  const _bind$2 = moonbitlang$core$immut$hashmap$$T$iter$18$(state);
  const new_state = moonbitlang$core$immut$hashmap$$from_iter$18$((_p) => _bind$2((_p$2) => {
    const tags = _p$2._1;
    moonbitlang$core$array$$Array$mapi_inplace$14$(tags, (tag, op) => moonbitlang$core$option$$Option$map$26$(op, (x) => {
      const _arr = moonbitlang$core$array$$Array$op_get$10$(mat, tag);
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
          return moonbitlang$core$builtin$$abort$7$("unreachable");
        }
      }
    }));
    return _p({ _0: _p$2._0, _1: tags });
  }));
  return { _0: new_state, _1: mat };
}
function moonbitlang$lex$lib$automaton$$DFA$register_node(self, nfa, node, os) {
  const code_blocks = moonbitlang$core$builtin$$Iter$collect$7$(moonbitlang$core$builtin$$Iter$filter_map$113$(moonbitlang$core$immut$hashmap$$T$iter$18$(os), (x) => moonbitlang$core$builtin$$Map$get$26$(nfa.end_nodes, x._0)));
  if (!moonbitlang$core$array$$Array$is_empty$7$(code_blocks)) {
    const min_code_block = moonbitlang$core$array$$Array$fold$26$(code_blocks, moonbitlang$core$array$$Array$op_get$7$(code_blocks, 0), moonbitlang$core$math$$minimum$7$);
    const _bind = moonbitlang$core$immut$hashmap$$T$iter$18$(os);
    const end_nodes = moonbitlang$core$builtin$$Iter$to_array$21$((_p) => _bind((_p$2) => moonbitlang$core$option$$Option$op_equal$7$(moonbitlang$core$builtin$$Map$get$26$(nfa.end_nodes, _p$2._0), min_code_block) ? _p(_p$2) : 1));
    if (end_nodes.length === 1) {
      const tagState = moonbitlang$core$array$$Array$op_get$21$(end_nodes, 0)._1;
      const min_tags = moonbitlang$core$array$$Array$map$94$(moonbitlang$core$array$$Array$op_get$54$(nfa.captures, min_code_block), (_param1) => {
        const _x = _param1._1;
        const _x$2 = _x._0;
        const _x$3 = _x._1;
        return { _0: { _0: _x$2, _1: moonbitlang$core$option$$Option$unwrap$7$(moonbitlang$core$array$$Array$op_get$14$(tagState, _x$2)) }, _1: { _0: _x$3, _1: moonbitlang$core$option$$Option$unwrap$7$(moonbitlang$core$array$$Array$op_get$14$(tagState, _x$3)) } };
      });
      moonbitlang$core$builtin$$Map$set$74$(self.end_nodes, node, { _0: min_code_block, _1: min_tags });
      return;
    } else {
      moonbitlang$core$builtin$$abort$5$("error");
      return;
    }
  } else {
    return;
  }
}
function moonbitlang$lex$lib$automaton$$get_eps_closure$46$get_bits$116$(_env, n) {
  const result = _env._1;
  const empty_bits = _env._0;
  return moonbitlang$core$builtin$$Map$get_or_default$17$(result, n, empty_bits);
}
function moonbitlang$lex$lib$automaton$$NFA$get_eps_closure(self) {
  return moonbitlang$core$array$$Array$makei$11$(self.node_count, (x) => {
    const empty_bits = moonbitlang$lex$lib$util$bitset$$new(self.tag_count);
    const result = moonbitlang$core$builtin$$Map$from_array$17$([{ _0: x, _1: empty_bits }]);
    const _env = { _0: empty_bits, _1: result };
    const queue = moonbitlang$core$queue$$from_array$7$([x]);
    while (true) {
      if (!moonbitlang$core$queue$$T$is_empty$7$(queue)) {
        const o = moonbitlang$core$queue$$T$unsafe_pop$7$(queue);
        const o_bits = moonbitlang$lex$lib$automaton$$get_eps_closure$46$get_bits$116$(_env, o);
        const _arr = moonbitlang$core$builtin$$Map$get_or_default$73$(moonbitlang$core$array$$Array$op_get$58$(self.graph, o), $64$moonbitlang$47$lex$47$lib$47$automaton$46$Symbol$Eps, []);
        const _len = _arr.length;
        let _tmp = 0;
        while (true) {
          const _i = _tmp;
          if (_i < _len) {
            const e = _arr[_i];
            const _x = e._0;
            const _x$2 = e._1;
            let new_u_bits = moonbitlang$lex$lib$util$bitset$$Bitset$union(moonbitlang$lex$lib$automaton$$get_eps_closure$46$get_bits$116$(_env, _x), o_bits);
            if (!moonbitlang$core$option$$Option$is_empty$7$(_x$2)) {
              new_u_bits = moonbitlang$lex$lib$util$bitset$$Bitset$copy(new_u_bits);
              moonbitlang$lex$lib$util$bitset$$Bitset$set(new_u_bits, moonbitlang$core$option$$Option$unwrap$7$(_x$2), true);
            }
            if (moonbitlang$core$builtin$$op_notequal$49$(new_u_bits, moonbitlang$core$builtin$$Map$get$17$(result, _x))) {
              moonbitlang$core$builtin$$Map$set$17$(result, _x, new_u_bits);
              moonbitlang$core$queue$$T$push$7$(queue, _x);
            }
            _tmp = _i + 1 | 0;
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
    return moonbitlang$core$immut$hashmap$$from_iter$17$(moonbitlang$core$builtin$$Map$iter$17$(result));
  });
}
function moonbitlang$lex$lib$automaton$$from_nfa$46$get_id$117$(_env, state) {
  const node_map = _env._3;
  const queue = _env._2;
  const dfa = _env._1;
  const nfa = _env._0;
  return moonbitlang$core$builtin$$Map$get_or_init$77$(node_map, state, () => {
    const node = moonbitlang$lex$lib$automaton$$DFA$new_node(dfa);
    moonbitlang$lex$lib$automaton$$DFA$register_node(dfa, nfa, node, state);
    moonbitlang$core$queue$$T$push$13$(queue, state);
    return node;
  });
}
function moonbitlang$lex$lib$automaton$$from_nfa$46$42$bind$118$(_bind, _p) {
  return _bind((_p$2) => _p(_p$2._0));
}
function moonbitlang$lex$lib$automaton$$DFA$from_nfa(nfa) {
  const eps_closure = moonbitlang$lex$lib$automaton$$NFA$get_eps_closure(nfa);
  const initial = moonbitlang$core$array$$Array$op_get$11$(eps_closure, 1);
  const _bind = moonbitlang$core$immut$hashmap$$T$iter$17$(initial);
  const initial_state = moonbitlang$core$immut$hashmap$$from_iter$18$((_p) => _bind((_p$2) => {
    const _x = _p$2._0;
    const _x$2 = _p$2._1;
    return _p({ _0: _x, _1: moonbitlang$lex$lib$automaton$$TagState$update_by_tags(moonbitlang$lex$lib$automaton$$TagState$new(nfa.tag_count), _x$2) });
  }));
  const _bind$2 = moonbitlang$lex$lib$automaton$$state_canonicalize(initial_state, nfa.tag_count);
  const _x = _bind$2._0;
  const _x$2 = _bind$2._1;
  const captures = moonbitlang$core$array$$Array$map$97$(nfa.captures, (x) => moonbitlang$core$array$$Array$map$96$(x, (y) => y._0));
  const dfa = moonbitlang$lex$lib$automaton$$DFA$new(nfa.code_blocks, captures, _x$2);
  const node_map = moonbitlang$core$builtin$$Map$new$77$(moonbitlang$core$builtin$$Map$new$46$capacity$46$default$77$());
  const queue = moonbitlang$core$queue$$new$13$();
  const _env = { _0: nfa, _1: dfa, _2: queue, _3: node_map };
  moonbitlang$lex$lib$automaton$$from_nfa$46$get_id$117$(_env, _x);
  while (true) {
    if (!moonbitlang$core$queue$$T$is_empty$13$(queue)) {
      const cur_state = moonbitlang$core$option$$Option$unwrap$13$(moonbitlang$core$queue$$T$pop$13$(queue));
      const from_n = moonbitlang$core$option$$Option$unwrap$7$(moonbitlang$core$builtin$$Map$get$77$(node_map, cur_state));
      const next_states = moonbitlang$core$builtin$$Map$new$76$(moonbitlang$core$builtin$$Map$new$46$capacity$46$default$76$());
      const _bind$3 = moonbitlang$core$immut$hashmap$$T$iter$18$(cur_state);
      moonbitlang$lex$lib$automaton$$from_nfa$46$42$bind$118$(_bind$3, (node) => {
        const node_tagState = moonbitlang$core$option$$Option$unwrap$23$(moonbitlang$core$immut$hashmap$$T$op_get$18$(cur_state, node));
        const _bind$4 = moonbitlang$core$builtin$$Map$iter2$73$(moonbitlang$core$array$$Array$op_get$58$(nfa.graph, node));
        _bind$4((edge, targets) => {
          if (edge.$tag === 1) {
            const _EChar = edge;
            const _x$3 = _EChar._0;
            const state_map = { val: moonbitlang$core$option$$Option$or_else$13$(moonbitlang$core$builtin$$Map$op_get$76$(next_states, _x$3), () => moonbitlang$core$immut$hashmap$$new$18$()) };
            const _len = targets.length;
            let _tmp = 0;
            while (true) {
              const _i = _tmp;
              if (_i < _len) {
                const pair = targets[_i];
                const _x$4 = pair._0;
                const _x$5 = pair._1;
                if (moonbitlang$core$option$$Option$is_empty$7$(_x$5)) {
                  const _bind$5 = moonbitlang$core$immut$hashmap$$T$iter$17$(moonbitlang$core$array$$Array$op_get$11$(eps_closure, _x$4));
                  _bind$5((pair$2) => {
                    const _x$6 = pair$2._0;
                    const _x$7 = pair$2._1;
                    const upd_tagState = moonbitlang$lex$lib$automaton$$TagState$update_by_tags(moonbitlang$lex$lib$automaton$$TagState$copy(node_tagState), _x$7);
                    const old_tagState = moonbitlang$core$immut$hashmap$$T$op_get$18$(state_map.val, _x$6);
                    const new_tagState = moonbitlang$core$option$$Option$is_empty$23$(old_tagState) ? upd_tagState : moonbitlang$lex$lib$automaton$$TagState$tagState_min(upd_tagState, moonbitlang$core$option$$Option$unwrap$23$(old_tagState));
                    state_map.val = moonbitlang$core$immut$hashmap$$T$add$18$(state_map.val, _x$6, new_tagState);
                    return 1;
                  });
                } else {
                  moonbitlang$core$builtin$$abort$5$("error");
                }
                _tmp = _i + 1 | 0;
                continue;
              } else {
                break;
              }
            }
            moonbitlang$core$builtin$$Map$set$76$(next_states, _x$3, state_map.val);
          }
          return 1;
        });
        return 1;
      });
      const _bind$4 = moonbitlang$core$builtin$$Map$iter2$76$(next_states);
      _bind$4((ch, state) => {
        const _bind$5 = moonbitlang$lex$lib$automaton$$state_canonicalize(state, nfa.tag_count);
        const _x$3 = _bind$5._0;
        const _x$4 = _bind$5._1;
        const to_n = moonbitlang$lex$lib$automaton$$from_nfa$46$get_id$117$(_env, _x$3);
        moonbitlang$lex$lib$automaton$$DFA$add_edge(dfa, from_n, ch, _x$4, to_n);
        return 1;
      });
      continue;
    } else {
      break;
    }
  }
  return dfa;
}
function moonbitlang$lex$lib$automaton$$NFA$new_nfa() {
  return { graph: [moonbitlang$core$builtin$$Map$new$73$(moonbitlang$core$builtin$$Map$new$46$capacity$46$default$73$())], end_nodes: moonbitlang$core$builtin$$Map$new$26$(moonbitlang$core$builtin$$Map$new$46$capacity$46$default$26$()), code_blocks: [], captures: [], node_count: 1, tag_count: 0 };
}
function moonbitlang$lex$lib$automaton$$NFA$new_node(self) {
  const new_id = self.node_count;
  self.node_count = self.node_count + 1 | 0;
  moonbitlang$core$array$$Array$push$58$(self.graph, moonbitlang$core$builtin$$Map$new$73$(moonbitlang$core$builtin$$Map$new$46$capacity$46$default$73$()));
  return (new_id + 1 | 0) === self.graph.length ? new_id : $panic();
}
function moonbitlang$lex$lib$automaton$$NFA$add_edge(self, from, s, tag, to) {
  moonbitlang$core$array$$Array$push$86$(moonbitlang$core$builtin$$Map$get_or_init$73$(moonbitlang$core$array$$Array$op_get$58$(self.graph, from), s, () => []), { _0: to, _1: tag });
}
function moonbitlang$lex$lib$automaton$$NFA$add_edge$46$tag$46$default() {
  return undefined;
}
function moonbitlang$lex$lib$automaton$$NFA$register_regex_rec(self, node, re, name2tag) {
  let _tmp = self;
  let _tmp$2 = node;
  let _tmp$3 = re;
  let _tmp$4 = name2tag;
  _L: while (true) {
    const self$2 = _tmp;
    const node$2 = _tmp$2;
    const re$2 = _tmp$3;
    const name2tag$2 = _tmp$4;
    switch (re$2.$tag) {
      case 0: {
        const next_node = moonbitlang$lex$lib$automaton$$NFA$new_node(self$2);
        let _tmp$5 = 1;
        while (true) {
          const c = _tmp$5;
          if (c < 128) {
            moonbitlang$lex$lib$automaton$$NFA$add_edge(self$2, node$2, new $64$moonbitlang$47$lex$47$lib$47$automaton$46$Symbol$EChar(c), moonbitlang$lex$lib$automaton$$NFA$add_edge$46$tag$46$default(), next_node);
            _tmp$5 = c + 1 | 0;
            continue;
          } else {
            break;
          }
        }
        return next_node;
      }
      case 1: {
        const next_node$2 = moonbitlang$lex$lib$automaton$$NFA$new_node(self$2);
        moonbitlang$lex$lib$automaton$$NFA$add_edge(self$2, node$2, new $64$moonbitlang$47$lex$47$lib$47$automaton$46$Symbol$EChar(0), moonbitlang$lex$lib$automaton$$NFA$add_edge$46$tag$46$default(), next_node$2);
        return next_node$2;
      }
      case 3: {
        const _ReChar = re$2;
        const _x = _ReChar._0;
        const next_node$3 = moonbitlang$lex$lib$automaton$$NFA$new_node(self$2);
        moonbitlang$lex$lib$automaton$$NFA$add_edge(self$2, node$2, new $64$moonbitlang$47$lex$47$lib$47$automaton$46$Symbol$EChar(_x), moonbitlang$lex$lib$automaton$$NFA$add_edge$46$tag$46$default(), next_node$3);
        return next_node$3;
      }
      case 2: {
        const _ReStr = re$2;
        const _x$2 = _ReStr._0;
        const next_node$4 = { val: node$2 };
        const last_node = { val: node$2 };
        const _bind = moonbitlang$core$string$$String$iter(_x$2);
        _bind((c) => {
          next_node$4.val = moonbitlang$lex$lib$automaton$$NFA$new_node(self$2);
          moonbitlang$lex$lib$automaton$$NFA$add_edge(self$2, last_node.val, new $64$moonbitlang$47$lex$47$lib$47$automaton$46$Symbol$EChar(c), moonbitlang$lex$lib$automaton$$NFA$add_edge$46$tag$46$default(), next_node$4.val);
          last_node.val = next_node$4.val;
          return 1;
        });
        return next_node$4.val;
      }
      case 4: {
        const _CharSet = re$2;
        const _x$3 = _CharSet._0;
        const next_node$5 = moonbitlang$lex$lib$automaton$$NFA$new_node(self$2);
        const _bind$2 = moonbitlang$lex$lib$util$char_set$$CharSet$iter(moonbitlang$lex$lib$util$char_set$$CharSet$land(_x$3, moonbitlang$lex$lib$util$char_set$$range(1, 127)));
        _bind$2((c) => {
          moonbitlang$lex$lib$automaton$$NFA$add_edge(self$2, node$2, new $64$moonbitlang$47$lex$47$lib$47$automaton$46$Symbol$EChar(c), moonbitlang$lex$lib$automaton$$NFA$add_edge$46$tag$46$default(), next_node$5);
          return 1;
        });
        return next_node$5;
      }
      case 6: {
        const _Option = re$2;
        const _x$4 = _Option._0;
        const new_node = moonbitlang$lex$lib$automaton$$NFA$new_node(self$2);
        const final_ = moonbitlang$lex$lib$automaton$$NFA$register_regex_rec(self$2, new_node, _x$4, name2tag$2);
        const new_final = moonbitlang$lex$lib$automaton$$NFA$new_node(self$2);
        moonbitlang$lex$lib$automaton$$NFA$add_edge(self$2, node$2, $64$moonbitlang$47$lex$47$lib$47$automaton$46$Symbol$Eps, moonbitlang$lex$lib$automaton$$NFA$add_edge$46$tag$46$default(), new_node);
        moonbitlang$lex$lib$automaton$$NFA$add_edge(self$2, final_, $64$moonbitlang$47$lex$47$lib$47$automaton$46$Symbol$Eps, moonbitlang$lex$lib$automaton$$NFA$add_edge$46$tag$46$default(), new_final);
        moonbitlang$lex$lib$automaton$$NFA$add_edge(self$2, node$2, $64$moonbitlang$47$lex$47$lib$47$automaton$46$Symbol$Eps, moonbitlang$lex$lib$automaton$$NFA$add_edge$46$tag$46$default(), new_final);
        return new_final;
      }
      case 5: {
        const _Repetition = re$2;
        const _x$5 = _Repetition._0;
        const new_node$2 = moonbitlang$lex$lib$automaton$$NFA$new_node(self$2);
        const final_$2 = moonbitlang$lex$lib$automaton$$NFA$register_regex_rec(self$2, new_node$2, _x$5, name2tag$2);
        const new_final$2 = moonbitlang$lex$lib$automaton$$NFA$new_node(self$2);
        moonbitlang$lex$lib$automaton$$NFA$add_edge(self$2, node$2, $64$moonbitlang$47$lex$47$lib$47$automaton$46$Symbol$Eps, moonbitlang$lex$lib$automaton$$NFA$add_edge$46$tag$46$default(), new_node$2);
        moonbitlang$lex$lib$automaton$$NFA$add_edge(self$2, final_$2, $64$moonbitlang$47$lex$47$lib$47$automaton$46$Symbol$Eps, moonbitlang$lex$lib$automaton$$NFA$add_edge$46$tag$46$default(), new_final$2);
        moonbitlang$lex$lib$automaton$$NFA$add_edge(self$2, new_final$2, $64$moonbitlang$47$lex$47$lib$47$automaton$46$Symbol$Eps, moonbitlang$lex$lib$automaton$$NFA$add_edge$46$tag$46$default(), node$2);
        return new_final$2;
      }
      case 8: {
        const _Concat = re$2;
        const _x$6 = _Concat._0;
        const _x$7 = _Concat._1;
        const mid = moonbitlang$lex$lib$automaton$$NFA$register_regex_rec(self$2, node$2, _x$6, name2tag$2);
        _tmp$2 = mid;
        _tmp$3 = _x$7;
        continue _L;
      }
      case 7: {
        const _Alter = re$2;
        const _x$8 = _Alter._0;
        const _x$9 = _Alter._1;
        const final_1 = moonbitlang$lex$lib$automaton$$NFA$register_regex_rec(self$2, node$2, _x$8, name2tag$2);
        const final_2 = moonbitlang$lex$lib$automaton$$NFA$register_regex_rec(self$2, node$2, _x$9, name2tag$2);
        const final_$3 = moonbitlang$lex$lib$automaton$$NFA$new_node(self$2);
        moonbitlang$lex$lib$automaton$$NFA$add_edge(self$2, final_1, $64$moonbitlang$47$lex$47$lib$47$automaton$46$Symbol$Eps, moonbitlang$lex$lib$automaton$$NFA$add_edge$46$tag$46$default(), final_$3);
        moonbitlang$lex$lib$automaton$$NFA$add_edge(self$2, final_2, $64$moonbitlang$47$lex$47$lib$47$automaton$46$Symbol$Eps, moonbitlang$lex$lib$automaton$$NFA$add_edge$46$tag$46$default(), final_$3);
        return final_$3;
      }
      case 9: {
        const _Capture = re$2;
        const _x$10 = _Capture._0;
        const _x$11 = _Capture._1;
        const start = moonbitlang$lex$lib$automaton$$NFA$new_node(self$2);
        const final_$4 = moonbitlang$lex$lib$automaton$$NFA$new_node(self$2);
        const tail = moonbitlang$lex$lib$automaton$$NFA$register_regex_rec(self$2, start, _x$10, name2tag$2);
        const _bind$3 = name2tag$2(_x$11);
        const _x$12 = _bind$3._0;
        const _x$13 = _bind$3._1;
        moonbitlang$lex$lib$automaton$$NFA$add_edge(self$2, node$2, $64$moonbitlang$47$lex$47$lib$47$automaton$46$Symbol$Eps, _x$12, start);
        moonbitlang$lex$lib$automaton$$NFA$add_edge(self$2, tail, $64$moonbitlang$47$lex$47$lib$47$automaton$46$Symbol$Eps, _x$13, final_$4);
        return final_$4;
      }
      default: {
        return moonbitlang$core$builtin$$abort$7$("Named should be resolved before building NFA");
      }
    }
  }
}
function moonbitlang$lex$lib$automaton$$NFA$register_regex(self, node, re, code_block, name2tag) {
  const final_ = moonbitlang$lex$lib$automaton$$NFA$register_regex_rec(self, node, re, name2tag);
  const id = self.code_blocks.length;
  moonbitlang$core$array$$Array$push$2$(self.code_blocks, code_block);
  moonbitlang$core$builtin$$Map$set$26$(self.end_nodes, final_, id);
}
function moonbitlang$lex$lib$automaton$$NFA$from_rule(rule) {
  const nfa = moonbitlang$lex$lib$automaton$$NFA$new_nfa();
  const node = moonbitlang$lex$lib$automaton$$NFA$new_node(nfa);
  const _arr = rule.patterns;
  const _len = _arr.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const pattern = _arr[_i];
      const _x = pattern._0;
      const _x$2 = pattern._1;
      const capture_names = moonbitlang$core$array$$Array$map$98$(moonbitlang$lex$lib$type$$Regex$get_capture_names(_x), (name) => {
        const begin_tag = nfa.tag_count;
        const end_tag = nfa.tag_count + 1 | 0;
        nfa.tag_count = nfa.tag_count + 2 | 0;
        return { _0: name, _1: { _0: begin_tag, _1: end_tag } };
      });
      const map = moonbitlang$core$builtin$$Map$from_array$72$(capture_names);
      moonbitlang$lex$lib$automaton$$NFA$register_regex(nfa, node, _x, _x$2, (x) => moonbitlang$core$option$$Option$unwrap$57$(moonbitlang$core$builtin$$Map$get$72$(map, x)));
      moonbitlang$core$array$$Array$push$54$(nfa.captures, capture_names);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  return nfa;
}
function moonbitlang$lex$lib$automaton$$DFA$from_rule(rule) {
  return moonbitlang$lex$lib$automaton$$DFA$from_nfa(moonbitlang$lex$lib$automaton$$NFA$from_rule(rule));
}
function moonbitlang$core$builtin$$Eq$op_equal$71$(_x_103, _x_104) {
  if (_x_103.$tag === 0) {
    if (_x_104.$tag === 0) {
      return true;
    } else {
      return false;
    }
  } else {
    const _EChar = _x_103;
    const _x = _EChar._0;
    if (_x_104.$tag === 1) {
      const _EChar$2 = _x_104;
      const _x$2 = _EChar$2._0;
      return _x === _x$2;
    } else {
      return false;
    }
  }
}
function moonbitlang$core$builtin$$Hash$hash_combine$71$(_x_97, _x_98) {
  if (_x_97.$tag === 0) {
    moonbitlang$core$builtin$$Hasher$combine_int(_x_98, 0);
    return;
  } else {
    const _EChar = _x_97;
    const _x = _EChar._0;
    moonbitlang$core$builtin$$Hasher$combine_int(_x_98, 1);
    moonbitlang$core$builtin$$Hash$hash_combine$3$(_x, _x_98);
    return;
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$Lexbuf$from_string(content) {
  return { content: content, pos: 0 };
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$Lexbuf$next(self) {
  if (self.pos < self.content.length) {
    const ch = self.content.charCodeAt(self.pos);
    self.pos = self.pos + 1 | 0;
    return ch;
  } else {
    return -1;
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$Lexbuf$substring(self, start, end) {
  return moonbitlang$core$string$$String$substring(self.content, start, end);
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$LexEngine$run(self, lexbuf) {
  let state = 1;
  let tagState = [];
  const backtrace = moonbitlang$core$array$$Array$make$103$(self.code_blocks_n, undefined);
  const _arr = self.start_tags;
  const _len = _arr.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const tag = _arr[_i];
      while (true) {
        if (tagState.length <= tag) {
          moonbitlang$core$array$$Array$push$10$(tagState, []);
          continue;
        } else {
          break;
        }
      }
      moonbitlang$core$array$$Array$push$7$(moonbitlang$core$array$$Array$op_get$10$(tagState, tag), lexbuf.pos);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  while (true) {
    if (state !== 0) {
      const _bind = moonbitlang$core$array$$Array$op_get$12$(self.end_nodes, state);
      if (_bind === undefined) {
      } else {
        const _Some = _bind;
        const _x = _Some;
        moonbitlang$core$array$$Array$op_set$103$(backtrace, _x._0, { _0: lexbuf.pos, _1: state, _2: tagState });
      }
      const _bind$2 = moonbitlang$lex$lib$codegen$internal$codeblock_parser$$Lexbuf$next(lexbuf);
      let b;
      if (_bind$2 === -1) {
        b = 0;
      } else {
        const _Some = _bind$2;
        const _x = _Some;
        b = _x;
      }
      const _func = moonbitlang$core$array$$Array$op_get$55$(self.graph, state);
      const next = _func(b);
      state = next._0;
      const new_tagState = [];
      let _tmp$2 = 0;
      while (true) {
        const i = _tmp$2;
        if (i < next._1.length) {
          moonbitlang$core$array$$Array$push$10$(new_tagState, []);
          let _tmp$3 = 0;
          while (true) {
            const j = _tmp$3;
            if (j < moonbitlang$core$array$$Array$op_get$10$(next._1, i).length) {
              const t = moonbitlang$core$array$$Array$op_get$7$(moonbitlang$core$array$$Array$op_get$10$(next._1, i), j);
              if (t === -1) {
                moonbitlang$core$array$$Array$push$7$(moonbitlang$core$array$$Array$op_get$10$(new_tagState, i), lexbuf.pos);
              } else {
                moonbitlang$core$array$$Array$push$7$(moonbitlang$core$array$$Array$op_get$10$(new_tagState, i), moonbitlang$core$array$$Array$op_get$7$(moonbitlang$core$array$$Array$op_get$10$(tagState, i), t));
              }
              _tmp$3 = j + 1 | 0;
              continue;
            } else {
              break;
            }
          }
          _tmp$2 = i + 1 | 0;
          continue;
        } else {
          break;
        }
      }
      tagState = new_tagState;
      continue;
    } else {
      break;
    }
  }
  const _len$2 = backtrace.length;
  let _tmp$2 = 0;
  while (true) {
    const _i = _tmp$2;
    if (_i < _len$2) {
      const b = backtrace[_i];
      if (b === undefined) {
      } else {
        const _Some = b;
        const _x = _Some;
        const _x$2 = _x._0;
        const _x$3 = _x._1;
        const _x$4 = _x._2;
        lexbuf.pos = _x$2;
        const captures = moonbitlang$core$array$$Array$map$95$(moonbitlang$core$option$$Option$unwrap$66$(moonbitlang$core$array$$Array$op_get$12$(self.end_nodes, _x$3))._1, (_param1) => {
          const _x$5 = _param1._0;
          const _x$6 = _x$5._0;
          const _x$7 = _x$5._1;
          const _x$8 = _param1._1;
          const _x$9 = _x$8._0;
          const _x$10 = _x$8._1;
          return { _0: moonbitlang$core$array$$Array$op_get$7$(moonbitlang$core$array$$Array$op_get$10$(_x$4, _x$6), _x$7), _1: moonbitlang$core$array$$Array$op_get$7$(moonbitlang$core$array$$Array$op_get$10$(_x$4, _x$9), _x$10) };
        });
        return { _0: _i, _1: captures };
      }
      _tmp$2 = _i + 1 | 0;
      continue;
    } else {
      return { _0: self.code_blocks_n, _1: [] };
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_0(input) {
  return { _0: 0, _1: [] };
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_1(input) {
  if (1 <= input && input <= 35) {
    return { _0: 5, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
  } else {
    if (input === 36) {
      return { _0: 2, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_1 };
    } else {
      if (37 <= input && input <= 122) {
        return { _0: 5, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
      } else {
        switch (input) {
          case 123: {
            return { _0: 3, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
          }
          case 124: {
            return { _0: 5, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
          }
          case 125: {
            return { _0: 4, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
          }
          default: {
            return 126 <= input && input <= 127 ? { _0: 5, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 } : { _0: 0, _1: [] };
          }
        }
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_2(input) {
  if (65 <= input && input <= 90) {
    return { _0: 6, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
  } else {
    if (input === 95) {
      return { _0: 6, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
    } else {
      if (97 <= input && input <= 100) {
        return { _0: 6, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
      } else {
        if (input === 101) {
          return { _0: 7, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_2 };
        } else {
          if (102 <= input && input <= 114) {
            return { _0: 6, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
          } else {
            if (input === 115) {
              return { _0: 8, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_2 };
            } else {
              return 116 <= input && input <= 122 ? { _0: 6, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 } : { _0: 0, _1: [] };
            }
          }
        }
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_3(input) {
  return { _0: 0, _1: [] };
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_4(input) {
  return { _0: 0, _1: [] };
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_5(input) {
  return { _0: 0, _1: [] };
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_6(input) {
  if (48 <= input && input <= 57) {
    return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
  } else {
    if (65 <= input && input <= 90) {
      return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
    } else {
      if (input === 95) {
        return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
      } else {
        return 97 <= input && input <= 122 ? { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 } : { _0: 0, _1: [] };
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_7(input) {
  if (48 <= input && input <= 57) {
    return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
  } else {
    if (65 <= input && input <= 90) {
      return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
    } else {
      if (input === 95) {
        return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
      } else {
        if (97 <= input && input <= 109) {
          return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
        } else {
          if (input === 110) {
            return { _0: 10, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_2 };
          } else {
            return 111 <= input && input <= 122 ? { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 } : { _0: 0, _1: [] };
          }
        }
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_8(input) {
  if (48 <= input && input <= 57) {
    return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
  } else {
    if (65 <= input && input <= 90) {
      return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
    } else {
      if (input === 95) {
        return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
      } else {
        if (97 <= input && input <= 115) {
          return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
        } else {
          if (input === 116) {
            return { _0: 11, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_2 };
          } else {
            return 117 <= input && input <= 122 ? { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 } : { _0: 0, _1: [] };
          }
        }
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_9(input) {
  if (48 <= input && input <= 57) {
    return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
  } else {
    if (65 <= input && input <= 90) {
      return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
    } else {
      if (input === 95) {
        return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
      } else {
        return 97 <= input && input <= 122 ? { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 } : { _0: 0, _1: [] };
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_10(input) {
  if (48 <= input && input <= 57) {
    return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
  } else {
    if (65 <= input && input <= 90) {
      return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
    } else {
      if (input === 95) {
        return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
      } else {
        if (97 <= input && input <= 99) {
          return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
        } else {
          if (input === 100) {
            return { _0: 12, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_2 };
          } else {
            return 101 <= input && input <= 122 ? { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 } : { _0: 0, _1: [] };
          }
        }
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_11(input) {
  if (48 <= input && input <= 57) {
    return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
  } else {
    if (65 <= input && input <= 90) {
      return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
    } else {
      switch (input) {
        case 95: {
          return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
        }
        case 97: {
          return { _0: 13, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_2 };
        }
        default: {
          return 98 <= input && input <= 122 ? { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 } : { _0: 0, _1: [] };
        }
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_12(input) {
  if (48 <= input && input <= 57) {
    return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
  } else {
    if (65 <= input && input <= 90) {
      return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
    } else {
      if (input === 95) {
        return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
      } else {
        if (97 <= input && input <= 111) {
          return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
        } else {
          if (input === 112) {
            return { _0: 14, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_2 };
          } else {
            return 113 <= input && input <= 122 ? { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 } : { _0: 0, _1: [] };
          }
        }
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_13(input) {
  if (48 <= input && input <= 57) {
    return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
  } else {
    if (65 <= input && input <= 90) {
      return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
    } else {
      if (input === 95) {
        return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
      } else {
        if (97 <= input && input <= 113) {
          return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
        } else {
          if (input === 114) {
            return { _0: 15, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_2 };
          } else {
            return 115 <= input && input <= 122 ? { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 } : { _0: 0, _1: [] };
          }
        }
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_14(input) {
  if (48 <= input && input <= 57) {
    return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
  } else {
    if (65 <= input && input <= 90) {
      return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
    } else {
      if (input === 95) {
        return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
      } else {
        if (97 <= input && input <= 110) {
          return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
        } else {
          if (input === 111) {
            return { _0: 16, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_2 };
          } else {
            return 112 <= input && input <= 122 ? { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 } : { _0: 0, _1: [] };
          }
        }
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_15(input) {
  if (48 <= input && input <= 57) {
    return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
  } else {
    if (65 <= input && input <= 90) {
      return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
    } else {
      if (input === 95) {
        return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
      } else {
        if (97 <= input && input <= 115) {
          return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
        } else {
          if (input === 116) {
            return { _0: 17, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_2 };
          } else {
            return 117 <= input && input <= 122 ? { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 } : { _0: 0, _1: [] };
          }
        }
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_16(input) {
  if (48 <= input && input <= 57) {
    return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
  } else {
    if (65 <= input && input <= 90) {
      return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
    } else {
      if (input === 95) {
        return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
      } else {
        if (97 <= input && input <= 114) {
          return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
        } else {
          if (input === 115) {
            return { _0: 18, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_3 };
          } else {
            return 116 <= input && input <= 122 ? { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 } : { _0: 0, _1: [] };
          }
        }
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_17(input) {
  if (48 <= input && input <= 57) {
    return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
  } else {
    if (65 <= input && input <= 90) {
      return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
    } else {
      if (input === 95) {
        return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
      } else {
        if (97 <= input && input <= 111) {
          return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
        } else {
          if (input === 112) {
            return { _0: 19, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_2 };
          } else {
            return 113 <= input && input <= 122 ? { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 } : { _0: 0, _1: [] };
          }
        }
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_18(input) {
  if (input === 40) {
    return { _0: 20, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_4 };
  } else {
    if (48 <= input && input <= 57) {
      return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
    } else {
      if (65 <= input && input <= 90) {
        return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
      } else {
        if (input === 95) {
          return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
        } else {
          return 97 <= input && input <= 122 ? { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 } : { _0: 0, _1: [] };
        }
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_19(input) {
  if (48 <= input && input <= 57) {
    return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
  } else {
    if (65 <= input && input <= 90) {
      return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
    } else {
      if (input === 95) {
        return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
      } else {
        if (97 <= input && input <= 110) {
          return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
        } else {
          if (input === 111) {
            return { _0: 21, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_2 };
          } else {
            return 112 <= input && input <= 122 ? { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 } : { _0: 0, _1: [] };
          }
        }
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_20(input) {
  switch (input) {
    case 9: {
      return { _0: 23, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_4 };
    }
    case 32: {
      return { _0: 23, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_4 };
    }
    default: {
      if (65 <= input && input <= 90) {
        return { _0: 22, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_5 };
      } else {
        if (input === 95) {
          return { _0: 22, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_5 };
        } else {
          return 97 <= input && input <= 122 ? { _0: 22, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_5 } : { _0: 0, _1: [] };
        }
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_21(input) {
  if (48 <= input && input <= 57) {
    return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
  } else {
    if (65 <= input && input <= 90) {
      return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
    } else {
      if (input === 95) {
        return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
      } else {
        if (97 <= input && input <= 114) {
          return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
        } else {
          if (input === 115) {
            return { _0: 24, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_3 };
          } else {
            return 116 <= input && input <= 122 ? { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 } : { _0: 0, _1: [] };
          }
        }
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_22(input) {
  switch (input) {
    case 9: {
      return { _0: 25, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_6 };
    }
    case 32: {
      return { _0: 25, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_6 };
    }
    case 41: {
      return { _0: 26, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_7 };
    }
    default: {
      if (48 <= input && input <= 57) {
        return { _0: 27, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_5 };
      } else {
        if (65 <= input && input <= 90) {
          return { _0: 27, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_5 };
        } else {
          if (input === 95) {
            return { _0: 27, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_5 };
          } else {
            return 97 <= input && input <= 122 ? { _0: 27, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_5 } : { _0: 0, _1: [] };
          }
        }
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_23(input) {
  switch (input) {
    case 9: {
      return { _0: 23, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_4 };
    }
    case 32: {
      return { _0: 23, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_4 };
    }
    default: {
      if (65 <= input && input <= 90) {
        return { _0: 22, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_5 };
      } else {
        if (input === 95) {
          return { _0: 22, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_5 };
        } else {
          return 97 <= input && input <= 122 ? { _0: 22, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_5 } : { _0: 0, _1: [] };
        }
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_24(input) {
  if (input === 40) {
    return { _0: 20, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_4 };
  } else {
    if (48 <= input && input <= 57) {
      return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
    } else {
      if (65 <= input && input <= 90) {
        return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
      } else {
        if (input === 95) {
          return { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 };
        } else {
          return 97 <= input && input <= 122 ? { _0: 9, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_0 } : { _0: 0, _1: [] };
        }
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_25(input) {
  switch (input) {
    case 9: {
      return { _0: 25, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_6 };
    }
    case 32: {
      return { _0: 25, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_6 };
    }
    case 41: {
      return { _0: 26, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_7 };
    }
    default: {
      return { _0: 0, _1: [] };
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_26(input) {
  return { _0: 0, _1: [] };
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_state_27(input) {
  switch (input) {
    case 9: {
      return { _0: 25, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_6 };
    }
    case 32: {
      return { _0: 25, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_6 };
    }
    case 41: {
      return { _0: 26, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_7 };
    }
    default: {
      if (48 <= input && input <= 57) {
        return { _0: 27, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_5 };
      } else {
        if (65 <= input && input <= 90) {
          return { _0: 27, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_5 };
        } else {
          if (input === 95) {
            return { _0: 27, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_5 };
          } else {
            return 97 <= input && input <= 122 ? { _0: 27, _1: moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace_tag_action_5 } : { _0: 0, _1: [] };
          }
        }
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace(subst, lexbuf) {
  let _tmp = subst;
  let _tmp$2 = lexbuf;
  _L: while (true) {
    const subst$2 = _tmp;
    const lexbuf$2 = _tmp$2;
    const _bind = moonbitlang$lex$lib$codegen$internal$codeblock_parser$$LexEngine$run(moonbitlang$lex$lib$codegen$internal$codeblock_parser$$__mbtlex_engine_scan_codeblock_rbrace, lexbuf$2);
    const _x = _bind._0;
    switch (_x) {
      case 0: {
        moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace(subst$2, lexbuf$2);
        continue _L;
      }
      case 1: {
        return;
      }
      case 2: {
        const _x$2 = _bind._1;
        const _bind$2 = moonbitlang$core$array$$Array$op_get$57$(_x$2, 0);
        const _x$3 = _bind$2._0;
        const _x$4 = _bind$2._1;
        moonbitlang$lex$lib$codegen$internal$codeblock_parser$$Lexbuf$substring(lexbuf$2, _x$3, _x$4);
        const _bind$3 = moonbitlang$core$array$$Array$op_get$57$(_x$2, 1);
        const _x$5 = _bind$3._0;
        const _x$6 = _bind$3._1;
        const t1 = moonbitlang$lex$lib$codegen$internal$codeblock_parser$$Lexbuf$substring(lexbuf$2, _x$5, _x$6);
        const _bind$4 = moonbitlang$core$array$$Array$op_get$57$(_x$2, 2);
        const _x$7 = _bind$4._0;
        const _x$8 = _bind$4._1;
        const t2 = moonbitlang$lex$lib$codegen$internal$codeblock_parser$$Lexbuf$substring(lexbuf$2, _x$7, _x$8);
        let _tmp$3;
        switch (t1) {
          case "startpos": {
            _tmp$3 = new $64$moonbitlang$47$lex$47$lib$47$codegen$47$internal$47$codeblock_parser$46$SubstItemDesc$StartPosOf(t2);
            break;
          }
          case "endpos": {
            _tmp$3 = new $64$moonbitlang$47$lex$47$lib$47$codegen$47$internal$47$codeblock_parser$46$SubstItemDesc$EndPosOf(t2);
            break;
          }
          default: {
            _tmp$3 = $panic();
          }
        }
        moonbitlang$core$array$$Array$push$87$(subst$2, { start: _x$3, end: _x$4, desc: _tmp$3 });
        continue _L;
      }
      case 3: {
        continue _L;
      }
      case 4: {
        continue _L;
      }
      case 5: {
        return;
      }
      default: {
        moonbitlang$core$builtin$$abort$5$("lex: fail to match");
        return;
      }
    }
  }
}
function moonbitlang$lex$lib$codegen$internal$codeblock_parser$$parse_codeblock(str) {
  const lexbuf = moonbitlang$lex$lib$codegen$internal$codeblock_parser$$Lexbuf$from_string(str);
  const subst = [];
  moonbitlang$lex$lib$codegen$internal$codeblock_parser$$scan_codeblock_rbrace(subst, lexbuf);
  return subst;
}
function moonbitlang$lex$lib$codegen$$group_trans$46$add$119$(_env, char, target) {
  const last_target = _env._3;
  const first_char = _env._2;
  const result = _env._1;
  const last_char = _env._0;
  if (moonbitlang$core$builtin$$op_notequal$50$(target, last_target.val)) {
    if (last_char.val !== -1) {
      moonbitlang$core$array$$Array$push$85$(result, { _0: { _0: first_char.val, _1: last_char.val }, _1: last_target.val });
    }
    last_target.val = target;
    first_char.val = char;
    return;
  } else {
    return;
  }
}
function moonbitlang$lex$lib$codegen$$group_trans(trans) {
  const result = moonbitlang$core$array$$Array$new$85$(moonbitlang$core$array$$Array$new$46$capacity$46$default$85$());
  const first_char = { val: -1 };
  const last_char = { val: -1 };
  const last_target = { val: { _0: 0, _1: [] } };
  const _env = { _0: last_char, _1: result, _2: first_char, _3: last_target };
  let _tmp = 0;
  while (true) {
    const char = _tmp;
    if (char < 128) {
      const _bind = moonbitlang$core$builtin$$Map$op_get$75$(trans, char);
      if (_bind === undefined) {
        moonbitlang$lex$lib$codegen$$group_trans$46$add$119$(_env, char, { _0: 0, _1: [] });
        last_char.val = -1;
        first_char.val = char + 1 | 0;
      } else {
        const _Some = _bind;
        const _x = _Some;
        const _x$2 = _x._0;
        const _x$3 = _x._1;
        moonbitlang$lex$lib$codegen$$group_trans$46$add$119$(_env, char, { _0: _x$2, _1: _x$3 });
        last_char.val = char;
      }
      _tmp = char + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  if (last_char.val !== -1) {
    moonbitlang$core$array$$Array$push$85$(result, { _0: { _0: first_char.val, _1: last_char.val }, _1: last_target.val });
  }
  return result;
}
function moonbitlang$lex$lib$codegen$$rewrite_codeblock(codeblock, subst) {
  const buf = moonbitlang$core$builtin$$StringBuilder$new(moonbitlang$core$builtin$$StringBuilder$new$46$size_hint$46$default());
  let last_index = 0;
  const _len = subst.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const item = subst[_i];
      moonbitlang$core$builtin$$StringBuilder$write_substring(buf, codeblock, last_index, item.start - last_index | 0);
      const _bind = item.desc;
      if (_bind.$tag === 0) {
        const _StartPosOf = _bind;
        const _x = _StartPosOf._0;
        moonbitlang$core$builtin$$StringBuilder$write_string(buf, `_start_pos_of_${moonbitlang$core$builtin$$Show$to_string$2$(_x)}`);
      } else {
        const _EndPosOf = _bind;
        const _x = _EndPosOf._0;
        moonbitlang$core$builtin$$StringBuilder$write_string(buf, `_end_pos_of_${moonbitlang$core$builtin$$Show$to_string$2$(_x)}`);
      }
      last_index = item.end;
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  if (last_index < codeblock.length) {
    moonbitlang$core$builtin$$StringBuilder$write_substring(buf, codeblock, last_index, codeblock.length - last_index | 0);
  }
  return moonbitlang$core$builtin$$StringBuilder$to_string(buf);
}
function moonbitlang$lex$lib$codegen$$codegen_rule$46$get_tag_action_id$120$(_env, tag_action) {
  const next_tag_action_id = _env._1;
  const tag_action_dedup = _env._0;
  const _bind = moonbitlang$core$sorted_map$$T$op_get$38$(tag_action_dedup, tag_action);
  if (_bind === undefined) {
    const id = next_tag_action_id.val;
    moonbitlang$core$sorted_map$$T$op_set$38$(tag_action_dedup, tag_action, id);
    next_tag_action_id.val = next_tag_action_id.val + 1 | 0;
    return id;
  } else {
    const _Some = _bind;
    const _x = _Some;
    return _x;
  }
}
function moonbitlang$lex$lib$codegen$$codegen_rule(rule) {
  const dfa = moonbitlang$lex$lib$automaton$$DFA$from_rule(rule);
  const engine = `__mbtlex_engine_${moonbitlang$core$builtin$$Show$to_string$2$(rule.name)}`;
  const next_tag_action_row_id = { val: 0 };
  const tag_action_row_dedup = moonbitlang$core$sorted_map$$new$39$();
  const next_tag_action_id = { val: 0 };
  const tag_action_dedup = moonbitlang$core$sorted_map$$new$38$();
  const _env = { _0: tag_action_dedup, _1: next_tag_action_id };
  const states_code = moonbitlang$core$builtin$$StringBuilder$new(moonbitlang$core$builtin$$StringBuilder$new$46$size_hint$46$default());
  const graph_code = moonbitlang$core$builtin$$StringBuilder$new(moonbitlang$core$builtin$$StringBuilder$new$46$size_hint$46$default());
  moonbitlang$core$builtin$$StringBuilder$write_string(graph_code, "[");
  const _arr = dfa.graph;
  const _len = _arr.length;
  let _tmp = 0;
  while (true) {
    const _i = _tmp;
    if (_i < _len) {
      const trans = _arr[_i];
      moonbitlang$core$builtin$$StringBuilder$write_string(states_code, `fn ${moonbitlang$core$builtin$$Show$to_string$2$(rule.name)}_state_${moonbitlang$core$builtin$$Show$to_string$7$(_i)}(input : LexInput) -> (LexState, LexTagAction) {\n  match input {\n`);
      const _arr$2 = moonbitlang$lex$lib$codegen$$group_trans(trans);
      const _len$2 = _arr$2.length;
      let _tmp$2 = 0;
      while (true) {
        const _i$2 = _tmp$2;
        if (_i$2 < _len$2) {
          const tran = _arr$2[_i$2];
          const _x = tran._0;
          const _x$2 = _x._0;
          const _x$3 = _x._1;
          const _x$4 = tran._1;
          const _x$5 = _x$4._0;
          const _x$6 = _x$4._1;
          if (_x$2 === _x$3) {
            moonbitlang$core$builtin$$StringBuilder$write_string(states_code, `    ${moonbitlang$core$builtin$$Show$to_string$7$(_x$2)} => (${moonbitlang$core$builtin$$Show$to_string$7$(_x$5)}, ${moonbitlang$core$builtin$$Show$to_string$2$(rule.name)}_tag_action_${moonbitlang$core$builtin$$Show$to_string$7$(moonbitlang$lex$lib$codegen$$codegen_rule$46$get_tag_action_id$120$(_env, _x$6))})\n`);
          } else {
            moonbitlang$core$builtin$$StringBuilder$write_string(states_code, `    ${moonbitlang$core$builtin$$Show$to_string$7$(_x$2)}..=${moonbitlang$core$builtin$$Show$to_string$7$(_x$3)} => (${moonbitlang$core$builtin$$Show$to_string$7$(_x$5)}, ${moonbitlang$core$builtin$$Show$to_string$2$(rule.name)}_tag_action_${moonbitlang$core$builtin$$Show$to_string$7$(moonbitlang$lex$lib$codegen$$codegen_rule$46$get_tag_action_id$120$(_env, _x$6))})\n`);
          }
          _tmp$2 = _i$2 + 1 | 0;
          continue;
        } else {
          break;
        }
      }
      if (moonbitlang$core$builtin$$Map$size$75$(trans) < 128) {
        moonbitlang$core$builtin$$StringBuilder$write_string(states_code, "    _ => (0, [])\n");
      } else {
        moonbitlang$core$builtin$$StringBuilder$write_string(states_code, "    _ => panic()\n");
      }
      moonbitlang$core$builtin$$StringBuilder$write_string(states_code, "  }\n}\n");
      moonbitlang$core$builtin$$StringBuilder$write_string(graph_code, `${moonbitlang$core$builtin$$Show$to_string$2$(rule.name)}_state_${moonbitlang$core$builtin$$Show$to_string$7$(_i)}, `);
      _tmp = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  moonbitlang$core$builtin$$StringBuilder$write_string(graph_code, "]");
  const end_nodes = moonbitlang$core$array$$Array$makei$12$(dfa.node_count, (i) => moonbitlang$core$builtin$$Map$get$74$(dfa.end_nodes, i));
  const shared_tag_actions_code = moonbitlang$core$builtin$$StringBuilder$new(moonbitlang$core$builtin$$StringBuilder$new$46$size_hint$46$default());
  const _bind = moonbitlang$core$sorted_map$$T$iter2$38$(tag_action_dedup);
  _bind((tag_action, id) => {
    const rows_code = moonbitlang$core$builtin$$StringBuilder$new(moonbitlang$core$builtin$$StringBuilder$new$46$size_hint$46$default());
    moonbitlang$core$builtin$$StringBuilder$write_string(rows_code, "[");
    const _len$2 = tag_action.length;
    let _tmp$2 = 0;
    while (true) {
      const _i = _tmp$2;
      if (_i < _len$2) {
        const row = tag_action[_i];
        if (_i > 0) {
          moonbitlang$core$builtin$$StringBuilder$write_string(rows_code, ", ");
        }
        const _tmp$3 = moonbitlang$core$builtin$$Show$to_string$2$(rule.name);
        const _bind$2 = moonbitlang$core$sorted_map$$T$op_get$39$(tag_action_row_dedup, row);
        let _tmp$4;
        if (_bind$2 === undefined) {
          const id$2 = next_tag_action_row_id.val;
          moonbitlang$core$sorted_map$$T$op_set$39$(tag_action_row_dedup, row, id$2);
          next_tag_action_row_id.val = next_tag_action_row_id.val + 1 | 0;
          _tmp$4 = id$2;
        } else {
          const _Some = _bind$2;
          const _x = _Some;
          _tmp$4 = _x;
        }
        moonbitlang$core$builtin$$StringBuilder$write_string(rows_code, `${_tmp$3}_tag_action_row_${moonbitlang$core$builtin$$Show$to_string$7$(_tmp$4)}`);
        _tmp$2 = _i + 1 | 0;
        continue;
      } else {
        break;
      }
    }
    moonbitlang$core$builtin$$StringBuilder$write_string(rows_code, "]");
    moonbitlang$core$builtin$$StringBuilder$write_string(shared_tag_actions_code, `let ${moonbitlang$core$builtin$$Show$to_string$2$(rule.name)}_tag_action_${moonbitlang$core$builtin$$Show$to_string$7$(id)} : Array[Array[Int]] = ${moonbitlang$core$builtin$$Show$to_string$106$(rows_code)}\n`);
    return 1;
  });
  const start_tags = [];
  const _arr$2 = dfa.start_action;
  const _len$2 = _arr$2.length;
  let _tmp$2 = 0;
  while (true) {
    const _i = _tmp$2;
    if (_i < _len$2) {
      const action = _arr$2[_i];
      if (!moonbitlang$core$array$$Array$is_empty$7$(action)) {
        moonbitlang$core$array$$Array$push$7$(start_tags, _i);
      }
      _tmp$2 = _i + 1 | 0;
      continue;
    } else {
      break;
    }
  }
  const shared_tag_action_rows_code = moonbitlang$core$builtin$$StringBuilder$new(moonbitlang$core$builtin$$StringBuilder$new$46$size_hint$46$default());
  const _bind$2 = moonbitlang$core$sorted_map$$T$iter2$39$(tag_action_row_dedup);
  _bind$2((tag_action_row, id) => {
    moonbitlang$core$builtin$$StringBuilder$write_string(shared_tag_action_rows_code, `let ${moonbitlang$core$builtin$$Show$to_string$2$(rule.name)}_tag_action_row_${moonbitlang$core$builtin$$Show$to_string$7$(id)} : Array[Int] = ${moonbitlang$core$builtin$$Show$to_string$108$(tag_action_row)}\n`);
    return 1;
  });
  const _tmp$3 = moonbitlang$core$builtin$$StringBuilder$to_string(shared_tag_action_rows_code);
  const _tmp$4 = moonbitlang$core$builtin$$StringBuilder$to_string(shared_tag_actions_code);
  const _tmp$5 = moonbitlang$core$builtin$$StringBuilder$to_string(states_code);
  const _tmp$6 = `let ${moonbitlang$core$builtin$$Show$to_string$2$(engine)}: LexEngine = { graph: ${moonbitlang$core$builtin$$Show$to_string$106$(graph_code)}, end_nodes: ${moonbitlang$core$builtin$$Show$to_string$107$(end_nodes)}, start_tags: ${moonbitlang$core$builtin$$Show$to_string$108$(start_tags)}, code_blocks_n: ${moonbitlang$core$builtin$$Show$to_string$7$(dfa.code_blocks.length)} }`;
  const _tmp$7 = `fn ${moonbitlang$core$builtin$$Show$to_string$2$(rule.name)}(`;
  const self = [];
  moonbitlang$core$array$$Array$push_iter$15$(self, moonbitlang$core$array$$Array$iter$15$(rule.vars));
  moonbitlang$core$array$$Array$push$15$(self, { identifier: "lexbuf", ty: "Lexbuf" });
  const _lhs = moonbitlang$core$array$$Array$map$99$(self, (p) => `${moonbitlang$core$builtin$$Show$to_string$2$(p.identifier)} : ${moonbitlang$core$builtin$$Show$to_string$2$(p.ty)}`);
  const _tmp$8 = moonbitlang$core$string$$String$concat(_lhs, ", ");
  const _lhs$2 = [_tmp$7, _tmp$8, ")", "->", rule.return_type, "{"];
  const _tmp$9 = moonbitlang$core$string$$String$concat(_lhs$2, " ");
  const _lhs$3 = moonbitlang$core$array$$Array$flatten$2$([[`match ${moonbitlang$core$builtin$$Show$to_string$2$(engine)}.run(lexbuf) {`], moonbitlang$core$array$$Array$makei$2$(dfa.code_blocks.length, (i) => {
    const codeblock = moonbitlang$core$array$$Array$op_get$2$(dfa.code_blocks, i);
    const subst = moonbitlang$lex$lib$codegen$internal$codeblock_parser$$parse_codeblock(codeblock);
    const _lhs$4 = moonbitlang$core$array$$Array$flatten$2$([[`(${moonbitlang$core$builtin$$Show$to_string$7$(i)}, __mbtlex_captures) => {`], moonbitlang$core$array$$Array$mapi$109$(moonbitlang$core$array$$Array$op_get$59$(dfa.captures, i), (i$2, name) => {
      let inject_ignore;
      let _tmp$10;
      let _return_value;
      _L: {
        _L$2: {
          const _len$3 = subst.length;
          let _tmp$11 = 0;
          while (true) {
            const _i = _tmp$11;
            if (_i < _len$3) {
              const item = subst[_i];
              let n;
              _L$3: {
                const _bind$3 = item.desc;
                if (_bind$3.$tag === 0) {
                  const _StartPosOf = _bind$3;
                  const _x = _StartPosOf._0;
                  n = _x;
                  break _L$3;
                } else {
                  const _EndPosOf = _bind$3;
                  const _x = _EndPosOf._0;
                  n = _x;
                  break _L$3;
                }
              }
              if (n === name) {
                _return_value = true;
                break _L$2;
              }
              _tmp$11 = _i + 1 | 0;
              continue;
            } else {
              break;
            }
          }
          _tmp$10 = false;
          break _L;
        }
        _tmp$10 = _return_value;
      }
      if (_tmp$10) {
        inject_ignore = `ignore(${moonbitlang$core$builtin$$Show$to_string$2$(name)})`;
      } else {
        inject_ignore = "";
      }
      return `let (_start_pos_of_${moonbitlang$core$builtin$$Show$to_string$2$(name)}, _end_pos_of_${moonbitlang$core$builtin$$Show$to_string$2$(name)}) = __mbtlex_captures[${moonbitlang$core$builtin$$Show$to_string$7$(i$2)}]\nlet ${moonbitlang$core$builtin$$Show$to_string$2$(name)}: String = lexbuf.substring(_start_pos_of_${moonbitlang$core$builtin$$Show$to_string$2$(name)}, _end_pos_of_${moonbitlang$core$builtin$$Show$to_string$2$(name)})\n${moonbitlang$core$builtin$$Show$to_string$2$(inject_ignore)}`;
    }), [moonbitlang$lex$lib$codegen$$rewrite_codeblock(codeblock, subst)], ["}"]]);
    return moonbitlang$core$string$$String$concat(_lhs$4, "\n");
  }), ["_ => abort(\"lex: fail to match\")"], ["}"]]);
  const _lhs$4 = [_tmp$3, _tmp$4, _tmp$5, _tmp$6, _tmp$9, moonbitlang$core$string$$String$concat(_lhs$3, "\n"), "}"];
  return moonbitlang$core$string$$String$concat(_lhs$4, "\n");
}
function moonbitlang$lex$lib$codegen$$fix_indent(code) {
  const code$2 = `\n${code}`;
  let ptr = 0;
  let indent_count = 0;
  const buf = moonbitlang$core$builtin$$StringBuilder$new(code$2.length);
  while (true) {
    if (ptr < code$2.length) {
      const ch = code$2.charCodeAt(ptr);
      ptr = ptr + 1 | 0;
      moonbitlang$core$builtin$$StringBuilder$write_char(buf, ch);
      switch (ch) {
        case 10: {
          if (indent_count === 0) {
            while (true) {
              if (ptr < code$2.length && moonbitlang$core$array$$Array$contains$3$([9, 32], code$2.charCodeAt(ptr))) {
                ptr = ptr + 1 | 0;
                continue;
              } else {
                break;
              }
            }
          } else {
            moonbitlang$core$builtin$$StringBuilder$write_char(buf, 32);
          }
          break;
        }
        case 123: {
          indent_count = indent_count + 1 | 0;
          break;
        }
        case 125: {
          indent_count = indent_count - 1 | 0;
          break;
        }
        case 92: {
          if (ptr < code$2.length) {
            moonbitlang$core$builtin$$StringBuilder$write_char(buf, code$2.charCodeAt(ptr));
            ptr = ptr + 1 | 0;
          }
          break;
        }
        case 34: {
          while (true) {
            if (ptr < code$2.length) {
              const ch$2 = code$2.charCodeAt(ptr);
              moonbitlang$core$builtin$$StringBuilder$write_char(buf, code$2.charCodeAt(ptr));
              if (code$2.charCodeAt(ptr) === 92) {
                if ((ptr + 1 | 0) < code$2.length) {
                  moonbitlang$core$builtin$$StringBuilder$write_char(buf, code$2.charCodeAt(ptr + 1 | 0));
                }
                ptr = ptr + 2 | 0;
              } else {
                ptr = ptr + 1 | 0;
              }
              if (ch$2 === 34) {
                break;
              }
              continue;
            } else {
              break;
            }
          }
          break;
        }
      }
      continue;
    } else {
      break;
    }
  }
  return moonbitlang$core$builtin$$StringBuilder$to_string(buf);
}
function moonbitlang$lex$lib$codegen$$codegen_lex(lex) {
  const _tmp = lex.header;
  const _lhs = moonbitlang$core$array$$Array$map$100$(lex.rules, moonbitlang$lex$lib$codegen$$codegen_rule);
  const _tmp$2 = moonbitlang$core$string$$String$concat(_lhs, "\n");
  const _lhs$2 = [moonbitlang$lex$lib$codegen$$runtime, _tmp, _tmp$2, lex.trailer];
  return moonbitlang$lex$lib$codegen$$fix_indent(moonbitlang$core$string$$String$concat(_lhs$2, "\n\n"));
}
function Yoorkin$trie$$T$lookup$121$(self, path) {
  const _bind = moonbitlang$core$string$$String$to_array(path);
  let _tmp = { buf: _bind, start: 0, len: _bind.length };
  let _tmp$2 = self;
  while (true) {
    const _param = _tmp;
    const _param$2 = _tmp$2;
    if (_param.len === 0) {
      return _param$2.value;
    } else {
      const _x = _param.buf[_param.start + 0 | 0];
      const _tmp$3 = _param.buf;
      const _tmp$4 = 1 + _param.start | 0;
      const _some = _param.len - 0 | 0;
      const _x$2 = { buf: _tmp$3, start: _tmp$4, len: _some - 1 | 0 };
      const _bind$2 = moonbitlang$core$immut$sorted_map$$T$op_get$16$(_param$2.forks, _x);
      if (_bind$2 === undefined) {
        return undefined;
      } else {
        const _Some = _bind$2;
        const _x$3 = _Some;
        _tmp = _x$2;
        _tmp$2 = _x$3;
        continue;
      }
    }
  }
}
function Yoorkin$trie$$T$add$121$(self, path, value) {
  const _bind = moonbitlang$core$string$$String$to_array(path);
  return Yoorkin$trie$$add$46$aux$47$3366(value, { buf: _bind, start: 0, len: _bind.length }, self);
}
function Yoorkin$trie$$add$46$aux$47$3366(value, _param1, _param2) {
  if (_param1.len === 0) {
    return { value: value, forks: _param2.forks };
  } else {
    const _x = _param1.buf[_param1.start + 0 | 0];
    const _tmp = _param1.buf;
    const _tmp$2 = 1 + _param1.start | 0;
    const _some = _param1.len - 0 | 0;
    const _x$2 = { buf: _tmp, start: _tmp$2, len: _some - 1 | 0 };
    const subtree = moonbitlang$core$option$$Option$or$37$(moonbitlang$core$immut$sorted_map$$T$op_get$16$(_param2.forks, _x), { value: undefined, forks: moonbitlang$core$immut$sorted_map$$new$16$() });
    return { value: _param2.value, forks: moonbitlang$core$immut$sorted_map$$T$add$16$(_param2.forks, _x, Yoorkin$trie$$add$46$aux$47$3366(value, _x$2, subtree)) };
  }
}
function Yoorkin$trie$$empty$121$() {
  return { value: undefined, forks: moonbitlang$core$immut$sorted_map$$new$16$() };
}
function Yoorkin$ArgParser$$interpret(trie, xs, fallback) {
  const _bind = 0;
  const _bind$2 = xs.length;
  let _tmp = xs;
  let _tmp$2 = _bind;
  let _tmp$3 = _bind$2;
  _L: while (true) {
    const _param_buf = _tmp;
    const _param_start = _tmp$2;
    const _param_len = _tmp$3;
    if (_param_len === 0) {
      return;
    } else {
      const _x = _param_buf[_param_start + 0 | 0];
      const _bind$3 = 1 + _param_start | 0;
      const _some = _param_len - 0 | 0;
      const _bind$4 = _some - 1 | 0;
      const _bind$5 = Yoorkin$trie$$T$lookup$121$(trie, _x);
      if (_bind$5 === undefined) {
        fallback(_x);
        _tmp$2 = _bind$3;
        _tmp$3 = _bind$4;
        continue;
      } else {
        const _Some = _bind$5;
        const _x$2 = _Some;
        _L$2: {
          switch (_x$2.$tag) {
            case 1: {
              const _String = _x$2;
              const _x$3 = _String._0;
              if (_bind$4 >= 1) {
                const _x$4 = _param_buf[_bind$3 + 0 | 0];
                const _bind$6 = 1 + _bind$3 | 0;
                const _some$2 = _bind$4 - 0 | 0;
                const _bind$7 = _some$2 - 1 | 0;
                _x$3(_x$4);
                _tmp$2 = _bind$6;
                _tmp$3 = _bind$7;
                continue _L;
              } else {
                break _L$2;
              }
            }
            case 2: {
              const _Set_string = _x$2;
              const _x$4 = _Set_string._0;
              if (_bind$4 >= 1) {
                const _x$5 = _param_buf[_bind$3 + 0 | 0];
                const _bind$6 = 1 + _bind$3 | 0;
                const _some$2 = _bind$4 - 0 | 0;
                const _bind$7 = _some$2 - 1 | 0;
                _x$4.val = _x$5;
                _tmp$2 = _bind$6;
                _tmp$3 = _bind$7;
                continue _L;
              } else {
                break _L$2;
              }
            }
            case 3: {
              const _Set = _x$2;
              const _x$5 = _Set._0;
              _x$5.val = true;
              _tmp$2 = _bind$3;
              _tmp$3 = _bind$4;
              continue _L;
            }
            case 4: {
              const _Clear = _x$2;
              const _x$6 = _Clear._0;
              _x$6.val = false;
              _tmp$2 = _bind$3;
              _tmp$3 = _bind$4;
              continue _L;
            }
            default: {
              const _Unit = _x$2;
              const _x$7 = _Unit._0;
              _x$7();
              _tmp$2 = _bind$3;
              _tmp$3 = _bind$4;
              continue _L;
            }
          }
        }
        moonbitlang$core$builtin$$println$2$(`missing argument for ${moonbitlang$core$builtin$$Show$to_string$2$(_x)}`);
        return;
      }
    }
  }
}
function Yoorkin$ArgParser$$parse$46$aux$116$(_param1, _param2) {
  const _x = _param1._0;
  const _x$2 = _param1._1;
  const _x$3 = _param2._0;
  const _x$4 = _param2._1;
  const _x$5 = _param2._2;
  const _x$6 = _param2._3;
  const trie = Yoorkin$trie$$T$add$121$(Yoorkin$trie$$T$add$121$(_x, _x$3, _x$5), _x$4, _x$5);
  const help_msg = `${_x$2}  ${moonbitlang$core$builtin$$Show$to_string$2$(_x$3)}\t${moonbitlang$core$builtin$$Show$to_string$2$(_x$4)}\t${_x$6}\n`;
  return { _0: trie, _1: help_msg };
}
function Yoorkin$ArgParser$$parse(speclist, rest, usage_msg, argv) {
  const _bind = moonbitlang$core$array$$Array$fold$112$(speclist, { _0: Yoorkin$trie$$empty$121$(), _1: `${usage_msg}\n options:\n` }, Yoorkin$ArgParser$$parse$46$aux$116$);
  const _x = _bind._0;
  const _x$2 = _bind._1;
  const help_spec = new $64$Yoorkin$47$ArgParser$46$Spec$Unit(() => {
    moonbitlang$core$builtin$$println$2$(_x$2);
  });
  const trie = Yoorkin$trie$$T$add$121$(Yoorkin$trie$$T$add$121$(_x, "--help", help_spec), "-h", help_spec);
  Yoorkin$ArgParser$$interpret(trie, argv, rest);
}
function moonbitlang$x$internal$ffi$$mbt_string_to_utf8_bytes(str, is_filename) {
  const res = [];
  const len = str.length;
  let i = 0;
  while (true) {
    if (i < len) {
      let c = str.charCodeAt(i);
      if (55296 <= c && c <= 56319) {
        c = c - 55296 | 0;
        i = i + 1 | 0;
        const l = str.charCodeAt(i) - 56320 | 0;
        c = ((c << 10) + l | 0) + 65536 | 0;
      }
      if (c < 128) {
        moonbitlang$core$array$$Array$push$1$(res, c & 255);
      } else {
        if (c < 2048) {
          moonbitlang$core$array$$Array$push$1$(res, (192 + (c >> 6) | 0) & 255);
          moonbitlang$core$array$$Array$push$1$(res, (128 + (c & 63) | 0) & 255);
        } else {
          if (c < 65536) {
            moonbitlang$core$array$$Array$push$1$(res, (224 + (c >> 12) | 0) & 255);
            moonbitlang$core$array$$Array$push$1$(res, (128 + (c >> 6 & 63) | 0) & 255);
            moonbitlang$core$array$$Array$push$1$(res, (128 + (c & 63) | 0) & 255);
          } else {
            moonbitlang$core$array$$Array$push$1$(res, (240 + (c >> 18) | 0) & 255);
            moonbitlang$core$array$$Array$push$1$(res, (128 + (c >> 12 & 63) | 0) & 255);
            moonbitlang$core$array$$Array$push$1$(res, (128 + (c >> 6 & 63) | 0) & 255);
            moonbitlang$core$array$$Array$push$1$(res, (128 + (c & 63) | 0) & 255);
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
    moonbitlang$core$array$$Array$push$1$(res, 0 & 255);
  }
  return moonbitlang$core$bytes$$Bytes$from_array(res);
}
function moonbitlang$x$internal$ffi$$utf8_bytes_to_mbt_string(bytes) {
  const res = [];
  const len = bytes.length;
  let i = 0;
  while (true) {
    if (i < len) {
      let c = bytes[i];
      if (c < 128) {
        moonbitlang$core$array$$Array$push$3$(res, c);
        i = i + 1 | 0;
      } else {
        if (c < 224) {
          if ((i + 1 | 0) >= len) {
            break;
          }
          c = (c & 31) << 6 | bytes[i + 1 | 0] & 63;
          moonbitlang$core$array$$Array$push$3$(res, c);
          i = i + 2 | 0;
        } else {
          if (c < 240) {
            if ((i + 2 | 0) >= len) {
              break;
            }
            c = (c & 15) << 12 | (bytes[i + 1 | 0] & 63) << 6 | bytes[i + 2 | 0] & 63;
            moonbitlang$core$array$$Array$push$3$(res, c);
            i = i + 3 | 0;
          } else {
            if ((i + 3 | 0) >= len) {
              break;
            }
            c = (c & 7) << 18 | (bytes[i + 1 | 0] & 63) << 12 | (bytes[i + 2 | 0] & 63) << 6 | bytes[i + 3 | 0] & 63;
            c = c - 65536 | 0;
            moonbitlang$core$array$$Array$push$3$(res, (c >> 10) + 55296 | 0);
            moonbitlang$core$array$$Array$push$3$(res, (c & 1023) + 56320 | 0);
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
    return new Result$Err$9$(new Error$moonbitlang$47$x$47$fs$46$IOError$46$IOError(moonbitlang$x$fs$$get_error_message_ffi()));
  }
  return new Result$Ok$10$(moonbitlang$x$fs$$get_file_content_ffi());
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
    return new Result$Ok$12$(moonbitlang$x$internal$ffi$$utf8_bytes_to_mbt_string(bytes));
  } else {
    return new Result$Err$11$(new Error$moonbitlang$47$x$47$fs$46$IOError$46$IOError(`Unsupported encoding: ${moonbitlang$core$builtin$$Show$to_string$2$(encoding)}, only utf8 is supported for now`));
  }
}
function moonbitlang$x$fs$$write_bytes_to_file_internal(path, content) {
  const res = moonbitlang$x$fs$$write_file_ffi(path, content);
  if (res === -1) {
    return new Result$Err$14$(new Error$moonbitlang$47$x$47$fs$46$IOError$46$IOError(moonbitlang$x$fs$$get_error_message_ffi()));
  } else {
    return new Result$Ok$13$(undefined);
  }
}
function moonbitlang$x$fs$$write_string_to_file_internal(path, content, encoding) {
  if (encoding === "utf8") {
    const bytes = moonbitlang$x$internal$ffi$$mbt_string_to_utf8_bytes(content, false);
    return moonbitlang$x$fs$$write_bytes_to_file_internal(path, bytes);
  } else {
    return new Result$Err$14$(new Error$moonbitlang$47$x$47$fs$46$IOError$46$IOError(`Unsupported encoding: ${moonbitlang$core$builtin$$Show$to_string$2$(encoding)}, only utf8 is supported for now`));
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
(() => {
  const output_file = moonbitlang$core$ref$$new$2$("");
  const input_file = moonbitlang$core$ref$$new$2$("");
  const exit = { val: false };
  Yoorkin$ArgParser$$parse([{ _0: "--output-file", _1: "-o", _2: new $64$Yoorkin$47$ArgParser$46$Spec$Set_string(output_file), _3: "Output file" }, { _0: "--version", _1: "-v", _2: new $64$Yoorkin$47$ArgParser$46$Spec$Unit(() => {
    exit.val = true;
    moonbitlang$core$builtin$$println$2$("moonlex 0.1.0");
  }), _3: "Show version" }], (rest) => {
    input_file.val = rest;
  }, moonbitlang$lex$main$$_init$42$46$usage$0$, moonbitlang$x$sys$$get_cli_args());
  if (exit.val) {
    return;
  }
  if (moonbitlang$core$builtin$$op_notequal$2$(input_file.val, "")) {
    const lexer_spec_src = moonbitlang$core$result$$Result$unwrap$6$(moonbitlang$x$fs$$read_file_to_string(input_file.val, moonbitlang$x$fs$$read_file_to_string$46$encoding$46$default()));
    const parser_buf = moonbitlang$lex$lib$parser$$ParserBuf$from_string(lexer_spec_src);
    const _bind = moonbitlang$lex$lib$parser$$ParserBuf$lex(parser_buf);
    if (_bind === undefined) {
      moonbitlang$core$builtin$$abort$5$("");
      return;
    } else {
      const _Some = _bind;
      const _x = _Some;
      const _x$2 = _x._1;
      const lex = moonbitlang$lex$lib$type$$Lex$eliminate_named(_x$2);
      const output = moonbitlang$lex$lib$codegen$$codegen_lex(lex);
      if (output_file.val === "") {
        moonbitlang$core$builtin$$println$2$(output);
        return;
      } else {
        moonbitlang$core$result$$Result$unwrap$4$(moonbitlang$x$fs$$write_string_to_file(output_file.val, output, moonbitlang$x$fs$$write_string_to_file$46$encoding$46$default()));
        return;
      }
    }
  } else {
    moonbitlang$core$builtin$$abort$5$("Input file is required");
    return;
  }
})();
