///|
pub(all) enum Symbol {
  Eps
  EChar(Char)
} derive(Eq, Hash, Show)

///|
typealias Tag = Int

///|
pub(all) struct NFA {
  graph : Array[Map[Symbol, Array[(Int, Tag?)]]] // indexed by node_id * char
  end_nodes : Map[Int, Int] // from node_id to pattern_id
  code_blocks : Array[CodeBlock] // indexed by pattern_id
  captures : Array[Array[(String, (Tag, Tag))]] // indexed_by pattern_id
  mut node_count : Int
  mut tag_count : Int
} derive(Show)

///|
fn NFA::new_nfa() -> NFA {
  {
    graph: [Map::new()],
    code_blocks: [],
    end_nodes: Map::new(),
    captures: [],
    node_count: 1,
    tag_count: 0,
  }
}

///|
pub fn NFA::from_rule(rule : Rule) -> NFA {
  let nfa = NFA::new_nfa()
  let node = nfa.new_node() // match starting from 1
  for pattern in rule.patterns {
    let (re, code_block) = pattern
    let capture_names = re
      .get_capture_names()
      .map(fn(name) {
        let begin_tag = nfa.tag_count
        let end_tag = nfa.tag_count + 1
        nfa.tag_count += 2
        (name, (begin_tag, end_tag))
      })
    let map = Map::from_array(capture_names)
    nfa.register_regex(node, re, code_block, fn(x) { map.get(x).unwrap() })
    nfa.captures.push(capture_names)
  }
  nfa
}

///|
fn new_node(self : NFA) -> Int {
  let new_id = self.node_count
  self.node_count += 1
  self.graph.push(Map::new())
  guard new_id + 1 == self.graph.length()
  new_id
}

///|
fn add_edge(
  self : NFA,
  from : Int,
  s : Symbol,
  tag~ : Tag? = None,
  to : Int
) -> Unit {
  self.graph[from].get_or_init(s, fn() { [] }).push((to, tag))
}

///|
fn register_regex(
  self : NFA,
  node : Int,
  re : Regex,
  code_block : CodeBlock,
  name2tag : (String) -> (Tag, Tag)
) -> Unit {
  let final_ = self.register_regex_rec(node, re, name2tag)
  let id = self.code_blocks.length()
  self.code_blocks.push(code_block)
  self.end_nodes.set(final_, id)
}

///|
fn register_regex_rec(
  self : NFA,
  node : Int,
  re : Regex,
  name2tag : (String) -> (Tag, Tag)
) -> Int {
  // return the final_ point of re for convience in building
  match re {
    Underscore => {
      let next_node = self.new_node()
      for c = 1; c < 128; c = c + 1 {
        self.add_edge(node, EChar(Char::from_int(c)), next_node)
      }
      next_node
    }
    EOF => {
      let next_node = self.new_node()
      // eof is treated as \0 currently
      self.add_edge(node, EChar('\x00'), next_node)
      next_node
    }
    ReChar(c) => {
      let next_node = self.new_node()
      self.add_edge(node, EChar(c), next_node)
      next_node
    }
    ReStr(s) => {
      let mut next_node = node
      let mut last_node = node
      for c in s {
        next_node = self.new_node()
        self.add_edge(last_node, EChar(c), next_node)
        last_node = next_node
      } else {
        next_node
      }
    }
    CharSet(cset) => {
      let next_node = self.new_node()
      for c in cset & @char_set.range('\x01', '\x7f') {
        self.add_edge(node, EChar(c), next_node)
      }
      next_node
    }
    Option(re) => {
      let new_node = self.new_node()
      let final_ = self.register_regex_rec(new_node, re, name2tag)
      let new_final = self.new_node()
      self.add_edge(node, Eps, new_node)
      self.add_edge(final_, Eps, new_final)
      self.add_edge(node, Eps, new_final)
      new_final
    }
    Repetition(re) => {
      let new_node = self.new_node()
      let final_ = self.register_regex_rec(new_node, re, name2tag)
      let new_final = self.new_node()
      self.add_edge(node, Eps, new_node)
      self.add_edge(final_, Eps, new_final)
      self.add_edge(new_final, Eps, node)
      new_final
    }
    Concat(re1, re2) => {
      let mid = self.register_regex_rec(node, re1, name2tag)
      self.register_regex_rec(mid, re2, name2tag)
    }
    Alter(re1, re2) => {
      let final_1 = self.register_regex_rec(node, re1, name2tag)
      let final_2 = self.register_regex_rec(node, re2, name2tag)
      let final_ = self.new_node()
      self.add_edge(final_1, Eps, final_)
      self.add_edge(final_2, Eps, final_)
      final_
    }
    Capture(re, name) => {
      let start = self.new_node()
      let final_ = self.new_node()
      let tail = self.register_regex_rec(start, re, name2tag)
      let (begin_tag, end_tag) = name2tag(name)
      self.add_edge(node, Eps, start, tag=Some(begin_tag))
      self.add_edge(tail, Eps, final_, tag=Some(end_tag))
      final_
    }
    Named(_) => abort("Named should be resolved before building NFA")
  }
}

///|
fn get_eps_closure(self : NFA) -> Array[@immut/hashmap.T[Int, @bitset.T]] {
  Array::makei(self.node_count, fn(x) {
    let empty_bits = @bitset.new(self.tag_count)
    let result = Map::from_array([(x, empty_bits)])
    fn get_bits(n : Int) -> @bitset.T {
      result.get_or_default(n, empty_bits)
    }

    let queue = @queue.from_array([x])
    while not(queue.is_empty()) {
      let o = queue.unsafe_pop()
      let o_bits = get_bits(o)
      for e in self.graph[o].get_or_default(Eps, []) {
        let (u, tag) = e
        let mut new_u_bits = get_bits(u).union(o_bits)
        if not(tag.is_empty()) {
          new_u_bits = new_u_bits.copy()
          new_u_bits.set(tag.unwrap(), true)
        }
        if Some(new_u_bits) != result.get(u) {
          result.set(u, new_u_bits)
          queue.push(u)
        }
      }
    }
    @immut/hashmap.from_iter(result.iter())
  })
}
