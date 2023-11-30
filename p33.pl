%% p33: Determine if two numbers are co-prime

:- ensure_loaded(p33).

coprime(A, B) :- gcd(A, B, 1).

