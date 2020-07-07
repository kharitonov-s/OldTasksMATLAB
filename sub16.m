function [ out ] = sub16()
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
x=1:0.1:2*pi;
col={'r','g','b','c','m','y','k','w'};
len1=length(col);
out=0;

for k=1:16
    y=sin(k*x);
    colInd=randi([1 len1],1);
    colVal=col{colInd};
    plotSett=['-' colVal '*'];
    subplot(4,4,k)
    plot(x,y,plotSett)
  ylim([-min(y)*1.25 max(y)*1.25])
    
    xlim([-min(x)*1.25 max(x)*1.25])
end
 
% R G B K Cyan Magenta Yellow blacK White

end

