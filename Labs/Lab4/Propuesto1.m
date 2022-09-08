clear
clc

% grafica
t = linspace(-pi, pi, 200);
plot(3*cos(t),5*sin(t))

n = input("Ingrese cant. subintervalos: ");

f = @(t) sqrt((3 * -sin(t))^2 + (5 * cos(t))^2);

% mediante punto medio
fprintf("Punto medio: %f\n", pmedio(-pi,pi,f,n))

% mediante trapecio
fprintf("Trapecio: %f\n", trap(-pi,pi,f,n))

% mediante simpson
fprintf("Simpson: %f\n", simpson(-pi,pi,f,n))