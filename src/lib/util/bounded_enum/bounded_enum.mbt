///|
pub(open) trait BoundedEnum: Compare {
  pred(Self) -> Self
  succ(Self) -> Self
  lower_bound() -> Self
  upper_bound() -> Self
}

///|
pub traitalias BoundedEnum as T
