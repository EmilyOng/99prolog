%% p04: Number of elements in a list

my_length([], 0).
my_length([_|T], L) :-
  my_length(T, L1), L is L1 + 1.

