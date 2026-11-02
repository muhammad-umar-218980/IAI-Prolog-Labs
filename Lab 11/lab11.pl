% Muhammad Umar
% Roll no. : CT - 24028

fruit(apple).
fruit(banana).
fruit(mango).
fruit(peach).

likes(jack,X):-
    fruit(X),
    \+X = banana.

