function  Newton2()
x1=1;
x2=1;
del=0.05;
i=0;
df=[2*x1*exp(x1^2+x2^2)+2*x1+4 ; 2* x2* exp(x1^2+x2^2)+3];
ddf=[2*exp(x1^2+x2^2)+4*x1^2*exp(x1^2 + x2^2)+2 4*x1*x2*exp(x1^2 + x2^2);4*x1*x2*exp(x1^2 + x2^2) 2*exp(x1^2 + x2^2) + 4*x2^2*exp(x1^2 + x2^2)]
ddf=ddf^-1;
dfn=ddf*df
while (sqrt(df(1)^2+df(2)^2)>0.1)
e1=0.0001;
a1=0;
b1=5;
while(b1-a1>2*e1)
c=a1+(3-sqrt(5))*(b1-a1)/2;
d=a1+(sqrt(5)-1)*(b1-a1)/2;
if (sqrt(1+2*(x1-c*dfn(1))^2+2*(x2-c*dfn(2))^2)+exp((x1-c*dfn(1))^2+2*(x2-c*dfn(2))^2)-x1+c*dfn(1)-x2+c*dfn(2)>sqrt(1+2*(x1-d*dfn(1))^2+2*(x2-d*dfn(2))^2)+exp((x1-d*dfn(1))^2+2*(x2-d*dfn(2))^2)-x1+d*dfn(1)-x2+d*dfn(2)) 
    a1=c;
else b1=d;
end
end
a=(b1+a1)/2;
x1=x1-a*dfn(1);
x2=x2-a*dfn(2);
disp(sqrt(df(1)^2+df(2)^2));
df=[2*x1*exp(x1^2+x2^2)+2*x1+4 ; 2* x2* exp(x1^2)+x2^2+3];
ddf=[2*exp(x1^2+x2^2)+4*x1^2*exp(x1^2 + x2^2)+2 4*x1*x2*exp(x1^2 + x2^2);4*x1*x2*exp(x1^2 + x2^2) 2*exp(x1^2 + x2^2) + 4*x2^2*exp(x1^2 + x2^2)]
ddf=ddf^-1;
dfn=ddf*df;
end
fk= x1^2+exp(x1^2+x2^2)+4*x1+3*x2;
disp(x1);
disp(x2);
disp(fk);


end

