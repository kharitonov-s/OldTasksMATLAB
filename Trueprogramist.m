close all
figure
hold on
grid off
p1=plot(10,4,'^','markersize',18)
p2=plot(20,5,'s','markersize',20)
p3=plot(30,5,'o','markersize',20)
p4=plot(70,5,'rs','markersize',20,'MarkerFaceColor',[1 0 0])
p5=plot(80,5,'ms','markersize',20,'MarkerFaceColor',[224, 5, 252]/255)
p6=plot(90,5,'gs','markersize',20,'MarkerFaceColor',[0 1 0])



for i = 2:99
    for j =10:99
        h(i,j)= plot(i,j,'w','markersize',1);
        hold on
    end
end
% set(p4,'ButtonDownFcn',{cvval=[1 0 0]});
for i = 2:99
    for j =10:99
        set(h(i,j),'ButtonDownFcn',{@mycb2,h(i,j)});
        hold on
    end
end
% set(h,'ButtonDownFcn',{@mycb1,h(i,j)}) % @ передает функцию которая исполниться при условиях, они написаны слева


xlim([0 100])
ylim([0 100])
