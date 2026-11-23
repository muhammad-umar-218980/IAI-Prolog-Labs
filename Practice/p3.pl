max_func(N1,N2):-
    N1>N2,
    Max  is N1,
    write(Max).

max_func(N1,N2):-
    N1<N2,
    Max is N2,
    write(Max).

max_func(N1,N2):-
    write(N1) , write(" is equal to "), write(N2).
