% PLANTA

% w_cg = 1.8655;
% %Gp = 48 / ( -13 * w_cg^2 + w_cg * 1i * (12 - w_cg^2) );
%  
% a = -0.944418383410151 - 0.331788111782586i;
% ang = atand(imag(a)/real(a));
% 
% fi_m = 45 - 19.35 + 5;
% alfa = (1 - sind(fi_m))/(1 + sind(fi_m));
% 
% contrib_gc = 1/sqrt(alfa);

%%% Função de malha aberta

s = tf('s');
Gp = 19 / (s * (s + 12) * (s + 1));
%Gc = ( 7.78 * (s + 4.434) )/(s + 4.434);
Gc = ( 9.71 * (s + 1.365) )/(s + 5.25);

A = Gc * Gp;

[MG, MF, wcf, wcg] = margin(A)
