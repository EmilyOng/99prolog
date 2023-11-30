%% p61: Count the leaves of a binary tree

count_leaves(nil, 0).
count_leaves(t(_, nil, nil), 1).
count_leaves(t(_, L, nil), N) :-
  not(L = nil), count_leaves(L, N).
count_leaves(t(_, nil, R), N) :-
  not(R = nil), count_leaves(R, N).
count_leaves(t(_, L, R), N) :-
  not(L = nil), not(R = nil),
  count_leaves(L, N1), count_leaves(R, N2), N is N1+N2.

