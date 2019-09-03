node(a). 
node(b).
node(c). 
node(d). 
node(e). 
node(f).

edge(a, c). 
edge(b, c). 
edge(c, d).
edge(c, e). 
edge(e, f).

path(X, Y) :- edge(X, Y). 
13 path(X, Y) :- edge(X, Z), path(Z, Y).
