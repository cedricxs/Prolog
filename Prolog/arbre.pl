affiche(nil).
affiche(X):-
    X = noeud(A,B,C),
    affiche(A),
    writeln(B),
    affiche(C).


compte(nil,0).
compte(X,R):-
    X = noeud(A,_,C),
    compte(A,R1),
    compte(C,R2),
    R is R1+R2+1.

member(E,noeud(_,E,_)).
member(E,X):-
    X = noeud(A,B,_),
    E < B,
    A \= nil,
    member(E,A).
member(E,X):-
    X = noeud(_,B,C),
    E > B,
    C \= nil,
    member(E,C).

max(noeud(_,X,nil),X):-!.
max(noeud(_,_,D),R):- max(D,R).

ajouter(nil,E,E).
ajouter(X,E,R):-
    X \= nil,
    X = noeud(A,B,C),
    E = noeud(_,Q,_),
    Q > B,
    ajouter(C,E,R1),
    R = noeud(A,B,R1).

ajouter(X,E,R):-
    X \= nil,
    X = noeud(A,B,C),
    E = noeud(_,Q,_),
    Q < B,
    ajouter(A,E,R1),
    R = noeud(R1,B,C).



