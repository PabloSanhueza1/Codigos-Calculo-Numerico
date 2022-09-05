clear % limpia Workspace
clc % limpia la command Window

x=[0 20 40];
y=[10 20 30];

p=polyfit(x,y,2);
xx=linspace(x(1),x(end),100);
yy=polyval(p,xx);

% Grafica de polinomios
plot(x,y,"or",xx,yy,"-k")
title("Grafica","FontSize",14)
legend("Puntos","Pol. interpol.")
grid on