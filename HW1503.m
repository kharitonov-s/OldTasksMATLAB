 tochnost=10;

for k=1:tochnost
    a=((-1)^k*1^(2*k+1))/factorial(2*k+1);
    disp(a)
end
disp(a)

% z=0;
% g=0;
% for b=1:100
%     if mod(b,3)==0
%         z=z+b;
%     end
%     if mod(b,3)==0 && mod(b,4)==0
%         g=g+b;
%     end
% end
% disp(z+g)

% inp=input('Номер месяца сюда:');
% switch inp
%     case {1,'01'}
%         disp('Январь')
%     case {2,'02'}
%         disp('Февраль')
%     case {3,'3'}
%         disp('Март')
%     case {4,'04'}
%         disp('Апрель')
%     case {5,'05'}
%         disp('Май')
%     case {6,'06'}
%         disp('Июнь')
%     case {7,'07'}
%         disp('Июль')
%     case {8,'08'}
%         disp('Август')
%     case {9,'09'}
%         disp('Сентябрь')
%     case {10}
%         disp('Октябрь')
%     case {11}
%         disp('Ноябрь')
%     case {12}
%         disp('Декабрь')
%     otherwise
%         disp('Стукни по клавиатуре еще раз!')
% end
