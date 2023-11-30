%% p27: Group the elements of a set into disjoint subsets

% (a): In how many ways can a group of 9 people work in 3 disjoint
%      subgroups of 2, 3 and 4 persons?


group3(L, G1, G2, G3) :- group3_helper(L, G1, 0, G2, 0, G3, 0).

group3_helper([H|T], [H|G1], N1, G2, N2, G3, N3) :-
  N1 < 2, N is N1 + 1, group3_helper(T, G1, N, G2, N2, G3, N3).

group3_helper([H|T], G1, N1, [H|G2], N2, G3, N3) :-
  N2 < 3, N is N2 + 1, group3_helper(T, G1, N1, G2, N, G3, N3).

group3_helper([H|T], G1, N1, G2, N2, [H|G3], N3) :-
  N3 < 4, N is N3 + 1, group3_helper(T, G1, N1, G2, N2, G3, N).

group3_helper(_, [], 2, [], 3, [], 4).


% (b): Generalize the above predicate in a way that we can specify a
%      list of group sizes and the predicate will return a list of groups.


% remove(X, K, L): Remove an occurrence of element K from X
remove([K|T], K, T).
remove([H|T], K, [H|L]) :-
  not(H = K), remove(T, K, L).

% remove_all(X, K, L): subtract(X, K, L)
remove_all(X, [], X).
remove_all(X, [H|T], L) :-
  remove(X, H, Y), remove_all(Y, T, L).

:- ensure_loaded(p26).
group(_, [], []).
group(X, [Y|Ys], [G|Gs]) :-
  combination(Y, X, G), remove_all(X, G, Xs), group(Xs, Ys, Gs).

