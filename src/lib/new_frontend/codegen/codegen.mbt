///|
pub fn codegen_rule_new_syntax(
  rule : Rule,
  code_unit~ : @type.CodeUnit,
  default_encoding~ : @type.Encoding?
) -> String {
  let out = StringBuilder::new()
  let encoding = match code_unit {
    CodeUnit1 => default_encoding
    CodeUnit2 | CodeUnit4 => None
  }
  let dfa = @automaton.DFA::from_rule(rule, encoding?)
  let max_num_capture_vars = dfa.captures
    .iter()
    .map(fn(captures) { captures.0.length() })
    .maximum()
    .or(0)
  let max_pattern_id = dfa.code_blocks.length() - 1
  out.write_string(
    $|loop \{rule.lexee} { _lexee => {
    $|  let _data = _lexee.data()
    $|  let mut _cursor = _lexee.start_offset()
    $|  let _end = _cursor + _lexee.length()
    $|  let mut _match_pattern = @int.max_value
    $|  let mut _match_start = _cursor
    $|  let mut _match_end = -1
    $|
    ,
  )
  for i in 0..=max_num_capture_vars {
    out.write_string(
      $|  let mut _capture_\{i}_start = -1
      $|  let mut _capture_\{i}_end = -1
      $|
      ,
    )
  }
  let all_tag_actions = @sorted_set.new()
  for _, tag_action in dfa.tag_actions {
    all_tag_actions.add(tag_action)
  }
  let all_tag_vars = @sorted_set.new()
  for tag_action in all_tag_actions {
    for op in tag_action._ {
      match op {
        Set(dest~) => all_tag_vars.add(dest)
        Copy(dest~, src~) => {
          all_tag_vars.add(dest)
          all_tag_vars.add(src)
        }
      }
    }
  }
  fn gen_tag_var(tag_var : @automaton.TagVar) -> String {
    if tag_var.1 == 0 {
      "_tag_\{tag_var.0}"
    } else {
      "_tag_\{tag_var.0}_\{tag_var.1}"
    }
  }

  for tag_var in all_tag_vars {
    out.write_string(
      $|  let mut \{gen_tag_var(tag_var)} = -1
      $|
      ,
    )
  }
  let start_tags = @sorted_set.new()
  for tag in start_tags {
    out.write_string(
      $|  \{gen_tag_var((tag, 0))} = _cursor
      $|
      ,
    )
  }
  out.write_string(
    $|  loop \{dfa.start_node} {
    $|
    ,
  )
  for state_num, trans in dfa.graph {
    out.write_string(
      $|    \{state_num} => {
      $|
      ,
    )
    fn gen_inline_tag_action(tag_action : @automaton.TagAction) -> String? {
      let buf = []
      for op in tag_action._ {
        match op {
          Set(dest~) => buf.push("\{gen_tag_var(dest)} = _cursor")
          Copy(dest~, src~) =>
            buf.push("\{gen_tag_var(dest)} = \{gen_tag_var(src)}")
        }
      }
      if buf.is_empty() {
        None
      } else {
        Some(buf.iter().map(fn { x => "      \{x}" }).join("\n"))
      }
    }

    if gen_inline_tag_action(dfa.tag_actions.get(state_num).unwrap())
      is Some(tag_action_code) {
      out.write_string("\{tag_action_code}\n")
    }
    if dfa.end_nodes.get(state_num) is Some((pattern_id, captures)) {
      out.write_string(
        $|      if _match_pattern >= \{pattern_id} {
        $|        _match_pattern = \{pattern_id}
        $|        _match_end = _cursor
        $|
        ,
      )
      for index, capture in captures {
        let (begin, end) = capture
        match begin {
          Dynamic_dfa(begin_tag_var) =>
            out.write_string(
              "        _capture_\{index}_start = \{gen_tag_var(begin_tag_var)}\n",
            )
          Static_dfa(RelativeToStart(offset)) =>
            if offset == 0 {
              out.write_string(
                "        _capture_\{index}_start = _match_start\n",
              )
            } else {
              out.write_string(
                "        _capture_\{index}_start = _match_start + \{offset}\n",
              )
            }
          Static_dfa(RelativeToEnd(offset)) =>
            if offset == 0 {
              out.write_string("        _capture_\{index}_start = _match_end\n")
            } else {
              out.write_string(
                "        _capture_\{index}_start = _match_end + \{offset}\n",
              )
            }
        }
        match end {
          Dynamic_dfa(end_tag_var) =>
            out.write_string(
              "        _capture_\{index}_end = \{gen_tag_var(end_tag_var)}\n",
            )
          Static_dfa(RelativeToStart(offset)) =>
            if offset == 0 {
              out.write_string("        _capture_\{index}_end = _match_start\n")
            } else {
              out.write_string(
                "        _capture_\{index}_end = _match_start + \{offset}\n",
              )
            }
          Static_dfa(RelativeToEnd(offset)) =>
            if offset == 0 {
              out.write_string("        _capture_\{index}_end = _match_end\n")
            } else {
              out.write_string(
                "        _capture_\{index}_end = _match_end + \{offset}\n",
              )
            }
        }
      }
      out.write_string(
        $|      }
        $|
        ,
      )
    }
    let grouped_trans = group_trans(trans)
    if grouped_trans.is_empty() {
      out.write_string(
        $|      break
        $|
        ,
      )
    } else {
      out.write_string(
        $|      continue match (
        $|        if _cursor < _end {
        $|          let c = _data[_cursor]
        $|          _cursor += 1
        $|          c.to_int()
        $|        } else {
        $|          -1 // EOF
        $|        }
        $|      ) {
        $|
        ,
      )
      for tran in grouped_trans {
        let ((first_char, last_char), next_state) = tran
        let pattern = if first_char == last_char {
          "\{first_char}"
        } else {
          "\{first_char}..=\{last_char}"
        }
        out.write_string(
          $|        \{pattern} => \{next_state}
          $|
          ,
        )
      }
      out.write_string(
        $|        _ => break
        $|      }
        $|
        ,
      )
    }
    out.write_string(
      $|    }
      $|
      ,
    )
  }
  out.write_string(
    $|    _ => panic()
    $|  }
    $|
    ,
  )
  out.write_string(
    $|
    $|  guard _match_pattern <= \{max_pattern_id} else {
    $|    // No pattern matched
    $|    panic()
    $|  }
    $|
    $|  match _match_pattern {
    $|
    ,
  )
  for pattern_id, codeblock in dfa.code_blocks {
    // The `()` is to avoid `{ xxx }` to be interpreted as a record
    out.write_string(
      $|    \{pattern_id} => {
      $|      ()
      $|
      ,
    )
    let subst = @codeblock_parser.parse_codeblock(codeblock)
    let captures = dfa.captures[pattern_id]
    for capture_id, capture in captures.0 {
      let (name, var_type) = capture
      fn name_used_in_subst(name : String) -> Bool {
        for item in subst {
          match item.desc {
            StartPosOf(n) | EndPosOf(n) => if n == name { return true }
            StartPos | EndPos => ()
          }
        }
        false
      }

      match var_type {
        Char =>
          out.write_string(
            $|      let \{name} = _data[_capture_\{capture_id}_start]
            $|
            ,
          )
        String =>
          out.write_string(
            $|      let \{name} = _data[_capture_\{capture_id}_start:_capture_\{capture_id}_end]
            $|
            ,
          )
      }
      if name_used_in_subst(name) {
        out.write_string(
          $|      let _ = \{name}
          $|
          ,
        )
      }
    }
    match captures.1 {
      None => ()
      Some(rest_binder) =>
        out.write_string(
          $|      let \{rest_binder} = _data[_match_end:]
          $|
          ,
        )
    }
    out.write_string(
      $|\{rewrite_codeblock(codeblock, subst, captures.0)}
      $|
      ,
    )
    out.write_string(
      $|    }
      $|
      ,
    )
  }
  out.write_string(
    $|    _ => panic()
    $|  }
    $|} }
    ,
  )
  out.to_string()
}

