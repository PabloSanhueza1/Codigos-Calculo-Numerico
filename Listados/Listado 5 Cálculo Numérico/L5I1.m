clear
clc

n = 100;

%ejercicio a
a1 = 0;
b1 = 1;
h1 = (b1-a1)/n;
y1_0 = 0;

f1 = @(x,y) 2*x;

[x1,y1] = eulerImplicito(y1_0,a1,b1,f1,n);
x_exacta1 = linspace(a1,b1,n+1);
y_exacta1 = x_exacta1.^2;

figure(1)
plot(x1,y1,"or",x_exacta1,y_exacta1,"-b")
title("Ejercicio a","FontSize",15)
legend("M. Euler","Exacta")

%ejercicio b
a2 = 0;
b2 = pi;
h2 = (b2-a2)/n;
y2_0 = 1;

f2 = @(x,y) -sin(x);

[x2,y2] = eulerImplicito(y2_0,a2,b2,f2,n);
x_exacta2 = linspace(a2,b2,n+1);
y_exacta2 = cos(x_exacta2);

figure(2)
plot(x2,y2,"or",x_exacta2,y_exacta2,"-b")
title("Ejercicio b","FontSize",15)
legend("M. Euler","Exacta")

%ejercicio c
a3 = 1;
b3 = 6;
h3 = (b3-a3)/n;
y3_1 = 1;

f3 = @(t,y) 1+y/t;

[x3,y3] = eulerImplicito(y3_1,a3,b3,f3,n);
x_exacta3 = linspace(a3,b3,n+1);
y_exacta3 = x_exacta3.*(1+log(x_exacta3));

figure(3)
plot(x1,y1,"or",x_exacta1,y_exacta1,"-b")
title("Ejercicio c","FontSize",15)
legend("M. Euler","Exacta")