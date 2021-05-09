% PLANTA
% Gp = 19 / s (s + 12) (s + 1)

% ESPECIFICA��O DE ERRO DE VELOCIDADE
limite = 0.5;
Kv = 10;
Kc_alfa = 20;

% FREQU�NCIA DE CRUZAMENTO DE GANHO
w_cg = 4.25;

% �NGULO DE FASE DA PLANTA Gp'(jw)
% para w_cg
fi = -154.8;

% MARGEM DE FASE DE Gp'(jw)
beta = 180 + fi;

% MARGEM DE FASE REQUERIDA PELO CONTROLADOR
% DE ACORDO COM AS ESPECIFICA��ES 
fi_m = 60 - beta + 8.2;

% VALOR DE ALFA
alfa = (1 - sind(fi_m))/(1 + sind(fi_m));

% CONTRIBUI��O DE FASE DO CONTROLADOR Gc'(jw)
contrib_Gc = 1/sqrt(alfa);

% CONTRIBUI��O DE FASE DO M�DULO DA PLANTA Gp'(jw)
contrib_Gp = 1/contrib_Gc;

% FREQU�NCIA w_m
w_m = 6.635;

% CALCULANDO a
a = w_m/sqrt(alfa);

% CALCULANDO Kc
Kc = Kc_alfa/alfa;

% EQUA��O DO CONTROLADOR
s = tf('s');
Gc = ( Kc * (s + alfa * a )/( s + a ));

% MARGEM DE GANHO DA PLANTA
MG = 1

%[theta, rho] = cart2pol(real(a), imag(a));
%theta = theta * 180/pi; 

%[Gm,pm,wcp,wcg] = margin(sys)


