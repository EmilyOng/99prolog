%% p10: Run-length encoding of a list

encode([], []).
encode([X], [[1,X]]).
encode([H|[H|T]], [[K, H]|Y]) :-
  encode([H|T], [[K1, H]|Y]), K is K1 + 1.
encode([H|[N|T]], [[1,H]|Y]) :-
  not(H = N), encode([N|T], Y).


% Using the result of p09
:- ensure_loaded(p09).

encode2(L, X) :-
  pack(L, Z), encode2_helper(Z, X).

my_head([H|_], H).

my_length([], 0).
my_length([_|T], N) :-
  my_length(T, N1), N is N1 + 1.

encode2_helper([], []).
encode2_helper([Y|Ys], [[Yl,Ye]|Xs]) :-
  my_length(Y, Yl), my_head(Y, Ye), encode2_helper(Ys, Xs). 

