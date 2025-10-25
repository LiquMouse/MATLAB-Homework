fun = @(x,y) x.*sin(y) + y.*cos(x);
ymin = @(x) -sqrt(x);
ymax = @(x) sqrt(x);
integral2(fun,0,1,ymin,ymax)