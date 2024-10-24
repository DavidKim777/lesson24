-module(lesson_task05).

-export([reverce/1]).

reverce(List) ->
  reverce(List, []).

reverce([], Acc) ->
  Acc;
reverce([H | T], Acc) ->
  reverce(T, [H | Acc]).