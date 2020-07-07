function mycb2(varargin)
% text(1,1,'HELLO!')
a={'.' 'î' 'x' '+' '*' 's' 'd''v' '<' '>' '^'};
lena=length(a);
colind=randi([1 lena],1);
colval=a{colind};


set(varargin{3},'Marker','^','MarkerFaceColor',[1 0 0],'markersize',20)
% disp(length(varargin))


end