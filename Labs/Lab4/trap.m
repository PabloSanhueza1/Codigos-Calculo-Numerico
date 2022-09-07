function T = trap(a,b,f,n)

x = linspace(a,b,n+1);
aux = zeros(1,n);

for i=1:n
    aux(i) = (f(x(i)) + f(x(i+1)))*(x(i+1)-x(i))/2;
end

T = sum(aux);

end