function res= hw_minor_smena
inp=input('Zadaite matricu')
a=inp;
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
for k=1:i
    A(1,k)=det(a(1:k,1:k));
end
A
end

