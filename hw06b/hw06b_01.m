 h = 0.01;
 x = 0:h:pi/4;
 y = 1 ./ (1-sin(x));
 fun = @(x) 1 ./ (1-sin(x))
 format long

disp("左矩形")
z1 = sum(y(1:length(x)-1)) .* h

disp("右矩形")
z2 = sum(y(2:length(x))) .* h

disp("梯形")
z3 = trapz(x,y)

disp("复合辛普森")
n = length(x);
z4 = 0;
for i = 1:n-1
    z4 = z4 + h/6 * (fun(x(i)) + 4 * fun((x(i)+x(i+1))/2) + fun(x(i+1)));
end
z4

sqrt2 = 2 ^ (1/2)