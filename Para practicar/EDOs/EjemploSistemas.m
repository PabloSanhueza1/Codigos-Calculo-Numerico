clear
clc
a = 0;
b = 1;
n = 1000;
y0 = [0;1;0];

f = @(x,y) [1; 2*y(1,:)+exp(x); cos(x)];

[x,y] = eulerSistemas(y0,a,b,f,n);

figure
y1 = y(1,:);
plot(x,y1,'ob')
title("aprox. de y1","FontSize",20)

figure
y2 = y(3,:);
plot(x,y2,'ob')
title("aprox. de y2","FontSize",20)

figure
y3 = y(3,:);
plot(x,y3,'ob')
title("aprox. de y3","FontSize",20)