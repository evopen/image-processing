f=imread('lena.ppm');
f=im2double(f);
neg=1-f;
figure;
subplot(221);imshow(f);
subplot(222);imshow(neg);
subplot(223);imshow(power(f,0.5));
subplot(224);imshow(power(f,2));