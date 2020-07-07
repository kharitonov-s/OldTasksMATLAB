function ishtraf(y,r,epsilon,x1,x2,varargin)
tic;
x0=[x1;x2];
syms x3;
syms x4;
g1(x3,x4)=sym(varargin{1});
g2(x3,x4)=sym(varargin{2});
g3(x3,x4)=sym(varargin{3});
g4(x3,x4)=sym(varargin{4});
f(x3,x4)=sym(y);
if g1(x0(1,1),x0(2,1))>0
    m1=g1(x0(1,1),x0(2,1))
else m1=0
end
if g2(x0(1,1),x0(2,1))>0
    m2=g2(x0(1,1),x0(2,1))
else m2=0
end
if g3(x0(1,1),x0(2,1))>0
    m3=g3(x0(1,1),x0(2,1))
else m3=0
end
if g4(x0(1,1),x0(2,1))>0
    m4=g4(x0(1,1),x0(2,1))
else m4=0
end
H=m1^2+m2^2+m3^2+m4^2;
t=1

while H>=epsilon || t==1
    t=0
    if g1(x0(1,1),x0(2,1))>0
        m1=g1(x0(1,1),x0(2,1))
    else m1=0
    end
    if g2(x0(1,1),x0(2,1))>0
        m2=g2(x0(1,1),x0(2,1))
    else m2=0
    end
    if g3(x0(1,1),x0(2,1))>0
        m3=g3(x0(1,1),x0(2,1))
    else m3=0
    end
    if g4(x0(1,1),x0(2,1))>0
        m4=g4(x0(1,1),x0(2,1))
    else m4=0
    end
    fi(x3,x4)=f+r*2*(m1*g1+m2*g2+m3*g3+m4*g4);
    df1(x3,x4)=diff(fi,'x3') ;
    df2(x3,x4)=diff(fi,'x4') ;
    df=[df1(x0(1,1),x0(2,1));df2(x0(1,1),x0(2,1))];
    syms alphak;
    x=x0-alphak*df;
    y1(alphak)=f(x(1,1),x(2,1));
    maxn1(alphak)=g1(x(1,1),x(2,1));
    maxn2(alphak)=g2(x(1,1),x(2,1));
    maxn3(alphak)=g3(x(1,1),x(2,1));
    maxn4(alphak)=g4(x(1,1),x(2,1));
    a=0;
    b=2;
    e=0.000001;
    min=(a+b)/2;
    c=a+((3-sqrt(5))/2)*(b-a);
    d=a+((sqrt(5)-1)/2)*(b-a);
    while b-a>2*e
        if maxn1(c)>0
            maxc1=maxn1(c);
        else maxc1=0;
        end
        if maxn1(d)>0
            maxd1=maxn1(d);
        else maxd1=0;
        end
        if maxn2(c)>0
            maxc2=maxn2(c);
        else maxc2=0;
        end
        if maxn2(d)>0
            maxd2=maxn2(d);
        else maxd2=0;
        end
        if maxn3(c)>0
            maxc3=maxn3(c);
        else maxc3=0;
        end
        if maxn3(d)>0
            maxd3=maxn3(d);
        else maxd3=0;
        end
        if maxn4(c)>0
            maxc4=maxn4(c);
        else maxc4=0;
        end
        if maxn4(d)>0
            maxd4=maxn4(d);
        else maxd4=0;
        end
        fc=y1(c)+r*((maxc1)^2+(maxc2)^2+(maxc3)^2+(maxc4)^2);
        fd=y1(d)+r*((maxd1)^2+(maxd2)^2+(maxd3)^2+(maxd4)^2);
        if fc>=fd
            a=c;
            c=d;
            d=a+((sqrt(5)-1)/2)*(b-a);
        else
            b=d;
            d=c;
            c=a+((3-sqrt(5))/2)*(b-a);
            min=(a+b)/2;
        end
        
        
    end
    alpha=min
    x=vpa(x0-alpha*df,5)
     while norm([df1(x(1,1),x(2,1));df2(x(1,1),x(2,1))])>=0.0001
         x0=x;
         if g1(x0(1,1),x0(2,1))>0
        m1=g1(x0(1,1),x0(2,1))
    else m1=0
    end
    if g2(x0(1,1),x0(2,1))>0
        m2=g2(x0(1,1),x0(2,1))
    else m2=0
    end
    if g3(x0(1,1),x0(2,1))>0
        m3=g3(x0(1,1),x0(2,1))
    else m3=0
    end
    if g4(x0(1,1),x0(2,1))>0
        m4=g4(x0(1,1),x0(2,1))
    else m4=0
    end
    fi(x3,x4)=f+r*2*(m1*g1+m2*g2+m3*g3+m4*g4)
    df1(x3,x4)=diff(fi,'x3') 
    df2(x3,x4)=diff(fi,'x4') 
    df=[df1(x0(1,1),x0(2,1));df2(x0(1,1),x0(2,1))]
    syms alphak;
    x=x0-alphak*df;
    y1(alphak)=f(x(1,1),x(2,1));
    maxn1(alphak)=g1(x(1,1),x(2,1));
    maxn2(alphak)=g2(x(1,1),x(2,1));
    maxn3(alphak)=g3(x(1,1),x(2,1));
    maxn4(alphak)=g4(x(1,1),x(2,1));
    a=0;
    b=2;
    e=0.000001;
    min=(a+b)/2;
    c=a+((3-sqrt(5))/2)*(b-a);
    d=a+((sqrt(5)-1)/2)*(b-a);
    while b-a>2*e
        if maxn1(c)>0
            maxc1=maxn1(c);
        else maxc1=0;
        end
        if maxn1(d)>0
            maxd1=maxn1(d);
        else maxd1=0;
        end
        if maxn2(c)>0
            maxc2=maxn2(c);
        else maxc2=0;
        end
        if maxn2(d)>0
            maxd2=maxn2(d);
        else maxd2=0;
        end
        if maxn3(c)>0
            maxc3=maxn3(c);
        else maxc3=0;
        end
        if maxn3(d)>0
            maxd3=maxn3(d);
        else maxd3=0;
        end
        if maxn4(c)>0
            maxc4=maxn4(c);
        else maxc4=0;
        end
        if maxn4(d)>0
            maxd4=maxn4(d);
        else maxd4=0;
        end
        fc=y1(c)+r*((maxc1)^2+(maxc2)^2+(maxc3)^2+(maxc4)^2);
        fd=y1(d)+r*((maxd1)^2+(maxd2)^2+(maxd3)^2+(maxd4)^2);
        if fc>=fd
            a=c;
            c=d;
            d=a+((sqrt(5)-1)/2)*(b-a);
        else
            b=d;
            d=c;
            c=a+((3-sqrt(5))/2)*(b-a);
            min=(a+b)/2;
        end
        
        
    end
    alpha=min
    x=vpa(x0-alpha*df,5)      
     end
    r=r*10
    x0=x
    if g1(x0(1,1),x0(2,1))>0
        m1=g1(x0(1,1),x0(2,1))
    else m1=0
    end
    if g2(x0(1,1),x0(2,1))>0
        m2=g2(x0(1,1),x0(2,1))
    else m2=0
    end
    if g3(x0(1,1),x0(2,1))>0
        m3=g3(x0(1,1),x0(2,1))
    else m3=0
    end
    if g4(x0(1,1),x0(2,1))>0
        m4=g4(x0(1,1),x0(2,1))
    else m4=0
    end
    H=m1^2+m2^2+m3^2+m4^2;
end
xmin=x
toc;
end

