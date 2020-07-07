% function [ out ] = Untitled6( inp )
% %UNTITLED6 Summary of this function goes here
% %   Detailed explanation goes here
% inp=randi([-5 3],3)
% t1=find(inp<0)
% 
% out=prod(inp(t1));
% 
% end


% function [ out ] = Untitled7( inp )
% %UNTITLED7 Summary of this function goes here
% %   Detailed explanation goes here
% 
% if isvector(inp)
%     t1=find(inp==1)
%     t2=find(mod(t1,2)==0);
%     out=length(t2)
% end 
% end

%Найти эл-ты вектора значения которых совпадают с индексом 
function [ out ] = Untitled7( inp )
t1=(inp==find(inp))
if t1==0
% t2=(t1*inp)

end

% Определить элемент матрицы наиболее близкий к переданному числу
