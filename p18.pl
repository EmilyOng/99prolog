%% p18: Extract slice from list

slice(_, J, K, []) :- J > K.
slice(L, J, K, X) :-
  K >= J, slice_helper(L, J, K, 1, X).

slice_helper(_, _, K, I, []) :- I > K.
slice_helper([_|T], J, K, I, X) :-
  I < J, I1 is I + 1, slice_helper(T, J, K, I1, X).
slice_helper([H|T], J, K, I, [H|X]) :-
  I >= J, K >= I, I1 is I + 1, slice_helper(T, J, K, I1, X).


% Without using a helper function
slice2([_|T], J, K, X) :-
  J > 1, J1 is J - 1, K1 is K - 1, slice2(T, J1, K1, X).
slice2([H|_], 1, 1, [H]).
slice2([H|T], 1, K, [H|X]) :-
  K >= 1, K1 is K - 1, slice2(T, 1, K1, X).

