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
  let out = StringBuilder::new()
  let dfa = @automaton.DFA::from_rule(rule)

  // get_tag_action_id
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

  out.write_string(
    $|fn \{rule.signature} {
    $|  let mut matched = None
    $|  let mut state = 0
    $|
    ,
  )
  for _, trans in dfa.graph {
    for tran in trans {
      let (_, (_, tag_action)) = tran
      ignore(get_tag_action_id(tag_action))
    }
  }
  let tag_actions = @sorted_map.from_iter(
    tag_action_dedup.iter().map(fn { (x, y) => (y, x) }),
  )
  let max_rank_map = {}
  let mut num_tags = 0
  for _, tag_action in tag_actions {
    num_tags = @math.maximum(num_tags, tag_action.length())
    for tag_id, actions in tag_action {
      max_rank_map[tag_id] = @math.maximum(
        max_rank_map[tag_id].or(-1),
        actions.length() - 1,
      )
    }
  }
  fn gen_tag_var(tag_id : Int, rank : Int) -> String {
    if rank == 0 {
      "_tag_\{tag_id}"
    } else {
      "_tag_\{tag_id}_\{rank}"
    }
  }

  for tag_id in 0..<num_tags {
    let max_rank = max_rank_map[tag_id].or(-1)
    for rank in 0..=max_rank {
      out.write_string(
        $|  let mut \{gen_tag_var(tag_id, rank)} = -1
        $|
        ,
      )
    }
  }
  let start_tags : Array[Int] = []
  for index, action in dfa.start_action._ {
    if not(action.is_empty()) {
      start_tags.push(index)
    }
  }
  for tag in start_tags {
    out.write_string(
      $|  \{gen_tag_var(tag, 0)} = lexbuf.curr_pos()
      $|
      ,
    )
  }
  out.write_string(
    $|  while state != -1 {
    $|    let mut tag_action = -1
    $|    match state {
    $|
    ,
  )
  for state_num, trans in dfa.graph {
    out.write_string(
      $|      \{state_num} => {
      $|
      ,
    )
    if dfa.end_nodes[state_num] is Some((pattern_id, captures)) {
      out.write_string(
        $|        if matched is Some((prev_pattern_id, _, _)) && \{pattern_id} <= prev_pattern_id || matched is None {
        $|          matched = Some((\{pattern_id}, lexbuf.curr_pos(), [
        ,
      )
      let mut is_first = true
      for capture in captures {
        let ((begin_tag, begin_rank), (end_tag, end_rank)) = capture
        let begin_tag_var = gen_tag_var(begin_tag, begin_rank)
        let end_tag_var = gen_tag_var(end_tag, end_rank)
        if not(is_first) {
          out.write_string(", ")
        }
        out.write_string("(\{begin_tag_var}, \{end_tag_var})")
        is_first = false
      }
      out.write_string("]))\n")
      out.write_string(
        $|        }
        $|
        ,
      )
    }
    out.write_string(
      $|        let c = match lexbuf.next() {
      $|          Some(c) => c.to_int()
      $|          None => -1
      $|        }
      $|        match c {
      $|
      ,
    )
    for tran in group_trans(trans) {
      let ((first_char, last_char), (next_state, tag_action)) = tran
      let pattern = if first_char == last_char {
        "\{first_char}"
      } else {
        "\{first_char}..=\{last_char}"
      }
      out.write_string(
        $|          \{pattern} => {
        $|            state = \{next_state}
        $|            tag_action = \{get_tag_action_id(tag_action)}
        $|          }
        $|
        ,
      )
    }
    out.write_string(
      $|          _ => {
      $|            state = -1
      $|            tag_action = -1
      $|          }
      $|        }
      $|      }
      $|
      ,
    )
  }
  out.write_string(
    $|      _ => panic()
    $|    }
    $|    match tag_action {
    $|
    ,
  )
  for tag_action_id, tag_action in tag_actions {
    if not(tag_action.iter().all(Array::is_empty)) {
      out.write_string(
        $|      \{tag_action_id} => {
        $|
        ,
      )
      // TODO: DO NOT generate assignments to unused tag variables
      let mut no_stmts = true
      for tag_id, actions_per_tag in tag_action {
        for rank, src_rank in actions_per_tag {
          if src_rank is -1 {
            no_stmts = false
            out.write_string(
              $|        \{gen_tag_var(tag_id, rank)} = lexbuf.curr_pos()
              $|
              ,
            )
          } else if src_rank != rank {
            no_stmts = false
            out.write_string(
              $|        \{gen_tag_var(tag_id, rank)} = \{gen_tag_var(tag_id, src_rank)}
              $|
              ,
            )
          }
        }
      }
      if no_stmts {
        out.write_string(
          $|        ()
          $|
          ,
        )
      }
      out.write_string(
        $|      }
        $|
        ,
      )
    }
  }
  out.write_string(
    $|      _ => ()
    $|    }
    $|  }
    $|
    $|  guard matched is Some((pattern_id, marked_pos, _captures)) else {
    $|    // No pattern matched
    $|    panic()
    $|  }
    $|
    $|  lexbuf.reset(marked_pos)
    $|  match pattern_id {
    $|
    ,
  )
  for pattern_id, codeblock in dfa.code_blocks {
    out.write_string(
      $|    \{pattern_id} => {
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
          }
        }
        false
      }

      if name_used_in_subst(name) {
        out.write_string(
          $|      let _ = \{name}
          $|
        )
      }
      match var_type {
        Char =>
          out.write_string(
            $|      let _start_pos_of_\{name} = _captures[\{capture_id}].0
            $|      let \{name} = lexbuf.unsafe_get(_start_pos_of_\{name})
            $|
            ,
          )
        String =>
          out.write_string(
            $|      let (_start_pos_of_\{name}, _end_pos_of_\{name}) = _captures[\{capture_id}]
            $|      let \{name} = lexbuf.sub_lexeme(_start_pos_of_\{name}, _end_pos_of_\{name})
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
