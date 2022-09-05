clear
clc

% datos
temp = [300 400 500 600 700 800 900 1000 1100];
emi = [0.024 0.035 0.046 0.058 0.067 0.083 0.097 0.111 0.125];

% polinomio de interpolacion
p = polyfit(temp,emi,8);

% evaluacion
fprintf("Evaluacion:\n");
p1 = polyval(p,350); fprintf("p(350) = %f\n", p1);
p2 = polyval(p,550); fprintf("p(550) = %f\n", p2);
p3 = polyval(p,850); fprintf("p(550) = %f\n", p3);

% grafica
xx = linspace(temp(1),temp(end),1000);
yy = polyval(p,xx);

plot(xx,yy,"-k",temp,emi,"o")
legend("Polinomio de interpolacion","Puntos")
title("Temperatura v/s Emitancia termica Tungsteno")
xlabel("Temperatura")
ylabel("Emitancia termica")

hold on

% spline
s = spline(temp,emi);

% evaluacion spline
fprintf("\nEvaluacion usando splines:\n");
s1 = ppval(s,350); fprintf("s(350) = %f\n", s1);
s2 = ppval(s,550); fprintf("s(550) = %f\n", s2);
s3 = ppval(s,850); fprintf("s(550) = %f\n", s3);

% comparacion
fprintf("\nComparacion:\n");
c1 = abs(p1-s1); fprintf("|p(350) − s(350)| = %f\n",c1);
c2 = abs(p2-s2); fprintf("|p(550) − s(550)| = %f\n",c2);
c3 = abs(p3-s3); fprintf("|p(850) − s(850)| = %f\n",c3);

fprintf("TEST: \n|p(1000) - s(1000) = %f\n", abs(polyval(p,1000) - ppval(s,1000)));