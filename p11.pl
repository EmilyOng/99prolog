%% p11: Modified run-length encoding

ensure_loaded(p10).

encode_modified(L, X) :-
  encode(L, Y), encode_modified_helper(Y, X).

encode_modified_helper([], []).
encode_modified_helper([[1,Ye]|Ys], [Ye|Xs]) :-
  encode_modified_helper(Ys, Xs).
encode_modified_helper([[Yl,Ye]|Ys], [[Yl,Ye]|Xs]) :-
  not(Yl = 1), encode_modified_helper(Ys, Xs).

