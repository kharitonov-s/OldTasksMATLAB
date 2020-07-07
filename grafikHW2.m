pol1=[2 0 -3 0 1];
x2=-20:0.5:20;
y2=polyval(pol1,x2);
plot(x2,y2);
hold on
y3=polyval(polyder(pol1),x2);
plot(x2,y3);