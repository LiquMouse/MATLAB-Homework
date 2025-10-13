clf

[x,y] = meshgrid(-2:0.05:2);
z1 = 5 - x.^2 - y.^2;
z2 = 3.*ones(size(x));

subplot(1,2,1)
mesh(x,y,z1)
hold on
mesh(x,y,z2)
title("曲面 z=5-x^2-y^2 与平面 z=3 的交线")
xlabel("x轴")
ylabel("y轴")
zlabel("z轴") 

r0 = abs(z1-z2)<0.01;
XX = x.*r0;
YY = y.*r0;
ZZ = z2.*r0;
XX = XX(r0~=0);
YY = YY(r0~=0);
ZZ = ZZ(r0~=0);
plot3(XX,YY,ZZ,"b*","MarkerSize",10)

text(-1.7,1.7,-2.5,"z=5-x^2-y^2")
text(-1.7,1.7,3.2,"z=3")

subplot(1,2,2)
plot(XX,YY,"b*")
daspect([1 1 1])
title("交线在平面xOy上的投影")
xlabel("x轴")
ylabel("y轴")