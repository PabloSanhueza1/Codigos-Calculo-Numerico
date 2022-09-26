clear
clc

%funcion a integrar
f = @(x) sin(x);

%limites
a = -1;
b = 1;

%integral exacta
I = 2 + cos(6/5) - cos(4/5);

% Simpson
fprintf("Regla de Simpson:\n");

s = simpson(a,b,f,2*2);
error = abs(I-s);
fprintf("Error: %f\n",error);

s = simpson(a,b,f,3*2);
error = abs(I-s);
fprintf("Error: %f\n",error);

s = simpson(a,b,f,4*2);
error = abs(I-s);
fprintf("Error: %f\n",error);