%%% Cálculo do Ângulo
% w_cg = 1.8655;
% den = ( -13 * w_cg^2 + w_cg * 1i * (12 - w_cg^2));
% a = 48 / den;
% ang = atand(imag(a)/real(a));

%%% Conferir MF e MG
s = tf('s');
Gp = 19/(s * (s + 12) * (s + 1));
% Gc = (7.78 * (s + 1.439))/(s + 4.434);
% 
% A = Gc * Gp;
% [MG, MF, wcf, wcg] = margin(A)

% 11.35
%Gc = ( 9.71 * (s + 1.365) )/(s + 5.25);

% 12
Gc = ( 10.525 * (s + 1.34) )/(s + 5.57);

% 13.35
%Gc = ( 11.13 * (s + 1.32) )/(s + 5.82);

% 12.6
%Gc = ( 10.75 * (s + 1.34) )/(s + 5.69);

% 12.35
% Gc = ( 10.61 * (s + 1.33) )/(s + 5.59);

s = tf('s');
Gp = 19/(s * (s + 12) * (s + 1));
Gc = ( 10.525 * (s + 1.34) )/(s + 5.57);
A = Gc * Gp;
[MG, MF, wcf, wcg] = margin(A)
