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
  letrec aux = fn(re : @regex.Regex, start : NFANode) -> NFANode {
    match re.desc {
      EOF => {
        let end = self.new_node()
        self.add_edge(start, EChar(@eof_char_set.eof), end)
        end
      }
      Character(c) => {
        let end = self.new_node()
        self.add_edge(start, EChar(@eof_char_set.from_char_set(c)), end)
        end
      }
      Epsilon => start
      Repetition(re) => {
        let loop_start = self.new_node()
        self.add_edge(start, Eps, loop_start)
        let loop_end = aux(re, loop_start)
        self.add_edge(loop_end, Eps, loop_start)
        let end = self.new_node()
        self.add_edge(loop_end, Eps, end)
        end
      }
      Alter(re1, re2) => {
        let end1 = aux(re1, start)
        let end2 = aux(re2, start)
        let end = self.new_node()
        self.add_edge(end1, Eps, end)
        self.add_edge(end2, Eps, end)
        end
      }
      Concat(re1, re2) => {
        let end1 = aux(re1, start)
        aux(re2, end1)
      }
      Capture(re, name) => {
        let (begin_tag, end_tag) = name2pos(name)
        let before = self.new_node()
        self.add_edge(
          start,
          if begin_tag is Dynamic_nfa(begin_tag) {
            EpsWithTag(begin_tag)
          } else {
            Eps
          },
          before,
        )
        let after = aux(re, before)
        let end = self.new_node()
        self.add_edge(
          after,
          if end_tag is Dynamic_nfa(end_tag) {
            EpsWithTag(end_tag)
          } else {
            Eps
          },
          end,
        )
        end
      }
    }
  }

  let accept = aux(re, node)
  let id = self.pattern_captures.length()
  self.end_nodes.set(accept.num, id)
}
