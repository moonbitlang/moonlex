///|
fn DFA::minimize_tags(self : DFA) -> DFA {
  let tag_to_state_actions_map : Map[
    Tag,
    @immut/sorted_map.SortedMap[DFANode, Array[TagOp]],
  ] = {}
  fn map_op(op : TagOp) -> TagOp {
    match op {
      Set(dest~) => Set(dest=(-1, dest.1))
      Copy(dest~, src~) => Copy(dest=(-1, dest.1), src=(-1, src.1))
    }
  }

  for node, action in self.tag_actions {
    for op in action.inner() {
      match op {
        Set(dest~) | Copy(dest~, ..) => {
          // If Copy, dest.0 == src.0
          let op2 = map_op(op)
          match tag_to_state_actions_map.get(dest.0) {
            None =>
              tag_to_state_actions_map[dest.0] = @immut/sorted_map.new().add(
                node,
                [op2],
              )
            Some(map) =>
              match map.get(node) {
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
    groups[state_actions_map] = groups
      .get(state_actions_map)
      .unwrap_or(@immut/sorted_set.new())
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
  fn map_capture_pos(pos : DFACapturePosition) -> DFACapturePosition {
    if pos is Dynamic_dfa(tag_var) &&
      tag_to_new_tag.get(tag_var.0) is Some(new_tag) {
      Dynamic_dfa((new_tag, tag_var.1))
    } else {
      pos
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
        let ops = action
          .inner()
          .map(fn(op) {
            match op {
              Set(dest~) =>
                Set(dest=(tag_to_new_tag.get(dest.0).unwrap(), dest.1))
              Copy(dest~, src~) =>
                Copy(
                  dest=(tag_to_new_tag.get(dest.0).unwrap(), dest.1),
                  src=(tag_to_new_tag.get(src.0).unwrap(), src.1),
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
              let (begin, end) = capture
              (map_capture_pos(begin), map_capture_pos(end))
            }),
          ),
        )
      }),
    ),
    pattern_captures: self.pattern_captures,
    node_count: self.node_count,
  }
}
