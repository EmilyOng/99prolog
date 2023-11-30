%% p14: Duplicate elements of a list

dupli([], []).

dupli([H|T], [H|[H|X]]) :-
  dupli(T, X).

