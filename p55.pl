%% p55: Construct a completely balanced binary tree

cbal_tree(0, nil).
cbal_tree(1, t(x, nil, nil)).

cbal_tree(N, t(x, L, R)) :-
  N > 1, 0 is mod(N, 2), N1 is N/2, N2 is N1 - 1,
  cbal_tree(N1, L), cbal_tree(N2, R).
cbal_tree(N, t(x, L, R)) :-
  N > 1, 0 is mod(N, 2), N1 is N/2, N2 is N1 - 1,
  cbal_tree(N2, L), cbal_tree(N1, R).

cbal_tree(N, t(x, L, R)) :-
  N > 1, 1 is mod(N, 2), N1 is (N-1)/2,
  cbal_tree(N1, L), cbal_tree(N1, R).

