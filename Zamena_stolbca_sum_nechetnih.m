function [ out ] = Zamena_stolbca_sum_nechetnih( arr )
[a1,a2]=size(arr);
for k=1:a1
    s1=sum(arr(k,1:2:a2));
    arr(k,a2)=s1;
end
out=arr;
end

