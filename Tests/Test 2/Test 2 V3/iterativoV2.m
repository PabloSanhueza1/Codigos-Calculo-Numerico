function x= iterativoV2(A,b,lambda,x0)

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
iteraciones = 1000;
aux = zeros(length(A),iteraciones);
aux(:,1) = x0;

tolerancia = 10^-6;

for i=2 : iteraciones
    aux(:,i) = inv(N)*(P*aux(:,i-1)+b);
    if i>2
        mk = norm(aux(:,i)-aux(:,i-1))/norm(aux(:,i-1)-aux(:,i-2));
        criterio = mk/(1-mk)*norm(aux(:,i)-aux(:,i-1));
        if criterio<tolerancia
            x = aux(:,i);
            fprintf("iteraciones: %d\n",i)
            residuo = norm(b-A*x,2);
            fprintf("residuo: %f\n",residuo)
            break
        end
    end
end

