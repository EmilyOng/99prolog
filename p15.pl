%% p15: Duplicate the elements of a list for a given number of items

dupli([], _, []).
dupli(X, 1, X).

dupli([H|T], K, [H|Z]) :-
  K >= 1, K1 is K - 1, dupli([H], K1, X), dupli(T, K, Y), append(X, Y, Z).

