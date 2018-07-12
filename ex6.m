function ex6(finname, h, foutname)
f=imread(finname);
g=imfilter(f, h);
imwrite(