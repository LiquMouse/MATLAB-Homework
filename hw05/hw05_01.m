clf

x = [10 15 20 25 30];
y = [25.2 29.8 31.2 31.7 29.4];
xi = 10:0.01:30;
yi1 = interp1(x,y,xi,"nearest");
yi2 = interp1(x,y,xi,"linear");
yi3 = interp1(x,y,xi,"spline");
yi4 = interp1(x,y,xi,"pchip");
plot(x,y,"o")
hold on
plot(xi,yi1,'--',xi,yi2,xi,yi3,xi,yi4)
xlabel("浓度X")
ylabel("抗压强度Y")
legend('数据点','最近点插值','分段线性插值','三次样条插值','分段三次Hermite插值')