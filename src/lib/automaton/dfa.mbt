// paper: NFAs with Tagged Transitions, their Conversion to Deterministic 
//        Automata and Application to Regular Expressions

pub(all) type TagAction Array[Array[Int]] derive(Show) // indexed by tag_id, rank
// tag_i <- tag_{mat[tag][i]}, tag_{-1} = cur_pos

type TagState Array[Int?] derive(Eq, Show) // indexed by tag_id

impl Hash for TagState with hash_combine(self, hasher) {
  self._.each(fn(x) { hasher.combine(x) })
}

fn TagState::new(size : Int) -> TagState {
  Array::make(size, None)
}

fn copy(self : TagState) -> TagState {
  self._.copy()
}

fn update_by_tag(self : TagState, tag : Tag, rank : Int) -> TagState {
  let r = self._[tag]
  if r.is_empty() || r.unwrap() > rank {
    self._[tag] = Some(rank)
  }
  self
}

fn update_by_tags(self : TagState, tags : @type.Bitset) -> TagState {
  for i = 0; i < self._.length(); i = i + 1 {
    if tags.get(i) {
      let _ = self.update_by_tag(i, -1)

    }
  }
  self
}

fn tagState_min(self : TagState, other : TagState) -> TagState {
  for i = 0; i < self._.length(); i = i + 1 {
    match (self._[i], other._[i]) {
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

pub(all) struct DFA {
  graph : Array[Map[Char, (Int, TagAction)]] // indexed by node_id
  end_nodes : Map[Int, (Int, Array[((Tag, Int), (Tag, Int))])]
  // (pattern_id, [(begin_tag, rank), (end_tag, rank))])
  code_blocks : Array[CodeBlock] // indexed by pattern_id
  captures : Array[Array[String]] // indexed by pattern_id
  start_action : TagAction
  mut node_count : Int
} derive(Show)

fn DFA::new(
  code_blocks : Array[CodeBlock],
  captures : Array[Array[String]],
  start_action : TagAction
) -> DFA {
  {
    graph: [Map::new()],
    code_blocks,
    captures,
    start_action,
    end_nodes: Map::new(),
    node_count: 1,
  }
}

fn DFA::new_node(self : DFA) -> Int {
  let id = self.node_count
  self.node_count += 1
  self.graph.push(Map::new())
  id
}

fn DFA::add_edge(
  self : DFA,
  from : Int,
  e : Char,
  action : TagAction,
  to : Int
) -> Unit {
  self.graph[from].set(e, (to, action))
}

typealias State = @immut/hashmap.T[Int, TagState]

fn state_canonicalize(state : State, tag_count : Int) -> (State, TagAction) {
  let mat = Array::makei(tag_count, fn(_i) { [] })
  for pair in state.iter() {
    let tags = pair.1
    for tag, rank in tags._ {
      if not(rank.is_empty()) {
        mat[tag].push(rank.unwrap())
      }
    }
  }
  mat.map_inplace(fn(x) { @sorted_set.T::from_iter(x.iter()).to_array() })
  let new_state = state
    .iter()
    .map(
      fn(pair) {
        let tags = pair.1
        tags._.mapi_inplace(
          fn(tag, op) {
            op.map(
              fn(x) {
                for index, y in mat[tag] {
                  if x == y {
                    break index
                  }
                } else {
                  abort("unreachable")
                }
              },
            )
          },
        )
        (pair.0, tags)
      },
    )
    |> State::from_iter
  (new_state, mat)
}

fn register_node(self : DFA, nfa : NFA, node : Int, os : State) -> Unit {
  let code_blocks = os
    .iter()
    .map_option(fn(x) { nfa.end_nodes.get(x.0) })
    .collect()
  guard not(code_blocks.is_empty()) else { return () }
  let min_code_block = code_blocks.fold(init=code_blocks[0], @math.minimum)
  let end_nodes = os
    .iter()
    .filter(fn(x) { nfa.end_nodes.get(x.0) == Some(min_code_block) })
    .to_array()
  guard end_nodes.length() == 1 else {
    // only one node to one exact code_block in nfa
    abort("error")
  }
  let tagState = end_nodes[0].1
  let min_tags = nfa.captures[min_code_block].map(
    fn {
      (_name, (begin, end)) =>
        ((begin, tagState._[begin].unwrap()), (end, tagState._[end].unwrap()))
    },
  )
  self.end_nodes.set(node, (min_code_block, min_tags))
}

fn DFA::from_nfa(nfa : NFA) -> DFA {
  fn get_nodes(state : State) -> Iter[Int] {
    state.iter().map(fn(p) { p.0 })
  }

  let eps_closure = nfa.get_eps_closure()
  let initial = eps_closure[1]
  let initial_state = initial
    .iter()
    .map(fn { (x, y) => (x, TagState::new(nfa.tag_count).update_by_tags(y)) })
    |> @immut/hashmap.T::from_iter
  let (initial_state, start_action) = state_canonicalize(
    initial_state,
    nfa.tag_count,
  )
  let captures = nfa.captures.map(fn(x) { x.map(fn(y) { y.0 }) })
  let dfa = DFA::new(nfa.code_blocks, captures, start_action)
  let node_map : Map[State, Int] = Map::new()
  let queue = @queue.T::new()
  fn get_id(state : State) -> Int {
    node_map.get_or_init(
      state,
      fn() {
        let node = dfa.new_node()
        dfa.register_node(nfa, node, state)
        queue.push(state)
        node
      },
    )
  }

  let _ = get_id(initial_state)
  while not(queue.is_empty()) {
    let cur_state = queue.pop().unwrap()
    let from_n = node_map.get(cur_state).unwrap()
    let next_states : Map[Char, State] = Map::new()
    for node in get_nodes(cur_state) {
      let node_tagState = cur_state[node].unwrap()
      for edge, targets in nfa.graph[node] {
        match edge {
          EChar(c) => {
            let mut state_map = next_states[c].or_else(
              fn() { @immut/hashmap.T::new() },
            )
            for pair in targets {
              let (step_node, tag) = pair // tag == None
              guard tag.is_empty() else {
                // only eps-edge has tag
                abort("error")
              }
              let step_tagState = node_tagState
              for pair in eps_closure[step_node] {
                let (eps_node, bits) = pair
                let upd_tagState = step_tagState.copy().update_by_tags(bits)
                let old_tagState = state_map[eps_node]
                let new_tagState = if old_tagState.is_empty() {
                  upd_tagState
                } else {
                  tagState_min(upd_tagState, old_tagState.unwrap())
                }
                state_map = state_map.add(eps_node, new_tagState)
              }
            }
            next_states.set(c, state_map)
          }
          Eps => ()
        }
      }
    }
    for ch, state in next_states {
      let (state, action) = state_canonicalize(state, nfa.tag_count)
      let to_n = get_id(state)
      dfa.add_edge(from_n, ch, action, to_n)
    }
  }
  dfa
}

pub fn DFA::from_rule(rule : Rule) -> DFA {
  DFA::from_nfa(NFA::from_rule(rule))
}
