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

% inp=input('����� ������ ����:');
% switch inp
%     case {1,'01'}
%         disp('������')
%     case {2,'02'}
%         disp('�������')
%     case {3,'3'}
%         disp('����')
%     case {4,'04'}
%         disp('������')
%     case {5,'05'}
%         disp('���')
%     case {6,'06'}
%         disp('����')
%     case {7,'07'}
%         disp('����')
%     case {8,'08'}
%         disp('������')
%     case {9,'09'}
%         disp('��������')
%     case {10}
%         disp('�������')
%     case {11}
%         disp('������')
%     case {12}
%         disp('�������')
%     otherwise
%         disp('������ �� ���������� ��� ���!')
% end
