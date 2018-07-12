f=imread('lena3.ppm');
figure;
subplot(221);
imshow(f);
subplot(222);
imhist(f);

g=f-160;
g=g*3;

subplot(223);
imshow(g);
subplot(224);
imhist(g);