///|
fn rewrite_codeblock(
  codeblock : @type.CodeBlock,
  subst : Array[@codeblock_parser.SubstItem],
  captures : Array[(String, @automaton.VarType)]
) -> @type.CodeBlock {
  fn index_of_name(name : String) -> Int {
    captures.search_by(fn { (n, _) => n == name }).unwrap()
  }

  let buf = StringBuilder::new()
  let mut last_index = 0
  for item in subst {
    // replace `$startpos(t)`/`$endpos(t)` with `_match_start_of_t`/`_match_end_of_t`
    buf.write_substring(codeblock, last_index, item.start - last_index)
    match item.desc {
      StartPosOf(name) =>
        buf.write_string("_capture_\{index_of_name(name)}_start")
      EndPosOf(name) => buf.write_string("_capture_\{index_of_name(name)}_end")
      StartPos => buf.write_string("_match_start")
      EndPos => buf.write_string("_match_end")
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
  trans : Array[(@eof_char_set.T, Int)]
) -> Array[((Int, Int), Int)] {
  let char_set_by_state = {}
  for tran in trans {
    let (char_set, next_state) = tran
    match char_set_by_state.get(next_state) {
      None => char_set_by_state[next_state] = char_set
      Some(existing_char_set) =>
        char_set_by_state[next_state] = char_set.union(existing_char_set)
    }
  }
  let result = char_set_by_state
    .iter()
    .flat_map(fn {
      (state, char_set) =>
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
              state,
            )
        })
    })
    .to_array()
  result.sort()
  result
}
