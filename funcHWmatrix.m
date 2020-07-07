function res= HWmatrix
inp=input('Input number please - ')
n=inp;

b=2+3*(n-3);
t1=-1:-1:-n;
tl=-n:1:-1;
t2=-2:-1:-n+1;
t2=t2';
t3=-n+1:1:-2;
t3=t3';
t4=2:3:b;
t5=diag(t4);

res=[t1;t2 t5 t3;tl];
res(n,n)=res(n-1,n-1)+3;
end

