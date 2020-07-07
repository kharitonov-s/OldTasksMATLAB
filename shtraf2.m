function shtraf2( )
xk1=1;
xk2=1;
xk3=2;
r=1;
e1=0.000001;
e2=0.0001;
e3=0.01;
i=0;
h=max(0,(-1)*xk1)^2+max(0,(-1)*xk2)^2+max(0,(-1)*xk3)^2+(xk1-xk2+2*xk3-6)^2;
while(h>e3)
h=max(0,(-1)*xk1)^2+max(0,(-1)*xk2)^2+max(0,(-1)*xk3)^2+(xk1-xk2+2*xk3-6)^2;
if (xk1>0) && (xk2>0) && (xk3>0) drh1=4*(xk1-xk2+2*xk3-6);
                                 drh2=6*(xk1-xk2+2*xk3-6);
                                 drh3=2*(xk1-xk2+2*xk3-6);
else if (xk1>0) && (xk2>0) && (xk3<0) drh1=4*( xk1-xk2+2*xk3-6);
                                      drh2=6*( xk1-xk2+2*xk3-6);
                                      drh3=2*xk3+2*( xk1-xk2+2*xk3-6);
    else if (xk1>0) && (xk2<0) && (xk3>0) drh1=4*( xk1-xk2+2*xk3-6);
                                          drh2=2*xk2+6*( xk1-xk2+2*xk3-6);
                                          drh3=2*( xk1-xk2+2*xk3-6);
        else if (xk1<0) && (xk2>0) && (xk3>0)  drh2=6*( xk1-xk2+2*xk3-6);
                                               drh3=2*( xk1-xk2+2*xk3-6);
                                               drh1=2*xk1+4*( xk1-xk2+2*xk3-6);
            else if (xk1<0) && (xk2>0) && (xk3<0) drh1=2*xk1+4*( xk1-xk2+2*xk3-6);
                                                  drh3=2*xk3+2*( xk1-xk2+2*xk3-6);
                                                  drh2=6*( xk1-xk2+2*xk3-6);
                else if (xk1<0) && (xk2<0) && (xk3>0)  drh1=2*xk1+4*( xk1-xk2+2*xk3-6);
                                                        drh2=2*xk2+6*( xk1-xk2+2*xk3-6);
                                                        drh3=2*( xk1-xk2+2*xk3-6);
                    else if (xk1>0) && (xk2<0) && (xk3<0)  drh1=4*( xk1-xk2+2*xk3-6);
                                                            drh2=2*xk2+6*( xk1-xk2+2*xk3-6);
                                                            drh3=2*xk3+2*( xk1-xk2+2*xk3-6);
                        else drh2=2*xk2+6*( xk1-xk2+2*xk3-6);
                             drh3=2*xk3+2*( xk1-xk2+2*xk3-6);
                             drh1=2*xk1+4*( xk1-xk2+2*xk3-6);
                        end
                    end
                end
            end
        end
    end
end
dr1=2*xk1-10+r*drh1;
dr2=2*xk2-8+r*drh2;
dr3=r*drh3;
d1=(-1)*dr1;
d2=(-1)*dr2;
d3=(-1)*dr3;
i1=0;
while (sqrt(dr1^2+dr2^2+dr3^2)>e2)
del1=0.0005;
a1=0;
b1=5;
while(b1-a1>2*e1)
c=a1+(3-sqrt(5))*(b1-a1)/2;
d=a1+(sqrt(5)-1)*(b1-a1)/2;
if ((xk1+c*d1)^2+(xk2+c*d2)^2-10*(xk1+c*d1)-8*(xk2+c*d2)+max(0,(-1)*(xk1+c*d1))^2+max(0,(-1)*(xk2+c*d2))^2+max(0,(-1)*(xk3+c*d3))^2+(2*(xk1+c*d1)+3*(xk2+c*d2)+(xk3+c*d3)-6)^2>(xk1+d*d1)^2+(xk2+d*d2)^2-10*(xk1+d*d1)-8*(xk2+d*d2)+max(0,(-1)*(xk1+d*d1))^2+max(0,(-1)*(xk2+d*d2))^2+max(0,(-1)*(xk3+d*d3))^2+(2*(xk1+d*d1)+3*(xk2+d*d2)+(xk3+d*d3)-6)^2) a1=c;
else b1=d;
end
end
a=(b1+a1)/2;
xk4=xk1+a*d1;
xk5=xk2+a*d2;
xk6=xk3+a*d3;
if (xk4>0) && (xk5>0) && (xk6>0) drh4=4*( xk1-xk2+2*xk3-6);
                                 drh5=6*( xk1-xk2+2*xk3-6);
                                 drh6=2*( xk1-xk2+2*xk3-6);
