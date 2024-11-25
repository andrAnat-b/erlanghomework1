-module(task12).
-export([decode/1]).

decode([]) -> 
    [];
decode([[H | Hi] | T]) ->
    task7:flatten([task15:multidouble(Hi, H)++ decode(T)]); %% подумайте як обійтись без  task7:flatten/1
decode([H | T]) ->
    task7:flatten([H, decode(T)]).