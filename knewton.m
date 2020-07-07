function knewton(y,epsilon,x1,x2)
tic;
k=0;
n=2;
x0=[x1;x2];
syms x4;
syms x5;

f=sym(y);
df1(x4,x5)=diff(f,'x4');
df2(x4,x5)=diff(f,'x5'); 

df=[df1(x0(1,1),x0(2,1));df2(x0(1,1),x0(2,1))];
Hk=eye(n,n);
syms alphak;
x=x0-alphak*Hk*df;
y1(alphak)=y(x(1,1),x(2,1));

a=0;
b=2;
e=0.00001;
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
        min=(a+b)/2;
    end
    
    
end
alpha=min;
x=vpa(x0-Hk*df*alpha,3);
while norm([df1(x(1,1),x(2,1));df2(x(1,1),x(2,1))])>=epsilon
    if rem(k+1,n+1)==0
       Hk=eye(3,3);
    else
        delta=x-x0;
        gamma=[df1(x(1,1),x(2,1));df2(x(1,1),x(2,1))]-[df1(x0(1,1),x0(2,1));df2(x0(1,1),x0(2,1))];
        STARchisl=(delta-Hk*gamma)*(delta-Hk*gamma)';
        STARznam=((delta-Hk*gamma)')*gamma;
        STAR=STARchisl/STARznam;
        Hk=Hk+STAR;
    end
    k=k+1;
    x0=x;
    df=[df1(x0(1,1),x0(2,1));df2(x0(1,1),x0(2,1))];
    x=x0-alphak*Hk*df;
y1(alphak)=y(x(1,1),x(2,1));

a=0;
b=2;
e=0.00001;
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
        min=(a+b)/2;
    end
    
    
end
alpha=min;
x=vpa(x0-Hk*df*alpha,3);
    
end
xmin=vpa(x,3)
toc
end


