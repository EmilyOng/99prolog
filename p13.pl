%% p13: Direct run-length encoding

encode_direct([], []).
encode_direct([X], [[1,X]]).

encode_direct([H|[H|T]], [[2,H]|Ys]) :-
  encode_direct([H|T], [H|Ys]).
encode_direct([H|[H|T]], [[N,H]|Ys]) :-
  encode_direct([H|T], [[N1,H]|Ys]), N is N1 + 1.
encode_direct([H|[N|T]], [H|Ys]) :-
  not(H = N), encode_direct([N|T], Ys).
