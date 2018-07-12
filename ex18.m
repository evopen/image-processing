fname='lena.ppm';
f=imread(fname);
[sx, sy]=size(f);
dct_f=dct2(f); %余弦变换
%频率为sx/2
h1=zeros(sx,sy);
h1(1:sx/2,1:sy/2)=1;
h1=abs(1-h1);
pr1=dct_f.*h1; %滤波
g1=idct2(pr1); %反余弦

%频率为sx/4
h2=zeros(sx,sy);
h1(1:sx/4,1:sy/4)=1;
h2=1-h2;
pr2=dct_f.*h2;
g2=idct2(pr2);

%频率为sx/8
h3=zeros(sx,sy);
h1(1:sx/8,1:sy/8)=1;
h3=1-h3;
pr3=dct_f.*h3;
g3=idct2(pr3);

figure;
subplot(221);imshow(f);title('原图');
subplot(222);imshow(abs(g1)/255);title('sx/2');%注意：要绝对值且除以最大值
subplot(223);imshow(abs(g2)/sx);title('sx/4');
subplot(224);imshow(abs(g3)/sx);title('sx/8');
