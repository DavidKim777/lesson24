-module(lesson_task08).

-export([compress/1]).

compress(List) ->
  compress(List, []).

compress([], Acc) ->
  lesson_task05:reverce(Acc);
compress([H, H | T], Acc) ->
  compress([H | T], Acc);
compress([H | T], Acc) ->
  compress(T, [H | Acc]).