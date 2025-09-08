///|
fn simple_rule(re_str : String) -> @type.Rule {
  let re = (try? @parser.parse_regex_from_string(re_str)).unwrap()
  {
    name: "",
    signature: "",
    lexee: "lexbuf",
    patterns: [(re, None)],
    actions: [""],
  }
}

///|
fn nfa2dots(nfa : @automaton.NFA, name? : String = "nfa") -> DotGraph {
  let dots = DotGraph::new(name~)
  for node in nfa.graph {
    for target in node.eps {
      let edge_info = "ε"
      dots.add_edge(from=node.num, to=target.num, edge_info=repr(edge_info))
    }
    for target in node.tagged_eps {
      let mut edge_info = "ε"
      edge_info = edge_info + "/\{target.1}"
      dots.add_edge(from=node.num, to=target.0.num, edge_info=repr(edge_info))
    }
    for edge in node.trans {
      let (cset, target) = edge
      for ch in cset {
        let edge_info = match ch.repr() {
          Eof => "$"
          Char(c) => "\{c}"
        }
        dots.add_edge(from=node.num, to=target.num, edge_info=repr(edge_info))
      }
    }
    let end_node = nfa.end_nodes.get(node.num)
    if end_node.is_empty() {
      dots.set_node(node=node.num, nodeType=Normal)
    } else {
      let pattern = end_node.unwrap()
      dots.set_node(
        node=node.num,
        nodeType=Accepted,
        label=repr("\{node.num}(\{pattern})"),
      )
    }
  }
  dots
}

///|
test "nfa simple_regex graphviz" (it : @test.T) {
  let rule = simple_rule("(('a' | 'b')*\"cd\"?)+")
  let nfa = @automaton.NFA::from_patterns(rule.patterns)
  let dots = nfa2dots(nfa, name="simple_regex")
  it.writeln(dots.to_graphviz())
  it.snapshot(filename="nfa_simple_regex.dot")
}

///|
test "nfa simple_regex mermaid" (it : @test.T) {
  let rule = simple_rule("(('a' | 'b')*\"cd\"?)+")
  let nfa = @automaton.NFA::from_patterns(rule.patterns)
  let dots = nfa2dots(nfa, name="simple_regex")
  it.writeln(dots.to_mermaid())
  it.snapshot(filename="nfa_simple_regex.md")
}

///|
test "nfa a_star_capture graphviz" (it : @test.T) {
  let rule = simple_rule("'a'*('a'+ as cap)'a'")
  let nfa = @automaton.NFA::from_patterns(rule.patterns)
  let dots = nfa2dots(nfa, name="a_star_capture")
  it.writeln(dots.to_graphviz())
  it.snapshot(filename="nfa_a_star_capture.dot")
}

///|
test "nfa a_star_capture mermaid" (it : @test.T) {
  let rule = simple_rule("'a'*('a'+ as cap)'a'")
  let nfa = @automaton.NFA::from_patterns(rule.patterns)
  let dots = nfa2dots(nfa, name="a_star_capture")
  it.writeln(dots.to_mermaid())
  it.snapshot(filename="nfa_a_star_capture.md")
}

///|
fn dfa2dots(dfa : @automaton.DFA, name? : String = "dfa") -> DotGraph {
  let dots = DotGraph::new(name~)
  for node, edges in dfa.graph {
    for edge in edges {
      let (cset, target) = edge
      for ch in cset {
        let edge_info = match ch.repr() {
          Eof => "$"
          Char(c) => "\{c}"
        }
        dots.add_edge(from=node, to=target, edge_info=repr(edge_info))
      }
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
      dots.set_node(node~, nodeType=Accepted, label=repr(label))
    }
  }
  dots
}

///|
test "dfa simple_regex graphviz" (it : @test.T) {
  let rule = simple_rule("(('a' | 'b')*\"cd\"?)+")
  let dfa = @automaton.DFA::from_patterns(rule.patterns)
  let dots = dfa2dots(dfa, name="simple_regex")
  it.writeln(dots.to_graphviz())
  it.snapshot(filename="dfa_simple_regex.dot")
}

///|
test "dfa simple_regex mermaid" (it : @test.T) {
  let rule = simple_rule("(('a' | 'b')*\"cd\"?)+")
  let dfa = @automaton.DFA::from_patterns(rule.patterns)
  let dots = dfa2dots(dfa, name="simple_regex")
  it.writeln(dots.to_mermaid())
  it.snapshot(filename="dfa_simple_regex.md")
}

///|
test "dfa a_star_capture graphviz" (it : @test.T) {
  let rule = simple_rule("'a'*('a'+ as cap)'a'")
  let dfa = @automaton.DFA::from_patterns(rule.patterns)
  let dots = dfa2dots(dfa, name="a_star_capture")
  it.writeln(dots.to_graphviz())
  it.snapshot(filename="dfa_a_star_capture.dot")
}

///|
test "dfa a_star_capture mermaid" (it : @test.T) {
  let rule = simple_rule("'a'*('a'+ as cap)'a'")
  let dfa = @automaton.DFA::from_patterns(rule.patterns)
  let dots = dfa2dots(dfa, name="a_star_capture")
  it.writeln(dots.to_mermaid())
  it.snapshot(filename="dfa_a_star_capture.md")
}
