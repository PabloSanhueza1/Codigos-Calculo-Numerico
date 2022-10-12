clear
clc

%actividad 1.2

%item a
n = 4;

fprintf("Puntos:\n")

%a.1
f1 = @(t,x) exp(t)/x;
a1 = 0;
b1 = 2;
y0 = 1;

[ex1,ey1] = euler2(y0,a1,b1,f1,n);

sol_exacta1 = @(t) sqrt(2*exp(t)-1);

fprintf("\nEjercicio a.1:\n")
for i = 1: length(ex1)
    fprintf("(%f, %f)\n",ex1(i),ey1(i))
end

%a.2
f2 = @(t,y) t-y;
a2 = 0;
b2 = 4;
y0 = 1;

[ex2,ey2] = euler2(y0,a2,b2,f2,n);

sol_exacta2 = @(t) 2*exp(-t)+t-1;

fprintf("\nEjercicio 1.2:\n")
for i = 1: length(ex2)
    fprintf("(%f, %f)\n",ex2(i),ey2(i))
end

%a.3
f3 = @(t,z) 4*t*sqrt(z^2+1)/z;
a3 = 0;
b3 = 5;
y0 = 1;

[ex3,ey3] = euler2(y0,a3,b3,f3,n);

sol_exacta3 = @(t) sqrt((2*t^2+sqrt(2))^2-1);

fprintf("\nEjercicio 1.2:\n")
for i = 1: length(ex3)
    fprintf("(%f, %f)\n",ex3(i),ey3(i))
end

%item b
puntos = 1000;

%graficas b.1
x_puntos1 = linspace(a1,b1,puntos);
y_grafico1 = zeros(1,puntos);

for i = 1: puntos
    y_grafico1(i) = sol_exacta1(x_puntos1(i));
end

figure(1)
plot(x_puntos1,y_grafico1,"-k",ex1,ey1,"or")
title("Funcion x(t) y pares M. de euler")
xlabel("t"); ylabel("x(t)")
grid on

%error de a.1
error_a1 = zeros(1,length(ex1));
for i = 1: length(ex1)
    error_a1(i) = abs(sol_exacta1(ex1(i)) - ey1(i));
end

figure(2)
plot(ex1,error_a1,"or")
title("Error en a.1")
xlabel("t"); ylabel("E(t)")
grid on

%graficas b.2
x_puntos2 = linspace(a2,b2,puntos);
y_grafico2 = zeros(1,puntos);

for i = 1: puntos
    y_grafico2(i) = sol_exacta2(x_puntos2(i));
end

figure(3)
plot(x_puntos2,y_grafico2,"-k",ex2,ey2,"or")
title("Funcion x(t) y pares M. de euler")
xlabel("t"); ylabel("y(t)")
grid on

%error de a.2
error_a2 = zeros(1,length(ex2));
for i = 1: length(ex2)
    error_a2(i) = abs(sol_exacta2(ex2(i)) - ey2(i));
end

figure(4)
plot(ex2,error_a2,"or")
title("Error en a.2")
xlabel("t"); ylabel("E(t)")
grid on

%graficas b.3
x_puntos3 = linspace(a3,b3,puntos);
y_grafico3 = zeros(1,puntos);

for i = 1: puntos
    y_grafico3(i) = sol_exacta3(x_puntos3(i));
end

figure(5)
plot(x_puntos3,y_grafico3,"-k",ex3,ey3,"or")
title("Funcion x(t) y pares M. de euler")
xlabel("t"); ylabel("z(t)")
grid on

%error de a.3
error_a3 = zeros(1,length(ex3));
for i = 1: length(ex3)
    error_a3(i) = abs(sol_exacta3(ex3(i)) - ey3(i));
end

figure(6)
plot(ex3,error_a3,"or")
title("Error en a.3")
xlabel("t"); ylabel("E(t)")
grid on

%item c
fprintf("\nError global del M. de Euler:\n")
fprintf("en a.1: %f\n",max(error_a1))
fprintf("en a.2: %f\n",max(error_a2))
fprintf("en a.3: %f\n",max(error_a3))