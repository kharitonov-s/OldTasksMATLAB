function soprg_naprav2(y,epsilon,x1,x2) 
tic; 
k=1; 
n=2; 
x01=x1; 
x02=x2; 
syms x3; 
syms x4; 
f=sym(y); 
df1=diff(f,'x3'); 
df2=diff(f,'x4'); 
syms alphak; 
dk1=-subs(df1,x3,x01) 
dk2=-subs(df2,x4,x02) 
x1=x01+alphak*dk1; 
x2=x02+alphak*dk2; 
y1(alphak)=y(x1,x2) 
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
while (sqrt((subs(df1,x3,x1))^2+(subs(df2,x4,x2))^2)>=epsilon) 
if rem(k,n)==0 
dk1=-subs(df1,x3,x1); 
dk2=-subs(df2,x4,x2); 
else 
bk=(sqrt((subs(df1,x3,x1))^2+(subs(df2,x4,x2))^2))^2/(sqrt((subs(df1,x3,x01))^2+(subs(df2,x4,x02))^2))^2 
d=subs(df1,x3,x1) 
t=dk1 
dk1=bk*dk1-subs(df1,x3,x1) 
s=subs(df2,x4,x2) 
r=dk2 
dk2=bk*dk2-subs(df2,x4,x2) 
x01=x1; 
x02=x2; 
end 
k=k+1 
x01 
dk1 
x02 
dk2 
x1=x01+alphak*dk1; 
x2=x02+alphak*dk2; 
y1(alphak)=y(x1,x2) 
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
w=sqrt((subs(df1,x3,x1))^2+(subs(df2,x4,x2))^2) 
end 
xmin1=x1 
xmin2=x2 


toc; 
end