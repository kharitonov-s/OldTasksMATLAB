close all
% plot(f,k,'h','MarkerSize',10,'MarkerEdgeColor',[0 0 randi([155 255])/255]);
hold on
f=randi([-10 10]);
for k=1:-0.5:-10
   f=randi([-10 10]);
    p1=plot(1,k+5,'h','MarkerSize',10,'MarkerEdgeColor',[0 0 randi([155 255])/255]);
    f=randi([-10 10]);
    p2=plot(2,k+10,'h','MarkerSize',10,'MarkerEdgeColor',[0 0 randi([155 255])/255]);
    f=randi([-10 10]);
    p3=plot(5,k+7,'h','MarkerSize',10,'MarkerEdgeColor',[0 0 randi([155 255])/255]);
    f=randi([-10 10]);
    p4=plot(4,k+3,'h','MarkerSize',10,'MarkerEdgeColor',[0 0 randi([155 255])/255]);
    f=randi([-10 10]);
    p5=plot(9,k+1,'h','MarkerSize',10,'MarkerEdgeColor',[0 0 randi([155 255])/255]);
   xlim([-12 12]);
    ylim([-12 12]);
    pause(0.3)
    delete(p1)
    delete(p2)
    delete(p3)
    delete(p4)
    delete(p5)
    
    
    
end
