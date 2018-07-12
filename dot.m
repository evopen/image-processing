f = imread('lena.ppm');
[sx, sy] = size(f);
disp(sx);
disp(sy);
Sum(1,2)
figure;
imshow(f);
title('lena')

g = f*2+30;
figure;
imshow(g);
title('result')

hist