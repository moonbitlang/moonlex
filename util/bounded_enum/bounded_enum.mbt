///|
#alias(T)
pub(open) trait BoundedEnum: Compare {
  fn pred(Self) -> Self
  fn succ(Self) -> Self
  fn lower_bound() -> Self
  fn upper_bound() -> Self
}
