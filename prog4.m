a=12* ...
3;

% переменые
% типы данных
% специальные переменные

%1.Матлаб все числовые операции в double
%  format long | short
%2.Числовые форматы 
%  single()
%  double()
%  int8 int16 int32 int64
%  int8: -128 to 127
%  uint8 uint16 uint32 uint64 (unsigned)

%  logical (boolean) true/false

%  char
myFirstStringInMatlab = 'Hello, World'; % !!!в матлабе нет двойных кавычек!!! NO ""!!!
myStr2=''''

% Массив ячеек
% Cell Array
cellArr = cell(2,2); % (2,2) - разме массива

cellArr{1,1}=1; %фигурные скобки означают массив ячеек. {1,1} - это
%адрес ячейки
cellArr{1,1}=22/7;
cellArr{1,2}=true;
cellArr{2,1}=single(22/7);
cellArr{2,2}='A';
cellArr

cellArr{1,1}+2

%Struct Students{
%};

car(1).color='red';
car(1).price=10000;

car(2).color='green';
car(2).pole3=25;

car(1,2)

% 1. ans
%2. 
 %  intmax %максимальное целое число с которым может оперировать матлаб
  % intmin %минимальное целое
   %realmax %максимальное вещественное
   %realmin %минимальное вещественное
%3. 
%   pi
%4.
   
   









