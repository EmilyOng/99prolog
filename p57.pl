%% p57: Constructing binary search trees

% insert_to_bst(X, G, R): Insert X to G with the result in  R
insert_to_bst(X, nil, t(X, nil, nil)).
insert_to_bst(X, t(P, L, R), t(P, L1, R)) :-
  X < P, insert_to_bst(X, L, L1).
insert_to_bst(X, t(P, L, R), t(P, L, R1)) :-
  X >= P, insert_to_bst(X, R, R1).


construct_helper([], G, G).
construct_helper([H|T], G, R) :-
  insert_to_bst(H, G, R1), construct_helper(T, R1, R).

construct(L, R) :-
  construct_helper(L, nil, R).

:- ensure_loaded(p56).
test_symmetric(L) :- construct(L, T), is_symmetric(T).

