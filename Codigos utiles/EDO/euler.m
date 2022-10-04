function [x,y] = euler(y0,a,b,f,n)

h = (b-a)/2;
x = [];
y = [];

x(1) = a;
y(1) = y0;

for i = 1:n
    x(i+1) = x(i) + h;
    y(i+1) = y(i) + h * f(x(i),y(i));
end
end