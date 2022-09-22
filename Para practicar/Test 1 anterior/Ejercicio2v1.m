clear
clc

f = @(x) exp(x^2)*(cos(x)+2*x*sin(x));

[z,y] = Ejercicio1V1(f);

plot(z,y)