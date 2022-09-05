% Función para ACTIVIDAD 1 del 25 de agosto de 2022
% Fernando Artaza Covarrubias - fartaza2019@udec.cl

function y = lagrange(nodos,x)
n = length(nodos);
y = zeros(n,1);
for i=1:n
    y(i)=1;
    for j=1:n
        if i~=j
            y(i)=y(i)*(x-nodos(j))/(nodos(i)-nodos(j));
        end
    end
end