%1метод пасс поиска  [-1;2]
e=0.01;
x=-1;
while (x<=2)
if (x==-1) min=x^4+x^2+x+1;
else if (x^4+x^2+x+1<min) min=x^4+x^2+x+1;
    end
end
x=x+e;
end
disp(min);


%2метод дихотомии
e=0.001;
del=0.0005;
a=-1;
b=2;
i=1;
while(b-a>2*e)
c=(a+b)/2-del;
d=(a+b)/2+del;
if (c^4+c^2+c+1>d^4+d^2+d+1) a=c;
else b=d;
end
i=i+1;
end
min=(b+a)/2;
fmin=min^4+min^2+min+1;
disp(i);
disp(min);
disp(fmin);

%3метод золотого сечения
e=0.001;
a=-1;
i=1;
b=2;
while(b-a>2*e)
c=a+(3-sqrt(5))*(b-a)/2;
d=a+(sqrt(5)-1)*(b-a)/2;
if (c^4+c^2+c+1>d^4+d^2+d+1) a=c;
else b=d;
end
i=i+1;
end
min=(b+a)/2;
fmin=min^4+min^2+min+1;
disp(min);
disp(fmin);
disp(i);


%4метод фибоначи(n=17)
e=0.001;
del=0.0005;
a=-1;
b=2;
f1=1;
f2=1;
s=0;
f1=1;
f2=1;
s=0;
for i=1:18
s=f2;
f2=f2+f1;
f1=s;
end
for i=1:1:14
    c=a+(b-a)*(f2-f1)/f2;
    d=a+(b-a)*f1/f2;
    if (c^4+c^2+c+1>d^4+d^2+d+1) a=c;
    else b=d;
    end
    s=f1;
    f1=f2-f1;
    f2=s;
end
min=(b+a)/2;
fmin=min^4+min^2+min+1;
disp(min);
disp(fmin);

%5 метод касательных
e=0.001;
a=-1;
b=2;
i=1;
x=(3*(a^4-b^4)+a^2-b^2)/(4*(a^3-b^3)+2*(a-b));
disp(x);
while(abs(4*x^3+2*x+1)>e)
if (4*x^3+2*x+1<0) a=x;
else if (4*x^3+2*x+1>0) b=x;
    else min=x;
         break;
    end
end
x=(3*(a^4-b^4)+a^2-b^2)/(4*(a^3-b^3)+2*(a-b));
i=i+1;
end
min=x;
disp(i);
disp('min');
disp(min);
disp(min^4+min^2+min+1);

%6 метод Ньютона-рафсона
e=0.001;
x=1.75;
i=0;
while(abs(4*x^3+2*x+1)>e)
i=i+1;
x=x-(4*x^3+2*x+1)/(12*x^2+2);
end
disp(x);
disp(i);
disp(x^4+x^2+x+1);

%7 метод секущих
x=-1;
x1=-0.95;
x2=x1-((4*x1^3+2*x1+1)*(x-x1))/((4*x^3+2*x+1)-(4*x1^3+2*x1+1));
x=x1;
x1=x2;
i=1;
e=0.01;
while (abs(4*x2^3+2*x2+1)>e)
x2=x1-((4*x1^3+2*x1+1)*(x-x1))/((4*x^3+2*x+1)-(4*x1^3+2*x1+1));
x=x1;
x1=x2;
i=i+1;
disp(x2^4+x2^2+x2+1);
disp(x2);
end
disp(i);
disp(x2^4+x2^2+x2+1);
disp(x2);

%8 метод по коорд спуска
x1=1;
i=0;
x2=1;
x3=1;
e=0.5;
a=0.77;
lm=0.5;
f=x1+x2-5*x3+exp(x1^2+2*x2^2+x3^2);
x4=x1+a;
i=i+1;
if (f>x4+x2-5*x3+exp(x4^2+2*x2^2+x3^2)) f=x4+x2-5*x3+exp(x4^2+2*x2^2+x3^2);
else  x4=x1-a;
      if (f>x4+x2-5*x3+exp(x4^2+2*x2^2+x3^2)) f=x4+x2-5*x3+exp(x4^2+2*x2^2+x3^2);
      else x4=x1;
      end
end
x5=x2+a;
i=i+1;
if (f>x1+x5-5*x3+exp(x1^2+2*x5^2+x3^2)) f=x1+x5-5*x3+exp(x1^2+2*x5^2+x3^2);
else  x5=x2-a;
      if (f>x1+x5-5*x3+exp(x1^2+2*x5^2+x3^2)) f=x1+x5-5*x3+exp(x1^2+2*x5^2+x3^2);
      else x5=x2;
      end
end
x6=x3+a;
i=i+1;
if (f>x1+x2-5*x6+exp(x1^2+2*x2^2+x6^2)) f=x1+x2-5*x6+exp(x1^2+2*x5^2+x6^2);
else  x6=x3-a;
      if (f>x1+x2-5*x6+exp(x1^2+2*x2^2+x6^2)) f=x1+x2-5*x6+exp(x1^2+2*x2^2+x6^2);
      else x6=x2;
      end
