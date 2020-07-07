function mycb1(varargin)
% text(1,1,'HELLO!')
a={'.' 'î' 'x' '+' '*' 's' 'd''v' '<' '>' '^'};
lena=length(a);
colind=randi([1 lena],1);
colval=a{colind};
set(varargin{3},'Marker',colval,'Color',[randi([1 255],1) randi([1 255],1) randi([1 255],1)]/255,'markersize',randi([10 200],1))
% disp(length(varargin))


end

