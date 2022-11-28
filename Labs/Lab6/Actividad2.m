clear
clc

f = @(t,y) -200*y+200*sin(t)+cos(t);
a = 0;
b = 1;
y0 = 1;

n = 80;
[x_imp1, y_imp1] = eulerImplicito(y0,a,b,f,n);
[x_exp1, y_exp1] = eulerExplicito(y0,a,b,f,n);

n = 160;
[x_imp2, y_imp2] = eulerImplicito(y0,a,b,f,n);
[x_exp2, y_exp2] = eulerExplicito(y0,a,b,f,n);

n = 320;
[x_imp3, y_imp3] = eulerImplicito(y0,a,b,f,n);
[x_exp3, y_exp3] = eulerExplicito(y0,a,b,f,n);

figure(1)
plot(x_imp1, y_imp1,"r", x_imp2, y_imp2,"b", x_imp3, y_imp3,"g")
title("Aprox. Euler Implicito")
legend("n = 80", "n = 160", "n = 320")

figure(2)
plot(x_exp1, y_exp1,"r", x_exp2, y_exp2,"b", x_exp3, y_exp3,"g")
title("Aprox. Euler explicito")
legend("n = 80", "n = 160", "n = 320")