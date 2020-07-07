function grandspysk_poryadok_p(y,epsilon,x1,x2) 
tic; 
x01=x1; 
x02=x2; 
syms x3; 
syms x4; 
f=sym(y); 
df1=diff(f,'x3'); 
df2=diff(f,'x4'); 
syms alphak; 
x1=x01-alphak*subs(df1,{x3,x4},[x01,x02]); 
x2=x02-alphak*subs(df2,{x3,x4},[x01,x02]); 
y1(alphak)=y(x1,x2) 
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
min=(a+b)/2; 
end 


end 
alpha=roundn(min,-3) 

x1=x01-alpha*subs(df1,{x3,x4},[x01,x02]) 
x2=x02-alpha*subs(df2,{x3,x4},[x01,x02]) 
k=1 
while (sqrt((subs(df1,{x3,x4},[x1,x2]))^2+(subs(df2,{x3,x4},[x1,x2]))^2)>=epsilon)&&k<2 
x11=x1-alphak*subs(df1,{x3,x4},[x1,x2]) 
x22=x2-alphak*subs(df2,{x3,x4},[x1,x2]) 
y1(alphak)=y(x11,x22) 
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
min=(a+b)/2; 
end 


end 
alpha=roundn(min,-3) 

x1=roundn(x1-alpha*subs(df1,{x3,x4},[x1,x2]),-3) 
x2=roundn(x2-alpha*subs(df2,{x3,x4},[x1,x2]),-3) 
k=2 
end 
syms alpha1; 
x11=x01+alpha1*(x1-x01) 
x22=x02+alpha1*(x2-x02) 
y2(alpha1)=y(x11,x22) 
a=0; 
b=2; 
e=0.000001; 
min=(a+b)/2; 
c=a+((3-sqrt(5))/2)*(b-a); 
d=a+((sqrt(5)-1)/2)*(b-a); 

if b-a<2*e 

end 
while b-a>2*e 
fc=y2(c); 
fd=y2(d); 
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
% alpha=min 
% x1=x01+alpha*(x1-x01) 
% x2=x02+alpha*(x2-x02) 
% end 
alpha=roundn(min,-3) 
x001=x1; 
x002=x2; 
x1=roundn(x01+alpha*(x1-x01),-3) 
x2=roundn(x02+alpha*(x2-x02),-3) 

while (sqrt((subs(df1,{x3,x4},[x01,x02]))^2+(subs(df2,{x3,x4},[x01,x02]))^2)>=epsilon) 
x01=x001; 
x02=x002; 
x11=x01+alpha1*(x1-x01) 
x22=x02+alpha1*(x2-x02) 
y2(alpha1)=y(x11,x22) 
a=0; 
b=2; 
e=0.00001; 
min=(a+b)/2; 
c=a+((3-sqrt(5))/2)*(b-a); 
d=a+((sqrt(5)-1)/2)*(b-a); 

if b-a<2*e 

end 
while b-a>2*e 
fc=y2(c); 
fd=y2(d); 
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
x001=x1; 
x002=x2; 
x1=roundn(x01+alpha*(x1-x01),-3) 
x2=roundn(x02+alpha*(x2-x02),-3) 

end 
x1 
x2 

toc; 
end
