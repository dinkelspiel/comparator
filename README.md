# comparator

Compare if two types have the same constructor in Gleam

[![Package Version](https://img.shields.io/hexpm/v/comparator)](https://hex.pm/packages/comparator)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/comparator/)

```sh
gleam add comparator@1
```

```gleam
import comparator.{is_same_kind}

type Size {
  Small
  Medium
}

type Variant {
  Primary
  Secondary
}

type Key {
  Size(Size)
  Variant(Variant)
}

pub fn main() -> Nil {
  assert is_same_kind(Size(Medium), Size(Small)) == True
  assert is_same_kind(Size(Medium), Variant(Primary)) == False
  assert is_same_kind(Variant(Primary), Variant(Primary)) == True
  assert is_same_kind(Variant(Primary), Variant(Secondary)) == True
}
```

Further documentation can be found at <https://hexdocs.pm/comparator>.

## Development

```sh
gleam run   # Run the project
gleam test  # Run the tests
```
