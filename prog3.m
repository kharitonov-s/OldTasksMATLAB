clc;
clear all;
k=2;
x=0.32;
d=1.25;
n=-4;
b=0.75;
c=2.2;
y=10^(-3)*tan(k*n)-((x-d)*(x^2+b^2)/(x^2+b^2-c*d)^(1/3))-((cos(k*x))/sin(5))
