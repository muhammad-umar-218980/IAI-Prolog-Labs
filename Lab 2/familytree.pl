% Muhammad Umar
% Roll no. : CT - 24028

parent(abdulmajeed, muneeb).
parent(ayesha, muneeb).

parent(abdulmajeed, fazal).
parent(ayesha, fazal).

parent(muneeb, umar).
parent(shaista, umar).
parent(muneeb, inaiba).
parent(shaista, inaiba).

parent(fazal, hira).
parent(hira, ali).

parent(rashid, ayesha).
parent(salma, ayesha).

parent(rashid, adnan).
parent(salma, adnan).

parent(adnan, bilal).
parent(bilal, hamza).


% Muhammad Umar
% Roll no. : CT - 24028

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

great_grandparent(X, Y) :- parent(X, Z), grandparent(Z, Y).

sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

uncle(X, Y) :- parent(Z, Y), sibling(X, Z).

cousin(X, Y) :- parent(Z, X), parent(W, Y), sibling(Z, W), X \= Y.

second_cousin(X, Y) :- parent(Z, X), parent(W, Y), cousin(Z, W), X \= Y.

ancestor(X, Y) :- parent(X, Y).

ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).




