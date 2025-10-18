clf
x = linspace(-3*pi,3*pi,1000);
y = cos(x);

p2 = polyfit(x,y,2);
y2 = polyval(p2,x);

p3 = polyfit(x,y,3);
y3 = polyval(p3,x);

p4 = polyfit(x,y,4);
y4 = polyval(p4,x);

p6 = polyfit(x,y,6);
y6 = polyval(p6,x);

disp('二次拟合函数')
f2 = poly2str(p2,'x')
disp('三次拟合函数')
f3 = poly2str(p3,'x')
disp('四次拟合函数')
f4 = poly2str(p4,'x')
disp('六次拟合函数')
f6 = poly2str(p6,'x')

plot(x,y,":",x,y2,x,y3,x,y4,x,y6)
legend("y=cos(x)","二次拟合","三次拟合","四次拟合","六次拟合")