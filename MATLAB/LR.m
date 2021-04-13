%num=1
%den=conv([1 3 2], [1 3])
%G=tf(num, den)

s = tf('s');
G = (5 * 0.806 * (s + 1.22))/(s * (s + 1) * (s + 3)); 

rlocus(G)
title('Método do Lugar das Raízes')


