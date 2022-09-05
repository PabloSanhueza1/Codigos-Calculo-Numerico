clear % limpia Workspace
clc % limpia la command Window

x=[0 2 3];
y=[1 3 0];

p=polyfit(x,y,2);
xx=linspace(x(1),x(end),100);
yy=polyval(p,xx);
T=[xx' yy'];
plot(x,y,"or",T(:,1),T(:,2),"-k")
title("HOLA","FontSize",14)
ylabel("t(s)","FontSize",14)
legend("Ptos","Pol. interpol.")
grid on