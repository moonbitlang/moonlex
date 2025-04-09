///|
pub fn codegen_lex(lex : Lex) -> String {
  [
    lex.header,
    lex.rules.map(codegen_rule) |> @string.concat(separator="\n"),
    lex.trailer,
  ]
  |> @string.concat(separator="\n\n")
}

///|
fn rewrite_codeblock(
  codeblock : @type.CodeBlock,
  subst : Array[@codeblock_parser.SubstItem]
) -> @type.CodeBlock {
  let buf = StringBuilder::new()
  let mut last_index = 0
  for item in subst {
    // replace `$startpos(t)`/`$endpos(t)` with `_start_pos_of_t`/`_end_pos_of_t`
    buf.write_substring(codeblock, last_index, item.start - last_index)
    match item.desc {
      StartPosOf(name) => buf.write_string("_start_pos_of_\{name}")
      EndPosOf(name) => buf.write_string("_end_pos_of_\{name}")
    }
    last_index = item.end
  }
  if last_index < codeblock.length() {
    buf.write_substring(codeblock, last_index, codeblock.length() - last_index)
  }
  buf.to_string()
}

///|
fn group_trans(
  trans : Array[(@eof_char_set.T, (Int, @automaton.TagAction))]
) -> Array[((Int, Int), (Int, Array[Array[Int]]))] {
  let char_set_by_state = {}
  let tag_action_by_state = {}
  for tran in trans {
    let (char_set, (next_state, tag_action)) = tran
    tag_action_by_state[next_state] = tag_action
    match char_set_by_state[next_state] {
      None => char_set_by_state[next_state] = char_set
      Some(existing_char_set) =>
        char_set_by_state[next_state] = char_set.union(existing_char_set)
    }
  }
  let result = char_set_by_state
    .iter()
    .flat_map(fn {
      (state, char_set) => {
        let action = tag_action_by_state[state].unwrap()
        char_set
        .iter_ranges()
        .map(fn {
          (min, max) =>
            (
              (
                match min.repr() {
                  Eof => -1
                  Char(c) => c.to_int()
                },
                match max.repr() {
                  Eof => -1
                  Char(c) => c.to_int()
                },
              ),
              (state, action._),
            )
        })
      }
    })
    .to_array()
  result.sort()
  result
}

