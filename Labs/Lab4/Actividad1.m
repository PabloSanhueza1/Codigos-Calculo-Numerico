clear
clc

% integral 1
f=@(x) x^2;

t = trap(0,3,f,10);
fprintf("integral 1 con N = 10: %f\n",t)
t = trap(0,3,f,20);
fprintf("integral 1 con N = 20: %f\n",t)
t = trap(0,3,f,40);
fprintf("integral 1 con N = 40: %f\n",t)
t = trap(0,3,f,80);
fprintf("integral 1 con N = 80: %f\n\n\n",t)

% integral 2
f=@(x) exp(-x^2);

t = trap(-1,1,f,10);
fprintf("integral 2 con N = 10: %f\n",t)
t = trap(-1,1,f,20);
fprintf("integral 2 con N = 20: %f\n",t)
t = trap(-1,1,f,40);
fprintf("integral 2 con N = 40: %f\n",t)
t = trap(-1,1,f,80);
fprintf("integral 2 con N = 80: %f\n",t)


