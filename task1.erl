-module(task1).
-export([last/1]). % task 1
-export([prelast/1]). % task2
-export([klist/2]). % task 3



last([T]) -> T;
last([_ | T]) ->
    last(T).

prelast([T, _]) -> T;
prelast([_ | T]) -> 
    prelast (T).

klist(1, [T | _]) -> T;

klist(K, [_ | T]) when K>1 ->
    klist( K-1, T).