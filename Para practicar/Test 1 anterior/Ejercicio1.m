function [z,y] = Ejercicio1(f)

z = linspace(0,2,200);
y = zeros(1,200);

for i=1:200
    y(i) = trap(0,z(i),f,100);
end
end