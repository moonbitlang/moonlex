struct Lexbuf {
  content : Bytes
  mut ptr : Int
}

pub fn Lexbuf::from_bytes(bytes : Bytes) -> Lexbuf {
  { content: bytes, ptr: 0 }
}

fn is_empty(self : Lexbuf) -> Bool {
  self.ptr == self.content.length()
}

fn unsafe_peek(self : Lexbuf) -> Byte {
  self.content[self.ptr]
}

fn peek(self : Lexbuf) -> Byte? {
  if self.is_empty() {
    None
  } else {
    Some(self.unsafe_peek())
  }
}

fn step(self : Lexbuf) -> Unit {
  self.ptr += 1
}

fn subbytes(self : Lexbuf, head : Int, tail : Int) -> Bytes {
  let bytes = Bytes::new(tail - head)
  for p = head; p < tail; p = p + 1 {
    bytes[p - head] = self.content[p]
  }
  bytes
}

pub struct Engine {
  graph : Array[Array[(Int, Array[Array[Int]])]]
  end_nodes : Array[(Int, Array[((Int, Int), (Int, Int))])?]
  start_tags : Array[Int]
  code_blocks_n : Int
}

pub fn run(self : Engine, lexbuf : Lexbuf) -> (Int, Array[Bytes]) {
  let mut state = 1
  let mut tagState : Array[Array[Int]] = []
  let backtrace = Array::make(self.code_blocks_n, None)
  for tag in self.start_tags {
    while tagState.length() <= tag {
      tagState.push([])
    }
    tagState[tag].push(lexbuf.ptr)
  }
  while state != 0 {
    match self.end_nodes[state] {
      Some(t) => backtrace[t.0] = Some((lexbuf.ptr, state, tagState))
      _ => ()
    }
    if lexbuf.is_empty() {
      break
    }
    let next = self.graph[state][lexbuf.unsafe_peek().to_int()]
    lexbuf.step()
    state = next.0
    let new_tagState : Array[Array[Int]] = []
    for i = 0; i < next.1.length(); i = i + 1 {
      new_tagState.push([])
      for j = 0; j < next.1[i].length(); j = j + 1 {
        let t = next.1[i][j]
        if t == -1 {
          new_tagState[i].push(lexbuf.ptr)
        } else {
          new_tagState[i].push(tagState[i][t])
        }
      }
    }
    tagState = new_tagState
  }
  for index, b in backtrace {
    match b {
      Some((p, state, tagState)) => {
        lexbuf.ptr = p
        let captures = self.end_nodes[state].unwrap().1.map(
          fn {
            ((b_t, b_r), (e_t, e_r)) =>
              lexbuf.subbytes(tagState[b_t][b_r], tagState[e_t][e_r])
          },
        )
        break (index, captures)
      }
      None => ()
    }
  } else {
    (self.code_blocks_n, [])
  }
}
