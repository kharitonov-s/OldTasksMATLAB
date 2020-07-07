x=0:0.1:2*pi;
y=sin(x);

% оформление графиков
% 2 способа
% 1) быстрый и простой
% 2)сложный и долгий

% 1)Быстрый
% недостаток: ограниченные возможности

plot(x,y,'-mh')

% Тип соединительной линии
% : двойной пунктир
% - сплошная линия
% -. штрих пунктир
% -- штрихи
% если убрать тип линии то линия пропадет

% Цвета
% R G B K Cyan Magenta Yellow blacK White

% Типы точек (3 cимвол)
% . о x + * s(квадрат) d(ромб) v(треугольник носиком вниз) < > ^
% p h 

%                     2) Долгий но полный способ
close all %закрывает все открытые графические окна
clc
x=0:0.5:4*pi
y=sin(x);
colV=[240 128 128]/255;
p1=plot(x,y,'h','LineWidth',2,'Color',colV,...
    'MarkerSize',25,'MarkerEdgeColor',[0 0 1],...
    'MarkerFaceColor',colV,'Visible','off');
pause(2)

set(p1,'Visible','on');
 pause(0.3)
delete(p1)
set(p1,'Visible','off');
pause(0.3)
set(p1,'Visible','on');
hold on

for k=1:25:100
    plot(1,1,'h','markersize',k);
    hold on

end




















