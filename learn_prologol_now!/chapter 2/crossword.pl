% Your program goes here

word(astante, a,s,t,a,n,t,e).
word(astoria, a,s,t,o,r,i,a).
word(baratto, b,a,r,a,t,t,o).
word(cobalto, c,o,b,a,l,t,o).
word(pistola, p,i,s,t,o,l,a).
word(statale, s,t,a,t,a,l,e).

crossword(W1, W2, W3, W4, W5, W6) :-
    word(W1, _, L22, _, L24, _, L26, _),
    word(W2, _, L42, _, L44, _, L46, _),
    word(W3, _, L62, _, L64, _, L66, _),
    word(W4, _, L22, _, L42, _, L62, _),
    word(W5, _, L24, _, L44, _, L64, _),
    word(W6, _, L26, _, L46, _, L66, _).
