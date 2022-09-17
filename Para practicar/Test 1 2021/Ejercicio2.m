clear
clc

%item a
p1f1 = @(x) x^2+2*x+1;
p1f2 = @(x) x+1;
p1f3 = @(x) x;

n = 1000;

xx = linspace(-10,10,n);
y1 = zeros(1,n);
y2 = zeros(1,n);
y3 = zeros(1,n);

for i = 1:n
    y1(i) = p1f1(xx(i));
    y2(i) = p1f2(xx(i));
    y3(i) = p1f3(xx(i));
end

plot(xx,y1,'k',xx,y2,'b',xx,y3,'m')
legend("p1(1)","p1(2)","p1(3)")
axis equal
grid on

%item b
aux = 0;
x = [-2 -1 0 1 2];
y = [-38 -7 0 1 14];
for i = -100:.1:100
    a = i;
    b = -a;
    p2f = @(x) a*x^3+b*x^2+x;
    if p2f(-2) == -38 && p2f(-1) == -7 && p2f(0) == 0 && p2f(1) == 1 && p2f(2) == 14
        aux = aux + 1;
    end
    if aux == 1
        fprintf("Si existe polinomio interpolante, este es:\n")
        p = polyfit(x,y,4);
        fprintf("%f*x^4 + %f*x^3 + %f*x^2 + %f*x + %f\n",p(1),p(2),p(3),p(4),p(5))
        fprintf("Esto, con a = %f, y b = %f",a,b)
        break
    end
end

if aux ~= 1
    fprintf("No existe polinomio interpolante\n")
end