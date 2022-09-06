clear
clc

% calculo de integrales
int1 = integralpol2(0,3,0,0,1);
int2 = integralpol2(-1,1,0,3,-1);

fprintf("Resultados:\n%f\n%f\n",int1,int2)