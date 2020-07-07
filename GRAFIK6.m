close all


for k=1:255
    colV=[0 0 randi([125 255])]/255;
    plot(randi([-10 10]),randi([-10 10]),'h', 'MarkerSize',10,'MarkerFaceColor',colV);
    hold on
end
ylim([-12 12]);
xlim([-12 12]);