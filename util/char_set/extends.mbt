///|
pub extend CharSet with Compare::{op_lt, op_le, op_ge, compare, op_gt}

///|
pub extend CharSet with Eq::{not_equal, equal}

///|
pub extend CharSet with Hash::{hash, hash_combine}

///|
pub extend CharSet with Debug::{to_repr}

///|
pub extend CharSet with Neg::{neg}

///|
pub extend CharSet with Add::{add}

///|
pub extend CharSet with Sub::{sub}

///|
pub extend CharSet with BitAnd::{land}

///|
pub extend CharSet with Show::{to_string, output}

///|
pub extend CharSet with ToJson::{to_json}
