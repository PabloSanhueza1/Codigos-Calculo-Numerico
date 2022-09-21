function T = trap(a,b,f,n)

x = linspace(a,b,n+1);
aux = zeros(1,n);

for i=1:n
    a = x(i);
    b = x(i + 1);
    aux(i) = (f(a) + f(b))*(b-a)/2;
end

T = sum(aux);

end