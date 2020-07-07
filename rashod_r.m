function rashod_r(y,epsilon,x1,x2)
tic;
x01=x1; 
x02=x2; 
 
syms x4; 
syms x5; 
 
f=sym(y); 
df1(x4,x5)=diff(f,'x4');
df2(x4,x5)=diff(f,'x5'); 

k=1;
alpha=k;
x1=x01-alpha*df1(x01,x02);
x2=x02-alpha*df2(x01,x02);
df1(x01,x02)
step='step1'
while sqrt((df1(x1,x2))^2+(df2(x1,x2))^2)>=epsilon 
    step='step2'
k=k+1;
alpha=1/k;
x1=x1-alpha*df1(x1,x2)
x2=x2-alpha*df2(x1,x2)


end
step='step3'
vpa(x1,4)
vpa(x2,4)
toc;


end

