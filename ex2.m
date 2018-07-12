f=imread('lena1.ppm');
figure;
subplot(221);
imshow(f);
subplot(222);
imhist(f);

g=5*f;
subplot(223);
imshow(g);
subplot(224);
imhist(g);