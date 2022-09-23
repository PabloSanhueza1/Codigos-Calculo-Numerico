clear
clc

f = @(x) exp(x^2)*(cos(x)+2*x*sin(x));

[z,y] = Ejercicio1V1(f);

figure 1
plot(z,y)