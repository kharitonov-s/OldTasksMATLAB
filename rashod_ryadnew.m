function  rashod_ryadnew(  )
tic
x1=1;
x2=1;
i=100;
a=1/i;
del=0.001;
fk= x1^2+exp(x1^2+x2^2)+4*x1+3*x2;
df2=2*x2*exp(x1^2+x2^2)+3;
df1=2*x1*exp(x1^2+x2^2)+2*x1+4;
while (sqrt(df1^2+df2^2)>del)
x1=x1-a*df1;
x2=x2-a*df2;
df2=2*x2*exp(x1^2+x2^2)+3;
df1=2*x1*exp(x1^2+x2^2)+2*x1+4;
i=i+1;
a=1/i;
end;
x1
x2
toc
end

