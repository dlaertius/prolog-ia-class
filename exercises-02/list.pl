
/* Search if X in '_'*/
member(X, [X|_]).
member(X, [_|Y]) :- member(X,Y).

/*Add X object in head position of new list.*/
add(X,L,[X|L]).

/*Add at the end*/
    add(X,[],[X]).
    
    add(X,[Y|Tail],[Y|Tail1]):-
        add(X,Tail,Tail1).

/*concatenation*/
conc([], L, L).

/*in the beginning*/
conc([X|L1], L2, [X|L3]) :- conc(L1,L2,L3).

/*Sum*/
sum_list([], 0).
/*Pay attention on the difference between 'is' and '=' arithmetic x structure operator.*/
sum_list([H|T], Sum) :- sum_list(T, Rest), Sum is H + Rest. 
