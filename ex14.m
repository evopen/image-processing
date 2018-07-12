f=imread('lena.ppm');
f=im2double(f);
[sx, sy]=size(f);
g = zeros(sx, sy, 3);
g(:,:,1)=1-f;%红色为原图负片
g(:,:,2)=f;%绿色为原图
for i=1:sx %蓝色根据映射关系
    for j=1:sy
        if f(i,j)<0.5
            g(i,j,3)=f(i,j)*2;
        else
            g(i,j,3)=2-f(i,j)*2;
        end
    end
end
figure;%输出
imshow(g); title('伪彩色处理结果');