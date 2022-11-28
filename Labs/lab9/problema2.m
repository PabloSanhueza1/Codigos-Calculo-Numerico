clear
clc

n = 3;

v1 = 4*ones(2*n,1) ;
v2 = -1*ones((2*n)-1,1);
A = diag(v1)+diag(v2,1)+diag(v2,-1); 

%item a
simetrica = issymmetric(A);

%item b
autovalores = eig(A);

%item c
%se verifica si la matriz es SDP
%por lo que se puede aplicar Cholesky
if simetrica == 1 && length(find(autovalores>0)) == 2*n
    R = chol(A);
end

%item d
spy(R)

b = zeros(2*n,1);
for i = 1:2*n
   b(i) = (i)^2;
end

x = suschol(R,b);
