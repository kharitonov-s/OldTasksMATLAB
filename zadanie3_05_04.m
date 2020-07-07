function [ output_args ] = zadanie3_05_04( inp )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
inp=[43 56 76 32;...
     34 0 0 0;...
     12 32 32 12;...
     0 0 0 234]
[a1,a2]=size(inp);
for k=1:a1
    h=0;
    for z=1:a2
        
        if inp(k,z)==0
            h=h+1;
        end
        if h>2
            inp(k,:)=ones;
        end
            
    end
end
inp
end

