function func_arg(in1)
% nargin
% Number ARGument INput

% switch nargout
%     case 0
%         res1=in1^2;
%     case 1
%         res1=in1*in2;
% end
% disp(nargin)
% res1=0;
% disp(nargout)
% 
% sum=0;
% 
% if nargin>0
%     for k=1:nargin
%         sum=sum+varargin{k};
%     end
% end
% 
% res1=sum;

% for k=1:in1+1
%     varargout{k}=2^(k-1);
% end
    
%df gd adsgadg dsaf adsf adf
%cлова >=3 букв

%1.удостовериться что в начале и в конце не побелы
disp(trim(in1))
end

function res1 = trim(str)

currElemCount=1;
currElem=str(1)
while currElem==' '
    str(currElemCount)=[];
    currElemCount=currElemCount+1;
    currElem=str(currElemCount);
end
len=length(str);
res1=str;
disp(len)
end

