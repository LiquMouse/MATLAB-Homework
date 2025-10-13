clf

x1 = -pi:pi/50:pi;
y1 = x1 .* cos(x1);

x2 = linspace(pi,4*pi,10000);
y2 = x2 .* tan(1./x2) .* sin(x2.^3);

x3 = 1:0.1:8;
y3 = exp(1./x3) .* sin(x3);

subplot(1,3,1)
plot(x1,y1,"b-*","MarkerIndices",1:5:length(x1))
axis([-pi pi -4 4])
xlabel("x")
ylabel("y")
title("Graph 1")
legend("$y = x \cos x$", "Interpreter","latex")

subplot(1,3,2)
plot(x2,y2,"g-")
axis([pi 4*pi -5 5])
xlabel("x")
ylabel("y")
title("Graph 2")
legend("$y = x \tan \frac{1}{x} \sin (x^3)$","Interpreter","latex")

subplot(1,3,3)
plot(x3,y3,"r--x")
axis([1 8 -1.5 2.5])
xlabel("x")
ylabel("y")
title("Graph 3")
legend("$y = e^{\frac{1}{x}} \sin x$","Interpreter","latex")

gtext("f(x)")