end
while (sqrt((x1-x4)^2+(x2-x5)^2+(x3-x6)^2)>e)
i=i+1;
x1=x4;
x2=x5;
x3=x6;
x4=x1+a;
i=i+1;
if (f>x4+x2-5*x3+exp(x4^2+2*x2^2+x3^2)) f=x4+x2-5*x3+exp(x4^2+2*x2^2+x3^2);
else  x4=x1-a;
      if (f>x4+x2-5*x3+exp(x4^2+2*x2^2+x3^2)) f=x4+x2-5*x3+exp(x4^2+2*x2^2+x3^2);
      else x4=x1;
      end
end
x5=x2+a;
i=i+1;
if (f>x1+x5-5*x3+exp(x1^2+2*x5^2+x3^2)) f=x1+x5-5*x3+exp(x1^2+2*x5^2+x3^2);
else  x5=x2-a;
      if (f>x1+x5-5*x3+exp(x1^2+2*x5^2+x3^2)) f=x1+x5-5*x3+exp(x1^2+2*x5^2+x3^2);
      else x5=x2;
      end
end
x6=x3+a;
i=i+1;
if (f>x1+x2-5*x6+exp(x1^2+2*x2^2+x6^2)) f=x1+x2-5*x6+exp(x1^2+2*x5^2+x6^2);
else  x6=x3-a;
      if (f>x1+x2-5*x6+exp(x1^2+2*x2^2+x6^2)) f=x1+x2-5*x6+exp(x1^2+2*x2^2+x6^2);
      else x6=x2;
      end
end
end
disp(i);
disp(x1);
disp(x2);
disp(x3);
disp(f);

%9 градиентный метод с дроблением шага
xk1=0.7;
xk2=0.7;
xk3=0.7;
a=0.5;
del=0.01;
e=0.5;
fl=0;
df=[1+2*xk1*exp(xk1^2+2*xk2^2+xk3^2);1+4*xk2*exp(xk1^2+2*xk2^2+xk3^2);-5+2*xk3*exp(xk1^2+2*xk2^2+xk3^2)];
while (sqrt(df(1)^2+df(2)^2+df(3)^2)>del)
while(fl < 1)
i=i+1;
xn1=xk1-a*df(1);
xn2=xk2-a*df(2);
xn3=xk3-a*df(3);
fk=xk1+xk2-5*xk3+exp(xk1^2+2*xk2^2+xk3^2);
fn=xn1+xn2-5*xn3+exp(xn1^2+2*xn2^2+xn3^2);
if (i<4) && (fn-fk>=(-1)*a*e*(sqrt(df(1)^2+df(2)^2+df(3)^3))^2) a=a/2;
else fl=1;
     xk1=xn1;
     xk2=xn2;
     xk3=xn3;
     break;
end
end
df=[1+2*xk1*exp(xk1^2+2*xk2^2+xk3^2);1+4*xk2*exp(xk1^2+2*xk2^2+xk3^2);-5+2*xk3*exp(xk1^2+2*xk2^2+xk3^2)];
fl=0;
i=0;
end;
disp(xk1);
disp(xk2);
disp(xk3);
disp(fk);

%10 градиентный метод с пост-ым шагом
xk1=0.7;
xk2=0.7;
xk3=0.7;
a=0.0025;
del=0.01;
e=0.5;
df=[1+2*xk1*exp(xk1^2+2*xk2^2+xk3^2);1+4*xk2*exp(xk1^2+2*xk2^2+xk3^2);-5+2*xk3*exp(xk1^2+2*xk2^2+xk3^2)];
while (sqrt(df(1)^2+df(2)^2+df(3)^2)>del)
xk1=xk1-a*df(1);
xk2=xk2-a*df(2);
xk3=xk3-a*df(3);
df=[1+2*xk1*exp(xk1^2+2*xk2^2+xk3^2);1+4*xk2*exp(xk1^2+2*xk2^2+xk3^2);-5+2*xk3*exp(xk1^2+2*xk2^2+xk3^2)];
end;
fk=xk1+xk2-5*xk3+exp(xk1^2+2*xk2^2+xk3^2);
disp(xk1);
disp(xk2);
disp(xk3);
disp(fk);

%11 метод расход-ся ряда
xk1=0.7;
xk2=0.7;
xk3=0.7;
i=100;
a=1/i;
del=0.001;
df=[1+2*xk1*exp(xk1^2+2*xk2^2+xk3^2);1+4*xk2*exp(xk1^2+2*xk2^2+xk3^2);-5+2*xk3*exp(xk1^2+2*xk2^2+xk3^2)];
while (sqrt(df(1)^2+df(2)^2+df(3)^2)>del)
xk1=xk1-a*df(1);
xk2=xk2-a*df(2);
xk3=xk3-a*df(3);
df=[1+2*xk1*exp(xk1^2+2*xk2^2+xk3^2);1+4*xk2*exp(xk1^2+2*xk2^2+xk3^2);-5+2*xk3*exp(xk1^2+2*xk2^2+xk3^2)];
i=i+1;
a=1/i;
end;
fk=xk1+xk2-5*xk3+exp(xk1^2+2*xk2^2+xk3^2);
disp(xk1);
disp(xk2);
disp(xk3);
disp(fk);

