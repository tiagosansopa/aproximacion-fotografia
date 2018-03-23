function s=prodmod(a,b,n)
longitud = length(a);
for i=1:longitud
    x=a(i,1);
    y=b(i,1);
    dummy=x+y;
    z=mod(dummy,n);
    s(i,1)=z;
end