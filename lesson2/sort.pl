insert(X, [], [X]).
insert(X, [H|T], [X,H|T]) :- X =< H.
insert(X, [H|T], [H|T2]) :- X >= H, insert(X, T, T2).

ssort([], List, List).
ssort([H|T], List, Sorted) :- insert(H, List, Acc), ssort(T, Acc, Sorted).