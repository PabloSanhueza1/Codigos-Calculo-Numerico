clear
clc

s1 = 0;
s2 = 0;
s3 = 0;

for i=1:20
    [t1,t2,t3] = variossistemas();
    s1 = s1+t1;
    s2 = s2+t3;
    s3 = s3+t3;
end

prom1 = s1/20
prom2 = s2/20
prom3 = s3/20