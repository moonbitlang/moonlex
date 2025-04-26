// paper: NFAs with Tagged Transitions, their Conversion to Deterministic 
//        Automata and Application to Regular Expressions

///|
pub(all) type TagAction Array[TagOp] derive(Show, Eq, Compare) // sorted

///|
pub typealias TagRank = Int

///|
pub typealias TagVar = (Tag, TagRank)

///|
pub(all) enum TagOp {
  Set(dest~ : TagVar) // set tag variable's value to lexbuf.curr_pos()
  // In fact, dest.0 == src.0
  // But, for simplicity
  Copy(dest~ : TagVar, src~ : TagVar) // dest != src
} derive(Show, Eq, Compare)

///|
priv type TagState @immut/sorted_map.T[Tag, TagRank] derive (
  Eq,
  Show,
  Hash,
  Compare,
)

///|
fn TagState::new() -> TagState {
  @immut/sorted_map.new()
}

///|
fn update_by_tag(self : TagState, tag : Tag, rank : Int) -> TagState {
  match self._[tag] {
    None => self._.add(tag, rank)
    Some(old_rank) => if old_rank > rank { self._.add(tag, rank) } else { self }
  }
}

///|
fn update_by_tags(self : TagState, tags : @immut/sorted_set.T[Tag]) -> TagState {
  let mut state = self
  for tag in tags {
    state = state.update_by_tag(tag, -1)
  }
  state
}

///|
fn tagState_min(self : TagState, other : TagState) -> TagState {
  let tags = @immut/sorted_set.from_array(self._.keys()) +
    @immut/sorted_set.from_array(other._.keys())
  for tag in tags {
    match (self._[tag], other._[tag]) {
      (None, _) => break other
      (_, None) => break self
      (Some(r1), Some(r2)) =>
        if r1 != r2 {
          break if r1 < r2 { self } else { other }
        }
    }
  } else {
    self
  }
}

///|
pub(all) struct DFA {
  graph : Array[Array[(@eof_char_set.T, Int)]] // indexed by node_id
  mut start_node : Int
  tag_actions : Map[Int, TagAction] // indexed by node_id
  end_nodes : Map[Int, (Int, Array[((Tag, Int), (Tag, Int))])]
  // (pattern_id, [(begin_tag, rank), (end_tag, rank))])
  code_blocks : Array[CodeBlock] // indexed by pattern_id
  captures : Array[Array[(String, @type.VarType)]] // indexed by pattern_id
  mut node_count : Int
} derive(Show)

///|
pub typealias DFANode = Int

///|
fn DFA::new(
  code_blocks : Array[CodeBlock],
  captures : Array[Array[(String, @type.VarType)]]
) -> DFA {
  {
    graph: [],
    start_node: -1,
    tag_actions: {},
    code_blocks,
    captures,
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
typealias State = @immut/hashmap.T[NFANode, TagState]

///|
fn state_canonicalize(state : State, tag_count : Int) -> (State, TagAction) {
  let mat = Array::makei(tag_count, fn(_i) { [] })
  for pair in state.iter() {
    let tags = pair.1
    for tag, rank in tags._ {
      mat[tag].push(rank)
    }
  }
  mat.map_inplace(fn(x) { @sorted_set.from_iter(x.iter()).to_array() })
  let new_state = state
    .iter()
    .map(fn(pair) {
      let tags = pair.1._.map_with_key(fn(tag, x) {
        for index, y in mat[tag] {
          if x == y {
            break index
          }
        } else {
          abort("unreachable")
        }
      })
      (pair.0, TagState(tags))
    })
    |> @immut/hashmap.from_iter
  let tag_action = []
  for tag_index, ops in mat {
    for dest_rank, src_rank in ops {
      if src_rank == -1 {
        tag_action.push(Set(dest=(tag_index, dest_rank)))
      } else if dest_rank != src_rank {
        tag_action.push(
          Copy(dest=(tag_index, dest_rank), src=(tag_index, src_rank)),
        )
      }
    }
  }
  tag_action.sort()
  (new_state, tag_action)
}

///|
fn register_node(self : DFA, nfa : NFA, node : Int, os : State) -> Unit {
  let code_blocks = os
    .iter()
    .filter_map(fn(x) { nfa.end_nodes.get(x.0.num) })
    .collect()
  guard not(code_blocks.is_empty()) else { return () }
  let min_code_block = code_blocks.fold(init=code_blocks[0], @math.minimum)
  let end_nodes = os
    .iter()
    .filter(fn(x) { nfa.end_nodes.get(x.0.num) == Some(min_code_block) })
    .to_array()
  guard end_nodes.length() == 1 else {
    // only one node to one exact code_block in nfa
    abort("error")
  }
  let tagState = end_nodes[0].1
  let min_tags = nfa.captures[min_code_block].map(fn {
    (_name, (begin, end)) =>
      ((begin, tagState._[begin].unwrap()), (end, tagState._[end].unwrap()))
  })
  self.end_nodes.set(node, (min_code_block, min_tags))
}

///|
fn DFA::from_nfa(nfa : NFA) -> DFA {
  let eps_closure = nfa.get_eps_closure()
  let initial = eps_closure[nfa.start_node]
  let initial_state = initial
    .iter()
    .map(fn { (x, y) => (x, TagState::new().update_by_tags(y)) })
    |> @immut/hashmap.from_iter
  let (initial_state, start_action) = state_canonicalize(
    initial_state,
    nfa.tag_count,
  )
  let captures = nfa.captures.map(fn(x) { x.map(fn(y) { y.0 }) })
  let dfa = DFA::new(nfa.code_blocks, captures)
  let node_map : Map[State, Int] = Map::new()
  let queue = @queue.new()
  fn get_id(state : State) -> Int {
    node_map.get_or_init(state, fn() {
      let node = dfa.new_node()
      dfa.register_node(nfa, node, state)
      queue.push(state)
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
        .map(fn { (cset, target) => (cset, (target, tag_state)) })
      })

    // Merge char_sets by target
    let char_set_by_nfa_target = {}
    for nfa_tran in nfa_trans {
      let (cset, target) = nfa_tran
      match char_set_by_nfa_target[target] {
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
      for target in targets {
        let (step_node, from_tagState) = target
        let mut state_map = next_states[cset].or_else(fn() {
          @immut/hashmap.new()
        })
        let step_tagState = from_tagState
        for pair in eps_closure[step_node.num] {
          let (eps_node, tags) = pair
          let upd_tagState = step_tagState.update_by_tags(tags)
          let old_tagState = state_map[eps_node]
          let new_tagState = if old_tagState is Some(old_tagState) {
            tagState_min(upd_tagState, old_tagState)
          } else {
            upd_tagState
          }
          state_map = state_map.add(eps_node, new_tagState)
        }
        next_states[cset] = state_map
      }
    }
    next_states.iter().to_array()
  }

  let start_node = get_id(initial_state)
  dfa.start_node = start_node
  dfa.tag_actions[start_node] = start_action
  while queue.pop() is Some(cur_state) {
    let from_n = node_map.get(cur_state).unwrap()
    let trans = transitions(cur_state)
    for tran in trans {
      let (cset, state) = tran
      let (state, action) = state_canonicalize(state, nfa.tag_count)
      let to_n = get_id(state)
      dfa.tag_actions[to_n] = action
      dfa.add_edge(from_n, cset, to_n)
    }
  }
  dfa
}

///|
pub fn DFA::from_rule(rule : Rule, encoding~ : @type.Encoding?) -> DFA {
  DFA::from_nfa(NFA::from_rule(rule, encoding~))
  |> DFA::minimize
  |> DFA::minimize_tags
}
