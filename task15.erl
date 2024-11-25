-module(task15).
-export([multidouble/2]).

multidouble([], _)->
    [];
multidouble([H | T], N) ->
    task7:flatten([duplicate(N, H) | multidouble(T, N)]).


duplicate(0, _) -> [];
duplicate(N, H) when N > 0 -> [H | duplicate(N - 1, H)].%% перепишіть із використанням хвостової рекурсії