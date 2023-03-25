clear
clc

f = @(x,y) x-2;
a = 3;
b = 5;
y0 = 1;

n = 1000;

[x,y] = eulerExplicito(y0,a,b,f,n);

fprintf("Valores en x:\n")
for i = 1: length(x)
    fprintf("x[%d] = %f\n",i,x(i))
end

fprintf("\nValores en y:\n")
for i = 1: length(x)
    fprintf("y[%d] = %f\n",i,y(i))
end

fprintf("\nPares ordenados\n")
for i = 1: length(x)
    fprintf("(%f, %f)\n",x(i),y(i))
end

y_exacta = @(x) (1/2).*(x-2).^2.+(1/2);
t_graf = linspace(a,b,100);

figure
plot(x,y,'or',t_graf,y_exacta(t_graf),'b')
legend("Aprox. por Euler","Sol. exacta")