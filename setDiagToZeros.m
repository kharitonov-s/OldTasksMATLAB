% �������: �-� ��������� ������� 
%�������� �� ��������� � ���������� 

function res= setDiagToZeros (m)
d = diag(m);
newMatrix = diag(d)
res=m-newMatrix;
end

