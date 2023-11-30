%% p28: Sorting a list according to the length of sublists

% (a): Sort the elements according to their lengths

select_smallest_length([H], H).
select_smallest_length([H|T], S) :-
  select_smallest_length(T, S), length(H, N1), length(S, N2), N1 >= N2.
select_smallest_length([H|T], H) :-
  select_smallest_length(T, S), length(H, N1), length(S, N2), N1 < N2.


% remove(X, K, L): Remove an occurrence of element K from X
remove([K|T], K, T).
remove([H|T], K, [H|L]) :-
  not(H = K), remove(T, K, L).

lsort([], []).
lsort(X, [S|L]) :-
  select_smallest_length(X, S), remove(X, S, T), lsort(T, L).

% (b): Sort the elements according to their length frequency

compute_frequency(X, [H|T], F) :-
  length(X, N1), length(H, N2), N1 = N2,
  compute_frequency(X, T, F1), F is F1 + 1.
compute_frequency(X, [H|T], F) :-
  length(X, N1), length(H, N2), not(N1 = N2),
  compute_frequency(X, T, F).
compute_frequency(_, [], 0).

select_smallest_frequency([H], H, _).
select_smallest_frequency([H|T], S, O) :-
  select_smallest_frequency(T, S, O),
  compute_frequency(H, O, F1),
  compute_frequency(S, O, F2),
  F1 >= F2.
select_smallest_frequency([H|T], H, O) :-
  select_smallest_frequency(T, S, O),
  compute_frequency(H, O, F1),
  compute_frequency(S, O, F2),
  F1 < F2.

lfsort_helper([], [], _).
lfsort_helper(X, [S|L], O) :-
  select_smallest_frequency(X, S, O), remove(X, S, T), lfsort_helper(T, L, O).

lfsort(X, L) :- lfsort_helper(X, L, X).


