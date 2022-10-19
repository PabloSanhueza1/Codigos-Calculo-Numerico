clear
clc

f = @(t,x) -3*t*x^2 + 1/(1+t^3);
a = 0; b = 5; x0 = 0;

[t1,x1] = euler(x0,a,b,f,10);
[t2,x2] = euler(x0,a,b,f,20);
[t3,x3] = euler(x0,a,b,f,40);
[t4,x4] = euler(x0,a,b,f,80);

plot(t1,x1,'r')
hold on
plot(t2,x2,'b')
plot(t3,x3,'k')
plot(t4,x4,'g')

j = 0:10;
x21 = x2(2*j+1);
[m1,id1] = max(abs(x1-x21))
t1(id1)

j = 0:20;
x32 = x3(2*j+1);
[m2,id2] = max(abs(x2-x32))
t2(id2)

j = 0:40;
x43 = x4(2*j+1);
[m3,id3] = max(abs(x3-x43))
t3(id3)


aux = @(t) t/(1+t^3);
xx = linspace(a,b,81);
yy = zeros(1,81);
exacta = zeros(1,81);
for i=1:81
    yy(i) = aux(xx(i));
end

for i=1:81
    exacta(i) = aux(t4(i));
end

error = max(abs(exacta - x4));