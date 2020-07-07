function [ output_args ] = Untitled3( input_args )
% 
% a=randi ([1 50],5);
% b=sort(a(:));
% b(end)

%Ќа входе матрица из положительных чисел, надо посчитать, сколько раз в ней
%встречаетс€ максимальный элемент

% 1 9
% 9 3
vect=input_args(:);%1 9 9 3
vect=sort(vect);%1 3 9 9
maxElem=vect(end);% 9
len=length(vect); %4
vect2=maxElem*ones(len,1);
tmp=vect2-vect;%-8 0 0 -6
tmp2=len-nnz(tmp);
res=tmp2;




end

