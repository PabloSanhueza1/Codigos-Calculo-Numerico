clear
clc

n = 100;
r = 0.4;
k = 20;
x0 = 2.44;

a = 0;
b = 100;

f = @(t,x) r*x*(1-x/k) - x^2/(1+x^2);

[t,x] = eulerExplicito(x0,a,b,f,n);

for i=1:length(x)-1
    if(abs(x(i)-x(i+1))<10^-5)
        fprintf("El valor de t deseado: %d\n\n",t(i))
        break
    end
end
figure(1)
plot(t,x,"or")
title("x_0 = 2.44")

x0 = 2.4;
[t,x] = eulerExplicito(x0,a,b,f,n);

figure(2)
plot(t,x,"or")
title("x_0 = 2.4")

fprintf("El fenomeno se debe a que existe un x tal que\n∂f/∂x > 0, por lo que el PVI es inestable\nal ser inestable se tiene que los errores\ncrecen significativamente cuando x_0 se ve alterado\n")