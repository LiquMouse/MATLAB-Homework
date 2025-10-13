clf

x = [.10 .30 .40 .55 .70 .80 .95];
y = [ 15 18 19 21 22.6 23.8 26];

p1 = polyfit(x,y,1);
p3 = polyfit(x,y,2);
p5 = polyfit(x,y,5);

x1 = 0:0.01:1;
y1 = polyval(p1,x1);
y3 = polyval(p3,x1);
y5 = polyval(p5,x1);

disp('一次拟合函数')
f1 = poly2str(p1,'x')
disp('三次拟合函数')
f3 = poly2str(p3,'x')
disp('五次拟合函数')
f5 = poly2str(p5,'x')

plot(x,y,"xk","MarkerSize",20)
hold on
plot(x1,y1,x1,y3,x1,y5)
legend("拟合点","一次拟合","三次拟合","五次拟合")
xlabel("碳含量x")
ylabel("电阻y")