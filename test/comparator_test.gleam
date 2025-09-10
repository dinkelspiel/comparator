import comparator.{is_same_kind}
import gleeunit

pub fn main() -> Nil {
  gleeunit.main()
}

type Size {
  Small
  Medium
}

type Variant {
  Primary
  Secondary
}

// Define a master Key type for all Variants
type Key {
  Size(Size)
  Variant(Variant)
  Disabled(Bool)
}

pub fn test_1_test() {
  assert is_same_kind(Size(Medium), Size(Small)) == True
}

pub fn test_2_test() {
  assert is_same_kind(Size(Medium), Variant(Primary)) == False
}

pub fn test_3_test() {
  assert is_same_kind(Variant(Primary), Variant(Primary)) == True
}

pub fn test_4_test() {
  assert is_same_kind(Variant(Primary), Variant(Secondary)) == True
}

pub fn test_5_test() {
  assert is_same_kind(Disabled(True), Variant(Secondary)) == False
}

pub fn test_6_test() {
  assert is_same_kind(Disabled(True), Disabled(False)) == True
}