%мнгс
xk1=0.7;
xk2=0.7;
xk3=0.7;
e=0.5;
del=0.001;
df=[1+2*xk1*exp(xk1^2+2*xk2^2+xk3^2);1+4*xk2*exp(xk1^2+2*xk2^2+xk3^2);-5+2*xk3*exp(xk1^2+2*xk2^2+xk3^2)];
while (sqrt(df(1)^2+df(2)^2+df(3)^2)>del)
e1=0.000001;
del1=0.0005;
a1=0;
b1=5;
while(b1-a1>2*e1)
c=a1+(3-sqrt(5))*(b1-a1)/2;
d=a1+(sqrt(5)-1)*(b1-a1)/2;%xk1-c*df(1)
if (xk1-c*df(1)+xk2-c*df(2)-5*(xk3-c*df(3))+exp((xk1-c*df(1))^2+2*(xk2-c*df(2))^2+(xk3-c*df(3))^2)>xk1-d*df(1)+xk2-d*df(2)-5*(xk3-d*df(3))+exp((xk1-d*df(1))^2+2*(xk2-d*df(2))^2+(xk3-d*df(3))^2)) a1=c;
else b1=d;
end
end
a=(b1+a1)/2;
xk1=xk1-a*df(1);
xk2=xk2-a*df(2);
xk3=xk3-a*df(3);
df=[1+2*xk1*exp(xk1^2+2*xk2^2+xk3^2);1+4*xk2*exp(xk1^2+2*xk2^2+xk3^2);-5+2*xk3*exp(xk1^2+2*xk2^2+xk3^2)];
end
fk=xk1+xk2-5*xk3+exp(xk1^2+2*xk2^2+xk3^2);
disp(xk1);
disp(xk2);
disp(xk3);
disp(fk);

%12 P-го порядка
xk1=0.7;
xk2=0.7;
xk3=0.7;
e=0.5;
del=0.01;
df=[1+2*xk1*exp(xk1^2+2*xk2^2+xk3^2);1+4*xk2*exp(xk1^2+2*xk2^2+xk3^2);-5+2*xk3*exp(xk1^2+2*xk2^2+xk3^2)];
yk1=xk1;
yk2=xk2;
yk3=xk3;
dfy=[1+2*xk1*exp(xk1^2+2*xk2^2+xk3^2);1+4*xk2*exp(xk1^2+2*xk2^2+xk3^2);-5+2*xk3*exp(xk1^2+2*xk2^2+xk3^2)];
while (sqrt(df(1)^2+df(2)^2+df(3)^2)>del)
for i=1:2
e1=0.000001;
del1=0.0005;
a1=-3.0055;
b1=5;
while(b1-a1>2*e1)
c=a1+(3-sqrt(5))*(b1-a1)/2;
d=a1+(sqrt(5)-1)*(b1-a1)/2;%yk
if (yk1-c*dfy(1)+yk2-c*dfy(2)-5*(yk3-c*dfy(3))+exp((yk1-c*dfy(1))^2+2*(yk2-c*dfy(2))^2+(yk3-c*dfy(3))^2)>yk1-d*dfy(1)+yk2-d*dfy(2)-5*(yk3-d*dfy(3))+exp((yk1-d*dfy(1))^2+2*(yk2-d*dfy(2))^2+(yk3-d*dfy(3))^2)) a1=c;
else b1=d;
end
end
a=(b1+a1)/2;
yk1=yk1-a*dfy(1);
yk2=yk2-a*dfy(2);  
yk3=yk3-a*dfy(3);   
end
xk4=yk1-xk1;
xk5=yk2-xk2;
xk6=yk3-xk3;
df2=[1+2*xk4*exp(xk4^2+2*xk5^2+xk6^2);1+4*xk5*exp(xk4^2+2*xk5^2+xk6^2);-5+2*xk6*exp(xk4^2+2*xk5^2+xk6^2)];
e1=0.000001;
del1=0.0005;
a1=-3.0055;
b1=5;
while(b1-a1>2*e1)
c=a1+(3-sqrt(5))*(b1-a1)/2;
d=a1+(sqrt(5)-1)*(b1-a1)/2;
if (xk1-c*df2(1)+xk2-c*df2(2)-5*(xk3-c*df2(3))+exp((xk1-c*df2(1))^2+2*(xk2-c*df2(2))^2+(xk3-c*df2(3))^2)>xk1-d*df2(1)+xk2-d*df2(2)-5*(xk3-d*df2(3))+exp((xk1-d*df2(1))^2+2*(xk2-d*df2(2))^2+(xk3-d*df2(3))^2)) a1=c;
else b1=d;
end
end
a=(b1+a1)/2;
xk1=xk1+a*dfy(1);
xk2=xk2+a*dfy(2);
xk3=xk3+a*dfy(3);
yk1=xk1;
yk2=xk2;
yk3=xk3;
dfy=[1+2*xk1*exp(xk1^2+2*xk2^2+xk3^2);1+4*xk2*exp(xk1^2+2*xk2^2+xk3^2);-5+2*xk3*exp(xk1^2+2*xk2^2+xk3^2)];
df=[1+2*xk1*exp(xk1^2+2*xk2^2+xk3^2);1+4*xk2*exp(xk1^2+2*xk2^2+xk3^2);-5+2*xk3*exp(xk1^2+2*xk2^2+xk3^2)];
end
fk=xk1+xk2-5*xk3+exp(xk1^2+2*xk2^2+xk3^2);
disp(xk1);
disp(xk2);
disp(xk3);
disp(fk);


