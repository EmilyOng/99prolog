%% p01: Find the last element of the list

my_last(H, [H]).
my_last(X, [_|T]) :-
  my_last(X, T).

