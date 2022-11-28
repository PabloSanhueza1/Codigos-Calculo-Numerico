%Problema1, Laboratorio 9
clc, clear all
n = 3;
%a)
b = zeros(2*n,1);
%b)
v1 = 4*ones(2*n,1) ;
v2 = -1*ones((2*n)-1,1);
A = diag(v1)+diag(v2,1)+diag(v2,-1);

%c)
for i = 1:2*n 
   b(i) = (i)^2;
end

%d)
Z = zeros(n,n);
I = eye(n,n);
T = [Z I;I Z ]
C = T*A
q = T*b 


%e) 
[L,U,P] = lu(C);

%solucion  Cz = q
%     <=> TAz = Tb
%     <=>  Az = b
%     <=>  Ax = b

%Ademas:

% P^-1LU = C
% P^-1LUz = q
% LUz = Pq
 z = sustitucion(L,U,P*q);
[La, Ua, Pa] = lu(A);
x = sustitucion(La,Ua,b);
