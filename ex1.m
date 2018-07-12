f=imread('lena.ppm');

figure;
subplot(221);
imshow(f);
subplot(222);
imhist(f);

g=histeq(f);

subplot(223);
imshow(g);
subplot(224);
imhist(g);