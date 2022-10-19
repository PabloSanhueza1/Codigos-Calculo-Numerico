clear
clc

sub = [4 10 20 100];
col = ["r", "g" , "m", "c"];
f = @(x,y) 100*(1-y);
y0 = 0;
a = 0;
b = 1;

%por euler explicito
for i = 1: length(sub)

    n = sub(i);
    [x,y] = eulerExplicito(y0,a,b,f,n);
    
    xx = linspace(a,b,n+1);
    yy = 1-exp(-100.*xx);
    
    figure(1)
    title("Exacta vs Euler Explicito")
    plot(x,y,"o"+col(i),xx,yy,"-"+col(i))
    hold on
end
figure(1)
legend("n = 4","sol. exacta","n = 10","sol. exacta","n = 20","sol. exacta","n = 100","sol. exacta","Location","Best")

%por euler implicito
for i = 1: length(sub)

    n = sub(i);
    [x,y] = eulerImplicito(y0,a,b,f,n);
    
    xx = linspace(a,b,n+1);
    yy = 1-exp(-100.*xx);
    
    figure(2)
    title("Exacta vs Euler Implicito")
    plot(x,y,"o"+col(i),xx,yy,"-"+col(i))
    hold on
end
figure(2)
legend("n = 4","sol. exacta","n = 10","sol. exacta","n = 20","sol. exacta","n = 100","sol. exacta","Location","Best")

%conclusiones
fprintf("Dado que ∂f/∂y = -100 < 0\n")
fprintf("Y, ademas, |∂f/∂y| = 100 es 'muy grande',\nse tiene que:\n\n")
fprintf("El PVI es Stiff\n\n")
fprintf("Por lo que para Euler explicito, el sistema\nes estable para un h suficientemente 'chico'.\n")
fprintf("Mientras, que para Euler implicito, el sistema\nes estable para cualquer h")