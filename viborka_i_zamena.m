

a=[1 2 3;...
    4 5 6;...
    7 8 9]


%������� � ������

%������ � ������ ��������

% �) ������������ ����������

% a(�����_������, �����_�������)

a(3,3)

a(3,3)=25 %������

%�) �������� ����������

a(7)

stolb=a(:) %������� ��� �������� � ����� �������

for k = 1:length(stolb)
    disp(['k = ' num2str(k) ' : ' num2str(stolb(k))])
end

linIndex = sub2ind([3 3],1,3) %���� �������� ������������ ������ � ����� ��������

clc

a=[1 2 3;...
    4 5 6;...
    7 8 9]

% ������ � ������� � ��������

b=a(2,:) %������ �� ������ ������

a(2,:) = ones(1,3);
a

a(:,3) %������ � ������� 3

c=a(1:2,:)

d = a(:,[1 3])

[t1 t2] = size(a);

e = a(2:end, :) %�� ������ ������ �� ����� 
e = a(2:t1, :)







