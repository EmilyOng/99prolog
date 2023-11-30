%% p25: Generate a random permutation of the elements of the list

:- ensure_loaded(p23).

rnd_permu(X, L) :-
  length(X, N), rnd_select(X, N, L).

