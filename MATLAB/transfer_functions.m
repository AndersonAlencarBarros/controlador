s = tf('s');

ft_atuador = 0.1/(0.5*s + 2);
ft_engine = 1/(0.02*s + 0.2);
ft_sistema = ft_atuador * ft_engine;

%%% Controlador para K = 1
ft_controlador_K1 = 1/s;

ft_malha_aberta_K1 = ft_sistema * ft_controlador_K1;
ft_malha_fechada_K1 = feedback(ft_malha_aberta_K1, 1);

%step(ft_malha_fechada_K1);
%rlocus(ft_malha_aberta);

%%% Controlador para K = 5
ft_controlador_K5 = 5/s;

ft_malha_aberta_K5 = ft_sistema * ft_controlador_K5;
ft_malha_fechada_K5 = feedback(ft_malha_aberta_K5, 1);

%step(ft_malha_fechada_K5);
%rlocus(ft_malha_aberta_K5);

% Ir em Apps -> Linear System -> File -> Import
% e importar as equações de malha fechada