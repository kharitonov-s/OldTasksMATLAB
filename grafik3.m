x=0:0.1:2*pi;
y=sin(x);

% ���������� ��������
% 2 �������
% 1) ������� � �������
% 2)������� � ������

% 1)�������
% ����������: ������������ �����������

plot(x,y,'-mh')

% ��� �������������� �����
% : ������� �������
% - �������� �����
% -. ����� �������
% -- ������
% ���� ������ ��� ����� �� ����� ��������

% �����
% R G B K Cyan Magenta Yellow blacK White

% ���� ����� (3 c�����)
% . � x + * s(�������) d(����) v(����������� ������� ����) < > ^
% p h 

%                     2) ������ �� ������ ������
close all %��������� ��� �������� ����������� ����
clc
x=0:0.5:4*pi
y=sin(x);
colV=[240 128 128]/255;
p1=plot(x,y,'h','LineWidth',2,'Color',colV,...
    'MarkerSize',25,'MarkerEdgeColor',[0 0 1],...
    'MarkerFaceColor',colV,'Visible','off');
pause(2)

set(p1,'Visible','on');
 pause(0.3)
delete(p1)
set(p1,'Visible','off');
pause(0.3)
set(p1,'Visible','on');
hold on

for k=1:25:100
    plot(1,1,'h','markersize',k);
    hold on

end




















