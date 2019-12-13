verif([]).
verif([X|L]):- X>=0, X =< 9,verif(L).

lis2ent([],0).
lis2ent([X|L],R):-lis2ent(L,R1), R is R1*10+X.

ent2lis(0,[]).
ent2lis(X,[P|R1]):- X>0, P is X mod 10, T is (X-P)/10,ent2lis(T,R1).
