close all;
fname='mandril.ppm';
f=imread(fname);
[sx sy sz]=size(f);
g=rgb2hsv(f);
figure;
m=1;
g1=g(:,:,2);  %注意：把s单独拿出来给g1
for a=0:(2/9):2.0  %循环10次
    g(:,:,2)=g1*a;
    for i=1:sx %当超过1时要等于1
        for j=1:sy
            if g(i,j,2)>1
                g(i,j,2)=1;
            end
        end
    end
    t=hsv2rgb(g);
    subplot(2,5,m);imshow(t);title([num2str(a)]);
    m=m+1;
end
