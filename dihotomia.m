function dihotomia(a,e,b) 
delta=0.005; 
k=0; 
min=(a+b)/2; 
n=1 
while b-a>2*e 
c=(b+a)/2-delta/2 
d=(b+a)/2+delta/2 
fd=(d-0.9)^2 + (d-1.1)^4  
fc=(c-0.9)^2 + (c-1.1)^4
k=k+2; 
if fc<=fd 
b=d 
else 
a=c 
end 
min=(a+b)/2 
% n=min 

%if min==n 
% min 
% k 
% break 
%end 


end 
min 
k 


end

