clear
clc

n = 2;

%- item 1 -%
a = 0;
b = 1;

y0 = [0; 0];

f = @(x,z) [z(2,:);2+4*x-x^2+z(1,:)-2*z(2,:)];

[x,y] = eulerSistemasExplicito(y0,a,b,f,n);