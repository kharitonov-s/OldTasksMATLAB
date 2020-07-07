function [ output_args ] = zadanie4_05_04( inp )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
inp=[43 56 76 32;...
     34 0 0 0;...
     12 32 32 12;...
     0 0 0 234]
[a1,a2]=size(inp);
for k=1:a1
    f=inp(k,:);
    for z=1:a2
        if inp(k,z)>mean(f)
            inp(k,z)=mean(f);
        end
    end
end
inp
end

