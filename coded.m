function c=coded(a)
for i=1:length(a)
    switch (a(i,1))
        case 0
            a(i,1)=0;
        case 127
            a(i,1)=1;
        case 255
            a(i,1)=2;
    end
end
c=a;

