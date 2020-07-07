function ovrag(y,epsilon,x1,x2)
tic;
x01=x1;
x02=x2;

syms x4;
syms x5;

f=sym(y);
df1(x4,x5)=diff(f,'x4');
df2(x4,x5)=diff(f,'x5');
syms alphak;
y1=x01-alphak*df1(x01,x02);
y2=x02-alphak*df2(x01,x02);

z(alphak)=y(y1,y2);
a=0;
b=1;
e=0.0001;
min=(a+b)/2;
c=a+((3-sqrt(5))/2)*(b-a);
d=a+((sqrt(5)-1)/2)*(b-a);
if b-a<2*e
    
end
while b-a>2*e
    fc=z(c);
    fd=z(d);
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
alpha=roundn(min,-3);

y1=x01-alpha*df1(x01,x02);
y2=x02-alpha*df2(x01,x02);


x01=x01+0.01;
x02=x02+0.01;


yk1=x01-alphak*df1(x01,x02);
yk2=x02-alphak*df2(x01,x02);

z(alphak)=y(yk1,yk2);
a=0;
b=1;
e=0.0001;
min=(a+b)/2;
c=a+((3-sqrt(5))/2)*(b-a);
d=a+((sqrt(5)-1)/2)*(b-a);
if b-a<2*e
    
end
while b-a>2*e
    fc=z(c);
    fd=z(d);
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
alpha=roundn(min,-3);

yk1=x01-alpha*df1(x01,x02);
yk2=x02-alpha*df2(x01,x02);


syms alpha1;
 y11=y1+alpha1*(y1-yk1);
 y22=y2+alpha1*(y2-yk2);

 z2(alpha1)=y(y11,y22);
 a=0;
    b=10;
    e=0.0001; 
    min=(a+b)/2;
    c=a+((3-sqrt(5))/2)*(b-a);
    d=a+((sqrt(5)-1)/2)*(b-a);

    if b-a<2*e
        
    end
    while b-a>2*e
        fc=z2(c);
        fd=z2(d);
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

    alpha=roundn(min,-3);
   
x1=y1+alpha*(y1-yk1);
x2=y2+alpha*(y2-yk2);

while sqrt((df1(x1,x2))^2+(df2(x1,x2))^2)>=epsilon
x01=x1;
x02=x2;


y1=x01-alphak*df1(x01,x02);
y2=x02-alphak*df2(x01,x02);

z(alphak)=y(y1,y2);
a=0;
b=1;
e=0.0001;
min=(a+b)/2;
c=a+((3-sqrt(5))/2)*(b-a);
d=a+((sqrt(5)-1)/2)*(b-a);
if b-a<2*e
    
end
while b-a>2*e
    fc=z(c);
    fd=z(d);
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
alpha=roundn(min,-3);

y1=x01-alpha*df1(x01,x02);
y2=x02-alpha*df2(x01,x02);


x01=x01+0.01;
x02=x02+0.01;


yk1=x01-alphak*df1(x01,x02);
yk2=x02-alphak*df2(x01,x02);

z(alphak)=y(yk1,yk2);
a=0;
b=1;
e=0.0001;
min=(a+b)/2;
c=a+((3-sqrt(5))/2)*(b-a);
d=a+((sqrt(5)-1)/2)*(b-a);
if b-a<2*e
    
end
while b-a>2*e
    fc=z(c);
    fd=z(d);
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
alpha=roundn(min,-3);

yk1=x01-alpha*df1(x01,x02);
yk2=x02-alpha*df2(x01,x02);


syms alpha1;
 y11=y1+alpha1*(y1-yk1);
 y22=y2+alpha1*(y2-yk2);

 z2(alpha1)=y(y11,y22);
 a=0;
    b=10;
    e=0.0001; 
    min=(a+b)/2;
    c=a+((3-sqrt(5))/2)*(b-a);
    d=a+((sqrt(5)-1)/2)*(b-a);

    if b-a<2*e
        
    end
    while b-a>2*e
        fc=z2(c);
        fd=z2(d);
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

    alpha=roundn(min,-3);
   
x1=y1+alpha*(y1-yk1);
x2=y2+alpha*(y2-yk2);



   
end
xmin1=vpa(x1,3)
xmin2=vpa(x2,3)


toc;
end