else if (xk4>0) && (xk5>0) && (xk6<0) drh4=4*( xk1-xk2+2*xk3-6);
                                      drh5=6*( xk1-xk2+2*xk3-6);
                                      drh6=2*xk6+2*( xk1-xk2+2*xk3-6);
    else if (xk4>0) && (xk5<0) && (xk6>0) drh4=4*( xk1-xk2+2*xk3-6);
                                          drh5=2*xk5+6*( xk1-xk2+2*xk3-6);
                                          drh6=2*( xk1-xk2+2*xk3-6);
        else if (xk4<0) && (xk5>0) && (xk6>0)  drh5=6*( xk1-xk2+2*xk3-6);
                                               drh6=2*( xk1-xk2+2*xk3-6);
                                               drh4=2*xk4+4*( xk1-xk2+2*xk3-6);
            else if (xk4<0) && (xk5>0) && (xk6<0) drh4=2*xk4+4*( xk1-xk2+2*xk3-6);
                                                  drh6=2*xk6+2*( xk1-xk2+2*xk3-6);
                                                  drh5=6*( xk1-xk2+2*xk3-6);
                else if (xk4<0) && (xk5<0) && (xk6>0)  drh4=2*xk4+4*( xk1-xk2+2*xk3-6);
                                                        drh5=2*xk5+6*( xk1-xk2+2*xk3-6);
                                                        drh6=2*( xk1-xk2+2*xk3-6);
                    else if (xk4>0) && (xk5<0) && (xk6<0)  drh4=4*( xk1-xk2+2*xk3-6);
                                                            drh5=2*xk5+6*( xk1-xk2+2*xk3-6);
                                                            drh6=2*xk6+2*( xk1-xk2+2*xk3-6);
                        else drh5=2*xk5+6*( xk1-xk2+2*xk3-6);
                             drh6=2*xk6+2*( xk1-xk2+2*xk3-6);
                             drh4=2*xk4+4*( xk1-xk2+2*xk3-6);
                        end
                    end
                end
            end
        end
    end
end
dr4=2*xk4-10+r*drh4;
dr5=2*xk5-8+r*drh5;
dr6=r*drh6;
d4=(-1)*dr4;
d5=(-1)*dr5;
d6=(-1)*dr6;
if (mod(i1+1,2)==0) d1=d4;
                   d2=d5;
                   d3=d6;
else d1=d4+d4*(sqrt(dr4^2+dr5^2+dr6^2)^2/sqrt(dr1^2+dr2^2+dr3^2)^2);
     d2=d5+d5*(sqrt(dr4^2+dr5^2+dr6^2)^2/sqrt(dr1^2+dr2^2+dr3^2)^2);
     d3=d6+d6*(sqrt(dr4^2+dr5^2+dr6^2)^2/sqrt(dr1^2+dr2^2+dr3^2)^2);
end
xk1=xk4;
xk2=xk5;
xk3=xk6;
if (xk1>0) && (xk2>0) && (xk3>0) drh1=4*( xk1-xk2+2*xk3-6);
                                 drh2=6*( xk1-xk2+2*xk3-6);
                                 drh3=2*( xk1-xk2+2*xk3-6);
else if (xk1>0) && (xk2>0) && (xk3<0) drh1=4*( xk1-xk2+2*xk3-6);
                                      drh2=6*( xk1-xk2+2*xk3-6);
                                      drh3=2*xk3+2*( xk1-xk2+2*xk3-6);
    else if (xk1>0) && (xk2<0) && (xk3>0) drh1=4*( xk1-xk2+2*xk3-6);
                                          drh2=2*xk2+6*( xk1-xk2+2*xk3-6);
                                          drh3=2*( xk1-xk2+2*xk3-6);
        else if (xk1<0) && (xk2>0) && (xk3>0)  drh2=6*( xk1-xk2+2*xk3-6);
                                               drh3=2*( xk1-xk2+2*xk3-6);
                                               drh1=2*xk1+4*( xk1-xk2+2*xk3-6);
            else if (xk1<0) && (xk2>0) && (xk3<0) drh1=2*xk1+4*( xk1-xk2+2*xk3-6);
                                                  drh3=2*xk3+2*( xk1-xk2+2*xk3-6);
                                                  drh2=6*( xk1-xk2+2*xk3-6);
                else if (xk1<0) && (xk2<0) && (xk3>0)  drh1=2*xk1+4*( xk1-xk2+2*xk3-6);
                                                        drh2=2*xk2+6*( xk1-xk2+2*xk3-6);
                                                        drh3=2*( xk1-xk2+2*xk3-6);
                    else if (xk1>0) && (xk2<0) && (xk3<0)  drh1=4*( xk1-xk2+2*xk3-6);
                                                            drh2=2*xk2+6*( xk1-xk2+2*xk3-6);
                                                            drh3=2*xk3+2*( xk1-xk2+2*xk3-6);
                        else drh2=2*xk2+6*( xk1-xk2+2*xk3-6);
                             drh3=2*xk3+2*( xk1-xk2+2*xk3-6);
                             drh1=2*xk1+4*( xk1-xk2+2*xk3-6);
                        end
                    end
                end
            end
        end
    end
end
dr1=2*xk1-10+r*drh1;
dr2=2*xk2-8+r*drh2;
dr3=r*drh3;
d1=(-1)*dr1;
d2=(-1)*dr2;
d3=(-1)*dr3;
i1=i1+1;
end
r=r*10;
i=i+1;
disp(i);
end
fk= xk1^2-xk2^2-xk1-2*xk3
disp(xk1);
disp(xk2);
disp(xk3);
disp(fk);

end

