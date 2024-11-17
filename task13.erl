-module(task13).
-export([numbers/1]).


numbers([]) -> 
    [];
numbers([H|T]) ->
    numbers(T, H, 1, []).
numbers([], WorkNum, Count, Temp) ->
    task6:reversefunc([workwithnumbers(WorkNum, Count) | Temp]);

numbers([H|T], WorkNum, Count, Temp) when H =:= WorkNum ->
    numbers(T, WorkNum, Count + 1, Temp);

numbers([H|T], WorkNum, Count, Temp) ->
    numbers(T, H, 1, [workwithnumbers(WorkNum, Count) | Temp]).

workwithnumbers(Element, 1) -> 
    Element;
workwithnumbers(Element, Count) -> 
    [Count, Element].

    %% спробуйте спростити