function S = spline_jardin(w)

x = zeros(1,21);
for i=2:21
    x(i) = x(i-1)+.5;
end

y = [2.5 2.8 3 3.3 3.8 4.8 4.8 5 4.8 4.7 4.7 4.5 4.5 4.4 4.3 4.4 4.2 4 4.1 4.3 3.5];

s = spline(x,y);
S = ppval(s,w);
end