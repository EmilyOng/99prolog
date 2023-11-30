%% p12: Decode a run-length encoded list

% Use the results of p11
decode([], []).
decode([Y|Ys], [Y|X]) :-
  not(is_list(Y)), decode(Ys, X).
decode([[Yl,Ye]|Ys], [Ye|Xs]) :-
  Yl > 1, Yll is Yl - 1, decode([[Yll,Ye]|Ys], Xs).
decode([[1,Ye]|Ys], [Ye|Xs]) :-
  decode(Ys, Xs).

