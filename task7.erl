-module(task7).
-export([flatten/1]).

flatten([]) ->
    [];
flatten([H | T]) when is_list(H) ->
    flatten(H) ++ flatten(T);
flatten ([H | T]) ->
    [H | flatten(T)].