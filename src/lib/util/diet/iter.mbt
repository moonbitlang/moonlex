///|
pub fn[N] iter_intervals(self : Tree[N]) -> Iter[(N, N)] {
  Iter::new(fn(yield_) {
    match self {
      Empty => IterContinue
      Node(..) as t => {
        guard t.left.iter_intervals().run(yield_) is IterContinue else {
          return IterEnd
        }
        guard yield_((t.min, t.max)) is IterContinue else { return IterEnd }
        guard t.right.iter_intervals().run(yield_) is IterContinue else {
          return IterEnd
        }
        IterContinue
      }
    }
  })
}

///|
pub fn[N : @bounded_enum.T] iter(self : Tree[N]) -> Iter[N] {
  self
  .iter_intervals()
  .flat_map(it => {
    let (min, max) = it
    Iter::new(fn(yield_) {
      let mut x = min
      if x <= max {
        while true {
          guard yield_(x) is IterContinue else { return IterEnd }
          if x == max {
            break
          }
          x = N::succ(x)
        }
      }
      IterContinue
    })
  })
}
