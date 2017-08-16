%structures 

%In this case, both have the same book, but if we separe this reference?
owns(john,book).
owns(mary, book).

%So, we'll do this. But now, this could be complicate for programmer understand that, percy jasckson is a book not another object.
owns(john, percy_jackson).
owns(mary, moby_dick).

%Last but not least, we can use this way
owns(john , book(percy_jackson , riordan)).

%or yet
owns(john, book(percy_jackson, author(rick, riordan))).

%If you prefr and do not will use later this variables, changes X or Y to "_" (annomymous variables) on terminal.
% ?- owns(john,book(_,author(_,riordan))).
