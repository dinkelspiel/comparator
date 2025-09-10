/// Compare if two types have the same constructor
/// 
/// ```gleam
/// assert is_same_kind(Size(Medium), Size(Small)) == True
/// assert is_same_kind(Size(Medium), Variant(Primary)) == False
/// assert is_same_kind(Variant(Primary), Variant(Primary)) == True
/// assert is_same_kind(Variant(Primary), Variant(Secondary)) == True
/// ```
/// 
@external(erlang, "comparator_ffi", "is_same_kind")
@external(javascript, "./comparator_ffi.mjs", "is_same_kind")
pub fn is_same_kind(a: a, b: a) -> Bool
