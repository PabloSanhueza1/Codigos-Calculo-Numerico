clear
clc

n = 12;
h = 2*pi/n;
x = zeros(1,n+1);
f = @(x) sin(x) + sin(5*x);

%item a
for i = 0:n
    x(i+1) = i * h;
end

%item b
y = zeros(1,n+1);

for i = 1:n
    y(i) = f(x(i));
end

p = polyfit(x,y,n);

%item c
s = spline(x,y);

%item d
xx = linspace(0,2*pi,200);

yy = zeros(1,length(xx));

for i = 1 : length(xx)
    yy(i) = f(xx(i));
end

pp = polyval(p,xx);
ss = ppval(s,xx);

plot(x,y,'or',xx,yy,'b',xx,pp,'g',xx,ss,'m')
legend("puntos","funcion","pol. interpol.","spline")

%item e
error = abs(f(6) - polyval(p,6));
fprintf("Error con pol: %f\n",error)

error = abs(f(6) - ppval(s,6));
fprintf("Error con spline: %f\n",error)

fprintf("\nMejor aproximacion: spline\n")






