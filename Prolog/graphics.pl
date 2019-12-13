route1(nantes,rennes,110).
route1(nantes,vannes,120).
route1(nantes,saint_nazaire,60).
route1(nantes,bordeaux,340).
route1(nantes,angers,90).
route1(rennes,brest,250).
route1(rennes,angers,130).
route1(rennes,saint_malo,70).
route1(rennes,mont_saint_michel,70).
route1(rennes,tours,240).
route1(angers,tours,130).
route1(vannes,brest,190).
route1(brest,saint_malo,230).
route1(saint_malo,mont_saint_michel,60).
route1(bordeaux,tours,350).
route1(mont_saint_michel,caen,200).
route1(mont_saint_michel,cherbourg,180).
route1(caen,cherbourg,120).
route1(rennes,saint_brieuc,100).
route1(saint_brieuc,brest,150).
route1(saint_brieuc,vannes,120).

route2(X,Y,Z):-route1(Y,X,Z).
route2(X,Y,Z):-route1(X,Y,Z).


chemin(X,X,_,[X],0).
chemin(X,Y,P,R,D):-
    X \= Y,
    route2(X,T,E),
    \+member(T,P),
    P1 = [T|P],
    chemin(T,Y,P1,R1,D1),
    D is D1+E,
    R = [X|R1].

chemin(X,Y,R,D):-
    chemin(X,Y,[X],R,D).

liste(X,Y,R):-
    findall(L,chemin(X,Y,L,_),R).
