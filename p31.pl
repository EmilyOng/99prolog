%% p31: Determine if a number if prime

is_prime_helper(2, _).
is_prime_helper(N, 1) :- N > 2. 
is_prime_helper(N, F) :-
  N > 2, F >= 2, F1 is F - 1,
  M is mod(N, F), M > 0,
  is_prime_helper(N, F1).

is_prime(N) :-
  N1 is N - 1, is_prime_helper(N, N1).

