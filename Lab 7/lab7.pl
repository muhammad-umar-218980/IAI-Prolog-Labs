% Muhammad Umar
% Roll no. : CT - 24028

age(aslam, 11).
age(asif, 13).
age(afsheen, 17).
age(manal, 16).
age(amir, 30).
age(falak, 33).
age(sobia, 40).
age(sheheryar, 44).
age(rehan, 52).
age(erum, 64).


older(P1, P2) :-
    age(P1, AgeP1),
    age(P2, AgeP2),
    AgeP1 > AgeP2.


younger(P1, P2) :-
    age(P1, AgeP1),
    age(P2, AgeP2),
    AgeP1 < AgeP2.


same_age(P1, P2) :-
    age(P1, AgeP1),
    age(P2, AgeP2),
    AgeP1 =:= AgeP2.

% Muhammad Umar
% Roll no. : CT - 24028

compare(P1, P2) :-
    age(P1, AgeP1),
    age(P2, AgeP2),
    AgeP1 > AgeP2,
    write(P1),
    write(' is older than '),
    write(P2),
    nl.


compare(P1, P2) :-
    age(P1, AgeP1),
    age(P2, AgeP2),
    AgeP1 < AgeP2,
    write(P1),
    write(' is younger than '),
    write(P2),
    nl.


compare(P1, P2) :-
    age(P1, AgeP1),
    age(P2, AgeP2),
    AgeP1 =:= AgeP2,
    write(P1),
    write(' and '),
    write(P2),
    write(' have the same age'),
    nl.
