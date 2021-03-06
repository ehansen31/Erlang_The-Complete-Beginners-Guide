-module(hof).

-export([double/0]).

double() ->
    F = fun (X) -> 2 * X end, map(F, [1, 5, 2, 7, 4, 6]).

map(F, []) -> [];
map(F, [First | Rest]) -> [F(First) | map(F, Rest)].
