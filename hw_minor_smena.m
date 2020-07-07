a=[1 2 3 4; ...
    5 6 7 8 ; ...
    9 10 11 12;...
    13 14 15 16]

i=length(a);

g=zeros(i,i);
A=zeros(1,i);
for k=2:2:i
    g(k,:)=a(k,:);
    g(k-1,:)=a(:,k);
end
for k=2:2:i
    a(k,:)=g(k-1,:);
    a(:,k)=g(k,:);
    
end
a

A(1,1)=det(a(1:2,1:2));
A