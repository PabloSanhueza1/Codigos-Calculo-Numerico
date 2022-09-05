clear
clc

conc = [0 20 40 60 80 100];
vis = [0.89 1.4 2.51 5.37 17.4 24.2];

s = spline(conc,vis);

xx = linspace(conc(1),conc(end),100);
yy = ppval(s,xx);

plot(xx,yy,'-k',conc,vis,'or')

fprintf("Viscosidad con concentracion 5 porciento: %d\n",ppval(s,5))
fprintf("Viscosidad con concentracion 63 porciento: %d\n",ppval(s,63))