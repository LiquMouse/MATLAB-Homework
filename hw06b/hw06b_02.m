clf

h = 0.001;
x = 0:h:8;
y = -1./6.*x.^3 + 1./120.*x.^5 - 1./5040.*x.^7 + 1./ 362880.*x.^9;
fun = @(x) y(8001) - (-1./6.*x.^3 + 1./120.*x.^5 - 1./5040.*x.^7 + 1./ 362880.*x.^9);
c = y(8001)*ones(1,length(x));
H = c-y;
format longG

disp("左矩形")
z1 = sum(H(1:length(x)-1))*h

disp("右矩形")
z2 = sum(H(2:length(x)))*h

disp("梯形")
z3 = trapz(x,H)

disp("自适应辛普森")
z4 = integral(fun,0,8)

fill([x, 0], [y, y(8001)], "b")
