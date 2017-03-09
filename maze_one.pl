%  Finding a route through a maze using Prolog 
% Task 1


% Defining Links
%Declaration of Links
link(a,b).
link(b,c).
link(c,d).
link(f,c).
link(b,e).
link(d,e).
link(e,f).


/* Predicate which difines a route between non adjacent by recursive method*/
routeNoCycle(X,X,_).
routeNoCycle(X,Z, PathSoFar) :- 
link(X,Y), \+ member(Y,PathSoFar),routeNoCycle(Y,Z,[Y|PathSoFar]).
route(X,Y):- routeNoCycle(X,Y,[]).




