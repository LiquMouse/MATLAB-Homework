clf

t = [0 .5 1.0 1.5 2.0 2.5 3.0];
v = [0 .4794 .8415  .9975 .9093 .5985 .1411];
s = [1 1.5 2 2.5 3 3.5 4];

pvt = polyfit(t,v,2);
pst = polyfit(t,s,1);
pvs = polyfit(s,v,2);

disp('v(t)二次拟合')
vt = poly2str(pvt,'t')
disp('s(t)一次拟合')
st = poly2str(pst,'t')
disp('v(s)二次拟合')
vs = poly2str(pvs,'s')

t1 = 0:0.01:3;
s1 = 1:0.01:4;
f1 = polyval(pvt,t1);
f2 = polyval(pst,t1);
f3 = polyval(pvs,s1);


subplot(1,3,1)
plot(t,v,'x',t1,f1)
xlabel('时间t')
ylabel('速度v')
legend('拟合点','二次拟合')
title('v-t')

subplot(1,3,2)
plot(t,s,'x',t1,f2)
xlabel('时间t')
ylabel('位移s')
legend('拟合点','一次拟合')
title('s-t')

subplot(1,3,3)
plot(v,s,'x',f3,s1)
ylabel('位移s')
xlabel('速度v')
legend('拟合点','二次拟合')
title('s-v')