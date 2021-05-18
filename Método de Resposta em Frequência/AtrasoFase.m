% Conferir MF e MG
s = tf('s');
Gp = 11 / (s * (s + 6));
Gc = (1.6757 * (s + 0.2798))/(s + 0.0430);
A = Gc * Gp;
[MG, MF, wcf, wcg] = margin(A)


%% Cálculo do Ângulo
% w_cg = 1.7593;
% den = ( -(w_cg^2) + 6 * 1i * w_cg);
% a = 11 / den;
% 
% ang = atand(imag(a)/real(a)) - 180;