// paper: NFAs with Tagged Transitions, their Conversion to Deterministic 
//        Automata and Application to Regular Expressions

///|
pub(all) struct TagAction(Array[TagOp]) derive(Show, Eq, Compare) // sorted

///|
pub typealias Int as TagRank

///|
pub typealias (Tag, TagRank) as TagVar

///|
pub(all) enum TagOp {
  Set(dest~ : TagVar) // set tag variable's value to lexbuf.curr_pos()
  // In fact, dest.0 == src.0
  // But, for simplicity
  Copy(dest~ : TagVar, src~ : TagVar) // dest != src
} derive(Show, Eq, Compare)

///|
priv struct TagState(@immut/sorted_map.SortedMap[Tag, TagRank]) derive (
  Eq,
  Hash,
  Compare,
)

///|
fn TagState::new() -> TagState {
  @immut/sorted_map.new()
}

///|
fn update_by_tag(self : TagState, tag : Tag, rank : Int) -> TagState {
  match self.inner().get(tag) {
    None => self.inner().add(tag, rank)
    Some(old_rank) =>
      if old_rank > rank {
        self.inner().add(tag, rank)
      } else {
        self
      }
  }
}

///|
fn update_by_tags(
  self : TagState,
  tags : @immut/sorted_set.SortedSet[Tag],
) -> TagState {
  let mut state = self
  for tag in tags {
    state = state.update_by_tag(tag, -1)
  }
  state
}

///|
fn tagState_merge(self_ : TagState, other : TagState) -> TagState {
  let tags = @immut/sorted_set.from_iter(self_.inner().keys_as_iter()) +
    @immut/sorted_set.from_iter(other.inner().keys_as_iter())
  let mut result = @immut/sorted_map.new()
  for tag in tags {
    result = result.add(
      tag,
      match (self_.inner().get(tag), other.inner().get(tag)) {
        (None, None) => panic()
        (Some(rank), None) => rank
        (None, Some(rank)) => rank
        (Some(rank1), Some(rank2)) => @cmp.minimum(rank1, rank2)
      },
    )
  }
  TagState(result)
}

///|
pub(all) enum DFACapturePosition {
  Dynamic_dfa(TagVar)
  Static_dfa(StaticKnownTagPosition)
} derive(Show, Eq)

///|
pub(all) struct DFA {
  graph : Array[Array[(@eof_char_set.T, Int)]] // indexed by node_id
  mut start_node : Int
  tag_actions : Map[Int, TagAction] // indexed by node_id
  // // indexed by pattern_id
  end_nodes : Map[Int, (Int, Array[(DFACapturePosition, DFACapturePosition)])]
  // String? is rest_binder
  pattern_captures : Array[(Array[(String, VarType)], String?)] // indexed by pattern_id
  mut node_count : Int
} derive(Show)

///|
pub typealias Int as DFANode

///|
fn DFA::new(captures : Array[(Array[(String, VarType)], String?)]) -> DFA {
  {
    graph: [],
    start_node: -1,
    tag_actions: {},
    pattern_captures: captures,
    end_nodes: Map::new(),
    node_count: 0,
  }
}

///|
fn DFA::new_node(self : DFA) -> Int {
  let id = self.node_count
  self.node_count += 1
  self.graph.push([])
  id
}

///|
fn DFA::add_edge(self : DFA, from : Int, e : @eof_char_set.T, to : Int) -> Unit {
  for tran in self.graph[from] {
    if tran.0 == e && tran.1 == to {
      return
    }
    if e.subset(tran.0) {
      panic()
    }
  }
  self.graph[from].push((e, to))
}

///|
typealias @immut_map.T[NFANode, TagState] as State

///|
fn state_canonicalize(state : State, tag_count : Int) -> (State, TagAction) {
  let ranks_by_tag = Array::makei(tag_count, fn(_i) { [] })
  for pair in state.iter() {
    let tags = pair.1
    for tag, rank in tags.inner() {
      ranks_by_tag[tag].push(rank)
    }
  }
  ranks_by_tag.map_inplace(fn(x) { @sorted_set.from_iter(x.iter()).to_array() })
  let new_state = state
    .iter()
    .map(fn(pair) {
      let tag_state = pair.1
        .inner()
        .map_with_key(fn(tag, prev_rank) {
          let ranks = ranks_by_tag[tag]
          guard ranks.search(prev_rank) is Some(rank)
          rank
        })
      (pair.0, TagState(tag_state))
    })
    |> @immut_map.from_iter
  let tag_action = []
  for tag_index, ops in ranks_by_tag {
    for dest_rank = ops.length() - 1; dest_rank >= 0; dest_rank = dest_rank - 1 {
      let src_rank = ops[dest_rank]
      if src_rank == -1 {
        tag_action.push(Set(dest=(tag_index, dest_rank)))
      } else if dest_rank != src_rank {
        tag_action.push(
          Copy(dest=(tag_index, dest_rank), src=(tag_index, src_rank)),
        )
      }
    }
  }
  // tag_action.sort()
  (new_state, tag_action)
}

