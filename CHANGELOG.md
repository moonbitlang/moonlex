## 0.3.0

### Breaking Change

- The `lexbuf` parameter now needs defined explicitly by user.
- The generated code now uses `@lexbuf` and `@lexengine` runtime packages, you need to import "moonbitlang/lex-runtime/lexbuf" and "moonbitlang/lex-runtime/lexengine" your self in `moon.pkg.json`.
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
