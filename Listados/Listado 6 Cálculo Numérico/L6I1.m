clear
clc

%- item a -%
error = 1;
n = 11125;
while error>10^-4
    n = n + 1;
    a = 0;
    b = 1;

    y0 = [0; 0];

    f = @(x,z) [z(2,:);2+4*x-x^2+z(1,:)-2*z(2,:)];

    [x,y] = eulerSistemasExplicito(y0,a,b,f,n);

    f_original = @(x) x^2;
    xx = linspace(a,b,n+1);
    yy = xx.^2;

    error = max(abs(yy-y(1,:)));

end

fprintf("(explicito) n = %d\n",n)

error = 1;
n = 0;
while error>10^-4
    n = n + 1;
    a = 0;
    b = 1;

    y0 = [0; 0];

    f = @(x,z) [z(2,:);2+4*x-x^2+z(1,:)-2*z(2,:)];

    [x,y2] = eulerSistemasImplicito(y0,a,b,f,n);

    f_original = @(x) x^2;
    xx = linspace(a,b,n+1);
    yy = xx.^2;

    error = max(abs(yy-y2(1,:)));

end

fprintf("(implicito) n = %d\n",n)


%- item b -%
error = 1;
n = 0;
while error>10^-4
    n = n + 1;
    a = 0;
    b = 1;

    y0 = [1; 2; 4];

    f = @(t,z) [z(2,:);z(3,:);t*exp(2*t)+2*z(2,:)-t*z(1,:)];

    [x,y] = eulerSistemasExplicito(y0,a,b,f,n);

    f_original = @(x) x^2;
    xx = linspace(a,b,n+1);
    yy = exp(2*xx);

    error = max(abs(yy-y(1,:)));
end

fprintf("n = %d",n)