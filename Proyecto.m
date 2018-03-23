%Santiago Solorzano
m1 = double(imread('9.png'));
m2 = double(imread('10.png'));
m3 = double(imread('11.png'));
%b = double(imread('10.png'));
b = double(imread('3.png'));

base1 = m1(:,:,1);
m1 = coded(base1(:));
base2 = m2(:,:,1);
m2 = coded(base2(:));
base3 = m3(:,:,1);
m3 = coded(base3(:));
originalb = b(:,:,1);
b = coded(originalb(:));

A = horzcat(m1,m2,m3);
AT = A';
ATporA = mod(AT * A,3);

i = gauss(ATporA);
uno = [1;0;0];
dos = [0;1;0];
tres = [0;0;1];

ATporA = horzcat(ATporA,uno);
ATporA = horzcat(ATporA,dos);
ATporA = horzcat(ATporA,tres);

i2= elimination(ATporA,3);


i = round(i([1 2 3],[4 5 6]));

Aplus = i * AT;

x = mod(Aplus * b,3);

sol = mod(A * x,3);
sol = reshape(sol,[3,3]);
sol = sol';

R = round(sol);
G = round(sol);
B = round(sol);
result = cat(3,R,G,B);
imwrite(result,'aproxMio.png');

figure
subplot(2,3,1)
image(imread('9.png'))
title('Base 1')
subplot(2,3,2)
image(imread('10.png'))
title('Base 2')
subplot(2,3,3)
image(imread('11.png'))
title('Base 3')
subplot(2,3,4)
image(imread('3.png'))
title('b')
subplot(2,3,5)
image(imread('aproxMio.png'))
title('aprox')

