%������� ��� ������ � ��������� (��������� �����)
% 1.��������������
% 2.��������������
% 3.��������������
% 4.����� ��������� (find)

a=magic(5);
b=randi([13 47],5,3); %��������� ����� � ��������� �� 13 �� 47 5�3

%size 
sz=size(a);

%length
len=length(b); %������������ ����������� �������

%nnz
t1=nnz([1 0 2 3 5 0]);

%ndims              ����������� �������
t2=ndims([1 2 1]);

%numel             ���-�� ��������� � ������
t3=numel(a);

%���� �������������� �������
%��� ����������� ���� ������� 

% ismatrix() 
% isvector() 
% iscolomn() 
% isrow()    
% isscalar() 
% isempty()  

iscolumn([1 2 3].');

%�-�� ��������������

%rotation - ��������
c=[1 2; 3 4]
rot90(c,-5); %�������� �� 90 ��������

%fliplr ������������ ������� ������� ����������� ������������ ��� flip left right

fliplr(c);

%flipud flip up down ����������� ������

%���������� (sort)
%��������� �� �������� ���������� �� �����������

a
sort([3 5 1 9],'descend'); %�� ��������
sort([3 5 1 9],'ascend'); %�� ����������� (����� �� ������ �.�. ��������)

%sortrows
%

sortrows(a);

%��������� ����� �������
reshape(a,25,1); 

% :
%����������� ������� � �������
a(:);

% ������� ���������� ������������ ������� �������

% 3.�������������� 
% 
% a = randint(3,3,[-5 8])
 a = randi([-5 8],3)
 
% det
% determinant 

t1=det(a)

%eig
%eigen values
%����������� ����� 

% eig(a)

% ����������� ������� 
clc
[s1 s2]=eig(a)

% s1 - ������� � ������� ������ ������� ��� ����������� ������ 
% s2 - ������������ ������� ����������� �����

% inv
% inverse
% �������� �������

t2=inv(a)

% pinv
% ��������������

t3=pinv(a)

clc
% sum
% �����
% ��� ������ ��������� ����� �� ��������
a
t4 = sum(a)

%��� ������� ��� ������ ����� ��������� 
t5=sum([1 2 3 4 5].')

%prod
%product
%������������ 
%����� ���� ��� �� ��� sum �� ����������� ��������

prod([1 2 3])
prod(a)
% prod(1:n) ���������

clc

% ������������ ����������� �������
% max
% min
% !!!����� ���� ��� sum
a
max(a) % ������������ �������� ������� ������� ������� 

clc
a
     

%cumsum ������������ �����
%cumprod ������������ ������������
% ����� ��� ������������ ��������� ���� �� ������

%mean - ������� �������������� 
%median - ������� ������� (���� ������ ����� �������� �� ��������� ��
%����������� � ������� � 2� ��������� � �������� ������� ��������������)
% ���� �������� �� ��������� �� ����������� � ������ ������� �������
% ����������

% �-� ��������� �������, ���������� ������ ������������� ��������

                    % 4.����� ��������� (find)

% ������� find ���������� �������� ������� ��������� 
clc
a=randi([-2 2],3,3)
ind1=find(a); % ����� ������� ��������� ��������� 
a(ind1)=1 % �������� ��������� �������� ��������� (�� ��������� ��������)
ind2=find(a==1) % ������� ��������� ������ 1
a(ind2)=7

% �������: ��� �������� ������� �������� ����� ��������� �������� �� ���� 
















