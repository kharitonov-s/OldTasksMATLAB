clc;
clear all;
a=-1.3;
b=0.91;
c=0.75;
x=2.32;
k=8;
slagaemoe2=((a-k*x^2)/(2*b))^(1/3);
y=sin((a-x)/c)+(10^4*slagaemoe2)+(cos(k*x^2)/tan(3))-((b*c)/(a*x))