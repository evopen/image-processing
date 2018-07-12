f=imread('f.ppm');
b=imread('b.ppm');

f=im2double(f);     b=im2double(b);

[fsx, fsy, fsz]=size(f);
[bsx, bsy, bsz]=size(b);

g = b; 
r0=0; g0=1; b0=0;  D=0;
for i=1:fsx
    for j=1:fsy
        x = abs(f(i,j,1)-r0);
        x = x + abs(f(i,j,2)-g0);
        x = x + abs(f(i,j,3)-b0);
        if x>D
            g(i+50, j+100, :) = f(i, j, :);
        end
    end
end

figure; imshow(g);title( ['RGB--result: ', num2str(D)] );

