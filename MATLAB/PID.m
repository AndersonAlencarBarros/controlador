% Calculo dos ângulos
arctg = atand(Wd/alfa);
theta1 = 180 - arctg;

arctg = atand(Wd/(alfa - 22));  
theta2 = 180 - arctg;

arctg = atand(Wd/(54 - alfa));  
theta3 = arctg;

fi = -180 + (theta1 + theta2 + theta3);

% Calculo de p do controlador PID
tg = tand(fi) * 180 / pi;
p = (-Wd/tg) - alfa;

% Ganho Kc
Kc = abs((s1*(s1 + 22)*(s1 + 54))/(98*(s1 - z)));

s = tf('s');

% Função da Planta
Gp = 98/((s + 22)* (s + 54));

% Função do controlador PID
% os zeros z1 e z2 são pelo critério dos 10%
Gc = (Kc * (s + 24.2)*(s + 59.4))/(s*(s - p));

% Malha aberta e Malha fechada
malha_aberta_1 = Gc * Gp;
malha_fechada_1 = feedback(malha_aberta_1, 1);

%step(malha_fechada_1);
%rlocus(malha_fechada_1);
%rlocus(malha_aberta_1);
 

