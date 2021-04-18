% Calculo dos ângulos
arctg = atand(Wd/alfa);
theta1 = 180 - arctg;

arctg = atand(Wd/(alfa - 22));   
theta2 = 180 - arctg;

arctg = atand(Wd/(54 - alfa));   
theta3 = arctg;

fi = -180 + (theta1 + theta2 + theta3);

% Calculo de z do controlador PI
tg = tand(fi);
z = (-Wd/tg) - alfa;

% Ganho Kc
Kc = abs((s1*(s1 + 22)*(s1 + 54))/(98*(s1 - z)));

s = tf('s');

% Função da Planta
Gp = 98/((s + 22)* (s + 54));

% Função do controlador PI
% com z sem alteração
Gc_1 = (Kc * (s - z))/s;

% Malha aberta e Malha fechada
malha_aberta_1 = Gc_1 * Gp;
malha_fechada_1 = feedback(malha_aberta_1, 1);

step(malha_fechada_1);
%rlocus(malha_fechada_1);
%rlocus(malha_aberta_1);

% Função do controlador PI
% com z pelo critério dos 10%
Gc_2 = (Kc * (s + 24.2))/s;

% Malha aberta e Malha fechada
malha_aberta_2 = Gc_2 * Gp;
malha_fechada_2 = feedback(malha_aberta_2, 1);

step(malha_fechada_2);
%rlocus(malha_fechada_2)
%rlocus(malha_aberta_2)



