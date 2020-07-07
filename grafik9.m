close all
figure
p1=plot(1,1,'h','markersize',20)
hold on
p2=plot(2,2)
set(axes,'ButtonDownFcn',{@mycb1,p}) % @ передает функцию которая исполниться при условиях, они написаны слева
