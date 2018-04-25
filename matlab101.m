% trying Matlab
a = rand(3);
disp(a);
max(a)
max(max(a))
a(1,:)


% draw sin, cos, sin^2, cos absolute
theta = -pi:0.01:pi;
r(1,:) = sin(theta);
r(2,:) = cos(theta);
r(3,:) = sin(theta).^2;
r(4,:) = abs(cos(theta));

for k = 1:4
    grid on;
    subplot(2,2,k);
    plot(r(k,:));
end
