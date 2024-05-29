% ANDRÉA CARVALHO PIRES E ANTONIO DOS SANTOS FILHO

% Hierarquia dos Deuses Gregos

% Fatos: Deuses 

deus(zeus).
deus(poseidon).
deus(hades).
deus(hera).
deus(demeter).
deus(hestia).
deus(ares).
deus(atena).
deus(apolo).
deus(artemis).
deus(hefesto).
deus(afrodite).
deus(hermes).
deus(dionisio).

% Titãs
titas(cronos).
titas(reia).
titas(oceano).
titas(tetis).
titas(hiperion).
titas(teia).
titas(mnemosine).
titas(japeto).
titas(febe).
titas(temis).
titas(crios).

% Relacionamentos pai-filho
filho(zeus, cronos).
filho(poseidon, cronos).
filho(hades, cronos).
filho(hera, cronos).
filho(demeter, cronos).
filho(hestia, cronos).

filho(ares, zeus).
filho(atena, zeus).
filho(apolo, zeus).
filho(artemis, zeus).
filho(hefesto, zeus).
filho(hermes, zeus).
filho(dionisio, zeus).
filho(afrodite, zeus).

filho(talia, afrodite).
filho(hermafrodito, hermes).
filho(eros, ares).
filho(asclepio, apolo).

% Mães dos filhos de zeus
mae(metis, atena).
mae(dione, afrodite).
mae(leto, apolo).
mae(leto, artemis).
mae(maia, hermes).
mae(semele, dionisio).
mae(hera, ares).
mae(hera, hefesto).

% Domínios dos deuses
dominio(zeus, ceu).
dominio(poseidon, mares).
dominio(hades, submundo).
dominio(hera, casamento).
dominio(demeter, agricultura).
dominio(hestia, lar).
dominio(ares, guerra).
dominio(atena, sabedoria).
dominio(apolo, musica).
dominio(artemis, lua).
dominio(hefesto, metalurgia).
dominio(afrodite, beleza).
dominio(hermes, comercio).
dominio(dionisio, vinho).
dominio(talia,comedia).
dominio(eros, amor).
dominio(asclepio, medicona).
dominio(hermafrodito, uniao).

% Regra:

% Relacionamentos de irmãos
irmao(X, Y) :- filho(X, Z), filho(Y, Z), X \= Y.

% Questoes e solucoes propostas:

% 1-Quais as deusas filhas de Zeus?
%Para responder a primeira questão tem-se que criar o fato sexo:
%sexo(atena, fem).
%sexo(artemis, fem).
%sexo(afrodite, fem).
%Consulta: 
%findall(X,(filho(X, zeus), sexo(X, fem)),L).

% 2 - quais os irmaos de zeus e seus respectivos dominios?
%Consulta: 
%findall((Y,X),(irmao(zeus, Y),dominio(Y, X)),L).

% 3 - Quantos e quais sao os filhos do titã Cronos? (Dica: utilize-se a função length para saber o comprimento de uma lista)
% Exemplo:length(NomeDaLista, NomeDaVariavelQueRecebeComprimentoDaLista).
%Consulta: 
% findall(F, filho(F, cronos), Filhos), length(Filhos, N).

% 4 - Retorne todos os descendentes de Cronos e seus dominios. (Dica: crie uma regra para os descendentes)
% A regra: 
%descendente(X, Y) :- filho(X, Y).
%descendente(X, Y) :- filho(X, Z), descendente(Z, Y).
%Consulta: 
%findall((X,Y),(descendente(X,cronos), dominio(X,Y)),L).

% 5 - Crie uma regra para verficar se dois deuses filhos de Zeus tem maes diferente
% Regra para facilitar consulta:
%filhozeus(X) :- filho(X,zeus).
%Consulta: 
%maediferente(X,Y) :- filhozeus(X), filhozeus(Y), mae(M1, X), mae(M2, Y), M1 \= M2.

