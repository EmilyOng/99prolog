%% p05: Reverse list

% Append Y to the back of X
append([], Y, [Y]).
append([H|T], Y, [H|Z]) :-
  append(T, Y, Z).

my_reverse([], []).
my_reverse([H|T], L2) :-
  my_reverse(T, L), append(L, H, L2).


% Using an accumulator
my_reverse2([], []).
my_reverse2(L1, L2) :-
  my_reverse2_helper(L1, L2, []).

my_reverse2_helper([], L2, L2).
my_reverse2_helper([H|T], L2, Acc) :-
  my_reverse2_helper(T, L2, [H|Acc]).

% my_reverse2_helper([1,2,3], L2, [])
% -> my_reverse2_helper([2,3], L2, [1])
% -> my_reverse2_helper([3], L2, [2,1])
% -> my_reverse2_helper([], L2, [3,2,1])
%
% reduce(my_list, (accumulator, current) => {
%   return pair(current, accumulator);
% }, []);


