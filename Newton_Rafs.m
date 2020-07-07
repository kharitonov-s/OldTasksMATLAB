function  Newton_Rafs (y,a,e)
syms x; 
f=sym(y); 
F=diff(f) 
V=diff(F) 
r=a; 
k=r; 
while abs(subs(F,x,r))>e 
abs(subs(F,x,r)) 
k=r-(subs(F,x,r)/subs(V,x,r)) 
r=k
end 
abs(subs(F,x,k)) 
k 
end
