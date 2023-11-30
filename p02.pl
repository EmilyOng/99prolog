%% p02: Find the second last element of the list

last_but_one(H, [H, _]).
last_but_one(X, [_|T]) :-
  last_but_one(X, T).

