///|
fn DFA::minimize(dfa : DFA) -> DFA {
  // Minimize with the Hopcroft Algorithm
  // http://en.wikipedia.org/wiki/DFA_minimization#Hopcroft.27s_algorithm
  //
  // ```
  // P := {F, Q \ F}
  // W := {F, Q \ F}
  // 
  // while (W is not empty) do
  //     choose and remove a set A from W
  //     for each c in Σ do
  //         let X be the set of states for which a transition on c leads to a state in A
  //         for each set Y in P for which X ∩ Y is nonempty and Y \ X is nonempty do
  //             replace Y in P by the two sets X ∩ Y and Y \ X
  //             if Y is in W
  //                 replace Y in W by the same two sets
  //             else
  //                 if |X ∩ Y| <= |Y \ X|
  //                     add X ∩ Y to W
  //                 else
  //                     add Y \ X to W
  // ```

  let symbols = collect_symbols(dfa)
  let all_states = @immut/sorted_set.from_iter(
    Int::until(0, dfa.graph.length() - 1, inclusive=true),
  )
  let final_states = @immut/sorted_set.from_iter(dfa.end_nodes.keys())
  let mut partitions = @immut/sorted_set.new()
  for pattern_id in 0..<dfa.pattern_captures.length() {
    let mut groups = @immut/sorted_map.new()
    for end_node, end_node_info in dfa.end_nodes {
      let tag_action = dfa.tag_actions.get(end_node).unwrap()
      if end_node_info.0 == pattern_id {
        groups = groups.add(
          tag_action,
          groups
          .get(tag_action)
          .unwrap_or(@immut/sorted_set.new())
          .add(end_node),
        )
      }
    }
    for _, partition in groups {
      partitions = partitions.add(partition)
    }
  }
  let mut groups = @immut/sorted_map.new()
  for state in all_states.difference(final_states) {
    let tag_action = dfa.tag_actions.get(state).unwrap()
    groups = groups.add(
      tag_action,
      groups.get(tag_action).unwrap_or(@immut/sorted_set.new()).add(state),
    )
  }
  for _, partition in groups {
    partitions = partitions.add(partition)
  }

  // target -> symbol -> sources
  let symbolized_invert_map = {
    let result = @sorted_map.new()
    for source, trans in dfa.graph {
      for tran in trans {
        let (input, target) = tran
        for symbol in symbols {
          if symbol.char_set.subset(input) {
            let map = result.get(target).unwrap_or(@immut/sorted_map.new())
            let map = map.add(
              symbol,
              map.get(symbol).unwrap_or(@immut/sorted_set.new()).add(source),
            )
            result[target] = map
          }
        }
      }
    }
    result
  }
  let mut worklist = partitions
  while not(worklist.is_empty()) {
    let a = worklist.min()
    worklist = worklist.remove_min()
    for symbol in symbols {
      let mut x = @immut/sorted_set.new()
      // Slow version
      // ```
      // for state, trans in dfa.graph {
      //   for tran in trans {
      //     let (input, target) = tran
      //     if a.contains(target) && symbol.char_set.subset(input) {
      //       x = x.add(state)
      //     }
      //   }
      // }
      // ```
      for target in a {
        let sources = match symbolized_invert_map.get(target) {
          None => @immut/sorted_set.new()
          Some(map) => map.get(symbol).unwrap_or(@immut/sorted_set.new())
        }
        x = x + sources
      }
      guard not(x.is_empty()) else { continue }
      for y in partitions {
        let intersection = x.intersection(y)
        let difference = y.difference(x)
        if not(intersection.is_empty()) && not(difference.is_empty()) {
          partitions = partitions.remove(y)
          partitions = partitions.add(intersection)
          partitions = partitions.add(difference)
          if worklist.contains(y) {
            worklist = worklist.remove(y)
            worklist = worklist.add(intersection)
            worklist = worklist.add(difference)
          } else if intersection.size() <= difference.size() {
            worklist = worklist.add(intersection)
          } else {
            worklist = worklist.add(difference)
          }
        }
      }
    }
  }

  // Build the new DFA
  // The new DFA will have one state for each partition
  let new_dfa = DFA::new(dfa.pattern_captures)
  let state_to_partition = {}
  for partition in partitions {
    for state in partition {
      state_to_partition[state] = partition
    }
  }
  let partition_to_new_state = {}
  let state_to_new_state = {}
  fn get_new_state(state : Int) -> Int {
    let partition = state_to_partition.get(state).unwrap()
    match partition_to_new_state.get(partition) {
      Some(new_state) => new_state
      None => {
        let new_state = new_dfa.new_node()
        partition_to_new_state[partition] = new_state
        for state in partition {
          state_to_new_state[state] = new_state
        }
        new_state
      }
    }
  }

  new_dfa.start_node = get_new_state(dfa.start_node)
  for partition in partitions {
    let new_state = get_new_state(partition.min())
    for symbol in symbols {
      for state in partition {
        for tran in dfa.graph[state] {
          let (input, target) = tran
          if input.contains2(symbol.char_set.unsafe_choose()) {
            let new_target = get_new_state(target)
            new_dfa.add_edge(new_state, symbol.char_set, new_target)
          }
        }
      }
    }
  }
  for node, tag_action in dfa.tag_actions {
    if state_to_new_state.get(node) is Some(new_state) {
      new_dfa.tag_actions[new_state] = tag_action
    }
  }
  for end_state, end_state_info in dfa.end_nodes {
    if state_to_new_state.get(end_state) is Some(new_end_state) {
      guard new_dfa.end_nodes.get(new_end_state) is None ||
        (
          new_dfa.end_nodes.get(new_end_state) is Some(end_state_info2) &&
          end_state_info2 == end_state_info
        )
      new_dfa.end_nodes[new_end_state] = end_state_info
    }
  }
  new_dfa
}

///|
priv struct Symbol {
  id : Int
  char_set : @eof_char_set.T
}

///|
impl Compare for Symbol with compare(self, other) {
  self.id.compare(other.id)
}

///|
impl Eq for Symbol with equal(self, other) {
  self.id == other.id
}

///|
fn collect_symbols(dfa : DFA) -> @immut/sorted_set.SortedSet[Symbol] {
  let mut char_sets = @immut/sorted_set.new()
  for trans in dfa.graph {
    for tran in trans {
      let (input, _) = tran
      char_sets = char_sets.add(input)
    }
  }

  // Split char_sets to disjoint sets
  let mut all_char_set = @eof_char_set.empty
  let mut temp_char_sets = @immut/sorted_set.new()
  for char_set in char_sets {
    let mut new_temp_char_sets = @immut/sorted_set.new()
    fn check_add(temp_char_set : @eof_char_set.T) {
      if not(temp_char_set.is_empty()) {
        new_temp_char_sets = new_temp_char_sets.add(temp_char_set)
      }
    }

    check_add(char_set - all_char_set)
    for temp_char_set in temp_char_sets {
      check_add(temp_char_set & char_set)
      check_add(temp_char_set - char_set)
    }
    all_char_set = all_char_set + char_set
    temp_char_sets = new_temp_char_sets
  }
  let mut next_symbol_id = 0
  fn new_symbol(char_set : @eof_char_set.T) -> Symbol {
    let symbol = Symbol::{ id: next_symbol_id, char_set }
    next_symbol_id += 1
    symbol
  }

  temp_char_sets.map(fn(char_set) { new_symbol(char_set) })
}
