%% p61a: Collect the leaves of a binary tree in a list

leaves(nil, []).
leaves(t(X, nil, nil), [X]).
leaves(t(_, L, nil), S) :-
  not(L = nil), leaves(L, S).
leaves(t(_, nil, R), S) :-
  not(R = nil), leaves(R, S).
leaves(t(_, L, R), S) :-
  not(L = nil), not(R = nil),
  leaves(L, S1), leaves(R, S2), append(S1, S2, S).

