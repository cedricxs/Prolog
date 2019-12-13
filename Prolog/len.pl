%len(List,N)
len([],0).
len([_|T],N):-
    len(T,X),
    N is X+1.

d(X,N):-
    N = X+1.

e(X,N):-
    N is X+1.

entree(charcuterie,2).
entree(tomates,3).
entree(saumon_fume,4).
plat(choucroute,2).
plat(couscous,3).
plat(cassoulet,4).
dessert(sorbet,2).
dessert(fruit,3).
test(E,P,T):-
    entree(E,_),!,plat(P,_),dessert(T,_).
menu(E, P, D, T) :-
    entree(E,A), plat(P,B), dessert(D,C), T is A + B + C.
menuavectomates(E, P, D, T) :-
    entree(E,A), E = tomates, plat(P,B), dessert(D,C), T is A + B+ C.

computer(10).
computer(N):-writeln(N),Nl is N + 1, computer(Nl).


