clear
clc

%item 1

f = @(x) x^2;

a = 0;
b = 4;
c = 8;

m = 10;
n = 2;

I1 = pmedio(a,b,f,m);
I2 = pmedio(b,c,f,n);
I = I1 + I2;

fprintf("con f(x) = x^2\n");
fprintf("a = %d\n",a);
fprintf("b = %d\n",b);
fprintf("c = %d\n",c);
fprintf("m = %d\n",m);
fprintf("n = %d\n",n);
fprintf("Integral: %f\n", I);
fprintf("\n");

xx = linspace(a,c,100);
yy = zeros(1,100);

for i=1:100
    yy(i) = f(xx(i));
end

figure (1)
plot(xx,yy);
grid on

%item 2
f = @(x) 1 + sin(exp(3*(x-1)));

a = -1.5;
b = 0;
c = 1.5;

xx = linspace(a,c,100);
yy = zeros(1,100);

for i=1:100
    yy(i) = f(xx(i));
end

x = [-1.5 0 1.5];
y = [f(x(1)) f(x(2)) f(x(3))];
figure (2)
plot(xx,yy,x,y,'|');
grid on

%item 2.a
m = 6;
n = 6;

I1 = pmedio(a,b,f,m);
I2 = pmedio(b,c,f,n);
Ia = I1 + I2;

fprintf("con f(x) = 1 + sin(exp(3*(x-1)))\n");
fprintf("a = %d\n",a);
fprintf("b = %d\n",b);
fprintf("c = %d\n",c);
fprintf("m = %d\n",m);
fprintf("n = %d\n",n);
fprintf("Integral: %f\n", Ia);
fprintf("\n");

%item 2.b
m = 2;
n = 10;

I1 = pmedio(a,b,f,m);
I2 = pmedio(b,c,f,n);
Ib = I1 + I2;

fprintf("con f(x) = 1 + sin(exp(3*(x-1)))\n");
fprintf("a = %d\n",a);
fprintf("b = %d\n",b);
fprintf("c = %d\n",c);
fprintf("m = %d\n",m);
fprintf("n = %d\n",n);
fprintf("Integral: %f\n", Ib);
fprintf("\n");

%item 2.c
%integral exacta
I = 3.55252;

if abs(I-Ia) > abs(I-Ib)
    fprintf("Integral de item b es mejor.\n")
elseif abs(I-Ib) > abs(I-Ia)
    fprintf("Integral de item a es mejor.\n")
end

fprintf("Esto, porque en x = 1.5 la funcion se 'dispara',\n")
fprintf("por lo que a partir de ese punto (hacia adelante)\n")
fprintf("se tiene una mejor aproximacion al tener una mayor\n")
fprintf("cantidad de subtintervalos. Antes de x = 1.5 no se\n")
fprintf("necesitan tantos subtintervalos\n")