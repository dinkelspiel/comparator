-module(comparator_ffi).

-export([
    is_same_kind/2
]).

is_same_kind({KindA, _}, {KindB, _}) ->
    KindA =:= KindB.