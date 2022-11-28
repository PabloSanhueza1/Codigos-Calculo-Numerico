clear
clc

n = 3;

%item a
b = zeros(n,1);

%item b
A = -1*diag(ones(2*n-1,1),-1) + 4*diag(ones(2*n,1)) - 1*diag(ones(2*n-1,1),1);

%item c
for i=1:n
    b(i) = i^2;
end

%item d
Z = zeros(n,n);
I = eye(n);
T = zeros(2*n,2*n)
T(1,1) = Z;
T(1,2) = I;
T(2,1) = I;
T(2,2) = Z