///|
fn register_node(self : DFA, nfa : NFA, node : Int, os : State) -> Unit {
  let code_blocks = os
    .iter()
    .filter_map(fn(x) { nfa.end_nodes.get(x.0.num) })
    .collect()
  guard not(code_blocks.is_empty()) else { return () }
  let min_code_block = code_blocks.fold(init=code_blocks[0], @cmp.minimum)
  let end_nodes = os
    .iter()
    .filter(fn(x) { nfa.end_nodes.get(x.0.num) == Some(min_code_block) })
    .to_array()
  guard end_nodes.length() == 1 else {
    // only one node to one exact code_block in nfa
    abort("error")
  }
  let tagState = end_nodes[0].1
  let min_tags = nfa.pattern_captures[min_code_block].0.map(it => {
    let (_name, (begin, end)) = it
    (
      match begin {
        Dynamic_nfa(tag) =>
          Dynamic_dfa((tag, tagState.inner().get(tag).unwrap()))
        Static_nfa(info) => Static_dfa(info)
      },
      match end {
        Dynamic_nfa(tag) =>
          Dynamic_dfa((tag, tagState.inner().get(tag).unwrap()))
        Static_nfa(info) => Static_dfa(info)
      },
    )
  })
  self.end_nodes.set(node, (min_code_block, min_tags))
}

///|
fn DFA::from_nfa(nfa : NFA) -> DFA {
  let eps_closure = nfa.get_eps_closure()
  let initial = eps_closure[nfa.start_node]
  let initial_state = initial
    .iter()
    .map(it => {
      let (x, y) = it
      (x, TagState::new().update_by_tags(y))
    })
    |> @immut_map.from_iter
  let (canonicalized_initial_state, start_action) = state_canonicalize(
    initial_state,
    nfa.tag_count,
  )
  let captures = nfa.pattern_captures.map(fn(x) {
    (x.0.map(fn(y) { y.0 }), x.1)
  })
  let dfa = DFA::new(captures)
  let node_map : @hashmap2.T[State, Int] = @hashmap2.new(capacity=64)
  fn get_id(state : State, canonicalized_state : State) -> Int {
    node_map.get_or_init(state, fn(_key) {
      let node = dfa.new_node()
      dfa.register_node(nfa, node, canonicalized_state)
      node
    })
  }

  fn transitions(cur_state : State) -> Array[(@eof_char_set.T, State)] {
    let nfa_trans = cur_state
      .iter()
      .flat_map(fn(p) {
        let (nfa_node, tag_state) = p
        nfa_node.trans
        .iter()
        .map(it => {
          let (cset, target) = it
          (cset, (target, tag_state))
        })
      })

    // Merge char_sets by target
    let char_set_by_nfa_target = {}
    for nfa_tran in nfa_trans {
      let (cset, target) = nfa_tran
      match char_set_by_nfa_target.get(target) {
        None => char_set_by_nfa_target[target] = cset
        Some(old_cset) => char_set_by_nfa_target[target] = old_cset + cset
      }
    }

    // Split char_sets to disjoint sets
    let mut nfa_trans = []
    let mut all_char_set = @eof_char_set.empty
    for target, char_set in char_set_by_nfa_target {
      let targets = @immut/sorted_set.singleton(target)
      let new_nfa_trans = []
      fn add_tran(cset : @eof_char_set.T, targets) {
        if not(cset.is_empty()) {
          new_nfa_trans.push((cset, targets))
        }
      }

      add_tran(char_set - all_char_set, targets)
      for nfa_tran in nfa_trans {
        let (old_cset, old_targets) = nfa_tran
        add_tran(old_cset & char_set, old_targets + targets)
        add_tran(old_cset - char_set, old_targets)
      }
      all_char_set = all_char_set + char_set
      nfa_trans = new_nfa_trans
    }

    // Compute next states
    let next_states : Map[@eof_char_set.T, State] = Map::new()
    for tran in nfa_trans {
      let (cset, targets) = tran
      let mut state_map = next_states.get(cset).unwrap_or(@immut_map.empty())
      for target in targets {
        let (step_node, from_tagState) = target
        let step_tagState = from_tagState
        for pair in eps_closure[step_node.num] {
          let (eps_node, tags) = pair
          let upd_tagState = step_tagState.update_by_tags(tags)
          let old_tagState = state_map.get(eps_node)
          let new_tagState = if old_tagState is Some(old_tagState) {
            tagState_merge(upd_tagState, old_tagState)
          } else {
            upd_tagState
          }
          state_map = state_map.add(eps_node, new_tagState)
        }
      }
      next_states[cset] = state_map
    }
    next_states.iter().to_array()
  }

  let start_node = get_id(initial_state, canonicalized_initial_state)
  dfa.start_node = start_node
  dfa.tag_actions[start_node] = start_action
  let queue = @queue.new()
  queue.push((start_node, canonicalized_initial_state))
  let mut visited = @immut/sorted_set.new()
  while queue.pop() is Some((from_n, cur_state)) {
    if visited.contains(from_n) {
      continue
    }
    visited = visited.add(from_n)
    let trans = transitions(cur_state)
    for tran in trans {
      let (cset, state) = tran
      let (canonicalized_state, action) = state_canonicalize(
        state,
        nfa.tag_count,
      )
      let to_n = get_id(state, canonicalized_state)
      queue.push((to_n, canonicalized_state))
      dfa.tag_actions[to_n] = action
      dfa.add_edge(from_n, cset, to_n)
    }
  }
  dfa
}

///|
pub fn DFA::from_patterns(
  patterns : Array[(Regex, String?)],
  encoding? : @type.Encoding,
) -> DFA {
  DFA::from_nfa(NFA::from_patterns(patterns, encoding?))
  |> DFA::minimize
  |> DFA::minimize_tags
}
