///|
priv struct NFAEpsClosure {
  nfa : NFA
  eps : @bit_array.BitArray
  mut tags : @immut/sorted_map.SortedMap[
    NFANode,
    @immut/sorted_set.SortedSet[Tag],
  ]
  nodes : Array[NFANode]
}

///|
fn NFAEpsClosure::new(nfa : NFA) -> NFAEpsClosure {
  {
    nfa,
    eps: @bit_array.BitArray::new(nfa.node_count),
    tags: @immut/sorted_map.new(),
    nodes: [],
  }
}

///|
fn NFAEpsClosure::add(
  self : Self,
  node : NFANode,
  tags? : @immut/sorted_set.SortedSet[Tag] = @immut/sorted_set.new(),
) -> Bool {
  if self.eps.unsafe_get(node.num) != 0 {
    let prev_tags = self.tags.get(node).unwrap_or(@immut/sorted_set.new())
    let changed = not(tags.subset(prev_tags))
    if changed {
      self.tags = self.tags.add(node, prev_tags.union(tags))
    }
    changed
  } else {
    if !tags.is_empty() {
      self.tags = self.tags.add(node, tags)
    }
    self.eps.unsafe_set(node.num, 1)
    if self.nodes.length() < 5 {
      self.nodes.push(node)
    }
    true
  }
}

///|
fn NFAEpsClosure::get(
  self : Self,
  node : NFANode,
) -> @immut/sorted_set.SortedSet[Tag]? {
  if self.eps.unsafe_get(node.num) == 0 {
    None
  } else {
    Some(self.tags.get(node).unwrap_or(@immut/sorted_set.new()))
  }
}

///|
fn NFAEpsClosure::iter(
  self : Self,
) -> Iter[(NFANode, @immut/sorted_set.SortedSet[Tag])] {
  if self.nodes.length() < 5 {
    self.nodes
    .iter()
    .map(fn(node) {
      (node, self.tags.get(node).unwrap_or(@immut/sorted_set.new()))
    })
  } else {
    self.eps
    .iter()
    .map(i => (
      self.nfa.graph[i],
      self.tags.get(self.nfa.graph[i]).unwrap_or(@immut/sorted_set.new()),
    ))
  }
}

///|
// fn NFAEpsClosure::finalize(self : Self) -> Unit {
//   self.nodes.sort()
// }

///|
fn get_eps_closure(self : NFA) -> Array[NFAEpsClosure] {
  Array::map(self.graph, fn(x) {
    let result = NFAEpsClosure::new(self)
    let _ = result.add(x)
    fn get_tags(n : NFANode) -> @immut/sorted_set.SortedSet[Tag] {
      result.get(n).unwrap_or(@immut/sorted_set.new())
    }

    let queue = @queue.from_array([x])
    while queue.pop() is Some(o) {
      let o_tags = get_tags(o)
      for e in o.eps {
        let new_u_tags = get_tags(e).union(o_tags)
        let changed = result.add(e, tags=new_u_tags)
        if changed {
          queue.push(e)
        }
      }
      for e in o.tagged_eps {
        let (u, tag) = e
        let new_u_tags = get_tags(u).union(o_tags).add(tag)
        let changed = result.add(u, tags=new_u_tags)
        if changed {
          queue.push(u)
        }
      }
    }
    // result.finalize()
    result
  })
}
