clear
clc

%- item a -%
f = @(t,z) [z(2,:);exp(-t)-z(1,:).^2];
v0 = [0;-1];

%- item b -%
a = 0;
b = 3;
[odex,odey] = ode45(f,[a,b],v0);

%- item c -%
error = 1;
n = 3;

while error>10^-2
    [xexplicito,yexplicito] = eulerSistemasExplicito(v0,a,b,f,n);
    error = abs(yexplicito(3)-odey(3));
    n = n*10;
end

fprintf("el primer error<10^-2 se obtiene con n = %d\n",n)

%- item d -%
plot(xexplicito,yexplicito(1,:))