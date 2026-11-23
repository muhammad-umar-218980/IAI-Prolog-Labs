q2 :- 
    write("Enter value of X "), read(X), nl, 
    write("Enter value of Y "), read(Y), nl, 
    write("Enter value of Z "), read(Z), nl,
    calculate(X,Y,Z).

calculate(X,Y,Z):- ANSWER = X*Y*Z, ANSWER=:=0 , write("Infinity occurred"), !.
calculate(X,Y,Z):-
    Ans is ((X^Y)*(Y^Z)*(Z^X))/(X*Y*Z),
    write("Ans is "), write(Ans),nl,
    write_in_file("q2.txt",Ans),
    read_from_file("q2.txt").

write_in_file(FileName,Val):-
    open(FileName,write,Stream),
    write(Stream,Val),
    close(Stream).

read_from_file(FileName):-
    open(FileName,read,Stream),
    get_char(Stream,Char),
    process_the_stream(Stream,Char),
    close(Stream).

process_the_stream(Stream,end_of_file):- !.
process_the_stream(Stream,Char):-
    write(Char),
    get_char(Stream,NextChar),
    process_the_stream(Stream,NextChar).



