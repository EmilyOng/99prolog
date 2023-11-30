%% p23: Extract a given number of randomly selected elements from the list

:- ensure_loaded(p20).

rnd_select(_, 0, []).
rnd_select(X, K, [Y|Ys]) :-
  K >= 1, length(X, N), N1 is N + 1, random(1, N1, J),
  remove_at(Y, X, J, R),
  K1 is K - 1, rnd_select(R, K1, Ys).

