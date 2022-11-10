function [t1,t2,t3,normadiferencia1,normadiferencia2] = variossistemas()

A = rand(50,50);
B = rand(50,100);
tic
X = A\B;
t1 = toc;
Y = zeros(50,100);
tic
for i=1:100
    Y(:,i)=A\B(:,i);
end
t2 = toc;
W = zeros(50,100);
tic
[L,U,P] = lu(A);
for i=1:100
    y = L\(P*B(:,i));
    W(:,i)=U\y;
end
t3 = toc;
normadiferencia1 = norm(X-Y,inf);
normadiferencia2 = norm(X-W,inf);