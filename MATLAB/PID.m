z2 = 48.6; 
z1 = 24.2;

% Calculo dos �ngulos dos Polos
theta1 = 180 - atand(Wd/alfa);
theta2 = 180 - atand(Wd/(alfa - 22));
theta3 = atand(Wd/(54 - alfa));

% Calculo dos �ngulos dos Zeros
fi1 = 180 - atand(Wd/(alfa - z1));
fi2 = atand(Wd/(z2 - alfa));

% C�lculo do �ngulo de p 
theta4 = 180 - (theta1 + theta2 + theta3) + (fi1 + fi2);
p = (-Wd/tand(theta4)) - alfa;

% Ganho Kc
e1 = s1 * (s1 - p) * (s1 + 22) * (s1 + 54);
e2 = 98 * (s1 + z1) * (s1 + z2);
Kc = abs(e1/e2);

s = tf('s');

% Fun��o da Planta
Gp = 98/((s + 22)* (s + 54));

% Fun��o do controlador PID
% os zeros z1 e z2 s�o pelo crit�rio dos 10%
Gc = (Kc * (s + z1)*(s + z2))/(s*(s + 87));

% Malha aberta e Malha fechada
malha_aberta_1 = Gc * Gp;
malha_fechada_1 = feedback(malha_aberta_1, 1);

%step(malha_fechada_1);
%rlocus(malha_fechada_1);
%rlocus(malha_aberta_1);
 

