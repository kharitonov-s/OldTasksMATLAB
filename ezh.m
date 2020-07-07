syms x;
a = -1;
b = 1;
c = [0 0 0 0];
d = sym('[a1 a2 a3 a4]');
f = x.^2.*cos(x);
for k = 1:1:4
    Lezh1 = (1-x.^2).^k;
   for j = 1:1:k
       Lezh1 = diff(Lezh1);
   end
   Lezh1 = Lezh1.*(factorial(k).*2.^k).^(-1);
   d(k) = Lezh1;
   Lezh2 = f.*Lezh1; 
   Lezh1 = Lezh1.^2;
   Lezh1 = int(Lezh1, x, -1, 1);
   Lezh2 = int(Lezh2, x, -1, 1);
   d1 = double(Lezh1);
   d2 = double(Lezh2);
   c(k) = Lezh2/Lezh1;
   disp(c(k));
end
y = d(1).*c(1)+d(2).*c(2)+d(3).*c(3)+d(4).*c(4);
x = -1:0.01:1;
y1 = subs(y)+0.24;
plot(x,y1, 'b');
hold on;
y2 = x.^2.*cos(x);
plot(x,y2, 'g');