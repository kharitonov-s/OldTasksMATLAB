function fixed_step31(y,epsilon,x1,x2)
tic;
x01=x1; 
x02=x2; 
 
syms x4; 
syms x5; 

f=sym(y); 
df1(x4,x5)=diff(f,'x4') ;
df2(x4,x5)=diff(f,'x5') ;

alpha=0.1;
x1=x01-alpha*df1(x01,x02);
x2=x02-alpha*df2(x01,x02);

while sqrt((df1(x1,x2))^2+(df2(x1,x2))^2)>=epsilon 
x1=x1-alpha*df1(x1,x2);
x2=x2-alpha*df2(x1,x2);

end
vpa(x1,4)
 vpa(x2,4)

toc;
end