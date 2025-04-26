///|
fn DFA::minimize_tags(self : DFA) -> DFA {
  let tag_to_state_actions_map : Map[
    Tag,
    @immut/sorted_map.T[DFANode, Array[TagOp]],
  ] = {}
  fn map_op(op : TagOp) -> TagOp {
    match op {
      Set(dest~) => Set(dest=(-1, dest.1))
      Copy(dest~, src~) => Copy(dest=(-1, dest.1), src=(-1, src.1))
    }
  }

  for node, action in self.tag_actions {
    for op in action._ {
      match op {
        Set(dest~) | Copy(dest~, ..) => {
          // If Copy, dest.0 == src.0
          let op2 = map_op(op)
          match tag_to_state_actions_map[dest.0] {
            None =>
              tag_to_state_actions_map[dest.0] = @immut/sorted_map.new().add(
                node,
                [op2],
              )
            Some(map) =>
              match map[node] {
                None => tag_to_state_actions_map[dest.0] = map.add(node, [op2])
                Some(ops) => ops.push(op2)
              }
          }
        }
      }
    }
  }
  for _, state_actions_map in tag_to_state_actions_map {
    for _, ops in state_actions_map {
      ops.sort()
    }
  }
  let groups = @sorted_map.new()
  for tag, state_actions_map in tag_to_state_actions_map {
    groups[state_actions_map] = groups[state_actions_map]
      .or(@immut/sorted_set.new())
      .add(tag)
  }
  let tag_to_new_tag = {}
  let mut num_tags = 0
  for _, tags in groups {
    let new_tag = num_tags
    num_tags += 1
    for tag in tags {
      tag_to_new_tag[tag] = new_tag
    }
  }
  DFA::{
    graph: self.graph,
    start_node: self.start_node,
    tag_actions: Map::from_iter(
      self.tag_actions
      .iter()
      .map(fn(item) {
        let (node_id, action) = item
        let ops = action._.map(fn(op) {
          match op {
            Set(dest~) => Set(dest=(tag_to_new_tag[dest.0].unwrap(), dest.1))
            Copy(dest~, src~) =>
              Copy(
                dest=(tag_to_new_tag[dest.0].unwrap(), dest.1),
                src=(tag_to_new_tag[src.0].unwrap(), src.1),
              )
          }
        })
        ops.dedup()
        (node_id, TagAction(ops))
      }),
    ),
    end_nodes: Map::from_iter(
      self.end_nodes
      .iter()
      .map(fn(item) {
        let (node_id, (pattern_id, captures)) = item
        (
          node_id,
          (
            pattern_id,
            captures.map(fn(capture) {
              let (begin_tag, end_tag) = capture
              (
                (tag_to_new_tag[begin_tag.0].unwrap(), begin_tag.1),
                (tag_to_new_tag[end_tag.0].unwrap(), end_tag.1),
              )
            }),
          ),
        )
      }),
    ),
    code_blocks: self.code_blocks,
    captures: self.captures,
    node_count: self.node_count,
  }
}
