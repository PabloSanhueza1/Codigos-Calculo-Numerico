clear % limpia Workspace
clc % limpia la command Window

x=[0 pi/4 pi/2 3*pi/4 pi];
y=[0 sqrt(2)/2 1 sqrt(2)/2 0];

p=polyfit(x,y,4);
xx=linspace(x(1),x(end),100);
yy=polyval(p,xx);

% Grafica de polinomios
plot(x,y,"or",xx,yy,"-k")
title("Grafica","FontSize",14)
legend("Puntos","Pol. interpol.")
grid on