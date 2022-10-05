function [x,y] = euler2(y0,a,b,f,n)

h = (b-a)/n;

x = zeros(1,n+1);
x(1) = a;

for i = 1:length(x)
    x(i) = a + (i-1)*h;
end

y = zeros(1,n+1);

x(1) = a;
y(1) = y0;

for i = 1: n
    y(i+1) = y(i) + h * f(x(i),y(i));
end

end