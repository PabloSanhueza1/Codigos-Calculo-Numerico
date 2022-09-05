clear % limpia Workspace
clc % limpia la command Window

x=[1 2 3];
y=[log(1) log(2) log(3)];

p=polyfit(x,y,2);
xx=linspace(x(1),x(end),100);
yy=polyval(p,xx);
f=log(xx);

% Grafica
plot(x,y,"or",xx,yy,"-m",xx,f,"-k")
title("Grafica","FontSize",14)
legend("Puntos","Pol. interpol.","Funcion ln")
grid on

% aproximacion
pol=@(x) x*x*(p(1))+x*(p(2))+(p(3));
aprox1=pol(1.5)
aprox2=pol(2.4)

aprox1=polyval(p,1.5)
aprox2=polyval(p,2.4)