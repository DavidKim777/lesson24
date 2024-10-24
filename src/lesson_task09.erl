-module(lesson_task09).

-export([encode/1]).

encode(List) ->
  encode(List, 0, []).

encode([], 0, Acc) ->
  lesson_task05:reverce(Acc);
encode([H, H | T], N, Acc) ->
  encode([H |T], N+1, Acc);
encode([H | T], N, Acc) ->
  encode(T, 0, [{N+1, H} | Acc]).