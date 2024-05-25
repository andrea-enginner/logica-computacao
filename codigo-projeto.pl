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

% Relacionamentos de irmãos
irmao(X, Y) :- filho(X, Z), filho(Y, Z), X \= Y.

% Verifica se um deus é descendente de outro
descendente(X, Y) :- filho(X, Y).
descendente(X, Y) :- filho(X, Z), descendente(Z, Y).

%para responder a primeira questão tem que criar o fato sexo:
sexo(atena, fem).
sexo(artemis, fem).
sexo(afrodite, fem).

%Consultas

% 1-Quais as deusas filhas de Zeus?
%findall(X,(filho(X, zeus), sexo(X, fem)),L).

% 2 - quais os irmaos de zeus e seus respectivos dominios?
%findall((Y,X),(irmao(zeus, Y),dominio(Y, X)),L).

% 3 - Quantos e quais são os filhos do titã Cronos? 
% findall(F, filho(F, cronos), Filhos), length(Filhos, N).

% 4 - Crie uma regra para retornar todos os descendentes de Cronos
%descendente(X, Y) :- filho(X, Y).
%descendente(X, Y) :- filho(X, Z), descendente(Z, Y).

