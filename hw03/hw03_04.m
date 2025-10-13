clf

t = [0.25 0.5 1 1.5 2 3 4 6 8];
c = [19.21 18.15 15.36 14.10 12.89 9.32 7.45 5.24 3.01];

lnc = log(c);

p = polyfit(t,lnc,1)
t1 = 0.25:0.01:8;
lnc1 = polyval(p,t1);
C = exp(lnc1);

plot(t,c,'x',t1,C)
legend('拟合点','拟合函数')
xlabel('t(h)')
ylabel('c')