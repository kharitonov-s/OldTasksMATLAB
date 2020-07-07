 function res= matrix(n) 

a1=ones(1,n); 
a3=a1; 
a2=[ones(n-2,1) zeros(n-2) ones(n-2,1)]; 
res=[a1;a2;a3]; 