arctg = atand(Wd/alfa);
theta1 = 180 - arctg;

arctg = atand(Wd/(alfa - 22));  % 0.25
theta2 = 180 - arctg;

arctg = atand(Wd/(54 - alfa));  % (3-1.25)
theta3 = arctg;

fi = -180 + (theta1 + theta2 + theta3);

tg = tand(fi) * 180 / pi;
z = (-Wd/tg) - alfa;

% Kc = abs((s1*(s1 + 1)*(s1 + 3))/(5*(s1 - z))); 
Kc = abs((s1*(s1 + 22)*(s1 + 54))/(98*(s1 - z)));

s = tf('s');

Gc_1 = (Kc * (s - z))/s;
Gp = 98/((s + 22)* (s + 54));
A = Gc_1 * Gp;

malha_fechada_1 = feedback(A, 1);
%step(malha_fechada_1);
%rlocus(malha_fechada_1);
%rlocus(A);

Gc_2 = (Kc * (s + 24.2))/s;
%A = Gc_2 * Gp;

malha_fechada_2 = feedback(A, 1);
%step(malha_fechada_2);
%rlocus(malha_fechada_2)

