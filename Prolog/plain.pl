plain([],[]).

plain(X,R):-
    X = [H|T],
    is_list(H),
    plain(H,R1),
	plain(T,R2),
	merge(R1,R2,R).
plain(X,R):-
    X = [H|T],
    \+is_list(H),
    plain(T,R1),
    R = [H|R1].
