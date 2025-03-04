///|
pub fn iter_intervals[N](self : Tree[N]) -> Iter[(N, N)] {
  Iter::new(fn(yield_) {
    match self {
      Empty => IterContinue
      Node(..) as t => {
        guard iter_intervals(t.left).run(yield_) is IterContinue else {
          return IterEnd
        }
        guard yield_((t.min, t.max)) is IterContinue else { return IterEnd }
        guard iter_intervals(t.right).run(yield_) is IterContinue else {
          return IterEnd
        }
        IterContinue
      }
    }
  })
}

///|
pub fn iter[N : @bounded_enum.T](self : Tree[N]) -> Iter[N] {
  self
  .iter_intervals()
  .flat_map(fn {
    (min, max) =>
      Iter::new(fn(yield_) {
        for x = min; x <= max; x = N::succ(x) {
          guard yield_(x) is IterContinue else { return IterEnd }

        }
        IterContinue
      })
  })
}
