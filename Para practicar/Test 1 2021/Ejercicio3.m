clear
clc

f = @(x) 1/(x^2+1);

%item a
n = 1000;

xi = zeros(1,21);
yi = zeros(1,21);
yy = zeros(1,n);

for i = 1:21
    xi(i) = -5 + 0.5*(i-1);
    yi(i) = f(xi(i));
end

xx = linspace(xi(1),xi(end),n);
p = polyfit(xi,yi,20);
py = polyval(p,xx);
for i = 1:n
    yy(i) = f(xx(i));
end
figure(1)
plot(xi,yi,'or',xx,yy,'k',xx,py,'m')
axis equal
legend("puntos","funcion","pol.")

%item b
zi = zeros(1,21);

for i = 1:21
    zi(i) = 5*cos(((2*i-1)*pi)/42);
    yi(i) = f(zi(i));
end

xx = linspace(zi(1),zi(end),n);
p = polyfit(zi,yi,20);
py = polyval(p,xx);

figure(2)
plot(zi,yi,'or',xx,yy,'k',xx,py,'m')
axis equal
legend("puntos","funcion","pol.")

%item c
fprintf("Se puede apreciar el fenomeno de:\n")
fprintf("\n             RUNGE\n")
fprintf("Esto es porque se tiene un valor 'grande' de puntos,\n")
fprintf("en este caso tenemos 21 puntos, provocando asi una\n")
fprintf("distorsion en los  extremos del polinomio interpolante\n")
fprintf("con respecto a los puntos extremos en los puntos\n")
fprintf("de interpolacion\n")