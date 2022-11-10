function x = sustitucion(L,U,b)

%L se asume triangular inferior
%U se asume triangular superior

% A*x = b
% A = L*U;
% L*U*x = b;
% U*x =y; L*y = b;

N = size(L,1);

x = zeros(N,1);
y = zeros(N,1);


for k=1:N
	
	S = 0;
	
	for j=1:k-1
		
		S = S + L(k,j)*y(j);
		
	end
	
	y(k) = (b(k) - S)/L(k,k);
end

% resolviendo el sistema U*y = b

for k=N:-1:1
	
	S = 0;
	
	for j=N:-1:k+1
	
		
		S = S + U(k,j)*x(j);
		
	end
	
	x(k) = (y(k) - S)/U(k,k);
	
end