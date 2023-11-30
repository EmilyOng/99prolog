%% p36: Construct a list containing the prime factors and their multiplicity

:- ensure_loaded(p35).

prime_factors_mult(N, L) :-
  prime_factors(N, Y), encode(Y, L).

encode([], []).
encode([H], [[H,1]]).
encode([H|[H|T]], [[Ye,Y]|Ys]) :-
  encode([H|T], [[Ye,Yl]|Ys]), Y is Yl + 1.
encode([H|[N|T]], [[H,1]|Ys]) :-
  not(H = N), encode([N|T], Ys).

