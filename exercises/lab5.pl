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

%% split list into positive and negative

split([], [], []).
/*
 * [] is an empty list 
 * function takes three lists
 */

split([H|T], [H|P], N) :-
    H >= 0,
    !,
    split(T, P, N).

split([H|T], P, [H|N]) :-
    H < 0,
    split(T, P, N).


/* First (and easiest) write it with the help of =/2 and \+ .
 */
nu(X, Y) :-
    \+ (X = Y).
/* Second write it with the help of =, but don’t use \+ . 
 */
nu(X, Y) :-
    not(X = Y).
