a=randi(0:1,1,8)
ind1=find(a==0);
ind3=find((mod(ind1,2)==0));
res=length(ind3)