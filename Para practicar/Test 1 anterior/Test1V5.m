clear
clc

dif = 1*10^-13;
n = 1;
cota = simpson2(0,1,1*10^-12);

while dif <= 1*10^-12
    n = n + 1;
    if simpson1(1/2,1,n) < cota
        I1 = simpson1(1/2,1,n);
        if simpson1(1/2,1,n-1) < cota
            I2 = simpson1(1/2,1,n-1);
            dif = abs(I1 - I2);
        end
    end
end