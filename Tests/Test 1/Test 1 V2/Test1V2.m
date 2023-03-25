clear
clc

z = linspace(0,2,200);

y = zeros(1,200);
for i=1:200
    f = @(x) cos(x+z(i));
    y(i) = pmedio(0,1,f,100);
end

plot(z,y);