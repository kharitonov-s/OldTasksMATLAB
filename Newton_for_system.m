function Newton_for_system

F1=inline('sin(y-1)+x-1.3')
F2=inline('y-sin(x+1)-0.8')

    %first function derivatives:
dF1_x= ('1'); 
dF1_y=('cos(1 - y)');
    %second function derivatives:
dF2_x=('-cos(1 + x)');
dF2_y=('1');

x=0;
y=1.5;
e=0.0001;
norm=1;

%Newton
while norm>e
    F=[F1(x,y); F2(x,y)]
    dF=[1 cos(1 - y); -cos(1 + x) 1]; %Yakobi
    Z = [x;y] - dF^(-1)*F; % x+delta (1.2) remark
    norm = sqrt((x-Z(1))^2+(y-Z(2))^2); %norm for stop case
        x = Z(1);
        y = Z(2);
end

Ans = Z

hold on
grid on
ezplot('sin(y-1)+x-1.3');
ezplot('y-sin(x+1)-0.8');


end

