///|
struct Edge((Int, Int, String?)) // from, to, edge_info

///|
enum NodeType {
  Normal
  Accepted
}

///|
pub(all) struct DotGraph {
  edges : Array[Edge]
  nodes : Map[Int, (NodeType, String?)]
  name : String
}

///|
pub fn DotGraph::new(name? : String = "graph") -> DotGraph {
  { edges: [], nodes: Map::new(), name }
}

///|
pub fn add_edge(
  self : DotGraph,
  from~ : Int,
  to~ : Int,
  edge_info? : String,
) -> Unit {
  self.edges.push((from, to, edge_info))
}

///|
fn set_node(
  self : DotGraph,
  node~ : Int,
  nodeType~ : NodeType,
  label? : String,
) -> Unit {
  self.nodes.set(node, (nodeType, label))
}

///|
fn to_graphviz(self : DotGraph) -> String {
  [
    "digraph \{self.name} {",
    self.edges.map(fn(e) {
      let (from, to, info) = e.inner()
      "\t\{from} -> \{to}" + info.map_or("", fn(t) { "[label=\{t}]" })
    })
    |> _.join("\n"),
    self.nodes
    .iter()
    .map(it => {
      let (node, (nodeType, label)) = it
      [
        node.to_string(),
        "[",
        "shape=",
        match nodeType {
          Normal => "circle"
          Accepted => "box"
        },
        ",",
        "label=",
        label.unwrap_or(node.to_string()),
        "]",
      ]
      |> _.join("")
    })
    .collect()
    |> _.join("\n"),
    "}",
  ]
  |> _.join("")
}

///|
fn to_mermaid(self : DotGraph) -> String {
  let styles =
    #|---
    #|  config:
    #|    look: handDrawn
    #|---
  [
    "```mermaid",
    styles,
    "graph TD",
    self.edges.map(fn(e) {
      let (from, to, edge_info) = e.inner()
      from.to_string() +
      "-->" +
      edge_info.map_or("", fn(s) { "|" + s + "|" }) +
      to.to_string()
    })
    |> _.join("\n"),
    self.nodes
    .iter()
    .map(fn(n) {
      let (node, (nodeType, label)) = n
      match nodeType {
        Normal => "\{node}((\{label.unwrap_or(node.to_string())}))"
        Accepted => "\{node}[\{label.unwrap_or(node.to_string())}]"
      }
    })
    .collect()
    |> _.join("\n"),
    "```",
  ]
  |> _.join("\n")
}
