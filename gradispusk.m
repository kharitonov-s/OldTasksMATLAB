function gradispusk(y,epsilon,x1,x2,delta,alpha) 
tic; 
t=0; 
a=alpha; 
x01=x1; 
x02=x2; 
syms x3; 
syms x4; 
f=sym(y); 
df1=diff(f,'x3'); 
df2=diff(f,'x4'); 
x1=x01-alpha*subs(df1,{x3,x4},[x01,x02]) ;
x2=x02-alpha*subs(df2,{x3,x4},[x01,x02]) ;

while (sqrt((subs(df1,{x3,x4},[x1,x2]))^2+(subs(df2,{x3,x4},[x1,x2]))^2)>=epsilon)||t==0 
t=1; 
alpha=a; 
while y(x1,x2)-y(x01,x02)>-alpha*delta*(sqrt((subs(df1,{x3,x4},[x01,x02]))^2+(subs(df2,{x3,x4},[x01,x02]))^2))^2 
alpha=alpha/2 ;
x1=x01-alpha*subs(df1,{x3,x4},[x01,x02]) ;
x2=x02-alpha*subs(df2,{x3,x4},[x01,x02]) ;
end 
x01=x1; 
x02=x2; 
end 
x1min=x1 
x2min=x2 
toc; 
end

% y(x1,x2)-y(x01,x02)<=-alpha*delta*(subs(df1,x3,x01)^2+subs(df2,x4,x02)^2)
% y(x1,x2)-y(x01,x02)
% -alpha*delta*(subs(df1,x3,x01)^2+subs(df2,x4,x02)^2)
% %no
% alpha=alpha/2
% x1=x01-alpha*subs(df1,x3,x01);
% x2=x02-alpha*subs(df2,x4,x02);
% 
% y(x1,x2)-y(x01,x02)<=-alpha*delta*(subs(df1,x3,x01)^2+subs(df2,x4,x02)^2)
% y(x1,x2)-y(x01,x02)
% -alpha*delta*(subs(df1,x3,x01)^2+subs(df2,x4,x02)^2)
% %no
% alpha=alpha/2
% x1=x01-alpha*subs(df1,x3,x01)
% x2=x02-alpha*subs(df2,x4,x02)
% 
% y(x1,x2)-y(x01,x02)<=-alpha*delta*(subs(df1,x3,x01)^2+subs(df2,x4,x02)^2)
% y(x1,x2)-y(x01,x02)
% -alpha*delta*(subs(df1,x3,x01)^2+subs(df2,x4,x02)^2)
% %no
% alpha=alpha/2
% x1=x01-alpha*subs(df1,x3,x01)
% x2=x02-alpha*subs(df2,x4,x02)
% 
% y(x1,x2)-y(x01,x02)<=-alpha*delta*(subs(df1,x3,x01)^2+subs(df2,x4,x02)^2)
% y(x1,x2)-y(x01,x02)
% -alpha*delta*(subs(df1,x3,x01)^2+subs(df2,x4,x02)^2)
% %no
% alpha=alpha/2
% x1=x01-alpha*subs(df1,x3,x01)
% x2=x02-alpha*subs(df2,x4,x02)
% 
% y(x1,x2)-y(x01,x02)<=-alpha*delta*(subs(df1,x3,x01)^2+subs(df2,x4,x02)^2)
% y(x1,x2)-y(x01,x02)
% -alpha*delta*(subs(df1,x3,x01)^2+subs(df2,x4,x02)^2)
% %no
% alpha=alpha/2
% x1=x01-alpha*subs(df1,x3,x01)
% x2=x02-alpha*subs(df2,x4,x02)
% 
% y(x1,x2)-y(x01,x02)<=-alpha*delta*(subs(df1,x3,x01)^2+subs(df2,x4,x02)^2)
% y(x1,x2)-y(x01,x02)
% -alpha*delta*(subs(df1,x3,x01)^2+subs(df2,x4,x02)^2)
% %no
% alpha=alpha/2
% x1=x01-alpha*subs(df1,x3,x01)
% x2=x02-alpha*subs(df2,x4,x02)
% 
% y(x1,x2)-y(x01,x02)<=-alpha*delta*(subs(df1,x3,x01)^2+subs(df2,x4,x02)^2)
% y(x1,x2)-y(x01,x02)
% -alpha*delta*(subs(df1,x3,x01)^2+subs(df2,x4,x02)^2)
% %no
% alpha=alpha/2
% x1=x01-alpha*subs(df1,x3,x01)
% x2=x02-alpha*subs(df2,x4,x02)
% 
% y(x1,x2)-y(x01,x02)<=-alpha*delta*(subs(df1,x3,x01)^2+subs(df2,x4,x02)^2)
% y(x1,x2)-y(x01,x02)
% -alpha*delta*(subs(df1,x3,x01)^2+subs(df2,x4,x02)^2)
% %bo
% alpha=alpha/2
% x1=x01-alpha*subs(df1,x3,x01)
% x2=x02-alpha*subs(df2,x4,x02)
% 
% y(x1,x2)-y(x01,x02)<=-alpha*delta*(subs(df1,x3,x01)^2+subs(df2,x4,x02)^2)
% y(x1,x2)-y(x01,x02)
% -alpha*delta*(subs(df1,x3,x01)^2+subs(df2,x4,x02)^2)
% %no
% alpha=alpha/2
% x1=x01-alpha*subs(df1,x3,x01)
% x2=x02-alpha*subs(df2,x4,x02)
% 
% y(x1,x2)-y(x01,x02)<=-alpha*delta*(subs(df1,x3,x01)^2+subs(df2,x4,x02)^2)
% y(x1,x2)-y(x01,x02)
% -alpha*delta*(subs(df1,x3,x01)^2+subs(df2,x4,x02)^2)

%x1min=1;
 %x2min=1;

% 
% while y(x1,x2)-y(x01,x02)>-alpha*delta*(subs(df1,x3,x01)^2+subs(df2,x4,x02)^2)
%     alpha=alpha/2
%     x1=x01-alpha*subs(df1,x3,x01)
%     x2=x02-alpha*subs(df2,x4,x02)
%     x1min=min(x1,x1min);
%     x2min=min(x2,x2min);
%     if sqrt((subs(df1,x3,x1))^2+(subs(df2,x4,x2))^2)>epsilon
%         break;
%     end
% end
% x1min
% x2min






