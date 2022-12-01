function x= iterativo(A,b,lambda,x0)

% note que x_i = N^-1(Px_(i-1) + b)

%- D es la diagonal principal de A -%
D = diag(diag(A));

% ademas:
%        A = D - E - F
% => A - D = - E - F
% => A - D = - (E + F)
% => E + F = D - A

EF = D - A;
P = (1-lambda)*EF;

%    A = N - P
% => N = A + P

N = A + P;

% se tiene:
%          Ax = b
% => (N - P)x = b
% =>       Nx = Px + b
% =>        x = N^-1(Px + b)

% 10 es un numero adecuado de iteraciones
iteraciones = 10;
aux = zeros(length(A),iteraciones);
aux(:,1) = x0;

for i=2 : iteraciones
    aux(:,i) = inv(N)*(P*aux(:,i-1)+b);
end

% finalmente, x son los ultimos valores que toma aux
% pues, luego de tantas iteraciones, su valor converge
x = aux(:,iteraciones);
end

