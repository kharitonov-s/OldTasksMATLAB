function [ out ] = korni_v_cicle( inp )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
inp=[2 4 -6 8 2 -2]
disp(['Исх корни= ',num2str(roots(inp).')]);
for k=1:4
    inp=polyder(inp);
    disp([num2str(k),'ая производная= ',num2str(roots(inp).')]);
    k=k+1;
end
    

end

