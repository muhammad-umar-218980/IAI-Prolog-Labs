% Muhammad Umar
% Roll no. : CT - 24028

write_countries :-
open('sample.txt', write, Stream),
write('Enter country names to write. Type "stop" to end.'), nl,
write_to_file(Stream),
close(Stream).

write_to_file(Stream) :-
write('Enter country name: '),
read(Country),
Country \= stop,
write(Stream, Country), nl(Stream),
write_to_file(Stream).
write_to_file(_).

append_countries :-
open('sample.txt', append, Stream),
write('Enter country names to append. Type "stop" to end.'), nl,
append_to_file(Stream),
close(Stream).

append_to_file(Stream) :-
write('Enter country name: '),
read(Country),
Country \= stop,
write(Stream, Country), nl(Stream),
append_to_file(Stream).
append_to_file(_).


% Muhammad Umar
% Roll no. : CT - 24028


readcountries :-
open('sample.txt', read, Stream),
get_char(Stream, Char),
process_stream(Char, Stream),
close(Stream).

process_stream(end_of_file, _) :- !.
process_stream(Char, Stream) :-
write(Char),
get_char(Stream, NextChar),
process_stream(NextChar, Stream).

delete_countries :-
open('sample.txt', write, Stream),
close(Stream),
write('File contents deleted successfully.'), nl.

