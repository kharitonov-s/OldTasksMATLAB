function func8HW (x,y,z)
    function funcP(x,y,z)
        p=(x+y+z)/2;    
    end
funcP(x,y,z)
hx=2*sqrt(p*(p-x)*(p-y)*(p-z))/x;
hy=2*sqrt(p*(p-x)*(p-y)*(p-z))/y;
hz=2*sqrt(p*(p-x)*(p-y)*(p-z))/z;
disp(hx)
disp(hy)
disp(hz)
end
