clear
clc

%con 2 subintervalos
n = 2;
fprintf("con n = 2\n")

%ejercicio a
a1 = 0;
b1 = 1;
y1_0 = [0; 1];
f1 = @(x,y) [-y(2,:)+2*x+exp(x); y(1,:)-x^2+y(2,:)];

[x1,y1] = eulerSistemas(y1_0,a1,b1,f1,n)

%ejercicio b
a2 = 0;
b2 = 2;
y2_0 = [1; 0];
f2 = @(t,y) [(t+1)*y(1,:)-y(2,:)*exp(t); 1];

[x2,y2] = eulerSistemas(y2_0,a2,b2,f2,n)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%con 100 subintervalos
n = 100;

%ejercicio a
a1 = 0;
b1 = 1;
y1_0 = [0; 1];
f1 = @(x,y) [-y(2,:)+2*x+exp(x); y(1,:)-x^2+y(2,:)];

[x1,y1] = eulerSistemas(y1_0,a1,b1,f1,n);

xx = linspace(a1,b1,n+1);
yy1_y = xx.^2;
yy1_z = exp(xx);

figure(1)
plot(x1,y1(1,:),"or",x1,y1(2,:),"oy",xx,yy1_y,"-b",xx,yy1_z,"-g")
title("Exacta vs Euler explicito","FontSize",15)
legend("Aprox. Euler de y","Aprox. Euler de z","y(x)","z(x)","Location","Best")

%ejercicio b
a2 = 0;
b2 = 2;
y2_0 = [1; 0];
f2 = @(t,y) [(t+1)*y(1,:)-y(2,:)*exp(t); 1];

[x2,y2] = eulerSistemas(y2_0,a2,b2,f2,n);

xx = linspace(a2,b2,n+1);
yy2_y = exp(xx);
yy2_w = xx;

figure(2)
plot(x2,y2(1,:),"or",x2,y2(2,:),"oy",xx,yy2_y,"-b",xx,yy2_w,"-g")
title("Exacta vs Euler explicito","FontSize",15)
legend("Aprox. Euler de y","Aprox. Euler de w","y(x)","w(x)","Location","Best")