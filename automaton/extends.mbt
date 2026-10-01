///|
pub extend TagAction with Debug::{to_repr}

///|
pub extend TagAction with Eq::{not_equal, equal}

///|
pub extend TagAction with Compare::{op_lt, op_le, op_ge, compare, op_gt}

///|
pub extend TagAction with Show::{to_string, output}

///|
pub extend TagOp with Debug::{to_repr}

///|
pub extend TagOp with Eq::{not_equal, equal}

///|
pub extend TagOp with Compare::{op_lt, op_le, op_ge, compare, op_gt}

///|
pub extend TagOp with Show::{to_string, output}

///|
pub extend DFACapturePosition with Debug::{to_repr}

///|
pub extend DFACapturePosition with Eq::{not_equal, equal}

///|
pub extend DFACapturePosition with Show::{to_string, output}

///|
pub extend DFA with Debug::{to_repr}

///|
pub extend DFA with Show::{to_string, output}

///|
pub extend Input with Eq::{not_equal, equal}

///|
pub extend Input with Hash::{hash, hash_combine}

///|
pub extend Input with Debug::{to_repr}

///|
pub extend Input with Show::{to_string, output}

///|
pub extend NFACapturePosition with Debug::{to_repr}

///|
pub extend NFACapturePosition with Show::{to_string, output}

///|
pub extend NFA with Debug::{to_repr}

///|
pub extend NFA with Show::{to_string, output}

///|
pub extend NFANode with Debug::{to_repr}

///|
pub extend NFANode with Show::{to_string, output}

///|
pub extend NFANode with Eq::{not_equal, equal}

///|
pub extend NFANode with Compare::{op_lt, op_le, op_ge, compare, op_gt}

///|
pub extend NFANode with Hash::{hash, hash_combine}

///|
pub extend VarType with Debug::{to_repr}

///|
pub extend VarType with Show::{to_string, output}

///|
pub extend StaticKnownTagPosition with Debug::{to_repr}

///|
pub extend StaticKnownTagPosition with Eq::{not_equal, equal}

///|
pub extend StaticKnownTagPosition with Show::{to_string, output}
