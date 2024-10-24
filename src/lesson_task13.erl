-module(lesson_task13).

-export([decode/1]).

decode(List) ->
  decode(List, []).

decode([], Acc) ->
  lesson_task05:reverce(Acc);
decode([{1, H} | T], Acc) ->
  decode(T, [H | Acc]);
decode([{N, H} | T], Acc) ->
  decode([{N-1, H} | T], [H | Acc]).