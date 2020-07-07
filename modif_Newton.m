function modif_Newton(y,epsilon,x1,x2)
tic;
x01=x1;
x02=x2;

x0=[x01;x02];
syms x3
syms x4
df1=diff(y,x3)
df2=diff(y,x4)
df11=subs(df1,{x3,x4},[x01,x02]);
df22=subs(df2,{x3,x4},[x01,x02]);
DDF1=diff(df1,x3)
DDF2=diff(df2,x4)
DDF12=diff(df1,x4)

syms alphak
x=x0-alphak*[subs(DDF1^-1,{x3,x4},[x01,x02]) , subs(DDF12^-1,{x3,x4},[x01,x02]) ; subs(DDF12^-1,{x3,x4},[x01,x02]) , subs(DDF2^-1,{x3,x4},[x01,x02])]*[df11;df22]
y1(alphak)=subs(y,{x3,x4},[x(1,1);x(2,1)])
a=0;
b=1;
e=0.0001;
min=(a+b)/2;
c=a+((3-sqrt(5))/2)*(b-a);
d=a+((sqrt(5)-1)/2)*(b-a);
if b-a<2*e
    
end
while b-a>2*e
    fc=y1(c);
    fd=y1(d);
    if fc>=fd
        a=c;
        c=d;
        d=a+((sqrt(5)-1)/2)*(b-a);
    else
        b=d;
        d=c;
        c=a+((3-sqrt(5))/2)*(b-a);
        min=-(a+b)/2;
    end
end
%min=roundn(min,-3)
x=subs(x,alphak,min)
k=0;
if sqrt((x(1,1))^2+(x(2,1))^2)>=epsilon
    while sqrt((x(1,1))^2+(x(2,1))^2)>=epsilon && k<5
   x=x-alphak*[subs(DDF1^-1,{x3,x4},[x(1,1);x(2,1)]) , subs(DDF12^-1,{x3,x4},[x(1,1);x(2,1)]) ; subs(DDF12^-1,{x3,x4},[x(1,1);x(2,1)]) , subs(DDF2^-1,{x3,x4},[x(1,1);x(2,1)])]*[df11;df22]
y1(alphak)=subs(y,{x3,x4},[x(1,1);x(2,1)])
a=0;
b=1;
e=0.000001;
min=(a+b)/2;
c=a+((3-sqrt(5))/2)*(b-a);
d=a+((sqrt(5)-1)/2)*(b-a);
if b-a<2*e
    
end
while b-a>2*e
    fc=y1(c);
    fd=y1(d);
    if fc>=fd
        a=c;
        c=d;
        d=a+((sqrt(5)-1)/2)*(b-a);
    else
        b=d;
        d=c;
        c=a+((3-sqrt(5))/2)*(b-a);
        min=-(a+b)/2;
    end
end
%min=roundn(min,-3)
x=subs(x,alphak,min)
k=k+1
end
end
xmin=x
toc;
end