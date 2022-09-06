function I = integralf(a, b, n, f)

% se divide [a,b] en n subintervalos iguales
x = linspace(a, b, n + 1);

integral = zeros(1, n);

for i=1:n
    p = polyfit([x(i) x(i+1)], [f(x(i)) f(x(i + 1))], 1);
    integral(i) = integralpol1(x(i), x(i + 1), p(2), p(1));
end

I = sum(integral);

end