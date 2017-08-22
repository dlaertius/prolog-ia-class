presidente(nome(collor, fernando), 1990, 1992).
presidente(nome(franco, itamar),1992,1995).
presidente(nome(henrique, fernando), 1995,2003).
presidente(nome(inacio, lula),2003,2011).
presidente(nome(rousseff, dilma),2011,2016).
presidente(nome(temer, michel),2016,2017).

female(nome(rousseff,dilma)).
male(nome(franco, itamar)).
male(nome(henrique, fernando)).
male(nome(collor, fernando)).
male(nome(inacio, lula)).
male(nome(temer, michel)).


president_a(nome(X,Y), W, Z) :- presidente(nome(X,Y),W,Z) , female(nome(X,Y)).

%(X,Y) were president in W.
chefia(nome(X,Y),A):- presidente(nome(X,Y),W,Z) , A >= W , A =< Z.

presidente_h(nome(X,Y), W, Z) :- presidente(nome(X,Y),W,Z) , male(nome(X,Y)).



