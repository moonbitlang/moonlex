///|
pub fn codegen_lex(
  lex_ : Lex,
  code_unit~ : @type.CodeUnit,
  default_encoding~ : @type.Encoding?,
) -> String {
  [
    lex_.header,
    lex_.rules.map(fn(rule) {
      codegen_rule(rule, code_unit~, default_encoding~)
    })
    |> _.join("\n"),
    lex_.trailer,
  ]
  |> _.join("\n\n")
}

///|
fn rewrite_codeblock(
  codeblock : @type.CodeBlock,
  subst : Array[@codeblock_parser.SubstItem],
  captures : Array[(String, @automaton.VarType)],
) -> @type.CodeBlock {
  fn index_of_name(name : String) -> Int {
    captures
    .search_by(it => {
      let (n, _) = it
      n == name
    })
    .unwrap()
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
  trans : Array[(@eof_char_set.T, Int)],
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
    .flat_map(it => {
      let (state, char_set) = it
      char_set
      .iter_ranges()
      .map(it => {
        let (min, max) = it
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

///|
pub fn codegen_rule_inner(
  rule : Rule,
  code_unit~ : @type.CodeUnit,
  default_encoding~ : @type.Encoding?,
) -> String {
  let out = StringBuilder::new()
  let encoding = match code_unit {
    CodeUnit1 => default_encoding
    CodeUnit2 | CodeUnit4 => None
  }
  let dfa = @automaton.DFA::from_patterns(rule.patterns, encoding?)
  let max_num_capture_vars = dfa.pattern_captures
    .iter()
    .map(fn(captures) { captures.0.length() })
    .maximum()
    .unwrap_or(0)
  let max_pattern_id = dfa.pattern_captures.length() - 1
  out.write_string(
    (
      $|  // The matched pattern id
      $|  let mut _match_pattern = @int.max_value
      $|  let mut _match_start = \{rule.lexee}.curr_pos()
      $|  let mut _match_end = -1
      $|
    ),
  )
  for i in 0..=max_num_capture_vars {
    out.write_string(
      (
        $|  let mut _capture_\{i}_start = -1
        $|  let mut _capture_\{i}_end = -1
        $|
      ),
    )
  }
  let all_tag_actions = @sorted_set.new()
  for _, tag_action in dfa.tag_actions {
    all_tag_actions.add(tag_action)
  }
  let all_tag_vars = @sorted_set.new()
  for tag_action in all_tag_actions {
    for op in tag_action.inner() {
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
    if tag_var.1 < 0 {
      println(tag_var)
    }
    if tag_var.1 == 0 {
      "_tag_\{tag_var.0}"
    } else {
      "_tag_\{tag_var.0}_\{tag_var.1}"
    }
  }

  for tag_var in all_tag_vars {
    out.write_string(
      (
        $|  let mut \{gen_tag_var(tag_var)} = -1
        $|
      ),
    )
  }
  let start_tags = @sorted_set.new()
  for tag in start_tags {
    out.write_string(
      (
        $|  \{gen_tag_var((tag, 0))} = \{rule.lexee}.curr_pos()
        $|
      ),
    )
  }
  out.write_string(
    (
      $|  loop \{dfa.start_node} {
      $|
    ),
  )
  for state_num, trans in dfa.graph {
    out.write_string(
      (
        $|    \{state_num} => {
        $|
      ),
    )
    fn gen_inline_tag_action(tag_action : @automaton.TagAction) -> String? {
      let buf = []
      for op in tag_action.inner() {
        match op {
          Set(dest~) =>
            buf.push("\{gen_tag_var(dest)} = \{rule.lexee}.curr_pos()")
          Copy(dest~, src~) =>
            buf.push("\{gen_tag_var(dest)} = \{gen_tag_var(src)}")
        }
      }
      if buf.is_empty() {
        None
      } else {
        Some(buf.iter().map(x => "      \{x}").join("\n"))
      }
    }

    if gen_inline_tag_action(dfa.tag_actions.get(state_num).unwrap())
      is Some(tag_action_code) {
      out.write_string("\{tag_action_code}\n")
    }
    if dfa.end_nodes.get(state_num) is Some((pattern_id, captures)) {
      out.write_string(
        (
          $|      _match_pattern = \{pattern_id}
          $|      _match_end = \{rule.lexee}.curr_pos()
          $|
        ),
      )
      for index, capture in captures {
        let (begin, end) = capture
        match begin {
          Dynamic_dfa(begin_tag_var) =>
            out.write_string(
              "      _capture_\{index}_start = \{gen_tag_var(begin_tag_var)}\n",
            )
          Static_dfa(RelativeToStart(offset)) =>
            if offset == 0 {
              out.write_string("      _capture_\{index}_start = _match_start\n")
            } else {
              out.write_string(
                "      _capture_\{index}_start = _match_start + \{offset}\n",
              )
            }
          Static_dfa(RelativeToEnd(offset)) =>
            if offset == 0 {
              out.write_string("      _capture_\{index}_start = _match_end\n")
            } else {
              out.write_string(
                "      _capture_\{index}_start = _match_end + \{offset}\n",
              )
            }
        }
        match end {
          Dynamic_dfa(end_tag_var) =>
            out.write_string(
              "      _capture_\{index}_end = \{gen_tag_var(end_tag_var)}\n",
            )
          Static_dfa(RelativeToStart(offset)) =>
            if offset == 0 {
              out.write_string("      _capture_\{index}_end = _match_start\n")
            } else {
              out.write_string(
                "      _capture_\{index}_end = _match_start + \{offset}\n",
              )
            }
          Static_dfa(RelativeToEnd(offset)) =>
            if offset == 0 {
              out.write_string("      _capture_\{index}_end = _match_end\n")
            } else {
              out.write_string(
                "      _capture_\{index}_end = _match_end + \{offset}\n",
              )
            }
        }
      }
      out.write_string(
        (
          $|
        ),
      )
    }
    let grouped_trans = group_trans(trans)
    if grouped_trans.is_empty() {
      out.write_string(
        (
          $|      break
          $|
        ),
      )
    } else {
      out.write_string(
        (
          $|      continue match \{rule.lexee}.next_as_int() {
          $|
        ),
      )
      for tran in grouped_trans {
        let ((first_char, last_char), next_state) = tran
        let pattern = if first_char == last_char {
          "\{first_char}"
        } else {
          "\{first_char}..=\{last_char}"
        }
        out.write_string(
          (
            $|        \{pattern} => \{next_state}
            $|
          ),
        )
      }
      out.write_string(
        (
          $|        _ => break
          $|      }
          $|
        ),
      )
    }
    out.write_string(
      (
        $|    }
        $|
      ),
    )
  }
  out.write_string(
    (
      $|    _ => panic()
      $|  }
      $|
    ),
  )
  out.write_string(
    (
      $|
      $|  guard _match_pattern <= \{max_pattern_id} else {
      $|    // No pattern matched
      $|    panic()
      $|  }
      $|
      $|  \{rule.lexee}.reset(pos=_match_end)
      $|  match _match_pattern {
      $|
    ),
  )
  for pattern_id, action in rule.actions {
    // The `()` is to avoid `{ xxx }` to be interpreted as a record
    out.write_string(
      (
        $|    \{pattern_id} => {
        $|      ()
        $|
      ),
    )
    let subst = @codeblock_parser.parse_codeblock(action)
    let captures = dfa.pattern_captures[pattern_id]
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
            (
              $|      let \{name} = \{rule.lexee}.get_char(_capture_\{capture_id}_start, _capture_\{capture_id}_end)
              $|
            ),
          )
        String =>
          out.write_string(
            (
              $|      let \{name} = \{rule.lexee}.get_string(_capture_\{capture_id}_start, _capture_\{capture_id}_end)
              $|
            ),
          )
      }
      if name_used_in_subst(name) {
        out.write_string(
          (
            $|      let _ = \{name}
            $|
          ),
        )
      }
    }
    out.write_string(
      (
        $|\{rewrite_codeblock(action, subst, captures.0)}
        $|
      ),
    )
    out.write_string(
      (
        $|    }
        $|
      ),
    )
  }
  out.write_string(
    (
      $|    _ => panic()
      $|  }
    ),
  )
  out.to_string()
}

///|
fn codegen_rule(
  rule : Rule,
  code_unit~ : @type.CodeUnit,
  default_encoding~ : @type.Encoding?,
) -> String {
  let inner = codegen_rule_inner(rule, code_unit~, default_encoding~)
  let (generic_part, other_part) = {
    let signature = rule.signature
    let lparen_index = signature.find("(").unwrap()
    let left_part = signature.substring(start=0, end=lparen_index)
    let lbracket_index = left_part.find("[")
    if lbracket_index is Some(lbracket_index) && lbracket_index < lparen_index {
      let rbracket_index = left_part.rev_find("]").unwrap()
      let generic_part = signature.substring(
        start=lbracket_index,
        end=rbracket_index + 1,
      )
      (
        generic_part,
        signature.substring(end=lbracket_index) +
        signature.substring(start=rbracket_index + 1),
      )
    } else {
      ("", signature)
    }
  }
  (
    $|fn\{generic_part} \{other_part} {
    $|\{inner}
    $|}
    $|
    $|
  )
}
