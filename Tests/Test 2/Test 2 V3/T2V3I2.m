clear
clc

%- item 2.1 -%
fprintf("s = 0.3\n")
s = 0.3;
aux = ones(3,3)*s;
aux = aux - diag(diag(aux));
A = aux + diag(diag(ones(3,3)));

b = [1;1;1];

x0 = zeros(3,1);

lambda = [0 1/3 1/2 2/3 1];

for i=1 : length(lambda)
    x = iterativoV2(A,b,lambda(i),x0)
end

%- item 2.2 -%
fprintf("s = 0.8\n")
s = 0.8;
aux = ones(3,3)*s;
aux = aux - diag(diag(aux));
A = aux + diag(diag(ones(3,3)));

b = [1;1;1];

x0 = zeros(3,1);

lambda = [0 1/3 1/2 2/3 1];

for i=1 : length(lambda)
    x = iterativoV2(A,b,lambda(i),x0)
end
