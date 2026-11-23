table_cal:-
    write("Enter a number : "),
    read(N),
    write("Enter start range "),
    read(S),
    write("Enter the end range "),
    read(E),
    num_table(N,S,E,S).

num_table(N,S,E,I):-
 I>E , !.

num_table(N,S,E,I):-
    write(N)  , write(" X ") , write(I) , write(" = "),
    Ans is N*I,
    write(Ans), nl,
    NextNum is I+1,
    num_table(N,S,E,NextNum).
