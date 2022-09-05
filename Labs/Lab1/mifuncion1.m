function F = mifuncion1(x)
F=zeros(length(x),1);

for i=1:length(x)
    if x(i) ~= 0
        F(i)=(1-cos(x(i)))/x(i)^2;
    else
        F(i) = 1/2;
    end
end
end