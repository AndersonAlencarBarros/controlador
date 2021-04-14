% Com esses dados podemos ter 
% os polos de Malha Fechada desejados
% de acordo com as especificações
% s(1,2) = alfa +- jWd

% Tempo de Estabelecimento e Alfa
te=3.2; % Entrada do Tempo desejada
alfa=4/te;

% Amortecimento E
Mp=5; % Entrada de Sobressinal desejada
ep=sqrt(((log(Mp/100))^2)/(pi^2+(log(Mp/100))^2));

% Frequência Natural
Wn=alfa/ep;

% Wd
Wd=Wn*sqrt(1-(ep^2));

