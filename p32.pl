%% p32: Determine the greatest common divisor of two positive integer numbers

gcd(A, A, A).
gcd(A, B, G) :-
  A > B, A1 is A - B, gcd(A1, B, G).
gcd(A, B, G) :-
  A < B, B1 is B - A, gcd(A, B1, G).