%13 овражный метод
xk1=0.7;
xk2=0.7;
xk3=0.7;
e=0.5;
del=0.8057;
df=[1+2*xk1*exp(xk1^2+2*xk2^2+xk3^2);1+4*xk2*exp(xk1^2+2*xk2^2+xk3^2);-5+2*xk3*exp(xk1^2+2*xk2^2+xk3^2)];
xk4=xk1+0.1;
xk5=xk2+0.1;
xk6=xk3+0.1;
df2=[1+2*xk4*exp(xk4^2+2*xk5^2+xk6^2);1+4*xk5*exp(xk4^2+2*xk5^2+xk6^2);-5+2*xk6*exp(xk4^2+2*xk5^2+xk6^2)];
while (sqrt(df(1)^2+df(2)^2+df(3)^2)>del)
for i=1:2
e1=0.1;
del1=0.0005;
a1=-10.925;
b1=17.006;
while(b1-a1>e1)
c=a1+(3-sqrt(5))*(b1-a1)/2;
d=a1+(sqrt(5)-1)*(b1-a1)/2;
if (xk1-c*df(1)+xk2-c*df(2)-5*(xk3-c*df(3))+exp((xk1-c*df(1))^2+2*(xk2-c*df(2))^2+(xk3-c*df(3))^2)>xk1-d*df(1)+xk2-d*df(2)-5*(xk3-d*df(3))+exp((xk1-d*df(1))^2+2*(xk2-d*df(2))^2+(xk3-d*df(3))^2)) a1=c;
else b1=d;
end
end
a=(b1+a1)/2;
yk1=xk1-a*df(1);
yk2=xk2-a*df(2);  
yk3=xk3-a*df(3);
end
for i=1:2
e1=0.1;
del1=0.0005;
a1=-10.925;
b1=17.006;
while(b1-a1>e1)
c=a1+(3-sqrt(5))*(b1-a1)/2;
d=a1+(sqrt(5)-1)*(b1-a1)/2;
if (xk4-c*df2(1)+xk5-c*df2(2)-5*(xk6-c*df2(3))+exp((xk4-c*df2(1))^2+2*(xk5-c*df2(2))^2+(xk6-c*df2(3))^2)>xk4-d*df2(1)+xk5-d*df2(2)-5*(xk6-d*df2(3))+exp((xk4-d*df2(1))^2+2*(xk5-d*df2(2))^2+(xk6-d*df2(3))^2)) a1=c;
else b1=d;
end
end
a=(b1+a1)/2;
yk4=xk4-a*df2(1);
yk5=xk5-a*df2(2);
yk6=xk6-a*df2(3);
end
yk7=yk1-yk4;
yk8=yk2-yk5;
yk9=yk3-yk6;
df3=[1+2*yk7*exp(yk7^2+2*yk8^2+yk9^2);1+4*yk8*exp(yk7^2+2*yk8^2+yk9^2);-5+2*yk9*exp(yk7^2+2*yk8^2+yk9^2)];
e1=0.1;
del1=0.0005;
a1=-10.925;
b1=17.006;
while(b1-a1>e1)
c=a1+(3-sqrt(5))*(b1-a1)/2;
d=a1+(sqrt(5)-1)*(b1-a1)/2;%yk1.2.3,df3
if (yk1-c*df3(1)+yk2-c*df3(2)-5*(yk3-c*df3(3))+exp((yk1-c*df3(1))^2+2*(yk2-c*df3(2))^2+(yk3-c*df3(3))^2)>yk1-d*df3(1)+yk2-d*df3(2)-5*(yk3-d*df3(3))+exp((yk1-d*df3(1))^2+2*(yk2-d*df3(2))^2+(yk3-d*df3(3))^2)) a1=c;
else b1=d;
end
end
a=(b1+a1)/2;
xk1=xk1+a*df3(1);
xk2=xk2+a*df3(2);
xk3=xk3+a*df3(3);
df=[1+2*xk1*exp(xk1^2+2*xk2^2+xk3^2);1+4*xk2*exp(xk1^2+2*xk2^2+xk3^2);-5+2*xk3*exp(xk1^2+2*xk2^2+xk3^2)];
xk4=xk1+0.1;
xk5=xk2+0.1;
xk6=xk3+0.1;
df2=[1+2*xk4*exp(xk4^2+2*xk5^2+xk6^2);1+4*xk5*exp(xk4^2+2*xk5^2+xk6^2);-5+2*xk6*exp(xk4^2+2*xk5^2+xk6^2)];
disp(sqrt(df(1)^2+df(2)^2+df(3)^2))
end
fk=xk1+xk2-5*xk3+exp(xk1^2+2*xk2^2+xk3^2);
disp(xk1);
disp(xk2);
disp(xk3);
disp(fk);

