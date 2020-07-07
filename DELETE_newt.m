function r = newt( a, b, e )
    function y=func(x)
          y=x^2 + 4*sin(x)-2;
   %y=sin(x)+x^3-2;
    end
   function y = func1(x)
y=2*x+4*cos(x);
    end
if func(a) > 0
    x0 = a;
else
    x0 = b;
end
xk=x0;
xi=xk+10*e;
ct = 0;
countert = 0;
eps = 0;
xt = 0;
 
while (xk-xi)^2 >= e^2
    %r=(M1/(2*M2))*(xk-xi)^2
    ct = ct+1;
    xi = xk;
    xk = xi - func(xi)/func1(xi);
    
    xt(ct) = xk;
    countert(ct) = ct;
    if xk==xi
        break
    end
end
r=xk;
disp('Iteration steps')
countert;
disp('Roots')
xt;
for i=1:1:length(xt)
    eps(i) = abs(xt(i)-xk);
end
figure;
plot(countert,eps,'Color',[.9 .1 .1],'LineWidth',2), grid on;
xlabel ('Итерация'), ylabel ('Абсолютная ошибка')
title ('Метод Ньютона')
end

