-module(lesson_task03).

-export([element_at/2]).

element_at([H | _], 1) ->
  H;
element_at([_ | T], N) ->
  element_at(T, N-1).