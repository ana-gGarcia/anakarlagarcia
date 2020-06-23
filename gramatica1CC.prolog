% Desarrolle un predicado que permita validar un NIP de una banco que 
% Responde a la siguiente gramatica
% Nip ::= <Digito> ' ' <Digito> ' ' <Digito> ' ' <Digito>
% Digito ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

%nip("1235").
%true.

%nip("123").
%false.

latom_lstring([],[]).
latom_lstring([F|C],R) :- latom_lstring(C,S), atom_string(F,SF), append([SF],S,R).

preparar_string(Str,LS) :-
	string(Str),
	string_chars(Str,LAC),
	latom_lstring(LAC,LS).

digito(N) :- N == "1"; N == "2"; N == "3"; N == "4"; N == "5"; N == "6"; N == "7"; N == "8"; N == "9"; N == "0".

r4(N) :- N == "0"; N == "1"; N == "2"; N == "3"; N == "4".
r5(N) :- N == "0"; N == "1"; N == "2"; N == "3"; N == "4"; N == "5".

digitos_c([F|[]]) :- r5(F).

digitos([F|[]]) :- digito(F).
digitos([F|C]) :- digito(F), digitos(C).
nip(N) :- string_length(N,R), R == 4, preparar_string(N,L), digitos(L).




% Desarrolle un predicado que permita validar un octeto de una ip
% Responde a la siguiente gramatica
% Octeto ::= '2'<R5><R5> | '1'<Digito><Digito> | <Digito><Digito> | <Digito>
% R5 ::= 0 | 1 | 2 | 3 | 4 | 5
% Digito ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

%nip("255").
%true.
%nip("256").
%false

primero_a([F|C]) :- F == "1", digitos(C).
primero_b([F|C]) :- 	F == "2", segundo_a(C); F == "2", segundo_b(C).

segundo_a([F|C]) :- F == "5", digitos_c(C).
segundo_b([F|C]) :- r4(F), digitos(C).

octe(N) :- 	digito(N); string_length(N,R), R == 2, preparar_string(N,L), digitos(L); string_length(N,R), R == 3, preparar_string(N,L), primero_a(L); string_length(N,R), R == 3, preparar_string(N,L), primero_b(L).
