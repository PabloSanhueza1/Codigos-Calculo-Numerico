%item a
format long
clear
clc

%item b
L = 1;
g = 9.8;
ang = 12*pi/180;
k = @(x) sin(x);
k1 = k(ang);

aux = 4*sqrt(L/g);
T = @(x) aux*1/(sqrt(1-k1^2*sin(x)^2));

a = 0;
b = pi/2;

%punto medio
IpmS = (b-a)*T((a+b)/2);
fprintf("mediante p. medio: %f\n",IpmS);

%trapecios
ItS = (b-a)/2*(T(a)+T(b));
fprintf("mediante trapecios: %f\n",ItS);

%simpson
IsS = (b-a)/6*(T(a) + 4*T((a+b)/2) + T(b));
fprintf("mediante simpson: %f\n",IsS);

%item c
%integral exacta
I = 2.0293239593641227639527157928818977067828843574838368704676819836;

%punto medio
for i=2:100
    Ipm = pmedio(a,b,T,i);
    if abs(I-Ipm) < 10^-12
        fprintf("\nValor: %f\n",Ipm);
        fprintf("Diferencia con respecto a simple: %f\n",abs(Ipm-IpmS));
        break
    end
end

%trapecios
for i=2:100
    It = trap(a,b,T,i);
    if abs(I-It) < 10^-12
        fprintf("\nValor: %f\n",It);
        fprintf("Diferencia con respecto a simple: %f\n",abs(It-ItS));
        break
    end
end

%simpson
for i=2:100
    Is = simpson(a,b,T,i);
    if abs(I-Is) < 10^-12
        fprintf("\nValor: %f\n",Is);
        fprintf("Diferencia con respecto a simple: %f\n",abs(Is-IsS));
        break
    end
end