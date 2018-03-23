%basado en https://gist.github.com/esromneb/1d57b1d16d54cde37332
% y en https://stackoverflow.com/questions/40756368/undestanding-c-program-gauss-jordan-elimination
function inversa = gauss(a)
a=horzcat(a,eye(3));
for k=1:3
  a(k,:)=a(k,:)/a(k,k);
    for j=k+1:3
        a(j,:)=a(j,:)-a(k,:)*a(j,k);
        j=j+1;
    end
  k=k+1;
end
for k=3:-1:2
  for j=k-1:-1:1
    a(j,:)=a(j,:)-a(k,:)*a(j,k);
    j=j-1;
  end
  k=k-1;
end
inversa = a; 

