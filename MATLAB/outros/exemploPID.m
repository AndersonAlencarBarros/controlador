% Fun��o
s = tf('s');
Gp = 5/((s + 1)*(s + 3)); 

% Fun��o para design de um controlador
rltool(Gp);

% Visualizar a fun��o do controlador
C
% Visualizar os ganhos Kp, Ki e Kd
pid(C) 