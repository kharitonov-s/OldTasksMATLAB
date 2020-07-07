%Основные конструкции языка МАТЛАБ
%if
% for
%     while 
%         switch

% rand() [0,1]

% randi() integers
% input

% inp=input('Input single number please:');
% 
% [rows,cols]=size(inp)
% 
% if rows==cols && rows==1 && isnumeric(inp)
%     
%     if inp>5
%         disp('Input bolshe 5')
%     else
%         disp('Input menshe ili raven 5')
%     end
% else
%     disp ('We need 1x1 number!')
% end

% inp='dsfsd';
% if [100 105 111 105 100] > 5;
% end
    
%SWITCH

% inp=input('Input:');
% 
% switch inp
%    case {5,'7'}
%       disp('Five')
%    case {7,'7'}
%       disp('Seven')
%    otherwise
%       disp('!five and !seven')
% end

%V1
% for k=1:5 % 1 2 3 4 5
%     disp(k)
% end
% 
% %V2
% for k=1:2.5:13 %шаг будет 2.5
%     disp(k)
% end
% 
% %V3
% ind=[11 7 18 25 3 8];
% for k=ind
%     disp(k)
% end

%while

e=input('->');
while e>0
    a=randi([1 9],1,8);
    disp(a)
    e=input('-> ');
    
end

%break
%continue
