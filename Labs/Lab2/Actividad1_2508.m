% ACTIVIDAD 1 del 25 de agosto de 2022
% Fernando Artaza Covarrubias - fartaza2019@udec.cl

clc; clear all; close all;

nodos = [-2; -1; 0; 1; 2];
valores = [-25; -4; -1; 8; 47];

X = -2:4/1000:2;
eval = zeros(length(X),1);

for i = 1:length(X)
    eval(i) = valores'*lagrange(nodos, X(i)); 
end

plot(nodos, valores, 'ko')
hold on
plot(X, eval, 'm')
title('Interpolación obtenida del item 3')
legend('Datos', 'Polinomio de interpolación', 'Location', 'SouthEast')
xlabel('x')
ylabel('L(x)')

c = polyfit(nodos, valores, 4);
cval = polyval(c, X);

figure()
plot(nodos, valores, 'r*')
hold on 
plot(X, cval, 'b')
title('Interpolación obtenida del item 6')
legend('Datos', 'Polinomio de interpolación', 'Location', 'SouthEast')
xlabel('x')
ylabel('p(x)')

figure()
plot(nodos, valores, 'kx')
hold on
plot(X, eval, 'm')
plot(X, cval, 'b')
title('Interpolación obtenida del item 3')
legend('Datos', 'L(x)',  'p(x)', 'Location', 'SouthEast')
xlabel('x')
ylabel('y')