function I = integralpol1(a,b,c1,c2)

pol = @(x) c1 + c2 * x;

xx = linspace(a,b,1000);
yy = zeros(1,xx.length);

integral = 0;

for i=1:xx.length
    yy(i) = pol(xx(1));
    integral = integral + abs(y(i));
end
I = integral;
end