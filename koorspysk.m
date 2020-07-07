function koorspysk(x1,x2,y,e,epsilon)
tic
x01=x1;
x02=x2;
y0=y(x1,x2)
while (x01==x1)&&(x02==x2)
    if y(x1+e,x2)<y0
        x1=x1+e
        y0=y(x1,x2)
        if y(x1,x2+e)<y0
            x2=x2+e;
        else if y(x1,x2-e)<y0
                x2=x2-e;
            end
        end
    else if y(x1-e,x2)<y0
            x1=x1-e
            y0=y(x1,x2)
            if y(x1,x2+e)<y0
                x2=x2+e;
            else if y(x1,x2-e)<y0
                    x2=x2-e;
                else
                    e=e/2;
                end
            end
        end
    end
end
x1
x2
e;
k=0;
while k<3
    while sqrt((x1-x01)^2+(x2-x02)^2)>epsilon
        x01=x1;
        x02=x2;
        y0=y(x1,x2);
        %while (x01==x1)&&(x02==x2)
        if y(x1+e,x2)<y0
            x1=x1+e
            y0=y(x1,x2)
            if y(x1,x2+e)<y0
                x2=x2+e;
            else if y(x1,x2-e)<y0
                    x2=x2-e;
                end
            end
        else if y(x1-e,x2)<y0
                x1=x1-e
                y0=y(x1,x2)
                if y(x1,x2+e)<y0
                    x2=x2+e;
                else if y(x1,x2-e)<y0
                        x2=x2-e;
                    else
                        e=e/2
                    end
                end
            end
        end
        %end
        x1
        x2
    end
    x1
    x2
    e=e/2
    x01=x1;
    x02=x2;
    y0=y(x1,x2);
    
    if y(x1+e,x2)<y0
        x1=x1+e;
        y0=y(x1,x2);
        if y(x1,x2+e)<y0
            x2=x2+e;
        else if y(x1,x2-e)<y0
                x2=x2-e;
            end
        end
    else if y(x1-e,x2)<y0
            x1=x1-e
            y0=y(x1,x2)
            if y(x1,x2+e)<y0
                x2=x2+e;
            else if y(x1,x2-e)<y0
                    x2=x2-e;
                else
                    e=e/2
                end
            end
        end
    end
    if sqrt((x1-x01)^2+(x2-x02)^2)<=epsilon
        k=k+1
    end
end

min1=x1
min2=x2
toc
end
