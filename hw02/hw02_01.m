clf

[x,y] = meshgrid(-1:0.1:1);
z1 = x.^2 +2.*y.^2;
z2 = 2 - x.^2;

subplot(1,3,1)
mesh(x,y,z1)
hold on
mesh(x,y,z2)
title("曲面 z=x^2+2y^2 和曲面 z=2-x^2","Interpreter","tex")
xlabel("x轴")
ylabel("y轴")
zlabel("z轴")
colormap("turbo")
daspect([1,1,1.414])

text(0,0,2.3,"积分闭区域","HorizontalAlignment","center")
text(-1,1,.3,"z=2-x^2")
text(.7,.7,2.5,"z=x^2+2y^2")

[x,y] = meshgrid(-1:0.02:1);

z1 = x.^2 +2.*y.^2;
z2 = 2 - x.^2;

subplot(1,3,2)
mesh(x,y,z1)
hold on
mesh(x,y,z2)
daspect([1,1,1.414])
title("曲面 z=x^2+2y^2 和曲面 z=2-x^2")
xlabel("x轴")
ylabel("y轴")
zlabel("z轴")
colormap("turbo")

text(0,0,2.3,"积分闭区域","HorizontalAlignment","center")
text(-1,1,.3,"z=2-x^2")
text(.7,.7,2.5,"z=x^2+2y^2")

r0 = abs(z1-z2)<0.01;
XX = r0 .* x;
YY = r0 .* y;
ZZ = r0 .* z2;

XX = XX(r0~=0);
YY = YY(r0~=0);
ZZ = ZZ(r0~=0);
plot3(XX,YY,ZZ,"r*")
plot(XX,YY,"b*")
text(-0.2,-0.2,0,"交线在平面xOy上的投影","HorizontalAlignment","center")

subplot(1,3,3)
plot(XX,YY,"*b")
daspect([1,1,1])
title("交线在平面xOy上的投影")
xlabel("x轴")
ylabel("y轴")