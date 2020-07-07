% gcf - возвращает указатель на текущее графическое окно 
% get current figure

close all
clc

plot(1,1,'*r','MarkerSize',50)

pos=get(gcf,'Position');
newPos1=[555 421 174 150]
set(gcf,'Position',newPos1)

pause(0.4)
spot=get(gcf,'PointerShapeHotSpot')
spot=get(gcf,'PointerShapeHotSpot')

newPos=[610   578   205   160];
set(gcf,'Position',newPos)
p1=get(gcf,'ButtonDownFcn')
p2=get(p1,'PointerShapeHotSpot')

clear all
close all
clc

plot(1,1,'r*');

% gca - get current axes
get(gca)

set(gca,'Color',[rand() rand() rand()])

% XTick: [1x6 double] - значение засечек

% XTickLabel: {6x1 cell} - то что будет нарисовано

get(gca,'XTick')

cell1={'a','b','c','d','e','f','g','h','i','j','k'}

set(gca,'XTickLabel',cell1)

close all

f1=figure()
f2=figure()

% ax1=f1.CurrentAxes;
% равносильно
ax1=get(f1,'CurrentAxes');


plot(ax1,1,1,'r*')










