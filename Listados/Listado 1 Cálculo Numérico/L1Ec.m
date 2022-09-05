clear % limpia Workspace
clc % limpia la command Window

x=[-1 2 3 5];
y=[0 1 1 2];

p=polyfit(x,y,3);
xx=linspace(x(1),x(end),100);
yy=polyval(p,xx);

% Grafica de polinomios
plot(x,y,"or",xx,yy,"-k")
title("Grafica","FontSize",14)
legend("Puntos","Pol. interpol.")
grid on