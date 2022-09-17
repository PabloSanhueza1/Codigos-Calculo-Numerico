clear
clc

a = 0;
b = 1;

x = zeros(1,11);

x(1) = 0;
for i=2:11
    x(i) = x(i-1)+.1;
end

y = [0.667 0.671 0.689 0.711 0.742 0.790 0.841 0.910 0.975 1.052 1.130];
%item a
p = polyfit(x,y,10);

f = @(x) 0;
for i=0:10
    f = @(x) f(x)+p(i+1)*x^(10-i);
end

%sea g la funcion a integrar
g = @(x) 2*x*f(x);

%trapecios
ItS = (b-a)/2*(g(a)+g(b));
fprintf("mediante trapecios simple: %f\n",ItS);

%simpson
IsS = (b-a)/6*(g(a) + 4*g((a+b)/2) + g(b));
fprintf("mediante simpson simple: %f\n",IsS);

%punto medio
IpmS = (b-a)*g((a+b)/2);
fprintf("mediante p. medio simple: %f\n",IpmS);

fprintf("\n");
%item b
n = 10;

%trapecios
It = trap(a,b,g,n);
fprintf("mediante trapecios compuesta: %f\n",It);

%simpson
Is = simpson(a,b,g,n);
fprintf("mediante simpson compuesta: %f\n",Is);

%punto medio
Ipm = pmedio(a,b,g,n);
fprintf("mediante p. medio compuesta: %f\n",Ipm);

fprintf("\n");
%item c
dif = abs(It - ItS);
fprintf("Diferencia en regla de trapecio:\n")
fprintf("   |Trap. compuesta - Trap. Simple| = diferencia\n")
fprintf("=> |%f - %f| = %f\n",It,ItS,dif)
