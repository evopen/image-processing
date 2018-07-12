f=imread('lenacolor.ppm');
f = im2double(f);
fhsv=rgb2hsv(f);

figure;
subplot(221);
imshow(f);
subplot(222);
fhsv(:,:,2) = fhsv(:,:,2)*2;
g1 = fhsv;
g1 = hsv2rgb(g1);
imshow(g1);

fhsv(:,:,2) = fhsv(:,:,2)*0.1;
g2 = hsv2rgb(fhsv);
subplot(223);
imshow(g2);
