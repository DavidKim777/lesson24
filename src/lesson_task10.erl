-module(lesson_task10).

-export([pack/1]).

pack(List) ->
  pack(List, [], []).

pack([], [], Acc1) ->
  lesson_task05:reverce(Acc1);
pack([H, H | T], Acc, Acc1) ->
  pack([H | T], [H | Acc], Acc1);
pack([H | T], Acc, Acc1) ->
  pack(T, [], [[H | Acc] | Acc1]).