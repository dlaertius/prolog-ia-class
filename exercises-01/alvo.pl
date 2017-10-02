parent(arthur, gina).
parent(molly,gina).
parent(arthur,rony).
parent(molly,rony).
parent(arthur, fred).
parent(molly,fred).
parent(arthur,george).
parent(molly,george).
parent(gina, alvo).
parent(gina, sirius).
parent(gina, rosa).
parent(harry, alvo).
parent(harry, sirius).
parent(harry, rosa).
parent(thiago, harry).
parent(lilian, harry).

male(arthur).
male(rony).
male(fred).
male(george).
male(alvo).
male(sirius).
male(harry).
female(gina).
female(molly).
female(rosa).

avos(X,Y) :- parent(X,Z) , parent(Z,Y).

irmaos(X,Y) :- parent(Z,X) , parent(Z,Y), male(Z), X \= alvo.

tios(X,Y) :- male(X) , irmaos(X,Z) , female(Z), parent(Z, Y).  /*Harry Potter doesnt't have brothers, so we'll looking for Gina brothers.*/

irma(X,Y) :- irmaos(X,Y) , female(X) ,!.

avo_m(X,Y) :- parent(Z,Y) , female(Z) , parent(X, Z).

avo_p(X,Y) :- parent(Z,Y) , male(Z) , parent(X, Z). 
