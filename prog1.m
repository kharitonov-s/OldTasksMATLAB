clc; %clear command window
clear all; %clear workspace
a=1;
%a*x^2+b*x+c=0
b=0;
c=-9;

discriminant=b*b-4*a*c;
discriminantSqrt = sqrt(discriminant);

x1 = (-b+discriminantSqrt)/(2*a);
x2=(-b-discriminantSqrt)/(2*a);
x1
x2
