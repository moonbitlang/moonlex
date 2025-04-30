///|
pub(all) enum Input {
  Eps
  EpsWithTag(Tag)
  EChar(@eof_char_set.T)
} derive(Eq, Hash, Show)

///|
typealias Tag = Int

///|
pub(all) enum NFACapturePosition {
  Dynamic_nfa(Tag)
  Static_nfa(@type.StaticKnownTagPosition)
} derive(Show)

///|
pub(all) struct NFA {
  graph : Array[NFANode]
  end_nodes : Map[Int, Int] // from node_id to pattern_id
  code_blocks : Array[CodeBlock] // indexed by pattern_id
  captures : Array[
    Array[((String, @type.VarType), (NFACapturePosition, NFACapturePosition))],
  ] // indexed_by pattern_id
  mut start_node : Int
  mut node_count : Int
  mut tag_count : Int
} derive(Show)

///|
pub(all) struct NFANode {
  num : Int
  mut eps : @immut/sorted_set.T[(NFANode, Tag?)]
  mut trans : Array[(@eof_char_set.T, NFANode)]
} derive(Show)

///|
pub impl Eq for NFANode with op_equal(self, other) {
  self.num == other.num
}

///|
pub impl Compare for NFANode with compare(self, other) {
  self.num.compare(other.num)
}

///|
pub impl Hash for NFANode with hash_combine(self, hasher) {
  hasher.combine_int(self.num)
}

///|
fn NFA::new_nfa() -> NFA {
  {
    graph: [],
    code_blocks: [],
    end_nodes: Map::new(),
    captures: [],
    start_node: -1,
    node_count: 0,
    tag_count: 0,
  }
}

///|
pub fn NFA::from_rule(rule : Rule, encoding~ : @type.Encoding?) -> NFA {
  let nfa = NFA::new_nfa()
  let node = nfa.new_node() // match starting from 1
  nfa.start_node = node.num
  fn alloc_tag() {
    let tag = nfa.tag_count
    nfa.tag_count += 1
    tag
  }

  for pattern in rule.patterns {
    let (re, code_block) = pattern
    let capture_names = re
      .get_capture_names(encoding~)
      .map(fn(it) {
        let (name, (var_type, (begin, end))) = it
        let begin = match begin {
          None => Dynamic_nfa(alloc_tag())
          Some(info) => Static_nfa(info)
        }
        let end = match end {
          None => Dynamic_nfa(alloc_tag())
          Some(info) => Static_nfa(info)
        }
        ((name, var_type), (begin, end))
      })
    let map = Map::from_iter(
      capture_names
      .iter()
      .map(fn {
        ((name, _var_type), (begin_tag, end_tag)) =>
          (name, (begin_tag, end_tag))
      }),
    )
    nfa.register_regex(
      node,
      re,
      code_block,
      fn(x) { map.get(x).unwrap() },
      encoding~,
    )
    nfa.captures.push(capture_names)
  }
  nfa
}

///|
fn new_node(self : NFA) -> NFANode {
  let new_id = self.node_count
  self.node_count += 1
  let node = NFANode::{ num: new_id, eps: @immut/sorted_set.new(), trans: [] }
  self.graph.push(node)
  guard new_id + 1 == self.graph.length()
  node
}

///|
fn add_edge(self : NFA, from : NFANode, s : Input, to : NFANode) -> Unit {
  ignore(self)
  match s {
    Eps => from.eps = from.eps.add((to, None))
    EpsWithTag(tag) => from.eps = from.eps.add((to, Some(tag)))
    EChar(c) => from.trans.push((c, to))
  }
}

///|
fn register_regex(
  self : NFA,
  node : NFANode,
  re : Regex,
  code_block : CodeBlock,
  name2pos : (String) -> (NFACapturePosition, NFACapturePosition),
  encoding~ : @type.Encoding?
) -> Unit {
  let final_ = self.register_regex_rec(node, re, name2pos, encoding)
  let id = self.code_blocks.length()
  self.code_blocks.push(code_block)
  self.end_nodes.set(final_.num, id)
}

