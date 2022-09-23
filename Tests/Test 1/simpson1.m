function S = simpson1(a,b,N)

f = @(x) 1/sqrt(x);

x = linspace(a, b, N + 1);
I = zeros(1, N);

for i=1:N
    a = x(i);
    b = x(i + 1);
    I(i) = f(a) + 4 * f((a + b) / 2) + f(b);
    I(i) = I(i) * (b - a) / 6;
end

S = sum(I);

end