%% p22: Create a list containing all integers within a given range

range(A, B, []) :- A > B.
range(A, B, [A|L]) :-
  B >= A, A1 is A + 1, range(A1, B, L).