///|
fn register_regex_rec(
  self : NFA,
  node : NFANode,
  re : Regex,
  name2pos : (String) -> (NFACapturePosition, NFACapturePosition),
  encoding : @type.Encoding?
) -> NFANode {
  let new_node = self.new_node()
  self.add_edge(node, Eps, new_node)
  // return the final_ point of re for convience in building
  let final_ = match re {
    EOF => {
      let next_node = self.new_node()
      self.add_edge(new_node, EChar(@eof_char_set.eof), next_node)
      next_node
    }
    Character(cset) => {
      let next_node = self.new_node()
      match encoding {
        None => self.add_edge(new_node, EChar(cset), next_node)
        Some(Ascii) =>
          // TODO: check range in 0..=128
          self.add_edge(new_node, EChar(cset), next_node)
        Some(Latin1) =>
          // TODO: check range in 0..=255
          self.add_edge(new_node, EChar(cset), next_node)
        Some(Utf8) => {
          // TODO: Lower cset to `Regex`, not `Array[Array[@eof_char_set.T]]`
          let branches = lower_unicode_charclass_to_utf8(cset)
          for branch in branches {
            let self_ = self
            fn link(
              byte_cset : @eof_char_set.T,
              prev_node : NFANode
            ) -> NFANode {
              let end_node = self_.new_node()
              self_.add_edge(prev_node, EChar(byte_cset), end_node)
              end_node
            }

            let mut prev_node = new_node
            for byte_cset in branch {
              prev_node = link(byte_cset, prev_node)
            }
            self.add_edge(prev_node, Eps, next_node)
          }
        }
        Some(Utf16) =>
          // TODO: Implement UTF-16 handling
          panic()
      }
      next_node
    }
    Epsilon => {
      let next_node = self.new_node()
      self.add_edge(new_node, Eps, next_node)
      next_node
    }
    Repetition(re) => {
      let final_ = self.register_regex_rec(new_node, re, name2pos, encoding)
      self.add_edge(final_, Eps, new_node)
      final_
    }
    Concat(re1, re2) => {
      let mid = self.register_regex_rec(new_node, re1, name2pos, encoding)
      self.register_regex_rec(mid, re2, name2pos, encoding)
    }
    Alter(re1, re2) => {
      let final_1 = self.register_regex_rec(new_node, re1, name2pos, encoding)
      let final_2 = self.register_regex_rec(new_node, re2, name2pos, encoding)
      let final_ = self.new_node()
      self.add_edge(final_1, Eps, final_)
      self.add_edge(final_2, Eps, final_)
      final_
    }
    Capture(re, name) => {
      let start = self.new_node()
      let final_ = self.new_node()
      let tail = self.register_regex_rec(start, re, name2pos, encoding)
      let (begin_tag, end_tag) = name2pos(name)
      self.add_edge(
        new_node,
        if begin_tag is Dynamic_nfa(begin_tag) {
          EpsWithTag(begin_tag)
        } else {
          Eps
        },
        start,
      )
      self.add_edge(
        tail,
        if end_tag is Dynamic_nfa(end_tag) {
          EpsWithTag(end_tag)
        } else {
          Eps
        },
        final_,
      )
      final_
    }
    Bytes(encoding, re) =>
      self.register_regex_rec(new_node, re, name2pos, Some(encoding))
  }
  let new_final = self.new_node()
  self.add_edge(final_, Eps, new_final)
  new_final
}

///|
fn get_eps_closure(
  self : NFA
) -> Array[@immut/hashmap.T[NFANode, @immut/sorted_set.T[Tag]]] {
  Array::map(self.graph, fn(x) {
    let result = Map::from_array([(x, @immut/sorted_set.new())])
    fn get_tags(n : NFANode) -> @immut/sorted_set.T[Tag] {
      result.get_or_default(n, @immut/sorted_set.new())
    }

    let queue = @queue.from_array([x])
    while queue.pop() is Some(o) {
      let o_tags = get_tags(o)
      for e in o.eps {
        let (u, tag) = e
        let mut new_u_tags = get_tags(u).union(o_tags)
        if tag is Some(tag) {
          new_u_tags = new_u_tags.add(tag)
        }
        if Some(new_u_tags) != result.get(u) {
          result.set(u, new_u_tags)
          queue.push(u)
        }
      }
    }
    @immut/hashmap.from_iter(result.iter())
  })
}
