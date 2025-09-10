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

type ThreeLayer {
  ThreeLayer(Variant)
}

type Key {
  Size(Size)
  Variant(Variant)
  Disabled(Bool)
  ThreeLayerKey(ThreeLayer)
  Double(Variant, Size)
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

pub fn test_7_test() {
  assert is_same_kind(ThreeLayerKey(ThreeLayer(Primary)), Disabled(False))
    == False
}

pub fn test_8_test() {
  assert is_same_kind(
      ThreeLayerKey(ThreeLayer(Primary)),
      ThreeLayerKey(ThreeLayer(Secondary)),
    )
    == True
}

pub fn test_9_test() {
  assert is_same_kind(
      ThreeLayerKey(ThreeLayer(Primary)),
      ThreeLayerKey(ThreeLayer(Primary)),
    )
    == True
}

pub fn test_10_test() {
  assert is_same_kind(Double(Primary, Medium), Double(Secondary, Small)) == True
}

pub fn test_11_test() {
  assert is_same_kind(Double(Primary, Medium), Double(Secondary, Medium))
    == True
}

pub fn test_12_test() {
  assert is_same_kind(Variant(Primary), Double(Secondary, Medium)) == False
}
