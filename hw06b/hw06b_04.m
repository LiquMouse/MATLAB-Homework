r = 0:0.1:1;

fun = @(x,y,z) y.^2 .* sin(z) + x.^3 .* cos(y);

ymin = @(x) -sqrt(1-x.^2);
ymax = @(x) sqrt(1-x.^2);
zmin = @(x,y) -(1-sqrt(x.^2 + y.^2));
zmax = @(x,y) 1-sqrt(x.^2 + y.^2);

integral3(fun,-1,1,ymin,ymax,zmin,zmax)
 