% Muhammad Umar
% Roll no. : CT - 24028


number_type(N,positive) :-
    N>0, !.


number_type(N,negative) :-
    N<0, !.

number_type(0,zero).

check_number :-
    write('Enter a number : '),
    read(N),
    number_type(N,Type),
    write("The number is :"),
    write(Type),
    nl.

