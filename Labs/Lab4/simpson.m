function I = simpson(a, b, f, n)

x = linspace(a, b, n + 1);
S = zeros(1, n);

for i=1:n
    a = x(i);
    b = x(i+1);
    S(i) = f(a) + 4*f((a+b)/2) + f(b);
    S(i) = S(i) * (b-a)/6;
end

I = sum(S);

end

