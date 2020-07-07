function [res]=Fibo(y,a,b,e,beta) 
h=[1 1 2 3 5 8 13 21 34 55 89 144 233]; 
for i=1:13 
if (b-a)/h(1,i+1)*1.1<=2*e 
n=i; 
break; 
end 
end 
c=a+(b-a)*(h(1,n-1)/h(1,n+1)) 
d=a+(b-a)*(h(1,n)/h(1,n+1)) 
k=2; 
for i=n-1:-1:1 
i 
if y(c)>y(d) 
k=k+1; 
a=c 
c=d 
if i-1>=1 
d=a+(b-a)*(h(1,i)/h(1,i+1)) 
d 
c 
if roundn(d,-3)==roundn(c,-3) 
d=d+beta; 
end 
end 
else 
k=k+1; 
b=d 
d=c 
if i-1>=1 
c=a+(b-a)*(h(1,i-1)/h(1,i+1)) 
if roundn(d,-3)==roundn(c,-3) 
d=d+beta; 
end 
end 
end 

end 
xmin=(a+b)/2 
k 
res=xmin; 

end

