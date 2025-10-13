clf

[x,y] = meshgrid(-3:3);
z = x.^2./16 - y.^2./9;

[x1,y1] = meshgrid(-3:.1:3);
z1 = x1.^2./16 - y1.^2./9;

[xi,yi] = meshgrid(-3:.1:3);
zi1 = interp2(x,y,z,xi,yi,"nearest");
zi2 = interp2(x,y,z,xi,yi,"linear");
zi3 = interp2(x,y,z,xi,yi,"spline");
zi4 = interp2(x,y,z,xi,yi,"cubic");

figure(1)
subplot(1,2,1)
mesh(x,y,z)
title('数据点')
subplot(1,2,2)
mesh(x1,y1,z1)
title('函数图像')

figure(2)
subplot(2,2,1);
mesh(xi,yi,zi1)
title('最近点插值')

subplot(2,2,2)
mesh(xi,yi,zi2)
title('双线性插值')

subplot(2,2,3)
mesh(xi,yi,zi3)
title('三次样条插值')

subplot(2,2,4)
mesh(xi,yi,zi4)
title('双三次插值')