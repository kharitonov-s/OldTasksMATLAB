close all
clc

f1=figure()
plot(1,1,'*r','MarkerSize',50)

newPos1=[0   900   200   100]
set(gcf,'Position',newPos1)

f2=figure()
plot(1,1,'*r','MarkerSize',50)
close all

newPos2=[200   900   200   100]
set(gcf,'Position',newPos2)
for k=300:100:900
    for l=0:200:1200
        i=1;
        f(i)=figure()
        plot(1,1,'*r','MarkerSize',50)
        newPos2=[l   k   200   100]
        set(gcf,'Position',newPos2)
        i=i+1;
    end
end
for s=1:100
    
    set(gca(f(randi([1,50]))),'Color',[rand() rand() rand()])
    pause(0.1)
    set(gca(f(randi([1,50]))),'Color',[rand() rand() rand()])
end

        
        
        
        
        
        
        
        
        
