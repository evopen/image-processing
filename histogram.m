orig = imread('lena.ppm');

subplot(221);
imshow(orig);

subplot(222);
imhist(orig);

subplot(223);
h1 = imhist(orig)/(sx*sy);
plot(h1); 

subplot(224);
imhist(histeq(orig));