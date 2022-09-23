clear
clc

f = @spline_jardin;

dif=1;
sub = 100;
while dif < 10^-4
    I1 = pmedio(0,10,f,sub);
    I2 = pmedio(0,10,f,2*sub);
    dif = abs(I1-I2);
    sub = 2 * sub;
end
I2 = pmedio(0,10,f,sub);
fprintf("El area es: %f\n",I2);

dif=0;
i=1;
while dif <= I2
    dif = abs((I2*i*0.01)-(I2*0.025));
    i = i+1;
end

fprintf("necesita: %d sacos\n",i);