%  Finding a route through a maze using Prolog 
% Task 2

% Defining entry and exit Nodes (Rooms)
entryNode(a).
exitNode(f).

% Declaration of the  Links
%Links
link(a,b).
link(b,c).
link(c,d).
link(f,c).
link(b,e).
link(d,e).
link(e,f).

%  Predicate that defines a route between any two adjacent points
%Route
route(X,X).
route(A,Z) :- link(X,Y),route(Y,Z).

%  Predicate that prints a route between any two adjacent points
%RoutePrint
routeprint(X,X,[X]).
routeprint(X,Z,[X|Via]):-
link(X,Y), routeprint(Y,Z,Via).

%  Predicate that prints a route between any two adjacent points (With Cycle Detection)
%RoutePrintNoCycle
routeprintNOCycle(X,X,[X],_).
routeprintNOCycle(X,Z,[X|Via], PathSoFar) :- 
link(X,Y), \+ member(B,PathSoFar),
routeprintNOCycle(Y,Z,Via,[Y|PathSoFar]).

%  Predicates that take into account the entry and exit checks for Nodes a and f
%Is there a Route Query
% Gives a Boolean output for xistence of a route between X and Y inputs
queryRoute(X,Y) :- entryNode(X), exitNode(Y), route(X,Y). 
% Gives a output® for all existing routes between X and Y inputs
queryPrintRoute(X,Y,R) :- entryNode(X), exitNode(Y), routeprint(X,Y,R). 
% Gives a output® for all existing routes between A and B inputs (With Cycle Detection)
queryPrintRouteNoCycle(X,Y,R) :- entryNode(X), exitNode(Y), routeprintNOCycle(X,Y,R,[]). 
