% Executar esse script e clicar duas vezes 
% no arquivo "simulinkPI.slx" para abrir o Simulink

s = tf('s');

Gc = (0.806 * (s + 1.22))/s;
Gp = 5/(s^2 + 4*s + 3);

