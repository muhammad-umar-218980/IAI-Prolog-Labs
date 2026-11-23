q1 :- 
    write("Enter value of X "), read(X), nl, 
    write("Enter value of Y "), read(Y), nl, 
    write("Enter value of Z "), read(Z), nl,
    calculate(X,Y,Z).

calculate(X,Y,Z):- Z=:=0 , write("Infinity occurred"), !.
calculate(X,Y,Z):-
    A is X**(Y**Z),
    Ans is A/Z,
    write("Ans is "), write(Ans),nl,
    write_in_file("q1.txt",Ans),
    read_from_file("q1.txt").

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




