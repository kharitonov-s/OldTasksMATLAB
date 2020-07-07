function Newton__LocalRoot()
function y = goalfunc(x)
    y=x^2 + 4*sin(x)-2;
   %y=sin(x)+x^3-2;
end
    function y = dif(x)
y=2*x+4*cos(x);
    end

% x^2 + 4 sin x = 2; e=0.0001; 
a=-5;    
b=0; 
% CHECK 
if (goalfunc(a)*goalfunc(b)<0)
    ans='Существует нечетное число корней на проежутке [a,b]!'
else
    ans='Нет корней на промежутке [a,b]!' 
end
%вычислить значение функции в точках x = a + k*h
N=80; %num of cuts of [a,b]
h=(b-a)/N
flag=0;
s=0;
e=0.0001
%localisation
while flag==0
    for k=0:1:N
        y1=goalfunc(a+k*h);
        y2=goalfunc(a+(k+1)*h);
        if(y1*y2)<0
            flag=1;
            x1=a+k*h 
            x2=a+(k+1)*h
            break
        end
    end
    N=N*2;
    h=(b-a)/N;
end

root=x1-y1/dif(x1);
next_root=root-y1/dif(root);

%Newton
while (abs(root-next_root)>e)%stop case

    %dihotomia if out of localrange 
    if (goalfunc(root)*goalfunc(next_root)>=0)
        next_root=(next_root+root)/2;
    else
    root=next_root;
    next_root=root-y1/dif(root); %Newton
    %plot(next_root)
    
    end
     
   
end
x=-5:0.1:5;
gr=power(x,2) + 4*sin(x)-2;
plot(x,gr)
grid on;
text(next_root,0.1,'\leftarrow ROOT','FontSize', 11);
text(-5,0.1,'[','FontSize', 18);
text(0,0.1,']','FontSize', 18);
ans=next_root

end

%1)Ньютон 2)Интерполяция 3)Апроксимация


