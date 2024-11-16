-module(task6).
-export([reversefunc/1]). %task5
-export([palindrome/1]). %task6

reversefunc(X) -> 
    reversefunc(X, []).

reversefunc([], Temp) ->
    Temp;
reversefunc([H | T], Temp) ->
    reversefunc(T, [H | Temp]).

palindrome(X) ->
    X == reversefunc(X).