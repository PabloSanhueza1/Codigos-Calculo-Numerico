function S = simpson2(a,b,error)

m = 1;

dif = error - 1;

while dif < error
    m = m + 1;
    I1 = simpson1(a,b,m);
    I2 = simpson1(a,b,m-1);
    dif = abs(I1 - I2);
end

S = simpson1(a,b,m);

end