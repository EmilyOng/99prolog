%% p03: k-th element of the list

element_at(H, [H|_], 1).
element_at(X, [_|T], K) :-
  K1 is K - 1, K1 > 0, element_at(X, T, K1).

