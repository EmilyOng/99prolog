%% p16: Drop every N-th element from the lsit

drop(L, N, X) :-
  drop_helper(L, N, 1, X).

drop_helper([], _, _, []).
drop_helper([_|T], N, N, X) :-
  drop_helper(T, N, 1, X).
drop_helper([H|T], N, K, [H|X]) :-
  K < N, K1 is K + 1, drop_helper(T, N, K1, X).

