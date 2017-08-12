%parent relationship

parent(tom,bob).
parent(pam,bob).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
parent(tom,liz).

%genre
female(pam).
female(liz).
female(ann).
female(pat).
male(tom).
male(bob).
male(jim).

%Rules

%You can read as: X is mother of Y?
mother(X,Y):- parent(X,Y) , female(X).

%You can read as: X is grandmother of Y?
granmother(X,Y):- mother(X,Z) , mother(Z,Y).

%You can read as: X is sister of Y?
sister(X,Y):- parent(Z,X) , parent(Z,Y) , female(X) , X\=Y.