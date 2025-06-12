## ulex 0.3.2

- Default to longest match

## ulex 0.2.2

- Support `a \ b` for character difference in regex.

## ulex 0.2.0

### Breaking Change

- The `let` regex declaration now use `regex` keyword instead of `let`.

### New Features

- Support capture single character regex as character.
- Support `$startpos` and `$endpos` no need to specify capture variable in actions.
- Now `@lexengine` is no longer required, and `@lexbuf` is now optional.
- Support `--code-unit 1` and `--default-encoding utf-8` cli options.

## ulex 0.1.0

### Breaking Change

- The `lexbuf` parameter now needs defined explicitly by user.
- The generated code now uses `@lexbuf` and `@lexengine` runtime packages, you need to import "moonbitlang/ulex-runtime/lexbuf" and "moonbitlang/ulex-runtime/lexengine" your self in `moon.pkg.json`.
- The generated lex functions can be generic. 
- The lexbuf now can use custom character encoding and positions.

## 0.2.0

- Internal: Rewrite the parser in moonlex/moonyacc.
  - `'''` now invalid syntax for character.
  - `'\\'` now can be safely used in character.
  - String literal now support escape sequence.
  - Support named regex, eg. `let digit = ['0'-'9'];`.

## 0.1.8

- Internal: Fix DIET data structure

## 0.1.6

- Fix parsing character literal with escape sequence.

## 0.1.5

- Support matching '\x00' in the input string.
