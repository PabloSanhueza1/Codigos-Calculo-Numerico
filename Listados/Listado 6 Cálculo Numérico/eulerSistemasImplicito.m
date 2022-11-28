function [x,y] = eulerSistemasImplicito(y0,a,b,f,n)


%y0 debe ser columna
h = (b-a)/n;
y = [];
x = [];

x(1) = a;
y(:,1) = y0;

for i = 1 : n
  x(i+1) = x(i) + h;
  g = @(alfa) alfa - y(:,i) - h*f(x(i+1),alfa); 
  alfa0 = y(:,i);
  alfa = fsolve(g,alfa0);
  y(:,i+1) = alfa;
end  