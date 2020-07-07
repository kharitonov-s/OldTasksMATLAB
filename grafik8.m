close all
x1=0:0.4:20*pi;

y1=sin(x1);

a={'.' 'î' 'x' '+' '*' 's' 'd''v' '<' '>' '^'};
lena=length(a);
for k=0:0.4:20*pi
colind=randi([1 lena],1);
colval=a{colind}
p1=plot(k,y1,colval);
hold on
pause(0.3)
xlim([0 20*pi])
ylim([-2 2])
end