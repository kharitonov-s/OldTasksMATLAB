x1=0:0.1:2*pi;
y1=sin(x1);
x=0:62;
y=y1;
plot(x1,y1,'R')
hold on
x2=[x1,y1];
y2=0:62;
plot(x1,y,'-rs');