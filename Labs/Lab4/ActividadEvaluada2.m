clear
clc

% pregunta 2
f2 = @(x) cos(x^2)*cos(x^3);
p2 = simpson(-pi,pi,f2,100);
fprintf("Resultado 1: %f\n",p2)

% pregunta 3
f3 = @(x) exp(cos(x^2));
p3 = simpson(-pi,pi,f3,20);
fprintf("Resultado 2: %f\n",p3)

% pregunta 4
f4 = @(x) 2*x;
p4 = simpson(1,2,f4,20);
fprintf("Resultado 3: %f\n",p4)