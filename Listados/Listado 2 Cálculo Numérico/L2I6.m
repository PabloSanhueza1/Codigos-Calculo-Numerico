clear
clc

z = zeros(1,7);
t = zeros(1,7);

for i=2:7
    z(i)=z(i-1)+500;
end

t(1) = 288.16;
t(2) = 284.91;
t(3) = 281.66;
t(4) = 278.41;
t(5) = 275.16;
t(6) = 271.91;
t(7) = 268.66;

s = spline(z,t);

xx = linspace(z(1),z(end),1000);
yy = ppval(s,xx);

plot(xx,yy,'-k',z,t,'or')
title("Grafica altitud v/s temperatura","FontSize",14)
xlabel("altitud")
ylabel("temperatura")
legend("Spline","Puntos")

fprintf("Valor estimado de temp. de la atmosfera a una altitud de 800(m): %d\n", ppval(s,800))