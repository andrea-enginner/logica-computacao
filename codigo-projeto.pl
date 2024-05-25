% Hierarquia dos Deuses Gregos

% Fatos: Deuses 

deus(zeus).
deus(poseidon).
deus(hades).
deus(hera).
deus(demeter).
deus(hestia).
deus(ares).
deus(atenas).
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
filho(atenas, zeus).
filho(apolo, zeus).
filho(artemis, zeus).
filho(hefesto, zeus).
filho(hermes, zeus).
filho(dionisio, zeus).
filho(afrodite, zeus).



% Relacionamentos de irmãos
irmao(X, Y) :- filho(X, Z), filho(Y, Z), X \= Y.

% Regras: Consultas

% Verifica se um deus é descendente de outro
descendente(X, Y) :- filho(X, Y).
descendente(X, Y) :- filho(X, Z), descendente(Z, Y).

% Domínios dos deuses
dominio(zeus, ceu).
dominio(poseidon, mares).
dominio(hades, submundo).
dominio(hera, casamento).
dominio(demeter, agricultura).
dominio(hestia, lar).
dominio(ares, guerra).
dominio(atenas, sabedoria).
dominio(apolo, musica).
dominio(artemis, lua).
dominio(hefesto, metalurgia).
dominio(afrodite, beleza).
dominio(hermes, comercio).
dominio(dionisio, vinho).

% Exemplos de consultas:
% ?- descendente_de(ares, cronos).
% ?- irmao_de(zeus, poseidon).
% ?- dominio(apolo, X).

% 1 - quais os irmaos de zeus e seus respectivos dominios?
%findall((Y,X),(irmao(zeus, Y),dominio(Y, X)),L).

% 2-