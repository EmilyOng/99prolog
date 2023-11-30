%% p62: Collect the internal nodes of a binary tree in a list

% An internal node of a binary tree has either one or two non-empty successors
internals(t(X, nil, R), [X|S]) :-
  not(R = nil), internals(R, S).
internals(t(X, L, nil), [X|S]) :-
  not(L = nil), internals(L, S).
internals(t(X, L, R), [X|S]) :-
  not(L = nil),  not(R = nil),
  internals(L, S1), internals(R, S2),
  append(S1, S2, S).
internals(t(_, nil, nil), []).
internals(nil, []).

