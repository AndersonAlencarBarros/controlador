% PLANTA
% Gp = 19 / s (s + 12) (s + 1)

% ESPECIFICAÇÃO DE ERRO DE VELOCIDADE
limite = 0.5;
Kv = 10;
Kc_alfa = 20;

% FREQUÊNCIA DE CRUZAMENTO DE GANHO
w_cg = 4.25;

% ÂNGULO DE FASE DA PLANTA Gp'(jw)
% para w_cg
fi = -154.8;

% MARGEM DE FASE DE Gp'(jw)
beta = 180 + fi;

% MARGEM DE FASE REQUERIDA PELO CONTROLADOR
% DE ACORDO COM AS ESPECIFICAÇÕES 
fi_m = 60 - beta + 8.2;

% VALOR DE ALFA
alfa = (1 - sind(fi_m))/(1 + sind(fi_m));

% CONTRIBUIÇÃO DE FASE DO CONTROLADOR Gc'(jw)
contrib_Gc = 1/sqrt(alfa);

% CONTRIBUIÇÃO DE FASE DO MÓDULO DA PLANTA Gp'(jw)
contrib_Gp = 1/contrib_Gc;

% FREQUÊNCIA w_m
w_m = 6.635;

% CALCULANDO a
a = w_m/sqrt(alfa);

% CALCULANDO Kc
Kc = Kc_alfa/alfa;

% EQUAÇÃO DO CONTROLADOR
s = tf('s');
Gc = ( Kc * (s + alfa * a )/( s + a ));

% MARGEM DE GANHO DA PLANTA
MG = 1

%[theta, rho] = cart2pol(real(a), imag(a));
%theta = theta * 180/pi; 

%[Gm,pm,wcp,wcg] = margin(sys)


