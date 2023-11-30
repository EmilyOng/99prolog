%% p35: Determine the prime factors of a given integer

:- ensure_loaded(p31).

prime_factors(N, L) :-
  prime_factors_helper(N, 2, L).

prime_factors_helper(0, _, []).
prime_factors_helper(N, K, []) :- K > N.
prime_factors_helper(N, K, [K|T]) :-
  N >= K, is_prime(K), 0 is mod(N, K),
  M is N / K,
  prime_factors_helper(M, K, T).
prime_factors_helper(N, K, L) :-
  N >= K, not(is_prime(K)),
  K1 is K + 1, prime_factors_helper(N, K1, L).
prime_factors_helper(N, K, L) :-
  N >= K, is_prime(K), M is mod(N, K), M > 0,
  K1 is K + 1, prime_factors_helper(N, K1, L).
