function x = triangular(A,b)
%A es matriz triangular inferior

n = size(A,1);
for i=1: n
    S = 0;
    for j = 1: i-1
        S = S+A(i,j)*x(j); 
    end
    x(i) = (b(i)-S)/A(i,i);
end
end