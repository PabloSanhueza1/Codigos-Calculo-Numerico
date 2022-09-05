clear
clc

n=input("Ingrese n: ");

% suma n-esimo elemento
suma=0;
for i=1:1:n
    suma=suma+i;
end
fprintf("suma: %d\n", suma)

% factorial de n
factorial=n;
for i=1:1:n-1
    factorial=factorial*(n-i);
end
fprintf("factorial: %d\n", factorial)