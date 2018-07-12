f=imread('lena.ppm');
h=[1 2 1; 0 0 0; -1 -2 -1];
g1=imfilter(f,h);
g2=imfilter(f,h');

figure;
subplot(211);
imshow(g1);
subplot(212);
imshow(g2);
