function Kasat(y,a,b,e,delta)
k=0;
min=(a+b)/2
while b-a>=e  
syms x;
f=sym(y);
F=diff(f);
c=(subs(F,x,a)*a-subs(f,x,a)-subs(F,x,b)*b+subs(f,x,b))/(subs(F,x,a)-subs(F,x,b))
subs(F,x,c)
if subs(F,x,c)>0
    b=c;
else
    if subs(F,x,c)<0
a=c;
    else min=c;
    end 
end
k=k+1;
min=(a+b)/2;
end
min
k
end