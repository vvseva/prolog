%sum(A, B, AB) :- AB is A + B.
%path(A, B, C) :- 
%    edge(A, X, P1),
%    path(X, B, P2),
%    sum(P1, P2, C).
      
      
edge(a, b, 2).
edge(b, c, 1).
edge(b, d, 4).
edge(c, e, 3).
edge(d, e, 8).
edge(e, d, 2).
edge(e, f, 2).
edge(f, a, 3).


path(A, B, C) :- edge(A, B, C).
path(A, B, C) :- 
    edge(A, X, P1),
    path(X, B, P2),
      C is P1 + P2.

maxpath(A, B, D) :-
    path(A, B, D),
    maxpath(A, B, D1),
    D1 is D - 1.
