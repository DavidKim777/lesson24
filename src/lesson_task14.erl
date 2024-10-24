-module(lesson_task14).

-export([duplicate/1]).

duplicate(List) ->
  duplicate(List, []).

duplicate([], Acc) ->
  lesson_task05:reverce(Acc);
duplicate([H | T], Acc) ->
  duplicate(T, [H, H | Acc]).
