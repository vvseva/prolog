a(X) :- b(X), !, c(X).
b(2).
c(2).
b(1).


a(X) :- b(X), !, c(X).
b(1).
b(2).
c(2).

/*
*  ! is cut
*   function stups after cut, wich is it is not going to check second element, condition
*
*/
