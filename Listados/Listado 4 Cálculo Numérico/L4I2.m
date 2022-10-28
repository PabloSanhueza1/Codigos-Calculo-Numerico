clear
clc

n = 1000;
h0 = 0;
a = 0;
b = 100;
f = @(t,h) 0.0308-0.002*(52.1*h+(10.3/(10.3+h)))+1.17*(1+sin(3*t));

[x,y] = eulerExplicito(h0,a,b,f,n);

plot(x,y,'-r')

[c,t] = xcorr(y);