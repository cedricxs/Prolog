pick(X, [X|L], L).
pick(X, [Y|L], [Y|L1]):-pick(X, L, L1).

pick2(X,Y,L,R):-
    pick(X,L,R1),
    pick(Y,R1,R).

trait(X,Y,R,-):- R is X-Y.
trait(X,Y,R,+):- R is X+Y.
trait(X,Y,R,*):- R is X*Y.
trait(X,Y,R,/):- Y\=0.0,Y\= 0,R is X/Y.


trouve([T|_],T,[]).
trouve(L,T,R):-
    L = [W|_],
    W \= T,
    %P is the rest list
    pick2(X,Y,L,P),
    trait(X,Y,Q,OP),
    P1 = [Q|P],
    trouve(P1,T,R1),
    R = [X,OP,Y|R1].
