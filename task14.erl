-module(task14).
-export([double/1]).

double([])->
    [];
double([H | T]) ->
    task7:flatten([duplicate(2, H) | double(T)]).


duplicate(0, _) -> [];
duplicate(N, H) when N > 0 -> [H | duplicate(N - 1, H)]. %% не хвостова рекурсія - спробуйте переписати