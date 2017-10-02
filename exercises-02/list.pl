
/* Search if X in '_'*/
member(X, [X|_]).
member(X, [_|Y]) :- member(X,Y).

/*Add X object in head position of new list.*/
add(X,L,[X|L]).

