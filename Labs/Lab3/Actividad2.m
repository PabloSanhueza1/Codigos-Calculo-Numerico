clear
clc

f1 = @(x) x^2;
f2 = @(x) exp(-x^2);
f3 = @(x) cos(exp(x^2));

i1 = integralf(0,3,100,f1);
i2 = integralf(0,3,100,f2);
i3 = integralf(0,3,100,f3);

fprintf("%f\n", i1)
fprintf("%f\n", i2)
fprintf("%f\n", i3)