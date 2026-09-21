///|
pub extend EofChar with Eq::{not_equal, equal}

///|
pub extend EofChar with Compare::{op_lt, op_le, op_ge, compare, op_gt}

///|
pub extend EofChar with Hash::{hash, hash_combine}

///|
pub extend EofChar with Debug::{to_repr}

///|
pub extend EofChar with ToJson::{to_json}

///|
pub extend EofChar with @bounded_enum.BoundedEnum::{
  lower_bound,
  pred,
  succ,
  upper_bound,
}

///|
pub extend EofCharSet with Default::{default}

///|
pub extend EofCharSet with Eq::{not_equal, equal}

///|
pub extend EofCharSet with Compare::{op_lt, op_le, op_ge, compare, op_gt}

///|
pub extend EofCharSet with Hash::{hash, hash_combine}

///|
pub extend EofCharSet with Debug::{to_repr}

///|
pub extend EofCharSet with Neg::{neg}

///|
pub extend EofCharSet with Add::{add}

///|
pub extend EofCharSet with Sub::{sub}

///|
pub extend EofCharSet with BitAnd::{land}

///|
pub extend EofCharSet with Show::{to_string, output}

///|
pub extend EofCharSet with ToJson::{to_json}
