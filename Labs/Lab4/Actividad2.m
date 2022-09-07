format long
clear
clc

g = 9.8;
L = 1;
k = @(x) sin(x);

gr = 12;
aux = k(gr*pi/180);

f = @(x) (sqrt(1-aux^2*(sin(x))^2))^-1;

for n=2:10
    T = trap(0,pi/2,f,n);
    T = 4*sqrt(L/g)*T;
    fprintf("con N = %d, T = %f\n",n,T);
end