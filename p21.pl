%% p21: Insert at a given position into a list

insert_at(X, L, 1, [X|L]).
insert_at(X, [H|T], K, [H|Y]) :-
  K1 is K - 1, insert_at(X, T, K1, Y).

% Using remove_at
:- ensure_loaded(p20).

insert_at2(X, L, K, R) :- remove_at(X, R, K, L).

