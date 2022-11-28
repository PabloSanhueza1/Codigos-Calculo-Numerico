clear
clc

aux1 = [1 0 1 4;0 2 0 1;0 0 3 0;0 0 0 4];
aux2 = [8 16 1 0;4 8 16 1;1 4 8 16;0 1 4 8];
aux3 = [5 0 0 0;0 6 0 0;1 0 7 0;16 1 0 8];

A = [aux1 aux2;aux2 aux3]


[L,U,P] = lu(A);
U(6,6)
P == eye(8)

norma = norm(P-eye(8),inf)