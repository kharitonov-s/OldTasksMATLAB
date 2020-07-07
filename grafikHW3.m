
pol1=[-3 6 5];

x2=-25:0.5:25;
plot(x2,polyval(pol1,x2));
hold on
plot(roots(pol1),length(roots(pol1)),'-Rs');