%14 метод сопр-ых напр-ий
xk1=0.7;
xk2=0.7;
xk3=0.7;
e=0.5;
del=0.8057;
df=[1+2*xk1*exp(xk1^2+2*xk2^2+xk3^2);1+4*xk2*exp(xk1^2+2*xk2^2+xk3^2);-5+2*xk3*exp(xk1^2+2*xk2^2+xk3^2)];
d1=(-1)*df;
i=0;
while (sqrt(df(1)^2+df(2)^2+df(3)^2)>del)
e1=0.01;
del1=0.0005;
a1=-3.0055;
b1=5;
while(b1-a1>2*e1)
c=a1+(3-sqrt(5))*(b1-a1)/2;
d=a1+(sqrt(5)-1)*(b1-a1)/2;
if (xk1+c*d1(1)+xk2+c*d1(2)-5*(xk3+c*d1(3))+exp((xk1+c*d1(1))^2+2*(xk2+c*d1(2))^2+(xk3+c*d1(3))^2)>xk1+d*d1(1)+xk2+d*d1(2)-5*(xk3+d*d1(3))+exp((xk1+d*d1(1))^2+2*(xk2+d*d1(2))^2+(xk3+d*d1(3))^2)) a1=c;
else b1=d;
end
end
a=(b1+a1)/2;
xk4=xk1+a*d1(1);
xk5=xk2+a*d1(2);
xk6=xk3+a*d1(3);
df2=[1+2*xk4*exp(xk4^2+2*xk5^2+xk6^2);1+4*xk5*exp(xk4^2+2*xk5^2+xk6^2);-5+2*xk6*exp(xk4^2+2*xk5^2+xk6^2)];
d2=(-1)*df2;
if (mod(i+1,2)==0) d1=d2;
else d1=d2+d1*(sqrt(df2(1)^2+df2(2)^2+df2(3)^2)^2)/sqrt(df(1)^2+df(2)^2+df(3)^2)^2;
end
xk1=xk4;
xk2=xk5;
xk3=xk6;
df=[1+2*xk1*exp(xk1^2+2*xk2^2+xk3^2);1+4*xk2*exp(xk1^2+2*xk2^2+xk3^2);-5+2*xk3*exp(xk1^2+2*xk2^2+xk3^2)];
d1=(-1)*df;
i=i+1;
end
fk=xk1+xk2-5*xk3+exp(xk1^2+2*xk2^2+xk3^2);
disp(xk1);
disp(xk2);
disp(xk3);
disp(fk);

