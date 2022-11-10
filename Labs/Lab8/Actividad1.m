clear
clc


n = input("Ingrese n\n");

%item a
A = zeros(n,n);
b = zeros(n);

%item b
for i=1:length(A)
    A(i,i) = 2;
    if i ~= 1
        A(i,i-1) = -1;
    end
    if i ~= n
        A(i,i+1) = -1;
    end
end

for i=1:length(b)
    b(i) = 2*i;
end

%item c
[L,U] = lu(A);

%item e
x = sustitucion(L,U,b)