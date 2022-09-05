clear % limpia Workspace
clc % limpia la command Window

x=[0 pi/2 pi];
y=[0 1 0];

p=polyfit(x,y,2);
xx=linspace(x(1),x(end),100);
yy=polyval(p,xx);

% Grafica de polinomios
plot(x,y,"or",xx,yy,"-k")
title("Grafica","FontSize",14)
legend("Puntos","Pol. interpol.")
grid on

% error
n=input("grado: ");
if mod(n+1,4)==0
    fn1=@(x) sin(x);
elseif mod(n+1,4)==1
    fn1=@(x) cos(x);
elseif mod(n+1,4)==2
    fn1=@(x) -sin(x);
else 
    fn1=@(x) -cos(x);
end

Mn1=max(abs(fn1(0)),abs(fn1(pi/2)));
pit=1;
for i=1:1:100
for j=1:1:n+1
    pit=pit*(xx(i)-x(j));   
end
E(i)=abs(Mn1/factorial(n+1)*pit);
pit=1;
end
resultado=max(E)
%maximo=min(abs(sin(xx)-yy))