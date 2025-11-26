///|
#alias(T)
pub(open) trait BoundedEnum: Compare {
  pred(Self) -> Self
  succ(Self) -> Self
  lower_bound() -> Self
  upper_bound() -> Self
}
