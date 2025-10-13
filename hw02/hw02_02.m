clf

[x,y] = meshgrid(-2:0.1:2);
z = x.^2 + 3*y.^2;

subplot(1,2,1)
mesh(x,y,z)
title("mesh()")
xlabel("x轴")
ylabel("y轴")
zlabel("z轴")

subplot(1,2,2)
surf(x,y,z)
title("surf()")
xlabel("x轴")
ylabel("y轴")
zlabel("z轴")