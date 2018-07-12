close all;
clear all;
fname='mandril.ppm';
f=imread(fname);
[sx sy sz]=size(f);
g=rgb2hsv(f);
figure; 
m=1;
for a=0:0.01:0.11  %循环12次
    g(:,:,1)=g(:,:,1)+(1/12);
    for i=1:sx %当超过1减去1
        for j=1:sy
            if g(i,j,1)>1
                g(i,j,1)=g(i,j,1)-1;
            end
        end
    end
t=hsv2rgb(g); %注意，这里赋值给新的变量t
subplot(2,6,m);imshow(t);title(['角度：',num2str((m/12)*360)]);
m=m+1;
end
