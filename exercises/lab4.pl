% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% clock program
clockSequence(tick(nothing)).
clockSequence(tock(nothing)).


clockSequence(tick(tock(S))) :- clockSequence(tock(S)).
clockSequence(tock(tick(S))) :- clockSequence(tick(S)).


% OR

clockSequence(tick(X)) :- X = tock(), clockSequence(X).
clockSequence(tock(X)) :- X = tick(), clockSequence(X).

% tick(tock(tick(nothing)))

% Russian doll, matreshca program
directlyIn(natasha, irina).
directlyIn(olga, natasha).
directlyIn(katerina, olga).

in(X, Y) :-
    directlyIn(X, Y).

in(X, Y) :-
    directlyIn(X, Z), in(Z, Y).

% trains program
directTrain(saarbruecken,dudweiler).
directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(stAvold,freyming).
directTrain(fahlquemont,stAvold).
directTrain(metz,fahlquemont).
directTrain(nancy,metz). 

travelFromTo(X, Y) :-
    directTrain(X, Y).
    
travelFromTo(X, Y) :-
    directTrain(Y, X).
    
travelFromTo(X, Y) :-
    directTrain(X, Z), travelFromTo(Z, Y).

% travelFromTo(nancy,saarbruecken).
