clear
clc

dif = 1;
n = 1;
cota = 1*10^-9;

while dif > 1*10^-12
    n = n + 1;
    I1 = simpson2(1/n,1,cota);
    fprintf("Cargando, vamos en n = %d\n",n);
    I2 = simpson2(1/(n-1),1,cota);
    dif = abs(I1 - I2);
    
end

clc
fprintf("\nListo! :D\n");

I1 = simpson2(1/n,1,cota);

fprintf("Con un n: %d\n",n);
fprintf("Se tiene un f_%d tal que\n",n);
fprintf("f_%d: %f\n\n",n,I1);

fprintf("La integral del item 4 no converge,\n");
fprintf("pero f_%d es la integral (que SI existe)\n",n);
fprintf("mas cercana a la dicha integral que no converge.\n")
fprintf("Esto pues n se hace cada vez mas 'grande',\n")
fprintf("por lo que a tiende a 0\n")