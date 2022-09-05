clear
clc

x = [0.9 1.3 1.9 2.1 2.6 3 3.9 4.4 4.7 5 6 7 8 9.2 10.5 11.3 11.6 12 12.6 13 13.3];
y = [1.3 1.5 1.85 2.1 2.6 2.7 2.4 2.15 2.05 2.1 2.25 2.3 2.25 1.95 1.4 0.9 0.7 0.6 0.5 0.4 0.25];

p = polyfit(x,y,20);

xx = linspace(x(1), x(end), 100);
yy = polyval(p,xx);

s = spline(x,y);
y_spline = ppval(s,xx);

plot(xx,yy,'-k',xx,y_spline,'-g',x,y,'or')
title("Patito")
legend("pol.","Spline","Puntos")
axis equal