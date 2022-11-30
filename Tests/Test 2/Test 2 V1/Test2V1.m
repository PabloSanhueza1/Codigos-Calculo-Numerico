clear
clc

%- item a -%
f = @(t,z) [z(2,:);(2+z(1,:))/(1+z(1,:))*(z(2,:))^2];
y0 = [0;-1];

%- item b -%
a = 0;
b = 10;
[odex,odey] = ode45(f,[a,b],y0);

%- item c -%
error = 1;
n = 10;

while error>10^-2
    [xexplicito,yexplicito] = eulerSistemasExplicito(y0,a,b,f,n);
    error = abs(yexplicito(10)-odey(10));
    n = n*10;
end

fprintf("el primer error<10^-2 se obtiene con n = %d\n",n)

%- item d -%
plot(xexplicito,yexplicito(1,:))