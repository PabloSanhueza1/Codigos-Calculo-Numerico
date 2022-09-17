clear
clc

v = [0.5 0.6 0.72 0.84 0.96 1.08 1.25];
p = [1400 1248 1100 945 802 653 500];

% coef. de pol. de interpolacion
pol = polyfit(v,p,6);

% pol. de interpolacion en funcion de x
f = @(x) 0;
for i=0:6
    f = @(x) f(x) + x^(6-i) * pol(i+1);
end

% ejercicio a
trapSimple = (1.25-0.5)/2*(1400+500);
fprintf("Trabajo total (T. simple): %f\n", trapSimple)

% ejercicio b
trapComp = trap(0.5,1.25,f,1000);
fprintf("Trabajo total (T. compuesta): %f\n", trapComp)

% ejercicio c
dif = trapSimple - trapComp;
fprintf("Diferencia anterior: %f\n", dif)

% coefs. de pols. de interpolacion
s = spline(v,p);
h = 0.05; % obtenido del enunciado e)
I = 0;

% debido al problema indicado en linea 44
% solamente se itera una vez
for i=1:6
    q = @(x) 0;
    for j=0:3
        q = @(x) q(x) + x^(3-j) * s.coefs(i,j+1);
    end
    q(0.5) % ¿Porque no es 1400?

    a = v(i);
    b = v(i + 1);
    n = (b - a) / h; % n no siempre es entero
    I = I + trap(a,b,q,n);
    
end

% ejercicio e
fprintf("Integral de spline: %f\n", I)
