%% p09: Pack consecutive duplicates of list elements into sublists

pack([], []).
pack([X], [[X]]).
pack([H|[N|T]], [[H]|Y]) :-
  not(H = N), pack([N|T], Y).
pack([H|[H|T]], [[H|Y]|Ys]) :-
  pack([H|T], [Y|Ys]).