%15 мод-ый метод Ньютона
xk1=0.7;
xk2=0.7;
xk3=0.7;
e=0.5;
del=0.8057;
i=0;
df=[1+2*xk1*exp(xk1^2+2*xk2^2+xk3^2);1+4*xk2*exp(xk1^2+2*xk2^2+xk3^2);-5+2*xk3*exp(xk1^2+2*xk2^2+xk3^2)];
ddf=[2*exp(xk1^2+2*xk2^2+xk3^2)+4*xk1^2*exp(xk1^2+2*xk2^2+xk3^2) 8*xk1*xk2*exp(xk1^2+2*xk2^2+xk3^2) 4*xk1*xk3*exp(xk1^2+2*xk2^2+xk3^2);8*xk1*xk2*exp(xk1^2+2*xk2^2+xk3^2) 4*exp(xk1^2+2*xk2^2+xk3^2)+16*xk2^2*exp(xk1^2+2*xk2^2+xk3^2) 8*xk2*xk3*exp(xk1^2+2*xk2^2+xk3^2);4*xk1*xk3*exp(xk1^2+2*xk2^2+xk3^2) 8*xk2*xk3*exp(xk1^2+2*xk2^2+xk3^2) 2*exp(xk1^2+2*xk2^2+xk3^2)+4*xk3^2*exp(xk1^2+2*xk2^2+xk3^2)];
ddf=ddf^-1;
dfn=ddf*df;
while (sqrt(df(1)^2+df(2)^2+df(3)^2)>del)
e1=0.000001;
del1=0.0005;
a1=-10.925;
b1=17;
while(b1-a1>2*e1)
c=a1+(3-sqrt(5))*(b1-a1)/2;
d=a1+(sqrt(5)-1)*(b1-a1)/2;
if (xk1-c*dfn(1)+xk2-c*dfn(2)-5*(xk3-c*dfn(3))+exp((xk1-c*dfn(1))^2+2*(xk2-c*dfn(2))^2+(xk3-c*dfn(3))^2)>xk1-d*dfn(1)+xk2-d*dfn(2)-5*(xk3-d*dfn(3))+exp((xk1-d*dfn(1))^2+2*(xk2-d*dfn(2))^2+(xk3-d*dfn(3))^2)) a1=c;
else b1=d;
end
end
a=(b1+a1)/2;
xk1=xk1-a*dfn(1);
xk2=xk2-a*dfn(2);
xk3=xk3-a*dfn(3);
df=[1+2*xk1*exp(xk1^2+2*xk2^2+xk3^2);1+4*xk2*exp(xk1^2+2*xk2^2+xk3^2);-5+2*xk3*exp(xk1^2+2*xk2^2+xk3^2)];
ddf=[2*exp(xk1^2+2*xk2^2+xk3^2)+4*xk1^2*exp(xk1^2+2*xk2^2+xk3^2) 8*xk1*xk2*exp(xk1^2+2*xk2^2+xk3^2) 4*xk1*xk3*exp(xk1^2+2*xk2^2+xk3^2);8*xk1*xk2*exp(xk1^2+2*xk2^2+xk3^2) 4*exp(xk1^2+2*xk2^2+xk3^2)+16*xk2^2*exp(xk1^2+2*xk2^2+xk3^2) 8*xk2*xk3*exp(xk1^2+2*xk2^2+xk3^2);4*xk1*xk3*exp(xk1^2+2*xk2^2+xk3^2) 8*xk2*xk3*exp(xk1^2+2*xk2^2+xk3^2) 2*exp(xk1^2+2*xk2^2+xk3^2)+4*xk3^2*exp(xk1^2+2*xk2^2+xk3^2)];
ddf=ddf^-1;
dfn=ddf*df;
disp(sqrt(df(1)^2+df(2)^2+df(3)));
end
fk=xk1+xk2-5*xk3+exp(xk1^2+2*xk2^2+xk3^2);
disp(xk1);
disp(xk2);
disp(xk3);
disp(fk);

%16 метод Квази-Ньютона
xk1=0.7;
xk2=0.7;
xk3=0.7;
df=[1+2*xk1*exp(xk1^2+2*xk2^2+xk3^2);1+4*xk2*exp(xk1^2+2*xk2^2+xk3^2);-5+2*xk3*exp(xk1^2+2*xk2^2+xk3^2)];
del=0.8057;
i=0;
ddf=[1 0 0;0 1 0;0 0 1];
dfn=ddf*df;
while (sqrt(df(1)^2+df(2)^2+df(3)^2)>del)
e1=0.000001;
del1=0.0005;
a1=0;
b1=5;
while(b1-a1>2*e1)
c=a1+(3-sqrt(5))*(b1-a1)/2;
d=a1+(sqrt(5)-1)*(b1-a1)/2;
if (xk1-c*dfn(1)+xk2-c*dfn(2)-5*(xk3-c*dfn(3))+exp((xk1-c*dfn(1))^2+2*(xk2-c*dfn(2))^2+(xk3-c*dfn(3))^2)>xk1-d*dfn(1)+xk2-d*dfn(2)-5*(xk3-d*dfn(3))+exp((xk1-d*dfn(1))^2+2*(xk2-d*dfn(2))^2+(xk3-d*dfn(3))^2)) a1=c;
else b1=d;
end
end
a=(b1+a1)/2;
xk4=xk1-a*dfn(1);
xk5=xk2-a*dfn(2);
xk6=xk3-a*dfn(3);
df2=[1+2*xk4*exp(xk4^2+2*xk5^2+xk6^2);1+4*xk5*exp(xk4^2+2*xk5^2+xk6^2);-5+2*xk6*exp(xk4^2+2*xk5^2+xk6^2)];
d=[xk3-xk1;xk4-xk2;xk6-xk3];
g=df2-df;
s=(d+ddf*g)*(d-ddf*g)'/((d-ddf*g)'*g);
if (mod(i+1,3)==0) ddf=[1 0 0;0 1 0;0 0 1];
else ddf=ddf+s;
end
i=i+1;
xk1=xk4;
xk2=xk5;
xk3=xk6;
df=[1+2*xk1*exp(xk1^2+2*xk2^2+xk3^2);1+4*xk2*exp(xk1^2+2*xk2^2+xk3^2);-5+2*xk3*exp(xk1^2+2*xk2^2+xk3^2)];
dfn=ddf*df;
end
fk=xk1+xk2-5*xk3+exp(xk1^2+2*xk2^2+xk3^2);
disp(xk1);
disp(xk2);
disp(xk3);
disp(fk);


