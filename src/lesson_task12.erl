-module(lesson_task12).

-export([decode_modified/1]).

decode_modified(List) ->
  decode_modified(List, []).

decode_modified([], Acc) ->
  lesson_task05:reverce(Acc);
decode_modified([{1, H} | T], Acc) ->
  decode_modified(T, [H | Acc]);
decode_modified([{N, H} | T], Acc) ->
  decode_modified([{N-1, H} | T], [H | Acc]);
decode_modified([H | T], Acc) ->
  decode_modified(T, [H | Acc]).