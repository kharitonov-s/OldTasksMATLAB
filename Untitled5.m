function [ res ] = Untitled5( inp )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
inp=magic(3)
t1=mean(inp(:));
ind=find(inp>t1);
inp(ind)=0;
res=inp;

end

