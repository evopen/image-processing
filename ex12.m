f=imread('lena.ppm');
[sx, sy] = size(f);
f=im2double(f);
fdct=dct2(f);

h4=zeros(sx,sy);
h8=zeros(sx,sy);

D4=sx/4;
D8=sx/8;

h4(1:D4, 1:D4) = 1;
h8(1:D8, 1:D8) = 1;

g4 = fdct.*h4;
g8 = fdct.*h8;

f4 = idct2(g4);
f8 = idct2(g8);

figure;
subplot(221);imshow(f);
subplot(222);imshow(fdct);
subplot(223);imshow(f4);
subplot(224);imshow(f8);