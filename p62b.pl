%% p62b: Collect the nodes at a given level into a list

atlevel(nil, _, []).
atlevel(t(X, _, _), 1, [X]).
atlevel(t(_, L, R), N, S) :-
  N > 1, N1 is N - 1,
  atlevel(L, N1, S1), atlevel(R, N1, S2),
  append(S1, S2, S).

