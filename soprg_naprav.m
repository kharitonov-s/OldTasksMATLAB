function soprg_naprav(y,epsilon,x1,x2) 
tic; 
k=0; 
n=2; 
x01=x1; 
x02=x2; 
 
syms x4; 
syms x5; 
 
f=sym(y); 
df1(x4,x5)=diff(f,'x4');
df2(x4,x5)=diff(f,'x5'); 
 
syms alphak; 
dk1=-df1(x01,x02); 
dk2=-df2(x01,x02); 

x1=x01+alphak*dk1;
x2=x02+alphak*dk2; 

y1(alphak)=y(x1,x2); 
a=-1; 
b=1; 
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

x1=x01+alpha*dk1; 
x2=x02+alpha*dk2; 
 
while sqrt((df1(x1,x2))^2+(df2(x1,x2))^2)>=epsilon 
if rem(k+1,n)==0 
dk1=-df1(x1,x2);
dk2=-df2(x1,x2);

else 
bk=(df1(x1,x2)^2+(df2(x1,x2))^2)/((df1(x01,x02))^2+(df2(x01,x02))^2);
 
dk1=bk*dk1-df1(x1,x2); 
dk2=bk*dk2-df2(x1,x2); 
 

end 
x01=x1; 
x02=x2; 

k=k+1; 

x1=x01+alphak*dk1; 
x2=x02+alphak*dk2; 

y1(alphak)=y(x1,x2); 
a=-1; 
b=1; 
e=0.00001; 
min=(a+b)/2; 
c=a+((3-sqrt(5))/2)*(b-a);
d=a+((sqrt(5)-1)/2)*(b-a);

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

x1=x01+alpha*dk1; 
x2=x02+alpha*dk2;
 

end 
xmin1=vpa(x1,3) 
xmin2=vpa(x2,3) 


toc; 
end