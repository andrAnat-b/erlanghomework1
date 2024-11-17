-module(task11).
-export([numbers/1]).

numbers(WorkList)->
    InputList = task9:repeating(WorkList),
    usenumbers(InputList).

usenumbers([])->
    [];
usenumbers([[H | T] | A]) -> %% нехвостова рекурсія - спробуйте переробити, та і кейз-клоза зайва
    case task2:sizeoflist([H | T]) of
    1 -> [H | usenumbers(A)];
    N -> [[N , H] | usenumbers(A)]
    end.