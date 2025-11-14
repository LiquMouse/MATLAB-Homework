clc;clf;clearvars;

df = @(x) 4./(1+x.^2); %被积函数
f = @(x) 4*atan(x); %原函数

n = 10000; %生成点数量
k=0; %在被积分函数下方的点数

ymax=5;
s=1*ymax; %选定矩形面积

rx = 1/1000 * unidrnd(1000,1,n);
ry = ymax/1000 * unidrnd(1000,1,n);
for i=1:n
    if ry(i) < df(rx(i))
        k = k+1;
    end
end

disp('精确值')
int = f(1)-f(0) %积分精确值
disp('蒙特卡洛估计值')
ff = s * k/n

hold on
plot(rx,ry,'k.')
plot(linspace(0,1,n),df(linspace(0,1,n)),'r','LineWidth',1)
xlabel('x')
ylabel('y')