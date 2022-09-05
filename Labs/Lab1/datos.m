clear % limpia Workspace
clc % limpia la command Window

x=[1 2 3]; %vector fila
y=[1;2;3]; %vector columna
v=1./x;  % '.' para evaluar componente a componente
u=ones(5,1);
t=zeros(5,1);

length(u); % n´umero de componentes de x
size(u); % n´umero de filas y numero de columnas de x

x=[1 2 3 4];
y=[1;2;3;4];

x*y
y*x

norm(x) % norma 2 de x
p = 1;
norm(x,p) % norma p de x
norm(x,inf) % norma infinito de x

x = linspace(0,2*pi,100) % 100 valores entre 0 y 2*pi
y = sin(x) % evaluar la funci´on en x
plot(x,y) % graficar

hold on
plot(x,mifuncion1(x),"r")