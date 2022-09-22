clear
clc

dif = 1*10^-13;
n = 2;
cota = 1*10^-9;

while dif < 1*10^-12
    n = n + 1;
    I1 = simpson2(1/n,1,cota);
    I2 = simpson2(1/(n-1),1,cota);
    dif = abs(I1 - I2);
end

fprintf("Con un n: %d\n",n);
fprintf("Se tiene un f_%d tal que\n",n);
fprintf("f_%d: %f\n\n",n,I1);

fprintf("La integral del item 4 no converge,\n");
fprintf("pero f_%d es la integral (que SI existe)\n",n);
fprintf("mas cercana a la dicha integral que no converge.\n")
fprintf("Esto pues n se hace cada vez mas 'grande\n'")