clf

f = load("data.m");

x = f(:,1);
y = f(:,2);
z = f(:,3);
[xi,yi]=meshgrid(-1:0.05:1);

subplot(2,2,1)
plot3(x,y,z,'.')
hold on
z1 = griddata(x,y,z,xi,yi,"linear");
mesh(xi,yi,z1,FaceAlpha=0.4,EdgeAlpha=0.4)
title("双线性插值")

subplot(2,2,2)
z2 = griddata(x,y,z,xi,yi,"nearest");
plot3(x,y,z,'.')
hold on
mesh(xi,yi,z2,FaceAlpha=0.4,EdgeAlpha=0.4)
title("最近点插值")

subplot(2,2,3)
z3 = griddata(x,y,z,xi,yi,"cubic");
plot3(x,y,z,'.')
hold on
mesh(xi,yi,z3,FaceAlpha=0.4,EdgeAlpha=0.4)
title("双三次插值")

subplot(2,2,4)
z4 = griddata(x,y,z,xi,yi,"v4");
plot3(x,y,z,'.')
hold on 
mesh(xi,yi,z4,FaceAlpha=0.4,EdgeAlpha=0.4)
title("双调和样条插值")