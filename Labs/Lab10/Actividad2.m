clear
clc

r = [1 2 5 15 25 30 35 40];
p = [99 95 85 55 30 24 20 15];

plot(r,p,"--or")

A=[r',ones(size(r))'];
b=log(p);
b=b';

norm(A*x-b,2)

x=(A'*A)\(A'*b);


%-ignorar-%
alpha = exp(x(1));
beta = exp(x(2));