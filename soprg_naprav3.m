function soprg_naprav3(y,epsilon,x1,x2,x3) 
tic; 
k=1; 
n=3; 
x01=x1; 
x02=x2; 
x03=x3;
syms x4; 
syms x5; 
syms x6; 
f=sym(y); 
df1(x4,x5,x6)=diff(f,'x4') 
df2(x4,x5,x6)=diff(f,'x5') 
df3(x4,x5,x6)=diff(f,'x6') 
syms alphak; 
dk1=-df1(x01,x02,x03) 
dk2=-df2(x01,x02,x03) 
dk3=-df3(x01,x02,x03)
x1=x01+alphak*dk1; 
x2=x02+alphak*dk2; 
x3=x03+alphak*dk3;
y1(alphak)=y(x1,x2,x3) 
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
min=(a+b)/2; 
end 


end 
alpha=min 

x1=x01+alpha*dk1 
x2=x02+alpha*dk2 
x3=x03+alpha*dk3
while sqrt((df1(x1,x2,x3))^2+(df2(x1,x2,x3))^2+(df3(x1,x2,x3))^2)>=epsilon 
if rem(k,n)==0 
dk1=-df1(x1,x2,x3); 
dk2=-df2(x1,x2,x3); 
dk3=-df3(x1,x2,x3);
else 
bk=(sqrt(df1(x1,x2,x3))^2+(df2(x1,x2,x3))^2+(df3(x1,x2,x3))^2)^2/(sqrt((df1(x01,x02,x03))^2+(df2(x01,x02,x03))^2+(df3(x01,x02,x03))^2))^2 
% d=subs(df1,x4,x1) 
% t=dk1 
dk1=bk*dk1-df1(x1,x2,x3) 
% s=subs(df2,x5,x2) 
% r=dk2 
dk2=bk*dk2-df2(x1,x2,x3) 
dk3=bk*dk3-df3(x1,x2,x3)
x01=x1; 
x02=x2; 
x03=x3;
end 
k=k+1 
% x01 
% dk1 
% x02 
% dk2 
x1=x01+alphak*dk1
x2=x02+alphak*dk2
x3=x03+alphak*dk3
y1(alphak)=y(x1,x2,x3) 
a=0; 
b=1; 
e=0.000001; 
min=(a+b)/2; 
c=a+((3-sqrt(5))/2)*(b-a)
d=a+((sqrt(5)-1)/2)*(b-a) 
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
alpha=min 

x1=x01+alpha*dk1 
x2=x02+alpha*dk2 
x3=x03+alpha*dk3
% w=sqrt((df1(x1,x2,x3))^2+(df2(x1,x2,x3))^2+(df3(x1,x2,x3))^2) 
end 
xmin1=x1 
xmin2=x2 
xmin3=x3


toc; 
end