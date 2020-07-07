% Задание: ф-я принимает матрицу 
%обнуляет ее диагональ и возвращает 

function res= setDiagToZeros (m)
d = diag(m);
newMatrix = diag(d)
res=m-newMatrix;
end

