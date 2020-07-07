function passive_search(e,a,b) 
k=0; 
min=(a-0.9)^2 + (a-1.1)^4; 
minx=a; 
for x=a:e:b 
y=(x-0.9)^2 + (x-1.1)^4; 
k=k+1; 
if min>y 
min=y; 
minx=x; 
end 
end 
minx 
k 
end