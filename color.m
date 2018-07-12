f=imread('lena.ppm');
g = ind2rgb(gray2ind(f, 255), jet(255));
figure;
imshow(g);
jet(255)