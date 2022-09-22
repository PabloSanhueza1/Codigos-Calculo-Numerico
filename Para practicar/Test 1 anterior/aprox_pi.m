clear
clc

f = @(x) 1/(1+x^2);
I = pi/4;

dif = 1;
sub = 1;
while(dif>10^-6)
    I1 = pmedio(0,1,f,sub);
    I2 = pmedio(0,1,f,2*sub);
    dif = abs(I1-I2);
    sub = 2 * sub;
end

fprintf("ultimo n: %d\n",sub-1)
dif = abs(4 * I2 - pi);
fprintf("dif: %f\n",dif)