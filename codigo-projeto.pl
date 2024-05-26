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

% zeus + metis = atena
% zeus + dione = afrodite
% zeus + leto = apolo 
% zeus + leto = artemis
% zeus + maia = hermes
% zeus + sêmele = dionísio
% zeus + hera = ares
% zeus+ hera = hefesto

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

% Relacionamentos de irmãos
irmao(X, Y) :- filho(X, Z), filho(Y, Z), X \= Y.


% para responder a primeira questão tem que criar o fato sexo:
sexo(atena, fem).
sexo(artemis, fem).
sexo(afrodite, fem).

