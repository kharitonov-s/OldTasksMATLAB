f1=figure()
cnt=1;
for k=0:0.4:2*pi
    
     p1=plot(k,sin(k),'*','Color',[rand() rand() rand()])
     axis([0 6.5 -1.5 1.5])
     hold on
     pause(0.2)
     print(f1,'-dpng',['file',num2str(cnt)])
     cnt=cnt+1;
end