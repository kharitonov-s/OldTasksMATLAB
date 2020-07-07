a=[1 2 3; 4 5 6; 7 8 9]
[a1 a2]=size(a)
for k=1:a1
    for s=1:a2
       for n=2:a2
        if a(k,s)~=a(k,n)
            a=a(k,s)+10
        end
        end
    end
end
        