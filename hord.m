function hord(y,a,e) 
tic 
syms x; 
f=sym(y); 
F=diff(f) 
rk_1=a 
rk=rk_1+e 
rkpl1=rk-(subs(F,x,rk)*(rk-rk_1))/(subs(F,x,rk)-subs(F,x,rk_1)) 
while abs(rkpl1-rk)>e 
rk_1=rk 
rk=rkpl1 
abs(subs(F,x,rk_1)) 
rkpl1=rk-(subs(F,x,rk)*(rk-rk_1))/(subs(F,x,rk)-subs(F,x,rk_1)) 
end 
min=rkpl1; 
min 
toc 


end

