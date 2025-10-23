h = 0.001;
x = 0:h:8;
y = -1./6.*x.^3 + 1./120.*x.^5 - 1./5040.*x.^7 + 1./ 362880.*x.^9;
fun = @(x) -1./6.*x.^3 + 1./120.*x.^5 - 1./5040.*x.^7 + 1./ 362880.*x.^9;
format long

disp("左矩形")
z1 = sum(y(1:length(x)-1))

disp("右矩形")
z2 = sum(y(2:length(x)))

disp("梯形")
z3 = trapz(x,y)

disp("自适应辛普森")
z4 = integral(fun,0,8)

plot([x,0,0],[y,0,0],"b")

X = [0 5; 0 5; 4 9];
Y = [2 0; 4 2; 2 0];
C = [0 1];
fill(X,Y,C)