orig = imread('lena.ppm');
[sx,sy] = size(orig);

subplot(231);
imshow(orig);

subplot(232);
imhist(orig);

subplot(233);
h1 = imhist(orig)/(sx*sy);
plot(h1); 

subplot(234);
imshow(histeq(orig));

subplot(235);
imhist(histeq(orig));

subplot(236);
h = imhist(orig);
H(1:256)=0;
H(1)=h(1);
for i=2:256
    H(i)=H(i-1)+h(i);
end
plot(H);

lut