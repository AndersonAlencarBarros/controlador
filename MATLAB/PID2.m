% Constantes
p = 200; % 5 x alfa
z1 = 24.2;

% Calculo dos ângulos dos Polos
theta1 = 180 - atand(Wd/alfa);
theta2 = 180 - atand(Wd/(alfa - 22));
theta3 = atand(Wd/(54 - alfa));
theta4 = atand(Wd/(200 - alfa));

% Calculo dos ângulos dos Zeros
fi1 = 180 - atand(Wd/(alfa - z1));

% Cálculo do ângulo de z2
fi2 = -180 + (theta1 + theta2 + theta3 + theta4) - fi1;
z2 = (-Wd/tand(fi2)) - alfa;

% Ganho Kc
e1 = s1 * (s1 - p) * (s1 + 22) * (s1 + 54);
e2 = 98 * (s1 + z1) * (s1 + z2);
Kc = abs(e1/e2);

s = tf('s');

% Função da Planta
Gp = 98/((s + 22)* (s + 54));

% Função do controlador PID
% os zeros z1 e z2 são pelo critério dos 10%
Gc = (Kc * (s + 24.2)*(s + 59.4))/(s*(s + 200));

% Malha aberta e Malha fechada
malha_aberta_1 = Gc * Gp;
malha_fechada_1 = feedback(malha_aberta_1, 1);

%step(malha_fechada_1);
rlocus(Gp);
%rlocus(malha_fechada_1);
 

