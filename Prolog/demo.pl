computer(10).
computer(N):-writeln(N),Nl is N + 1, computer(Nl).

getH2(X,Y,L):-
    [X,Y|_] = L.
append([],L,L).
append([H|T],L2,[H|L3]):- append(T,L2,L3),writeln(L3).

capitale(belgique, bruxelles).
capitale(allemagne, berlin).
capitale(suisse, berne).
capitale(italie, rome).
capitale(espagne, madrid).
lancer :-
      capitale(X,Y), write(X), write(' capitale : ' ), writeln(Y).
lancer2 :-
    capitale(X,Y), write(X), write(' capitale : ' ), writeln(Y), fail.

different(X,X) :- !, writeln(faux),fail.
different(X,Y) :- writeln(vrai).

tree(10,
     tree(5,tree(3,nul,nul),tree(9,nul,nul)),
     tree(20,tree(15,nul,nul),tree(25,nul,nul))).


%noChild(T):-

affiche(nul):-
    true.
affiche(tree(T,L,R)):-
    write(T),
    nl,
    %writeln(T),
    affiche(L),
    affiche(R).
/*affiche(T):-
    T = tree(N,L,R),
    writeln(N),
    affiche(L),
    affiche(R).
   */
