function yy=lagrange(x,y,xx)
% ���������� ����������������� �������� � ����� ��������
% x - ������ ��������� �����
% y - ������ �������� ��������������� �������
% xx - ������ �������� ���������, ��� ������� ���� ��������� �������� ��������
% yy - ������ �������� �������� � ������ xx
% ������ ����� ����� ������������ (N=n+1)
N=length(x);
% for k = 1:length(xx)
% yy(k)=0;
%      for j=1:N
%              p1=1; p2=1;
%              for i=1:N
%                  if i==j
%                      p1=p1*1; p2=p2*1;  
%                  else
%                      p1=p1*(xx(k)-x(i));
%                      p2=p2*(x(j)-x(i));
%                  end
%              yy(k)=yy(k)+y(j)*p1/p2;
%              end
%      end
% end
% ������� ������� ������ �������� ����������������� ��������

% � ����� ������� ����� �� �����
yy = zeros(size(xx))
for k=1:N
    % ��������� ������������, �.�. ������� W_k
    l=ones(size(xx));
    J=[1:k-1 k+1:N];
    for j=J
        l=l.*(xx-x(j))/(x(k)-x(j));
    end
    % ����������� �����
    yy = yy + y(k)*l;
end