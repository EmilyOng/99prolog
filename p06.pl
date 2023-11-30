%% p06: Check if a list is a palindrome

is_palindrome([]).
is_palindrome([H|T]) :- % To account for non-empty list
  reverse([H|T], [H|T], []).

reverse([], L2, L2).
reverse([H|T], L2, Acc) :-
  reverse(T, L2, [H|Acc]).