///|
fn codegen_rule(rule : Rule) -> String {
  let dfa = @automaton.DFA::from_rule(rule)
  let engine = "__mbtlex_engine_\{rule.name}"
  let mut next_tag_action_row_id = 0
  let tag_action_row_dedup = @sorted_map.new()
  fn get_tag_action_row_id(tag_action_row : Array[Int]) -> Int {
    match tag_action_row_dedup[tag_action_row] {
      Some(id) => id
      None => {
        let id = next_tag_action_row_id
        tag_action_row_dedup[tag_action_row] = id
        next_tag_action_row_id += 1
        id
      }
    }
  }

  let mut next_tag_action_id = 0
  let tag_action_dedup = @sorted_map.new()
  fn get_tag_action_id(tag_action : @automaton.TagAction) -> Int {
    match tag_action_dedup[tag_action._] {
      Some(id) => id
      None => {
        let id = next_tag_action_id
        tag_action_dedup[tag_action._] = id
        next_tag_action_id += 1
        id
      }
    }
  }

  let states_code = StringBuilder::new()
  let graph_code = StringBuilder::new()
  graph_code.write_string("[")
  for state_num, trans in dfa.graph {
    states_code.write_string(
      $|fn \{rule.name}_state_\{state_num}(input : Int) -> (Int, Array[Array[Int]]) {
      $|  match input {
      $|
      ,
    )
    for tran in group_trans(trans) {
      let ((first_char, last_char), (next_state, tag_action)) = tran
      if first_char == last_char {
        states_code.write_string(
          $|    \{first_char} => (\{next_state}, \{rule.name}_tag_action_\{get_tag_action_id(tag_action)})
          $|
          ,
        )
      } else {
        states_code.write_string(
          $|    \{first_char}..=\{last_char} => (\{next_state}, \{rule.name}_tag_action_\{get_tag_action_id(tag_action)})
          $|
          ,
        )
      }
    }
    states_code.write_string(
      $|    _ => (-1, [])
      $|
      ,
    )
    states_code.write_string(
      $|  }
      $|}
      $|
      ,
    )
    graph_code.write_string("\{rule.name}_state_\{state_num}, ")
  }
  graph_code.write_string("]")
  let end_nodes : Array[(Int, Array[((Int, Int), (Int, Int))])?] = Array::makei(
    dfa.node_count,
    fn(i) { dfa.end_nodes.get(i) },
  )
  let shared_tag_actions_code = StringBuilder::new()
  for tag_action, id in tag_action_dedup {
    let rows_code = StringBuilder::new()
    rows_code.write_string("[")
    for i, row in tag_action {
      if i > 0 {
        rows_code.write_string(", ")
      }
      rows_code.write_string(
        "\{rule.name}_tag_action_row_\{get_tag_action_row_id(row)}",
      )
    }
    rows_code.write_string("]")
    shared_tag_actions_code.write_string(
      $|let \{rule.name}_tag_action_\{id} : Array[Array[Int]] = \{rows_code}
      $|
      ,
    )
  }
  let start_tags : Array[Int] = []
  for index, action in dfa.start_action._ {
    if not(action.is_empty()) {
      start_tags.push(index)
    }
  }
  let shared_tag_action_rows_code = StringBuilder::new()
  for tag_action_row, id in tag_action_row_dedup {
    shared_tag_action_rows_code.write_string(
      $|let \{rule.name}_tag_action_row_\{id} : Array[Int] = \{tag_action_row}
      $|
      ,
    )
  }
  [
    shared_tag_action_rows_code.to_string(),
    shared_tag_actions_code.to_string(),
    states_code.to_string(),
    "let \{engine}: @lexengine.T = { graph: \{graph_code}, end_nodes: \{end_nodes}, start_tags: \{start_tags}, code_blocks_n: \{dfa.code_blocks.length()} }",
    ["fn \{rule.signature} {"] |> @string.concat(separator=" "),
    [
      ["  match \{engine}.run(lexbuf) {"],
      Array::makei(dfa.code_blocks.length(), fn(i) {
        let codeblock = dfa.code_blocks[i]
        let subst = @codeblock_parser.parse_codeblock(codeblock)
        fn name_used_in_subst(name : String) -> Bool {
          for item in subst {
            match item.desc {
              StartPosOf(n) | EndPosOf(n) => if n == name { return true }
            }
          }
          false
        }

        [
          ["    (\{i}, __mbtlex_captures) => {"],
          dfa.captures[i].mapi(fn(i, var) {
            let (name, var_type) = var
            let inject_ignore = if name_used_in_subst(name) {
              "ignore(\{name})"
            } else {
              ""
            }
            match var_type {
              Char =>
                $|  let (_start_pos_of_\{name}, _end_pos_of_\{name}) = __mbtlex_captures[\{i}]
                $|  let \{name} = lexbuf.unsafe_get(_start_pos_of_\{name})
                $|  \{inject_ignore}
              String =>
                $|  let (_start_pos_of_\{name}, _end_pos_of_\{name}) = __mbtlex_captures[\{i}]
                $|  let \{name} = lexbuf.sub_lexeme(_start_pos_of_\{name}, _end_pos_of_\{name})
                $|  \{inject_ignore}
            }
          }),
          [rewrite_codeblock(codeblock, subst)],
          ["    }"],
        ]
        |> Array::flatten()
        |> @string.concat(separator="\n")
      }),
      ["    _ => abort(\"lex: fail to match\")"],
      ["  }"],
    ]
    |> Array::flatten()
    |> @string.concat(separator="\n"),
    "}",
  ]
  |> @string.concat(separator="\n")
}
