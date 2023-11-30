%% p08: Eliminate consecutive duplicates of list elements

skip_over(_, [], []).
skip_over(X, [X|T], Z) :-
  skip_over(X, T, Z).
skip_over(X, [H|T], [H|T]) :-
  not(X = H).


compress([], []).
compress([H|T], [H|X]) :-
  skip_over(H, T, T1), compress(T1, X).


% Without using a helper function
compress2([], []).
compress2([X], [X]).
compress2([H|[N|T]], [H|X]) :-
  not(H = N), compress2([N|T], X).
compress2([H|[H|T]], X) :-
  compress2([H|T], X).

