-module(task8).
-export([del_duplicates/1]).
-export([in_list/2]).


in_list(_, []) ->
    false;
in_list(X, [X | _]) ->
    true;
in_list(X, [_ | T]) ->
    in_list(X, T).




del_duplicates(X) -> del_duplicates(X, []).

del_duplicates([], Temp) -> task6:reversefunc(Temp);
del_duplicates([H | T], Temp) -> % Можна значно простіше - подумайте
    case in_list(H, Temp) of 
    true -> 
        del_duplicates(T, Temp);
    false -> 
        del_duplicates(T, [H | Temp])
    end.