clear
clc

n=input("ingrese n: ")

b=ones(1,n);
b=b';

for i=1:n
    b(i,1)=n-i+1;
end

B=ones(n);
B=n*B

for i=1:n
    B(i,i)=n*n+1;
end

C=n^2+1*eye(n)
