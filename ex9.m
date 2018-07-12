function ex9(fnm1, a, s, fnm2)
f=imread(fnm1);
g=imrotate(f, a);
g=imresize(g,s);
figure;
imshow(g);