clf

[p,q] = meshgrid(linspace(0,2*pi,100));
x = 3.*sin(p).*cos(q);
y = 4.*sin(p).*sin(q);
z = 2.*cos(p);

mesh(x,y,z)
xlabel("x轴")
ylabel("y轴")
zlabel("z轴")
title("$\frac{x^{2}}{9} + \frac{y^{2}}{16} + \frac{z^{2}}{4} = 1$","Interpreter","latex")