%17 метод штрафов
xk1=1;
xk2=4;
xk3=5;
r=1;
e1=0.000001;
e2=0.0001;
e3=0.01;
i=0;
h=max(0,(-1)*xk1)^2+max(0,(-1)*xk2)^2+max(0,(-1)*xk3)^2+(xk1+xk2-4)^2+(xk2+xk3-8)^2;
while(h>e3)
h=max(0,(-1)*xk1)^2+max(0,(-1)*xk2)^2+max(0,(-1)*xk3)^2+(xk1+xk2-4)^2+(xk2+xk3-8)^2;
if (xk1>0) && (xk2>0) && (xk3>0) drh1=2*(xk1+xk2-4);
                                 drh2=2*((xk1+xk2-4)+(xk2+xk3-8));
                                 drh3=2*(xk2+xk3-8);
else if (xk1>0) && (xk2>0) && (xk3<0) drh1=2*(xk1+xk2-4);
                                      drh2=2*((xk1+xk2-4)+(xk2+xk3-8));
                                      drh3=2*xk3+2*(xk2+xk3-8);
    else if (xk1>0) && (xk2<0) && (xk3>0) drh1=2*(xk1+xk2-4);
                                          drh2=2*xk2+2*((xk1+xk2-4)+(xk2+xk3-8));
                                          drh3=2*(xk2+xk3-8);
        else if (xk1<0) && (xk2>0) && (xk3>0)  drh2=2*((xk1+xk2-4)+(xk2+xk3-8));
                                               drh3=2*(xk2+xk3-8);
                                               drh1=2*xk1+2*(xk1+xk2-4);
            else if (xk1<0) && (xk2>0) && (xk3<0) drh1=2*xk1+2*(xk1+xk2-4);
                                                  drh3=2*xk3+2*(xk2+xk3-8);
                                                  drh2=2*((xk1+xk2-4)+(xk2+xk3-8));
                else if (xk1<0) && (xk2<0) && (xk3>0)  drh1=2*xk1+2*(xk1+xk2-4);
                                                        drh2=2*xk2+2*((xk1+xk2-4)+(xk2+xk3-8));
                                                        drh3=2*(xk2+xk3-8);
                    else if (xk1>0) && (xk2<0) && (xk3<0)  drh1=2*(xk1+xk2-4);
                                                            drh2=2*xk2+2*((xk1+xk2-4)+(xk2+xk3-8));
                                                            drh3=2*xk3+2*(xk2+xk3-8);
                        else drh2=2*xk2+2*((xk1+xk2-4)+(xk2+xk3-8));
                             drh3=2*xk3+2*(xk2+xk3-8);
                             drh1=2*xk1+2*(xk1+xk2-4);
                        end
                    end
                end
            end
        end
    end
end
dr1=2*xk3+r*drh1;
dr2=2*xk2+r*drh2;
dr3=2*xk1-1+r*drh3;
d1=(-1)*dr1;
d2=(-1)*dr2;
d3=(-1)*dr3;
i1=0;
while (sqrt(dr1^2+dr2^2+dr3^2)>e2)
del1=0.0005;
a1=0;
b1=5;
while(b1-a1>2*e1)
c=a1+(3-sqrt(5))*(b1-a1)/2;
d=a1+(sqrt(5)-1)*(b1-a1)/2;
if (xk1+c*d1+xk2+c*d2-5*(xk3+c*d3)+exp((xk1+c*d1)^2+2*(xk2+c*d2)^2+(xk3+c*d3)^2)>xk1+d*d1+xk2+d*d2-5*(xk3+d*d3)+exp((xk1+d*d1)^2+2*(xk2+d*d2)^2+(xk3+d*d3)^2)) a1=c;
else b1=d;
end
end
a=(b1+a1)/2;
xk4=xk1+a*d1;
xk5=xk2+a*d2;
xk6=xk3+a*d3;%xk4,5,6
if (xk4>0) && (xk5>0) && (xk6>0) drh4=2*(xk4+xk5-4);
                                 drh5=2*((xk4+xk5-4)+(xk5+xk6-8));
                                 drh6=2*(xk5+xk6-8);
