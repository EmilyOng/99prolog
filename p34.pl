%% p34: Calculate Euler's totient function

:- ensure_loaded(p33).

totient_phi(M, P) :-
  totient_phi_helper(1, M, P).

totient_phi_helper(1, 1, 1).
totient_phi_helper(M, M, 0) :- M > 1.
totient_phi_helper(K, M, C) :-
  K < M, coprime(K, M),
  K1 is K + 1, totient_phi_helper(K1, M, C1), C is C1 + 1.
totient_phi_helper(K, M, C) :-
  K < M, not(coprime(K, M)),
  K1 is K + 1, totient_phi_helper(K1, M, C).

