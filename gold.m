function gold(a,b,e) 
k=0; 
min=(a+b)/2 ;
c=a+((3-sqrt(5))/2)*(b-a) ;
d=a+((sqrt(5)-1)/2)*(b-a) ;
if b-a<2*e 
k=2; 
end 
while b-a>2*e 
fd=(d-0.9)^2+(d-1.1)^4;
fc=(c-0.9)^2+(c-1.1)^4;
if fc>=fd 
a=c; 
c=d; 
d=a+((sqrt(5)-1)/2)*(b-a); 
else 
b=d ;
d=c ;
c=a+((3-sqrt(5))/2)*(b-a) ;
min=(a+b)/2 ;
end 

k=k+1; 
end 
min
k
end

