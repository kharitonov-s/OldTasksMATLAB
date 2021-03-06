function rashod_ryad(y,epsilon,x1,x2) 
tic; 
x01=x1; 
x02=x2; 
 
syms x3; 
syms x4; 
 
f=sym(y); 
df1(x3,x4)=diff(f,'x3');
df2(x3,x4)=diff(f,'x4'); 

k=1;
alpha=k;
x1=x01-alpha*df1(x01,x02);
x2=x02-alpha*df2(x01,x02);
while sqrt((subs(df1,{x3,x4},[x1,x2]))^2+(subs(df2,{x3,x4},[x1,x2]))^2)>=epsilon
k=k+1; 
alpha=1/k; 
x1=x1-alpha*subs(df1,{x3,x4},[x1,x2]) 
x2=x2-alpha*subs(df2,{x3,x4},[x1,x2]) 
end 
x1 
x2 
toc; 
end
