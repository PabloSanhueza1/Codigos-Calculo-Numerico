clear
clc

%funcion a integrar
f = @(x) sin(x);

%limites
a = 0;
b = 1;

%integral exacta
I = -(cos(b)-cos(a));

% punto medio
fprintf("Regla de punto medio:\n");

pm = pmedio(a,b,f,2);
error = abs(I-pm);
fprintf("Error: %f\n",error);

pm = pmedio(a,b,f,4);
error = abs(I-pm);
fprintf("Error: %f\n",error);

pm = pmedio(a,b,f,8);
error = abs(I-pm);
fprintf("Error: %f\n",error);

% trapecios
fprintf("\nRegla de los trapecios:\n");

t = trap(a,b,f,2);
error = abs(I-t);
fprintf("Error: %f\n",error);

t = trap(a,b,f,4);
error = abs(I-t);
fprintf("Error: %f\n",error);

t = trap(a,b,f,8);
error = abs(I-t);
fprintf("Error: %f\n",error);