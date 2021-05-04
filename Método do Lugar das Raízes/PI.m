% Calculo dos �ngulos 
theta1 = 180 - atand(Wd/alfa);
theta2 = 180 - atand(Wd/(alfa - 22));
theta3 = atand(Wd/(54 - alfa));

% Calculo de z do controlador PI
fi = -180 + (theta1 + theta2 + theta3);
z = (-Wd/tand(fi)) - alfa;

s = tf('s');

% Fun��o da Planta
Gp = 98/((s + 22) * (s + 54));

% Ganho Kc pelo crit�rio 10%
Kc = abs((s1*(s1 + 22)*(s1 + 54))/(98*(s1 + 24.2)));

% Fun��o do controlador PI
% com z pelo crit�rio dos 10%
Gc_2 = (s + 24.2)/s;

% Malha aberta e Malha fechada
malha_aberta = Gc_2 * Gp;
malha_fechada_PI = (12 * Gc_2 * Gp)/(1 + (12 * Gc_2 * Gp));

%step(malha_fechada_PI);
rlocus(malha_aberta);

% Polos de Malha Fechada
%pole(malha_fechada_PI)

%planta
%planta com polo rastreador
%Kc com criterio
