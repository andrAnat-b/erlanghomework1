-module(task12).
-export([decode/1]).

decode([]) -> 
    [];
decode([[H | Hi] | T]) ->
    task7:flatten([task15:multidouble(Hi, H)++ decode(T)]); 
decode([H | T]) ->
    task7:flatten([H, decode(T)]).
%% використано модуль із "наступного" завдання - переосмисліть. 
%% Завдання вибудовані таким чином щоб для виконання нааступного вам були потрібні лише попередні
%% Та і флатен тут не потрібен
