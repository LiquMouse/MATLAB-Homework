clc;clf;clearvars;

df = @(x,y) exp((x+y).^2);

n = 100000;
k = 0;
zmax = 80;
v = 1*1*zmax;

rx = 1/1000 * unidrnd(1000,1,n);
ry = 1/1000 * unidrnd(1000,1,n);
rz = zmax/1000 * unidrnd(1000,1,n);

for i=1:n
    if rz(i)<df(rx(i),ry(i))
        k = k+1;
    end
end

ff = v*k/n
hold on
plot3(rx,ry,rz,'.','MarkerSize',2)
[x,y]=meshgrid(linspace(0,1,100));
mesh(x,y,df(x,y),'EdgeAlpha',0.4,'FaceAlpha',0.4)
view(3)