% Muhammad Umar
% Roll no. : CT - 24028

parent(parveen, babar).
parent(talib, babar).

parent(talib, lubna).
parent(parveen, lubna).

male(talib).
male(babar).

female(parveen).
female(lubna).

father(X, Y) :- parent(X, Y), male(X).

mother(X, Y) :- parent(X, Y), female(X).

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.

brother(X, Y) :- sibling(X, Y), male(X).

sister(X, Y) :- sibling(X, Y), female(X).
