%% p24: Draw N different numbers from 1..M

:- ensure_loaded(p22).
:- ensure_loaded(p23).

lotto(N, M, L) :-
  range(1, M, X), rnd_select(X, N, L).

