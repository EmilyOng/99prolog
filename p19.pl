%% p19: Rotate a list N places to the left

:- ensure_loaded(p17).

rotate(L, 0, L).
rotate(L, N, X) :-
  N > 0, split(L, N, L1, L2), append(L2, L1, X).
rotate(L, N, X) :-
  N < 0, length(L, N1), N2 is N1 + N, split(L, N2, L1, L2), append(L2, L1, X).

