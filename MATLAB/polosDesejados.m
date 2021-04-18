% Com esses dados podemos ter 
% os polos de Malha Fechada desejados
% de acordo com as especifica��es
% s(1,2) = alfa +- jWd

% Tempo de Estabelecimento e Alfa pelo crit�rio
% dos 2%
te=0.25; % Entrada do Tempo desejada
alfa=4/te;

% Amortecimento ep
Mp=5; % Entrada de Sobressinal desejada
ep=sqrt(((log(Mp/100))^2)/(pi^2+(log(Mp/100))^2));

% Frequ�ncia Natural
Wn=alfa/ep;

% Frequ�ncia Wd
Wd=Wn*sqrt(1-(ep^2));

% s(1,2) = alfa +- jWd
s1 = -alfa + sqrt(-1)*Wd;
s2 = -alfa - sqrt(-1)*Wd;

