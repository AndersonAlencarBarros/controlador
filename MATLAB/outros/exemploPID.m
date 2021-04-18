% Função
s = tf('s');
Gp = 5/((s + 1)*(s + 3)); 

% Função para design de um controlador
rltool(Gp);

% Visualizar a função do controlador
C
% Visualizar os ganhos Kp, Ki e Kd
pid(C) 