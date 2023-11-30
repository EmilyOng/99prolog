%% p26: Generate the combination of K distinct objects chosen from the N
%       elements of the list

combination(0, _, []).

% The first element is chosen
combination(K, [H|T], [H|L]) :-
  K >= 1, K1 is K - 1,
  length(T, Tl), Tl >= K1,
  combination(K1, T, L).

% The first element is not chosen
combination(K, [_|T], L) :-
  K >= 1, length(T, Tl), Tl >= K,
  combination(K, T, L).

