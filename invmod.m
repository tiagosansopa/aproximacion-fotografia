function i=invmod(a,n)
for j=1:n-1
    dummy=a*j;
    if mod(dummy,n)==1
        i=j;
        break;
    end
end 