else if (xk4>0) && (xk5>0) && (xk6<0) drh4=2*(xk4+xk5-4);
                                      drh5=2*((xk4+xk5-4)+(xk5+xk6-8));
                                      drh6=2*xk6+2*(xk5+xk6-8);
    else if (xk4>0) && (xk5<0) && (xk6>0) drh4=2*(xk4+xk5-4);
                                          drh5=2*xk5+2*((xk4+xk5-4)+(xk5+xk6-8));
                                          drh6=2*(xk5+xk6-8);
        else if (xk4<0) && (xk5>0) && (xk6>0)  drh5=2*((xk4+xk5-4)+(xk5+xk6-8));
                                               drh6=2*(xk5+xk6-8);
                                               drh4=2*xk4+2*(xk4+xk5-4);
            else if (xk4<0) && (xk5>0) && (xk6<0) drh4=2*xk4+2*(xk4+xk5-4);
                                                  drh6=2*xk6+2*(xk5+xk6-8);
                                                  drh5=2*((xk4+xk5-4)+(xk5+xk6-8));
                else if (xk4<0) && (xk5<0) && (xk6>0)  drh4=2*xk4+2*(xk4+xk5-4);
                                                        drh5=2*xk5+2*((xk4+xk5-4)+(xk5+xk6-8));
                                                        drh6=2*(xk5+xk6-8);
                    else if (xk4>0) && (xk5<0) && (xk6<0)  drh4=2*(xk4+xk5-4);
                                                            drh5=2*xk5+2*((xk4+xk5-4)+(xk5+xk6-8));
                                                            drh6=2*xk6+2*(xk5+xk6-8);
                        else drh5=2*xk5+2*((xk4+xk5-4)+(xk5+xk6-8));
                             drh6=2*xk6+2*(xk5+xk6-8);
                             drh4=2*xk4+2*(xk4+xk5-4);
                        end
                    end
                end
            end
        end
    end
end
dr4=2*xk6+r*drh4;
dr5=2*xk5+r*drh5;
dr6=2*xk4-1+r*drh6;
d4=(-1)*dr4;
d5=(-1)*dr5;
d6=(-1)*dr6;
if (mod(i1+1,2)==0) d1=d4;
                   d2=d5;
                   d3=d6;
else d1=d4+d4*(sqrt(dr4^2+dr5^2+dr6^2)^2/sqrt(dr1^2+dr2^2+dr3^2)^2);
     d2=d5+d5*(sqrt(dr4^2+dr5^2+dr6^2)^2/sqrt(dr1^2+dr2^2+dr3^2)^2);
     d3=d6+d6*(sqrt(dr4^2+dr5^2+dr6^2)^2/sqrt(dr1^2+dr2^2+dr3^2)^2);
end
xk1=xk4;
xk2=xk5;
xk3=xk6;
if (xk1>0) && (xk2>0) && (xk3>0) drh1=2*(xk1+xk2-4);
                                 drh2=2*((xk1+xk2-4)+(xk2+xk3-8));
                                 drh3=2*(xk2+xk3-8);
else if (xk1>0) && (xk2>0) && (xk3<0) drh1=2*(xk1+xk2-4);
                                      drh2=2*((xk1+xk2-4)+(xk2+xk3-8));
                                      drh3=2*xk3+2*(xk2+xk3-8);
    else if (xk1>0) && (xk2<0) && (xk3>0) drh1=2*(xk1+xk2-4);
                                          drh2=2*xk2+2*((xk1+xk2-4)+(xk2+xk3-8));
                                          drh3=2*(xk2+xk3-8);
        else if (xk1<0) && (xk2>0) && (xk3>0)  drh2=2*((xk1+xk2-4)+(xk2+xk3-8));
                                               drh3=2*(xk2+xk3-8);
                                               drh1=2*xk1+2*(xk1+xk2-4);
            else if (xk1<0) && (xk2>0) && (xk3<0) drh1=2*xk1+2*(xk1+xk2-4);
                                                  drh3=2*xk3+2*(xk2+xk3-8);
                                                  drh2=2*((xk1+xk2-4)+(xk2+xk3-8));
                else if (xk1<0) && (xk2<0) && (xk3>0)  drh1=2*xk1+2*(xk1+xk2-4);
                                                        drh2=2*xk2+2*((xk1+xk2-4)+(xk2+xk3-8));
                                                        drh3=2*(xk2+xk3-8);
                    else if (xk1>0) && (xk2<0) && (xk3<0)  drh1=2*(xk1+xk2-4);
                                                            drh2=2*xk2+2*((xk1+xk2-4)+(xk2+xk3-8));
                                                            drh3=2*xk3+2*(xk2+xk3-8);
                        else drh2=2*xk2+2*((xk1+xk2-4)+(xk2+xk3-8));
                             drh3=2*xk3+2*(xk2+xk3-8);
                             drh1=2*xk1+2*(xk1+xk2-4);
                        end
                    end
                end
            end
        end
    end
end
dr1=2*xk3+r*drh1;
dr2=2*xk2+r*drh2;
dr3=2*xk1-1+r*drh3;
d1=(-1)*dr1;
d2=(-1)*dr2;
d3=(-1)*dr3;
i1=i1+1;
end
r=r*10;
i=i+1;
disp(i);
end
fk=xk2^2+2*xk1*xk3-xk3;
disp(xk1);
disp(xk2);
disp(xk3);
disp(fk);