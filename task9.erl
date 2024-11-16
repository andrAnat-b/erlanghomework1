-module(task9).
-export([repeating/1]).
% task6:reversefunc()

repeating([]) ->
    [];
repeating([H | T]) ->
    {Repeated, Tail} = smallgroup(H, T, [H]),
    [Repeated | repeating(Tail)].

smallgroup(_, [], Temp2) ->
    {task6:reversefunc(Temp2), []};
smallgroup(X, [X | T], Temp2) ->
    smallgroup(X, T, [X | Temp2]);
smallgroup(_, T, Temp2) ->
    {task6:reversefunc(Temp2), T}.
