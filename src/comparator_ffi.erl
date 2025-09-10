-module(comparator_ffi).

-export([
    is_same_kind/2
]).

is_same_kind(A, B) when is_tuple(A), is_tuple(B),
                       tuple_size(A) >= 1, tuple_size(B) >= 1 ->
    element(1, A) =:= element(1, B);
is_same_kind([A1 | _], [B1 | _]) ->
    A1 =:= B1;
is_same_kind(_, _) ->
    false.