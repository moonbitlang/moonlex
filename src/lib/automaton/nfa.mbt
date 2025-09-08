///|
pub(all) enum Input {
  Eps
  EpsWithTag(Tag)
  EChar(@eof_char_set.T)
} derive(Eq, Hash, Show)

///|
typealias Int as Tag

///|
pub(all) enum NFACapturePosition {
  Dynamic_nfa(Tag)
  Static_nfa(StaticKnownTagPosition)
} derive(Show)

///|
pub(all) struct NFA {
  graph : Array[NFANode]
  end_nodes : Map[Int, Int] // from node_id to pattern_id
  // String? is rest_binder
  pattern_captures : Array[
    (
      Array[((String, VarType), (NFACapturePosition, NFACapturePosition))],
      String?,
    ),
  ] // indexed_by pattern_id
  mut start_node : Int
  mut node_count : Int
  mut tag_count : Int
} derive(Show)

///|
pub(all) struct NFANode {
  num : Int
  mut eps : Array[NFANode]
  mut tagged_eps : Array[(NFANode, Tag)]
  mut trans : Array[(@eof_char_set.T, NFANode)]
} derive(Show)

///|
pub impl Eq for NFANode with equal(self, other) {
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
    end_nodes: Map::new(),
    pattern_captures: [],
    start_node: -1,
    node_count: 0,
    tag_count: 0,
  }
}

///|
pub fn NFA::from_patterns(
  patterns : Array[(Regex, String?)],
  encoding? : @type.Encoding,
) -> NFA {
  let nfa = NFA::new_nfa()
  let node = nfa.new_node() // match starting from 1
  nfa.start_node = node.num
  fn alloc_tag() {
    let tag = nfa.tag_count
    nfa.tag_count += 1
    tag
  }

  for pattern in patterns {
    let (re, rest_binder) = pattern
    let lowered_re = @regex.lower(re, encoding~)
    let capture_names = get_regex_captures(re, lowered_re).map(fn(it) {
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
      .map(it => {
        let ((name, _var_type), (begin_tag, end_tag)) = it
        (name, (begin_tag, end_tag))
      }),
    )
    nfa.register_regex(node, lowered_re, fn(x) { map.get(x).unwrap() })
    nfa.pattern_captures.push((capture_names, rest_binder))
  }
  nfa
}

///|
fn new_node(self : NFA) -> NFANode {
  let new_id = self.node_count
  self.node_count += 1
  let node = NFANode::{ num: new_id, eps: [], tagged_eps: [], trans: [] }
  self.graph.push(node)
  guard new_id + 1 == self.graph.length()
  node
}

///|
fn add_edge(self : NFA, from : NFANode, s : Input, to : NFANode) -> Unit {
  ignore(self)
  match s {
    Eps => from.eps.push(to)
    EpsWithTag(tag) => from.tagged_eps.push((to, tag))
    EChar(c) => from.trans.push((c, to))
  }
}

///|
fn register_regex(
  self : NFA,
  node : NFANode,
  re : Regex,
  name2pos : (String) -> (NFACapturePosition, NFACapturePosition),
) -> Unit {
  let final_ = self.register_regex_rec(node, re, name2pos)
  let id = self.pattern_captures.length()
  self.end_nodes.set(final_.num, id)
}

///|
fn register_regex_rec(
  self : NFA,
  node : NFANode,
  re : Regex,
  name2pos : (String) -> (NFACapturePosition, NFACapturePosition),
) -> NFANode {
  let new_node = self.new_node()
  self.add_edge(node, Eps, new_node)
  // return the final_ point of re for convience in building
  let final_ = match re.desc {
    EOF => {
      let next_node = self.new_node()
      self.add_edge(new_node, EChar(@eof_char_set.eof), next_node)
      next_node
    }
    Character(cset) => {
      let next_node = self.new_node()
      self.add_edge(
        new_node,
        EChar(@eof_char_set.from_char_set(cset)),
        next_node,
      )
      next_node
    }
    Epsilon => {
      let next_node = self.new_node()
      self.add_edge(new_node, Eps, next_node)
      next_node
    }
    Repetition(re) => {
      let final_ = self.register_regex_rec(new_node, re, name2pos)
      self.add_edge(final_, Eps, new_node)
      final_
    }
    Concat(re1, re2) => {
      let mid = self.register_regex_rec(new_node, re1, name2pos)
      self.register_regex_rec(mid, re2, name2pos)
    }
    Alter(re1, re2) => {
      let final_1 = self.register_regex_rec(new_node, re1, name2pos)
      let final_2 = self.register_regex_rec(new_node, re2, name2pos)
      let final_ = self.new_node()
      self.add_edge(final_1, Eps, final_)
      self.add_edge(final_2, Eps, final_)
      final_
    }
    Capture(re, name) => {
      let start = self.new_node()
      let final_ = self.new_node()
      let tail = self.register_regex_rec(start, re, name2pos)
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
  }
  let new_final = self.new_node()
  self.add_edge(final_, Eps, new_final)
  new_final
}
