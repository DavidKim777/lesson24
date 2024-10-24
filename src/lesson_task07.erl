-module(lesson_task07).

-export([flatten/1]).

flatten(List) ->
  flatten(List, []).

flatten([], Acc) ->
  lesson_task05:reverce(Acc);
flatten([[]|T], Acc) ->
  flatten(T, Acc);
flatten([[[]|H]|T], Acc) ->
  flatten([H|T], Acc);
flatten([[H|H1]|T], Acc) ->
  flatten([H,H1|T], Acc);
flatten([H|T], Acc) ->
  flatten(T,[H|Acc]).