%% p17: Split a list into two parts with the length of the first part given

split(L, 0, [], L).
split([H|T], 1, [H], T).

split([H|T], N, [H|L1], L2) :-
  N > 1, N1 is N - 1, split(T, N1, L1, L2).

