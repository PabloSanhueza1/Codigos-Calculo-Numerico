function I = pmedio(a, b, f, n)

x = linspace(a, b, n + 1);
M = zeros(1, n);

for i=1:n
    a = x(i);
    b = x(i + 1);
    base = b - a;
    altura = f((a + b) / 2);
    M(i) = base * altura;
end

I = sum(M);

end