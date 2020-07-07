function ovrag2(y,epsilon,x1,x2) 
tic; 
x01=x1; 
x02=x2; 
syms x3; 
syms x4; 
f=sym(y); 
df1=diff(f,'x3'); 
df2=diff(f,'x4'); 
syms alphak; 
y1=x01-alphak*subs(df1,{x3,x4},[x01,x02]); 
y2=x02-alphak*subs(df2,{x3,x4},[x01,x02]); 
z(alphak)=y(y1,y2) 
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
alpha=roundn(min,-3) 

y1=x01-alpha*subs(df1,{x3,x4},[x01,x02]); 
y2=x02-alpha*subs(df2,{x3,x4},[x01,x02]); 

x01=x01+0.1; 
x02=x02+0.1; 

yk1=x01-alphak*subs(df1,{x3,x4},[x01,x02]); 
yk2=x02-alphak*subs(df2,{x3,x4},[x01,x02]); 
z(alphak)=y(yk1,yk2) 
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
alpha=roundn(min,-3) 

yk1=roundn(x01-alpha*subs(df1,{x3,x4},[x01,x02]),-3); 
yk2=roundn(x02-alpha*subs(df2,{x3,x4},[x01,x02]),-3); 

syms alpha1; 
y11=y1+alpha1*(y1-yk1) 
y22=y2+alpha1*(y2-yk2) 
z2(alpha1)=y(y11,y22) 
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

alpha=roundn(min,-3) 

x1=roundn(y1+alpha*(y1-yk1),-3); 
x2=roundn(y2+alpha*(y2-yk2),-3); 

while (sqrt((subs(df1,{x3,x4},[x1,x2]))^2+(subs(df2,{x3,x4},[x1,x2]))^2)>=epsilon) 
x01=x1; 
x02=x2; 
y1=x01-alphak*subs(df1,{x3,x4},[x01,x02]); 
y2=x02-alphak*subs(df2,{x3,x4},[x01,x02]); 
z(alphak)=y(y1,y2) 
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
alpha=roundn(min,-3) 

y1=x01-alpha*subs(df1,{x3,x4},[x01,x02]); 
y2=x02-alpha*subs(df2,{x3,x4},[x01,x02]); 

x01=x01+0.1; 
x02=x02+0.1; 

yk1=x01-alphak*subs(df1,{x3,x4},[x01,x02]); 
yk2=x02-alphak*subs(df2,{x3,x4},[x01,x02]); 
z(alphak)=y(yk1,yk2) 
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
alpha=roundn(min,-3) 

yk1=roundn(x01-alpha*subs(df1,{x3,x4},[x01,x02]),-3); 
yk2=roundn(x02-alpha*subs(df2,{x3,x4},[x01,x02]),-3); 


y11=y1+alpha1*(y1-yk1) 
y22=y2+alpha1*(y2-yk2) 
z2(alpha1)=y(y11,y22) 
a=0; 
b=10; 
e=0.000001; 
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

alpha=roundn(min,-3) 

x1=roundn(y1+alpha*(y1-yk1),-3); 
x2=roundn(y2+alpha*(y2-yk2),-3); 
end 
xmin1=x1 
xmin2=x2 
toc; 
end

