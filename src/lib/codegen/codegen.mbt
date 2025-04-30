///|
pub fn codegen_lex(
  lex : Lex,
  code_unit~ : @type.CodeUnit,
  default_encoding~ : @type.Encoding?
) -> String {
  [
    lex.header,
    lex.rules.map(fn(rule) { codegen_rule(rule, code_unit~, default_encoding~) })
    |> @string.concat(separator="\n"),
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
      StartPos => buf.write_string("_start_pos")
      EndPos => buf.write_string("_end_pos")
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
    match char_set_by_state[next_state] {
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

///|
fn codegen_rule(
  rule : Rule,
  code_unit~ : @type.CodeUnit,
  default_encoding~ : @type.Encoding?
) -> String {
  let out = StringBuilder::new()
  let encoding = match code_unit {
    CodeUnit1 => default_encoding
    CodeUnit2 | CodeUnit4 => None
  }
  let dfa = @automaton.DFA::from_rule(rule, encoding~)
  let max_num_capture_vars = dfa.captures
    .iter()
    .map(fn(vars) { vars.length() })
    .maximum()
    .or(0)
  let max_pattern_id = dfa.code_blocks.length() - 1
  out.write_string(
    $|fn \{rule.signature} {
    $|  // The matched pattern id
    $|  let mut matched = @int.max_value
    $|  let mut _end_pos = -1
    $|  let mut _start_pos = lexbuf.curr_pos()
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
      $|  \{gen_tag_var((tag, 0))} = lexbuf.curr_pos()
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
          Set(dest~) => buf.push("\{gen_tag_var(dest)} = lexbuf.curr_pos()")
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

    if gen_inline_tag_action(dfa.tag_actions[state_num].unwrap())
      is Some(tag_action_code) {
      out.write_string("\{tag_action_code}\n")
    }
    if dfa.end_nodes[state_num] is Some((pattern_id, captures)) {
      out.write_string(
        $|      if matched >= \{pattern_id} {
        $|        matched = \{pattern_id}
        $|        _end_pos = lexbuf.curr_pos()
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
            out.write_string(
              "        _capture_\{index}_start = _start_pos + \{offset}\n",
            )
          Static_dfa(RelativeToEnd(offset)) =>
            out.write_string(
              "        _capture_\{index}_start = _end_pos + \{offset}\n",
            )
        }
        match end {
          Dynamic_dfa(end_tag_var) =>
            out.write_string(
              "        _capture_\{index}_end = \{gen_tag_var(end_tag_var)}\n",
            )
          Static_dfa(RelativeToStart(offset)) =>
            out.write_string(
              "        _capture_\{index}_end = _start_pos + \{offset}\n",
            )
          Static_dfa(RelativeToEnd(offset)) =>
            out.write_string(
              "        _capture_\{index}_end = _end_pos + \{offset}\n",
            )
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
        $|      continue match lexbuf.next_as_int() {
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
    $|  guard matched <= \{max_pattern_id} else {
    $|    // No pattern matched
    $|    panic()
    $|  }
    $|
    $|  lexbuf.reset(pos=_end_pos)
    $|  match matched {
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
    for capture_id, capture in dfa.captures[pattern_id] {
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
            $|      let _start_pos_of_\{name} = _capture_\{capture_id}_start
            $|      let _end_pos_of_\{name} = _capture_\{capture_id}_end
            $|      let \{name} = lexbuf.get_char(_start_pos_of_\{name}, _end_pos_of_\{name})
            $|
            ,
          )
        String =>
          out.write_string(
            $|      let _start_pos_of_\{name} = _capture_\{capture_id}_start
            $|      let _end_pos_of_\{name} = _capture_\{capture_id}_end
            $|      let \{name} = lexbuf.get_string(_start_pos_of_\{name}, _end_pos_of_\{name})
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
    out.write_string(
      $|\{rewrite_codeblock(codeblock, subst)}
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
    $|}
    $|
    $|
    ,
  )
  out.to_string()
}
