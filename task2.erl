-module(task2). %task4
-export([sizeoflist/1]).

sizeoflist([]) -> 0;

sizeoflist([_ | T]) -> 1+
    sizeoflist(T). %% перепишіть із використанням хвостової рекурсії
