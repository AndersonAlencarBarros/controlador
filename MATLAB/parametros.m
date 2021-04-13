%%% Controlador PI

% Com esses dados podemos ter 
% o lugar das ra�zes desejados
% de acordo com as especifica��es
% s1,2 = alfa +- jWd

% Tempo de Estabelecimento e Alfa
te=3.2; % Entrada do Tempo desejada
alfa=4/te;

% Amortecimento E
Mp=5; % Entrada de Sobressinal desejada
ep=sqrt(((log(Mp/100))^2)/(pi^2+(log(Mp/100))^2));

% Frequ�ncia Natural
Wn=alfa/ep;

% Wd
Wd=Wn*sqrt(1-(ep^2));

