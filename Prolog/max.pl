max([H|T],A,Max):- H>A, max(T,H,Max).
max([H|T],A,Max):- H=<A, max(T,A,Max).
max([],A,A).
max(List,Max):-
    [H|_] = List,
    max(List,H,Max).
