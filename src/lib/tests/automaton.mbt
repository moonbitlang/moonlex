fn simple_rule(re_str : String) -> @type.Rule {
  let parser_buf = @parser.ParserBuf::from_string(re_str)
  guard let Some((_, re)) = parser_buf.regex() else { _ => abort("") }
  { name: "", return_type: "", vars: [], patterns: [(re, "")] }
}

fn nfa2dots(nfa : @automaton.NFA, name~ : String = "nfa") -> DotGraph {
  let dots = DotGraph::new(name~)
  for node, edges in nfa.graph {
    for edge in edges {
      let (ch, targets) = edge
      for target in targets {
        let mut edge_info = match ch {
          EChar(c) => "\{c}"
          Eps => "ε"
        }
        if not(target.1.is_empty()) {
          edge_info = edge_info + "/\{target.1.unwrap()}"
        }
        dots.add_edge(from=node, to=target.0, edge_info="\"\{edge_info}\"")
      }
    }
    if node == 0 {
      continue
    }
    let end_node = nfa.end_nodes.get(node)
    if end_node.is_empty() {
      dots.set_node(node~, nodeType=Normal)
    } else {
      let pattern = end_node.unwrap()
      dots.set_node(node~, nodeType=Accepted, label="\"\{node}(\{pattern})\"")
    }
  }
  dots
}

test "nfa simple_regex graphviz" (it : @test.T) {
  let rule = simple_rule("(('a' | 'b')*\"cd\"?)+")
  let nfa = @automaton.NFA::from_rule(rule)
  let dots = nfa2dots(nfa, name="simple_regex")
  it.writeln(dots.to_graphviz())
  it.snapshot!(filename="nfa_simple_regex.dot")
}

test "nfa simple_regex mermaid" (it : @test.T) {
  let rule = simple_rule("(('a' | 'b')*\"cd\"?)+")
  let nfa = @automaton.NFA::from_rule(rule)
  let dots = nfa2dots(nfa, name="simple_regex")
  it.writeln(dots.to_mermaid())
  it.snapshot!(filename="nfa_simple_regex.md")
}

test "nfa a_star_capture graphviz" (it : @test.T) {
  let rule = simple_rule("'a'*('a'+ as cap)'a'")
  let nfa = @automaton.NFA::from_rule(rule)
  let dots = nfa2dots(nfa, name="a_star_capture")
  it.writeln(dots.to_graphviz())
  it.snapshot!(filename="nfa_a_star_capture.dot")
}

test "nfa a_star_capture mermaid" (it : @test.T) {
  let rule = simple_rule("'a'*('a'+ as cap)'a'")
  let nfa = @automaton.NFA::from_rule(rule)
  let dots = nfa2dots(nfa, name="a_star_capture")
  it.writeln(dots.to_mermaid())
  it.snapshot!(filename="nfa_a_star_capture.md")
}

fn dfa2dots(dfa : @automaton.DFA, name~ : String = "dfa") -> DotGraph {
  let dots = DotGraph::new(name~)
  for node, edges in dfa.graph {
    for edge in edges {
      let (ch, (target, action)) = edge
      let mut edge_info = "\{ch}"
      if action._.length() != 0 {
        edge_info = edge_info + "\{action._}"
      }
      dots.add_edge(from=node, to=target, edge_info="\"\{edge_info}\"")
    }
    if node == 0 {
      continue
    }
    let end_node = dfa.end_nodes.get(node)
    if end_node.is_empty() {
      dots.set_node(node~, nodeType=Normal)
    } else {
      let (pattern, tags) = end_node.unwrap()
      let mut label = "\{node}(\{pattern})"
      if not(tags.is_empty()) {
        label = label + "/\{tags}"
      }
      dots.set_node(node~, nodeType=Accepted, label="\"\{label}\"")
    }
  }
  dots
}

test "dfa simple_regex graphviz" (it : @test.T) {
  let rule = simple_rule("(('a' | 'b')*\"cd\"?)+")
  let dfa = @automaton.DFA::from_rule(rule)
  let dots = dfa2dots(dfa, name="simple_regex")
  it.writeln(dots.to_graphviz())
  it.snapshot!(filename="dfa_simple_regex.dot")
}

test "dfa simple_regex mermaid" (it : @test.T) {
  let rule = simple_rule("(('a' | 'b')*\"cd\"?)+")
  let dfa = @automaton.DFA::from_rule(rule)
  let dots = dfa2dots(dfa, name="simple_regex")
  it.writeln(dots.to_mermaid())
  it.snapshot!(filename="dfa_simple_regex.md")
}

test "dfa a_star_capture graphviz" (it : @test.T) {
  let rule = simple_rule("'a'*('a'+ as cap)'a'")
  let dfa = @automaton.DFA::from_rule(rule)
  let dots = dfa2dots(dfa, name="a_star_capture")
  it.writeln(dots.to_graphviz())
  it.snapshot!(filename="dfa_a_star_capture.dot")
}

test "dfa a_star_capture mermaid" (it : @test.T) {
  let rule = simple_rule("'a'*('a'+ as cap)'a'")
  let dfa = @automaton.DFA::from_rule(rule)
  let dots = dfa2dots(dfa, name="a_star_capture")
  it.writeln(dots.to_mermaid())
  it.snapshot!(filename="dfa_a_star_capture.md")
}
