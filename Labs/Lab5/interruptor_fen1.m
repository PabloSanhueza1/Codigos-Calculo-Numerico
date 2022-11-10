clear
clc

%umbral entre 0.1 - 0.4
s = [0.1 0.2 0.3 0.4];
colores = ["b","r","k","g"];
g0 = 0;

for i = 1: length(s)
    g1 = @(t,g) s(i)-1.51*g+3.03*(g^2/(1+g^2));
    [t,y] = ode45(g1,[0 100],g0);
    y(end);
    figure(1);
    plot(t,y,colores{i})
    hold on
end
legend("0.1","0.2","0.3","0.4")

%umbral entre 0.201 - 0.204
s = [0.201 0.202 0.203 0.204];
colores = ["b","r","k","g"];
g0 = 0;

for i = 1: length(s)
    g1 = @(t,g) s(i)-1.51*g+3.03*(g^2/(1+g^2));
    [t,y] = ode45(g1,[0 100],g0);
    y(end);
    figure(2);
    plot(t,y,colores{i})
    hold on
end
legend("0.201","0.202","0.203","0.204")