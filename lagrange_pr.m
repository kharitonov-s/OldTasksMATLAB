%1) ������� �� ������� � ����������� �������� �������������.

%2) ��������� ��������� ����� �������������� ����� � ������-
% ��� ���������������� �������. ��������� �� �� �����, ����
% � �������� ����� �� �� ���������� �����, �� ������������ ��
% ������� (3.2). �������� ���������� ����������.

%3) ��������� �.2, ���������� ����� �����.

%4) ��� ������� h(x) = |x| � f(x) ��������� �� �� ������, ��� �
% ��� y = f(x) �� ��� �� ����� ���������. �������� ���������
% ���������������� ��������� � ������ � ������ �������.
           


% x - ������ ��������� �����
% y - ������ �������� ��������������� �������
% xx - ������ �������� ���������, ��� ������� ���� ��������� �������� ��������
% yy - ������ �������� �������� � ������ xx

% ������� ����� ������������

    
a=-5;
b=1;
n=5;
m = 0.1;

x=linspace(a,b,n) %�������������� ���� x=-5:(1+5)/5:1

x_cos=[n];%����, ����������� �� ����������� �������
for i=0:n-1
    k=((b-a)*cos((2*i+1)*pi/(2*(n+1))) + (b+a))/2; 
    x_cos(i+1)=k;
end
x_cos
y_cos=x_cos.^2 + 4*sin(x_cos) - 2;%�������� ������� � ����������� ������
y=x.^2 + 4*sin(x)-2;%�������� ������� � �������������� �����

xx=a:m:b;
% ���������� �������� ����������������� ��������:
yy_cos=lagrange(x_cos,y_cos,xx) % - � ����������� �����
yy=lagrange(x,y,xx) % - � �������������� �����

% ����� ������� �������� 
subplot(3,2,1); plot(xx,yy,'r') %������ ������� ����� �������������� ���� �������
hold on
x1=a:m:b;
y1=x1.^2+4*sin(x1)-2;
plot(x1,y1,'ob') % ������ �������� ������� �����
y=x.^2+4*sin(x)-2;
plot(x,y,'LineStyle','none','Marker','.','Color','r','MarkerSize',20)

subplot(3,2,2); plot(xx,yy_cos,'r')
hold on
x1=a:m:b;
y1=x1.^2+4*sin(x1)-2;
plot(x1,y1,'ob')
y=x_cos.^2+4*sin(x_cos)-2;
plot(x_cos,y,'LineStyle','none','Marker','.','Color','r','MarkerSize',20)

 
%������� 3
    
a=-5;
b=1;
n=20;
m = 0.1;
% x=a:(b-a)/n:b;
x=linspace(a,b,n)

x_cos=[];%����, ����������� �� ����������� �������
for i=0:n-1
    k=((b-a)*cos((2*i+1)*pi/(2*(n+1))) + (b+a))/2; 
    x_cos(i+1)=k;
end
 
y_cos=x_cos.^2 + 4*sin(x_cos) - 2;%�������� ������� � ����������� ������
y=x.^2 +4*sin(x)-2;%�������� ������� � �������������� �����

xx=a:m:b;
% ���������� �������� ����������������� ��������
yy_cos=lagrange(x_cos,y_cos,xx);
yy=lagrange(x,y,xx);
 
% % ����� ������� �������� 
% % ������ �������� ������� ����� � ������ ������� ����� �������������� ����
% �������
subplot(3,2,3); plot(xx,yy,'r')
hold on
x1=a:m:b;
y1=x1.^2+4*sin(x1)-2;
plot(x1,y1,'ob')
y=x.^2+4*sin(x)-2;
plot(x,y,'LineStyle','none','Marker','.','Color','r','MarkerSize',20)


subplot(3,2,4); plot(xx,yy_cos,'r')
hold on
x1=a:m:b;
y1=x1.^2+4*sin(x1)-2;
plot(x1,y1,'ob')
y=x_cos.^2+4*sin(x_cos)-2;
plot(x_cos,y,'LineStyle','none','Marker','.','Color','r','MarkerSize',20)

%������� 4
a=-5;
b=1;
n=5;
m = 0.1;
x=a:(b-a)/n:b;

x_cos=[n];%����, ����������� �� ����������� �������
for i=0:n-1
    k=((b-a)*cos((2*i+1)*pi/(2*(n+1))) + (b+a))/2; 
    x_cos(i+1)=k;
end

y_cos=abs(x_cos).*(x_cos.^2 + 4*sin(x_cos) - 2);%�������� ������� � ����������� ������ h(x) = |x| � f(x)
y=abs(x).*(x.^2 +4*sin(x)-2);%�������� ������� � �������������� �����
xx=a:m:b;
% ���������� �������� ����������������� ��������
yy_cos=lagrange(x_cos,y_cos,xx);
yy=lagrange(x,y,xx);
 
% ����� ������� �������� 
% ������ �������� ������� ����� � ������ ������� ����� �������������� ����
% �������
subplot(3,2,5); plot(xx,yy,'r')
hold on
x1=a:m:b;
y1=x1.^2+4*sin(x1)-2;
plot(x1,y1,'b')

subplot(3,2,6); plot(xx,yy_cos,'r')
hold on
x1=a:m:b;
y1=x1.^2+4*sin(x1)-2;
plot(x1,y1,'ob')

% subplot(4,2,7); 
% x1=a:m:b;
% y1=x1.^2+4*sin(x1)-2;
% plot(x1,y1,'ob')


%end
