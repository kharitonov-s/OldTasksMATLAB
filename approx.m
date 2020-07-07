function [Pol] = approx(g)
syms f(x) P(x) L(x) Pol pp(x) p(x) ll(x) ln(x) q1 q2 q3 q4
syms x
hold on
f(x)=x^3+exp(x);
xi = -1:0.5:1;
yi = xi.^3+exp(xi);
xx = -1:0.01:1;
yy= xx.^3+exp(xx);
%y= 3*x-cos(x+1);
n = 3
%yi= 3*xi-cos(xi+1);
pplot = plot(xi, yi, 'ko');          
set(pplot, 'LineWidth', 2);   
    if g==0
    xn = ones(length(xi), 1); % zero degree
    Q = xn;
        for k=1:n
        xn = xi(:).*xn;
        Q = [xn Q];
        end
        Q
    a = Q\yi'
    m=length(a);
    pp(x)=[];
        for k=1:m
            p(x)=a(k)*x^(m-k);
        pp(x)=[pp(x) p(x)];
        end
        P(x)=sum(pp(x));
        %P(x)=simple(P(x))
            y1=P(xx);
            plot(xx, y1, 'r');
            %nev(P,yi)
            Pol=P;
    end
    if g==1
        q=0;
        q1=legendreP(0,x');
        q2=legendreP(1,x');
        q3=legendreP(2,x');
        q4=legendreP(3,x');
        Q=[q1 q2 q3 q4];
        for k=1:4
        chisl=int(f(x)*Q(k),x,-1,1);
        znam=int(Q(k)*Q(k),x,-1,1);
        c(k)=chisl/znam;
        end
    m=length(c);
    ll(x)=[];
        for k=1:m
            ln(x)=c(k)*legendreP(k-1,x);
        ll(x)=[ll(x) ln(x)];
        end
        L(x)=sum(ll(x));
    %L = 'c(1)*L1 + c(2)*L2 + c(3)*L3 + c(4)*L4'
    pause(2);
    y2=L(xx);
    plot(xx, y2, 'g');
    %nev(L,yi)
    Pol=L;
    end
    if g==2
pause(2)
y=f(xx);
plot(xx,y,'k');
    end
end