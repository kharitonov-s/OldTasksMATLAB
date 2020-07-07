function [ out ] = korni_polinoma( inp )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
a=-10;
b=10;
inp=[2 3 1];
for x=-100:0.01:100
    if polyval(inp,x)<b && polyval(inp,x)>0
       b=polyval(inp,x);
    end
    if polyval(inp,x)>a && polyval(inp,x)<0
        a=polyval(inp,x);
    end
end
a
b
    


end

