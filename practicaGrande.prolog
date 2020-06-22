% Desarrollo una gramatica bnf (como la del video) para validar una 
% direccion ipv4 asi como una mascara de red.
% https://es.wikipedia.org/wiki/M%C3%A1scara_de_red#Tabla_de_m%C3%A1scaras_de_red
% Realice la implementacion de dicha gramatica en prolog donde
% se pueda validar la cadena donde esta esa ip o mascara ejemplo

%ip("192.168.1.1").
%true.
%ip("256.168.1.1").
%false.
%maskR("255.255.255.0").
%true.
%maskR("255.255.255.1").
%false.

latom_lstring([],[]).
latom_lstring([F|C],R) :- latom_lstring(C,S), atom_string(F,SF), append([SF],S,R).

preparar_string(Str,LS) :-
	string(Str),
	string_chars(Str,LAC),
	latom_lstring(LAC,LS).

digito(N) :- N == "0"; N == "1"; N == "2"; N == "3"; N == "4"; N == "5"; N == "6"; N == "7"; N == "8"; N == "9"; N == "0".

r4(N) :- N == "0"; N == "1"; N == "2"; N == "3"; N == "4".
r5(N) :- N == "0"; N == "1"; N == "2"; N == "3"; N == "4"; N == "5".

digitos_5([F|[]]) :- r5(F).

digitos([F|[]]) :- digito(F).
digitos([F|C]) :- digito(F), digitos(C).

%inicio_a([F|C]) :- F == "1", digitos(C).
primero_a([F|C]) :- F == "1", digitos(C).
inicio_b([F|C]) :- 	F == "2", segundo_a(C);F == "2", segundo_b(C).

segundo_a([F|C]) :- F == "5", digitos_5(C).
segundo_b([F|C]) :- r4(F), digitos(C).

octeto(N) :- digito(N); string_length(N,R), R == 2, preparar_string(N,L), digitos(L); string_length(N,R), R == 3, preparar_string(N,L), primero_a(L);
				string_length(N,R), R == 3, preparar_string(N,L), inicio_b(L).

octetos([F|[]]) :- octeto(F).
octetos([F|C]) :- octeto(F), octetos(C).

octo_1(N) :- N == "0".
octo_2(N) :- N == "128".
octo_3(N) :- N == "192".
octo_4(N) :- N == "224".
octo_5(N) :- N == "240".
octo_6(N) :- N == "248".
octo_7(N) :- N == "252".
octo_8(N) :- N == "254".
octo_9(N) :- N == "255".

octetos_1([F|[]]) :- octo_1(F).
octetos_1([F|C]) :- octo_1(F), octetos_mas1(C).

octetos_2([F|[]]) :- octo_2(F).
octetos_2([F|C]) :- octo_2(F), octetos_mas1(C).

octetos_3([F|[]]) :- octo_3(F).
octetos_3([F|C]) :- octo_3(F), octetos_mas1(C).

octetos_4([F|[]]) :- octo_4(F).
octetos_4([F|C]) :- octo_4(F), octetos_mas1(C).

octetos_5([F|[]]) :- octo_5(F).
octetos_5([F|C]) :- octo_5(F), octetos_mas1(C).

octetos_6([F|[]]) :- octo_6(F).
octetos_6([F|C]) :- octo_6(F), octetos_mas1(C).

octetos_7([F|[]]) :- octo_7(F).
octetos_7([F|C]) :- octo_7(F), octetos_mas1(C).

octetos_8([F|[]]) :- octo_8(F).
octetos_8([F|C]) :- octo_8(F), octetos_mas1(C).

octetos_9([F|[]]) :- octo_9(F).
octetos_9([F|C]) :- octo_9(F), octetos_9(C);octo_9(F), octetos_8(C); octo_9(F), octetos_7(C); octo_9(F), octetos_6(C); octo_9(F), octetos_5(C);
						octo_9(F), octetos_4(C);octo_9(F), octetos_3(C);octo_9(F), octetos_2(C);octo_9(F), octetos_1(C).

octetos_m(L) :-	octetos_9(L);octetos_8(L);octetos_7(L);octetos_6(L);octetos_5(L);octetos_4(L);octetos_3(L);octetos_2(L);octetos_1(L).

ip(N) :- split_string(N,".","",L), octetos(L).
maskR(N) :- N == "0.".
maskR(N) :- split_string(N,".","",L), octetos_m(L).
