clear
clc

f = @(x) (x+2)^2-0.5*exp(x);

x = [0 0.5 1 1.5 2];
y = zeros(1,length (x));

for i=1:length (x)
    y(i) = f(x(i));
end

s = spline(x,y);

xx = linspace(x(1), x(end), 100);
yy = ppval(s,xx);

y_funcion = zeros(1,length (xx));

for i=1:length (xx)
    y_funcion(i) = f(xx(i));
end

plot(xx,y_funcion,'-k',xx,yy,'-m',x,y,'or')
title("Grafica","FontSize",14)
legend("f(x)","Spline no-nodo","Puntos")