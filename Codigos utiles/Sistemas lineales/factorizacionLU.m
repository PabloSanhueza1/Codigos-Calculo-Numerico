function x = factorizacionLU(L,U,b)

    % Queremos resolver el sistema L(Ux)=b. Llamemos y a Ux. Como L es
    % matriz triangular inferior, luego tendremos que hacer sustitución
    %progresiva. Después, como U es matriz triangular
    % superior, hay que hacer sustitución regresiva.

    n = length(U);
    
    y = zeros(n,1);
    if L(1,1) ~= 0
        y(1) = b(1)/L(1,1);
    end
    
    for i = 2:n
        if L(i,i) ~= 0
            y(i) = b(i)/L(i,i)-L(i,1:i-1)*y(1:i-1)/L(i,i);
        end
    end
    
    % Ahora resolvemos Ux = y.
    x = zeros(n,1);
    if U(n,n) ~= 0
        x(n,1) = y(n)/U(n,n);
    end
    
    for j = n-1:-1:1
        if U(j,j) ~= 0
            x(j) = y(j)/U(j,j)-U(j,(j+1):n)*x(j+1:n)/U(j,j);
        end
    end
end