% hold on (несколько графиков)
% hold off
x=0:0.01:2*pi
for k=1:5
%     k*sin(x)
    y=k*sin(x);
    plot(x,y);
    hold on
end


















