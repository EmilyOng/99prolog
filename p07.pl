%% p07: Flatten a list structure

% Append lists X and Y
append([], Y, Y).
append([H|T], Y, [H|Z]) :-
  append(T, Y, Z).

my_flatten([], []).
my_flatten([H|T], X) :-
  is_list(H), my_flatten(H, X1), my_flatten(T, X2), append(X1, X2, X).
my_flatten([H|T], [H|X]) :-
  not(is_list(H)), my_flatten(T, X).

