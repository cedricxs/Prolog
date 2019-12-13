deuxp(0,1).
deuxp(P,R):-
    P>0,
    P1 is P-1,
    deuxp(P1,R1),
    R is R1*2.

conc([],L2,L2).
conc(L1,L2,R):-
    L1 = [H|T],
    conc(T,L2,R1),
    R = [H|R1].

supp([],_,[]).
supp(L,E,R):-
    L = [X|T],
    X\=E,
    supp(T,E,R1),
    R = [X|R1].
supp(L,E,R):-
    L = [E|T],
    supp(T,E,R).

suppre([],[]).
suppre([_],[]).
suppre(L,R):-
    L = [_|T],
    R = T.

reverse([],[]).
reverse(L,R):-
    L = [H|T],
    reverse(T,R1),
	conc(R1,[H],R).

stir(N,K,none):-K>N;N<1,!.
stir(N,N,1).
stir(N,1,1).
stir(N,K,R):-
    N1 is N-1,
    K1 is K-1,
    stir(N1,K1,R1),
    stir(N1,K,R2),
    writeln(R1),
    writeln(R2),
    R is R1+ K*R2.
