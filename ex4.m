f=imread('lena.ppm');
[sx, sy] = size(f);

figure;
subplot(221);
imshow(f);
subplot(222);
hist = imhist(f);
plot(hist);

subplot(223);
plot(hist/sx/sy);

shist(1)=hist(1);
for i=2:256
    shist(i)=shist(i-1)+hist(i);
end
subplot(224);
plot(shist/sx/sy);
