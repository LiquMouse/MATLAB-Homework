h=0.05;
t0=0;
tf=2*pi;
x0=[0;0];

[t,x]=ode45('fun',[t0;tf],x0);
y=x(:,1);

exfun = dsolve('D2y-Dy+y=3*cos(t)','y(0)=0,Dy(0)=0','t');
y2 = subs(exfun,t);

clf
hold on
plot(t,y,'o')
plot(t,y2,'r-')
plot(t,x(:,2),'b--')
legend('数值解','精确解','y的一阶导')